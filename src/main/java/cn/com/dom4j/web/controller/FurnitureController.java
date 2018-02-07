package cn.com.dom4j.web.controller;

import cn.com.dom4j.base.config.QiNiuConfig;
import cn.com.dom4j.base.model.Page;
import cn.com.dom4j.base.model.Product;
import cn.com.dom4j.base.model.User;
import cn.com.dom4j.base.service.IProductService;
import cn.com.dom4j.base.service.IUserService;
import cn.com.dom4j.base.util.JsonUtils;
import cn.com.dom4j.base.util.QiNiuUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月17日
 * @desc furniture controller
 */
@Controller
@RequestMapping("/furniture")
public class FurnitureController extends BaseController {

    @Resource(name = "userService")
    private IUserService userService;

    @Resource(name = "productService")
    private IProductService productService;

    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);

        List<Product> products = productService.getAllProduct();
        modelMap.put("products", products);

        return new ModelAndView("/product/index", modelMap);
    }

    @RequestMapping("/about")
    public ModelAndView about(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/about", modelMap);
    }

    @RequestMapping("/contact")
    public ModelAndView contact(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/contact", modelMap);
    }

    @RequestMapping("/product")
    public ModelAndView product(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/product", modelMap);
    }

    @RequestMapping("/single-product")
    public ModelAndView singleProduct(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/single-product", modelMap);
    }

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/login", modelMap);
    }

    @RequestMapping("/register")
    public ModelAndView register(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/register", modelMap);
    }

    @RequestMapping("/forget-password")
    public ModelAndView forgetPassword(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/forget-password", modelMap);
    }

    @ResponseBody
    @RequestMapping("/login-submit")
    public Map<String, Object> loginSubmit(HttpServletRequest request) {

        Map<String, Object> result = new HashMap<>();
        result.put("success", false);

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userService.getUserByUserName(username);
        if (user == null) {
            result.put("message", "未找到 " + username + "用户");
            return result;
        }

        if (!StringUtils.equals(user.getPassword(), password)) {
            result.put("message", "密码错误");
            return result;
        }

        result.put("user", new Gson().toJson(user));
        result.put("success", true);
        return result;
    }

    @ResponseBody
    @RequestMapping("/register-submit")
    public Map<String, Object> registerSubmit(HttpServletRequest request) {

        Map<String, Object> result = new HashMap<>();
        result.put("success", false);

        String userJson = request.getParameter("user");
        if (StringUtils.isEmpty(userJson)) {
            result.put("message", "未获取到用户参数");
            return result;
        }

        Gson gson = new GsonBuilder().create();
        User user = gson.fromJson(userJson, User.class);

        user.setCreateTime(new Date());
        user.setValid("Y");

        User dbUser = userService.getUserByUserName(user.getUsername());
        if (dbUser != null) {
            result.put("message", "该用户名已被注册, 请更换用户名!");
            return result;
        }

        int res = userService.addUser(user);
        if (res != 1) {
            result.put("message", "注册失败, 请联系管理员");
            return result;
        }

        result.put("user", gson.toJson(user));
        result.put("success", true);
        return result;
    }

    @RequestMapping("/product-manage")
    public ModelAndView productManage(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/product/product-manage", modelMap);
    }

    @ResponseBody
    @RequestMapping("/product-list")
    public Map<String, Object> productList(HttpServletRequest request, Page page) {
        Map<String, Object> data = new HashMap<String, Object>();

        int count = productService.countProduct(page);
        List<Product> products = productService.listProduct(page);

        data.put("page", page.getPage());
        data.put("records", count);
        data.put("total", page.getPageCount());
        data.put("rows", products);
        return data;
    }




    @ResponseBody
    @RequestMapping("/add-product")
    public Map<String, Object> addProduct(HttpServletRequest request) {
        Map<String, Object> result = new HashMap<>();
        result.put("success", false);

        String productJson = request.getParameter("product");
        if (StringUtils.isEmpty(productJson)) {
            result.put("message", "未获取到商品参数");
            return result;
        }

        Gson gson = JsonUtils.getGson();
        Product product = gson.fromJson(productJson, Product.class);
        if (product == null) {
            result.put("message", "解析json失败, 请联系管理员!");
            return result;
        }

        product.setCreateTime(new Date());
        product.setValid("Y");

        int res = productService.addProduct(product);
        if (res != 1) {
            result.put("message", "添加商品失败, 请联系管理员!");
            return result;
        }

        result.put("success", true);
        return result;
    }

    @ResponseBody
    @RequestMapping("/edit-product")
    public Map<String, Object> editProduct(HttpServletRequest request) {
        Map<String, Object> result = new HashMap<>();
        result.put("success", false);

        String productJson = request.getParameter("product");
        if (StringUtils.isEmpty(productJson)) {
            result.put("message", "未获取到商品参数");
            return result;
        }

        Gson gson = JsonUtils.getGson();
        Product product = gson.fromJson(productJson, Product.class);
        if (product == null) {
            result.put("message", "解析json失败, 请联系管理员!");
            return result;
        }

        int res = productService.updateProduct(product);
        if (res != 1) {
            result.put("message", "编辑商品失败, 请联系管理员!");
            return result;
        }

        result.put("success", true);
        return result;
    }


    @ResponseBody
    @RequestMapping("/upload-file-to-qiniu")
    public Map<String, Object> uploadFile(MultipartFile file) {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("success", false);

        if (file == null) {
            result.put("message", "未获取到文件");
            return result;
        }

        String imageUrl = QiNiuUtils.uploadFile(file, null, QiNiuConfig.BUCKET_QINIU_CHROME);
        if (StringUtils.isEmpty(imageUrl)) {
            result.put("message", "上传图片至七牛失败, 请联系管理员");
            return result;
        }

        result.put("imageUrl", imageUrl);
        result.put("success", true);
        return result;
    }


    @ResponseBody
    @RequestMapping("/get-product-info")
    public Map<String, Object> getProductInfo(HttpServletRequest request) {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("success", false);

        int id = NumberUtils.toInt(request.getParameter("id"), -1);
        if (id < 0) {
            result.put("message", "商品编号有误!");
            return result;
        }

        Product product = productService.getProductById(id);
        if (product == null || StringUtils.equals(product.getValid(), "N")) {
            result.put("message", "未查找到编号为: " + id + "的商品");
            return result;
        }

        result.put("product", new Gson().toJson(product));
        result.put("success", true);
        return result;
    }

    @ResponseBody
    @RequestMapping("/delete-product-by-id")
    public Map<String, Object> deleteProductById(HttpServletRequest request) {
        Map<String, Object> result = new HashMap<>();
        result.put("success", false);

        int id = NumberUtils.toInt(request.getParameter("id"), -1);
        if (id < 0) {
            result.put("message", "商品编号有误!");
            return result;
        }

        int res = productService.deleteProductById(id);
        if (res != 1) {
            result.put("message", "删除失败, 请联系管理员!");
            return result;
        }

        result.put("success", true);
        return result;
    }

}
