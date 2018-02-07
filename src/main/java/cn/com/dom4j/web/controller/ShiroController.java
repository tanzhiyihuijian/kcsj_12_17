package cn.com.dom4j.web.controller;

import cn.com.dom4j.base.util.EncryptUtil;
import com.google.gson.Gson;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月30日
 * @desc
 */
@Controller
@RequestMapping("/shiro")
public class ShiroController {

    @RequestMapping("/index.jhtml")
    public ModelAndView index(HttpServletRequest request, ModelMap modelMap) {
        return new ModelAndView("/shiro/index", modelMap);
    }

    @RequestMapping("/exception-for-page-jump.jhtml")
    public ModelAndView exceptionForPageJumps() {
        throw new RuntimeException("手动抛出异常");
    }

    @ResponseBody
    @RequestMapping(value = "/business-exception.json", method = RequestMethod.POST)
    public String businessExecption() {
        throw new RuntimeException("throw business exception");
    }

    @ResponseBody
    @RequestMapping(value = "/other-exception.json", method = RequestMethod.POST)
    public String otherException() throws Exception {
        throw new Exception("throw other exception!");
    }

    // 跳转到登录页面
    @RequestMapping("/login.jhtml")
    public ModelAndView login(ModelMap modelMap) {
        return new ModelAndView("/shiro/login", modelMap);
    }

    // 跳转到登录成功的页面
    @RequestMapping("/login-success.jhtml")
    public ModelAndView loginSuccess(ModelMap modelMap) {
        return new ModelAndView("/shiro/login-success", modelMap);
    }

    @RequestMapping("/new-page.jhtml")
    public ModelAndView newPage(ModelMap modelMap) {
        return new ModelAndView("/shiro/new-page", modelMap);
    }

    @RequestMapping("/new-page-not-add.jhtml")
    public ModelAndView newPageNotAdd(ModelMap modelMap) {
        return new ModelAndView("/shiro/new-page-not-add", modelMap);
    }

    // 验证用户名和密码
    @ResponseBody
    @RequestMapping("/check-login.json")
    public String checkLogin(HttpServletRequest request, String username, String password) throws Exception {

        Map<String, Object> result = new HashMap<>();

        try {

            UsernamePasswordToken token = new UsernamePasswordToken(username, EncryptUtil.MD5(password));

            Subject subject = SecurityUtils.getSubject();

            if (!subject.isAuthenticated()) {
                // 使用 shiro来验证
                token.setRememberMe(true);
                subject.login(token);
            }

        } catch (Exception e) {
            throw new Exception("666");
        }

        result.put("success", true);
        return new Gson().toJson(result);
    }

    // 退出登录
    @ResponseBody
    @RequestMapping(value = "/logout.json")
    public String logout() {

        Map<String, Object> result = new HashMap<>();
        result.put("success", false);

        Subject subject = SecurityUtils.getSubject();
        subject.logout();

        result.put("success", true);
        return new Gson().toJson(result);
    }

}
