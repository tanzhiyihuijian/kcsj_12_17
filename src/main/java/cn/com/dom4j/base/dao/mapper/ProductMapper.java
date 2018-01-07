package cn.com.dom4j.base.dao.mapper;

import cn.com.dom4j.base.model.Page;
import cn.com.dom4j.base.model.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc
 */
@Repository
public interface ProductMapper {

    int addProduct(Product product);

    int deleteProductById(int id);

    int updateProduct(Product product);

    Product getProductById(int id);

    List<Product> getProductListByName(String name);

    List<Product> getAllProduct();

    int countProduct(Page page);

    List<Product> listProduct(Page page);

}
