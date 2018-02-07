package cn.com.dom4j.web.controller;

import org.apache.http.protocol.HttpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月07日
 * @desc jquery
 */
@Controller
@RequestMapping("/jquery")
public class JQueryController extends BaseController {

    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, ModelMap modelMap) {
        putServerPath(request, modelMap);
        return new ModelAndView("/jquery/index", modelMap);
    }




}
