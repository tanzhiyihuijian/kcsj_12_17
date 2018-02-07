package cn.com.dom4j.base.service.impl;

import cn.com.dom4j.base.model.Page;
import cn.com.dom4j.base.model.Product;
import cn.com.dom4j.base.service.BaseServiceTest;
import cn.com.dom4j.base.service.IProductService;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月21日
 * @desc
 */
public class ProductServiceTest extends BaseServiceTest {

    @Resource(name = "productService")
    private IProductService productService;

    @Test
    public void testAddProduct() {

        Product product = new Product();

        product.setName("测试商品-1");
        product.setPrice(50);
        product.setCost(30);
        product.setImageUrl("https://--");
        product.setFactory("商品制造商-1");
        product.setCreateTime(new Date());
        product.setValid("Y");

        int res = productService.addProduct(product);

        System.out.println(res);


    }

    @Test
    public void testDeleteProductById() throws Exception {
    }

    @Test
    public void testUpdateProduct() throws Exception {
    }

    @Test
    public void testGetProductById() throws Exception {
    }

    @Test
    public void testGetProductListByName() throws Exception {
    }

    @Test
    public void testGetAllProduct() throws Exception {
    }

    @Test
    public void testCountProduct() throws Exception {
    }

    @Test
    public void testListProduct() {

        List<Product> products = productService.listProduct(new Page());

        System.out.println(products);


    }
}