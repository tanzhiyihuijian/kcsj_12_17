package cn.com.dom4j.web.controller;

import org.springframework.ui.ModelMap;

import javax.servlet.http.HttpServletRequest;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月17日
 * @desc
 */
public abstract class BaseController {

    public void putServerPath(HttpServletRequest request, ModelMap modelMap) {
        modelMap.put("serverPath", request.getContextPath());
    }

}
