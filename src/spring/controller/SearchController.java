package spring.controller;

import com.google.gson.Gson;
import dao.AO;
import dao.ExhibitionDAO;
import dao.NewsDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SearchController {

    @RequestMapping(value = "/search.html")
    public ModelAndView initSeacherPage(){
        return new ModelAndView("search","command",this);
    }

    @RequestMapping(value = "/search.action", method = RequestMethod.POST)
    @ResponseBody
    public List searchFunc(@RequestBody String json, HttpServletRequest request)throws Exception {
        //第一个参数为搜索的种类，第二个参数为keywords
        AO temp = new Gson().fromJson(json, AO.class);
        List t = null;
        if (temp.getFirst().equals("Exhibition")) {
            t = new ExhibitionDAO().getExhibitionByKeyword(temp.getSecond());

        }
        else if(temp.getFirst().equals("News"))
            request.setAttribute("searchList", new NewsDAO().getNewsByKeyword(temp.getSecond()));
        return t;
    }
}
