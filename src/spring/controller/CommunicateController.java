package spring.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baidu.ueditor.ActionEnter;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class CommunicateController {

    @RequestMapping("/communicate")
    public ModelAndView config(HttpServletRequest request, HttpServletResponse response) {
        return new ModelAndView("Communicate");
    }
}