package spring.controller;

import javax.servlet.http.HttpServletRequest;
import com.google.gson.Gson;
import dao.UserDAO;
import dao.UserInfoDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;
import po.User;
import po.UserInfo;

@Controller
public class LoginController {

    private String message;

    public String getMessage(){
        return message;
    }

    @RequestMapping(value = "/Login.html")
    public ModelAndView initLogin(){
        return new ModelAndView("login","command",this);
    }

    @RequestMapping(value = "login.action", method = RequestMethod.POST)
    public String validateLogin(@ModelAttribute("user")User user, HttpServletRequest request){
        System.out.println(user.getUserId());
        UserDAO ud = new UserDAO();
        if( ud.validateUser(user.getUserId(),user.getPassword()) == true ){
            return "index";
        }
        this.message = "ÓÃ»§Ãû/ÃÜÂë´íÎó";
        return "redirect:/Login.html";
    }

    @RequestMapping(value = "/Register.html")
    public ModelAndView initRegister(){
        return new ModelAndView("Register","command",this);
    }


    @RequestMapping(value = "registerUserInfo.action", method = RequestMethod.POST)
    public String registerUserInfo(@ModelAttribute("userInfo") UserInfo user, HttpServletRequest request){
        if( new UserInfoDAO().addUserInfo(user) != null){
            return "index";
        }
        this.message = "×¢²áÊ§°Ü";
        return "redirect:/Login.html";
    }

    @RequestMapping(value = "registerUser.action", method = RequestMethod.POST)
    public String registerUser(@ModelAttribute("registerUser") User user, HttpServletRequest request){
        if( new UserDAO().addUser(user) != null){
            return "index";
        }
        this.message = "×¢²áÊ§°Ü";
        return "redirect:/Login.html";
    }

}
