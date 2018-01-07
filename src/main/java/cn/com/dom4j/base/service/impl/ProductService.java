package cn.com.dom4j.base.service.impl;

import cn.com.dom4j.base.dao.ProductDao;
import cn.com.dom4j.base.model.Page;
import cn.com.dom4j.base.model.Product;
import cn.com.dom4j.base.service.IProductService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc
 */
@Service
public class ProductService implements IProductService {

    private static final Log LOG = LogFactory.getLog(ProductService.class);

    @Resource(name = "productDao")
    private ProductDao productDao;

    @Override
    public int addProduct(Product product) {
        int res = 0;
        try {
            res = productDao.addProduct(product);
        } catch (Exception e) {
            LOG.info("addProduct error: ", e);
        }
        return res;
    }

    @Override
    public int deleteProductById(int productId) {
        int res = 0;
        try {
            res = productDao.deleteProductById(productId);
        } catch (Exception e) {
            LOG.info("deleteProductById error: ", e);
        }
        return res;
    }

    @Override
    public int updateProduct(Product product) {
        int res = 0;
        try {
            res = productDao.updateProduct(product);
        } catch (Exception e) {
            LOG.info("updateProduct error: ", e);
        }
        return res;
    }

    @Override
    public Product getProductById(int productId) {
        Product product = null;
        try {
            product = productDao.getProductById(productId);
        } catch (Exception e) {
            LOG.info("getProductById error: ", e);
        }
        return product;
    }

    @Override
    public List<Product> getProductListByName(String productName) {
        List<Product> products = null;
        try {
            products = productDao.getProductListByName(productName);
        } catch (Exception e) {
            LOG.info("getProductListByName error: ", e);
        }
        return products;
    }

    @Override
    public List<Product> getAllProduct() {
        List<Product> products = null;
        try {
            products = productDao.getAllProduct();
        } catch (Exception e) {
            LOG.info("getAllProduct error : ", e);
        }
        return products;
    }

    @Override
    public int countProduct(Page page) {
        int count = 0;
        try {
            count = productDao.countProduct(page);
            page.setRecordCount(count);
        } catch (Exception e) {
            LOG.info("countProduct error: ", e);
        }
        return count;
    }

    @Override
    public List<Product> listProduct(Page page) {
        List<Product> products = null;
        try {
            products = productDao.listProduct(page);
        } catch (Exception e) {
            LOG.info("listProduct error : ", e);
        }
        return products;
    }


}
