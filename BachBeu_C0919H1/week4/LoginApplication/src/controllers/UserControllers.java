package controllers;

import dao.UserDao;
import models.Login;
import models.Users;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserControllers {
    @GetMapping("/home")
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView("home", "login", new Login());
        return modelAndView;
    }
    @PostMapping("/login")
    public ModelAndView login(@ModelAttribute("login")Login login){
        Users users = UserDao.checkLogin(login);
        if(users==null){
            ModelAndView modelAndView = new ModelAndView("error");
            return modelAndView;
        }else {
            ModelAndView modelAndView = new ModelAndView("user");
            modelAndView.addObject("userName", users);
            return modelAndView;
        }
    }
}
