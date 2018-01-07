package cn.com.dom4j.base.service;

import cn.com.dom4j.base.model.Page;
import cn.com.dom4j.base.model.Product;

import java.util.List;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc
 */
public interface IProductService {

    int addProduct(Product product);

    int deleteProductById(int productId);

    int updateProduct(Product product);

    Product getProductById(int productId);

    List<Product> getProductListByName(String productName);

    List<Product> getAllProduct();

    int countProduct(Page page);

    List<Product> listProduct(Page page);

}
