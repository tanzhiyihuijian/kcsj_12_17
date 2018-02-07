package cn.com.dom4j.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月21日
 * @desc Vue学习 Controller
 */
@Controller
@RequestMapping("/vue")
public class VueController {


    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, ModelMap modelMap) {



        return new ModelAndView("/vue/index", modelMap);
    }


}
