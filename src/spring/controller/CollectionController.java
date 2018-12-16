package spring.controller;

import com.google.gson.Gson;
import dao.AO;
import dao.CollectionDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;
import po.Collection;
import po.User;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Controller
public class CollectionController{

    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @RequestMapping(value = "/Collection.html")
    public ModelAndView initCollectionPage(Model model){
        return new ModelAndView("Collection","command",this);
    }


    @RequestMapping(value = "/addToCollection.action")
    @ResponseBody
    public CollectionController addToCollection(@RequestBody String json, HttpServletRequest request){

        try
        {
            Collection coll = new Gson().fromJson(json, Collection.class);
            User user = (User)request.getSession().getAttribute("currentUser");
            coll.setUserId(user.getUserId());
            Date dnow = new Date();
            coll.setEstablishTime(new Timestamp(dnow.getTime()));
            coll = new CollectionDAO().addToCollection(coll);
            if(coll != null)
                this.setMessage("Success");
            else
                this.setMessage("Fail");
            return this;
        }
        catch(Exception e)
        {
            this.setMessage("添加失败");
            return this;
        }
    }

    @ModelAttribute("pageCollectionList")
    @RequestMapping(value = "/getCollectionByPage.action")
    @ResponseBody
    public List getCollectionByPage(@RequestBody String json){
        try
        {
            //第一个参数存用户id，第二个参数存page
            AO temp = new Gson().fromJson(json, AO.class);
            List t = new CollectionDAO().getCollectionByPage(temp.getFirst(),Integer.parseInt(temp.getSecond()));
            return t;
        }
        catch(Exception e)
        {
            return null;
        }
    }

}
