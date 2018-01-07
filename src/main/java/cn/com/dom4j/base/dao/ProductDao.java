package cn.com.dom4j.base.dao;

import cn.com.dom4j.base.dao.mapper.ProductMapper;
import cn.com.dom4j.base.model.Page;
import cn.com.dom4j.base.model.Product;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc
 */
@Repository
public class ProductDao {

    @Resource(name = "productMapper")
    private ProductMapper mapper;

    public int addProduct(Product product) {
        return mapper.addProduct(product);
    }

    public int deleteProductById(int id) {
        return mapper.deleteProductById(id);
    }

    public int updateProduct(Product product) {
        return mapper.updateProduct(product);
    }

    public Product getProductById(int id) {
        return mapper.getProductById(id);
    }

    public List<Product> getProductListByName(String name) {
        return mapper.getProductListByName(name);
    }

    public List<Product> getAllProduct() {
        return mapper.getAllProduct();
    }

    public int countProduct(Page page) {
        return mapper.countProduct(page);
    }

    public List<Product> listProduct(Page page) {
        return mapper.listProduct(page);
    }

}
