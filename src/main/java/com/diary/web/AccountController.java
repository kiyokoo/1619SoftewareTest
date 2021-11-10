package com.diary.web;

import com.diary.db.model.User;
import com.diary.db.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * 账号操作控制层
 */
@Controller
public class AccountController {

    //实例化用户服务层用户对象
    @Resource
    private IUserService userService;

    /**
     * 进入登录界面
     * @param modelAndView
     * @return
     */
    @GetMapping("/login")   //设置网页进入路径
    public ModelAndView login(ModelAndView modelAndView){
        modelAndView.setViewName("login");
        modelAndView.addObject("dataError",false);
        return modelAndView;
    }

    /**
     * 进入登录界面
     * @param modelAndView
     * @return
     */
    @PostMapping("/login")  //username   password
    public ModelAndView login(@RequestParam(required = false) String username, @RequestParam(required = false) String password,
                              HttpSession httpSession, ModelAndView modelAndView) {
        User user = userService.findByUsernameAndPassword(username,password);   //有信息user不为空，有用户名，密码，id这些信息，如果没有信息，user为空-null
        if (username.isEmpty() || password.isEmpty() || user == null) {
            modelAndView.addObject("dataError", true);
            modelAndView.setViewName("login");
        } else {
            httpSession.setAttribute("login", user);        //session域 key-value
            modelAndView.setView(new RedirectView("/index"));
        }
        return modelAndView;
    }

    /**
     * 退出
     * @param httpSession
     * @param modelAndView
     * @return
     */
    @GetMapping("/quit")
    public ModelAndView userQuit(HttpSession httpSession, ModelAndView modelAndView) {
        modelAndView.setView(new RedirectView("/login"));
        httpSession.setAttribute("login", null);
        return modelAndView;
    }

    /**
     * 注册账户
     *
     * @param username
     * @param password
     * @param httpSession
     * @param modelAndView
     * @return
     */
    @GetMapping("/register")
    public ModelAndView register(ModelAndView modelAndView) {
        modelAndView.setViewName("register");
        modelAndView.addObject("usernameExist", false);
        modelAndView.addObject("passwordSame", false);
        return modelAndView;
    }

    /**
     * 注册账号
     *
     * @param username
     * @param password
     * @param httpSession
     * @param modelAndView
     * @return
     */
    @PostMapping("/register")
    public ModelAndView register(@RequestParam(required = false) String username, @RequestParam(required = false) String password1,
                                 @RequestParam(required = false) String password2, ModelAndView modelAndView) {
        modelAndView.setView(new RedirectView("/login"));
        User user = userService.findByUsername(username);
        if (username.isEmpty() || password1.isEmpty() || password2.isEmpty()){
            modelAndView.addObject("passwordSame", true);
            modelAndView.addObject("usernameExist", false);
            modelAndView.setViewName("register");
        }else if (user != null) {
            modelAndView.addObject("usernameExist", true);
            modelAndView.addObject("passwordSame", false);
            modelAndView.setViewName("register");
        } else if (password1.equals(password2)) {
            userService.addUser(username, password1);
            modelAndView.setView(new RedirectView("/login"));
        } else {
            modelAndView.addObject("passwordSame", true);
            modelAndView.addObject("usernameExist", false);
            modelAndView.setViewName("register");
        }
        return modelAndView;
    }

    /**
     * 进入修改密码界面
     *
     * @param username
     * @param password
     * @param httpSession
     * @param modelAndView
     * @return
     */
    @GetMapping("/changePassword")
    public ModelAndView changePassword(ModelAndView modelAndView) {
        modelAndView.setViewName("changePassword");
        modelAndView.addObject("userError", false);
        modelAndView.addObject("changePasswordError", false);
        return modelAndView;
    }

    /**
     * 修改密码
     *
     * @param username
     * @param password
     * @param httpSession
     * @param modelAndView
     * @return
     */
    @PostMapping("/changePassword")
    public ModelAndView changePassword(@RequestParam(required = false) String username, @RequestParam(required = false) String password1,
                                       @RequestParam(required = false) String password2, ModelAndView modelAndView) {
        User user = userService.findByUsername(username);
        if (username.isEmpty() || password1.isEmpty() || password2.isEmpty()){
            modelAndView.addObject("userError", true);
            modelAndView.addObject("changePasswordError", false);
            modelAndView.setViewName("changePassword");
        }else if (user == null) {
            modelAndView.addObject("userError", true);
            modelAndView.addObject("changePasswordError", false);
            modelAndView.setViewName("changePassword");
        } else if (password1.equals(password2)) {
            user.setPassword(password1);
            userService.updatePassword(user);
            modelAndView.setView(new RedirectView("/login"));
        } else {
            modelAndView.addObject("userError", false);
            modelAndView.addObject("changePasswordError", true);
            modelAndView.setViewName("changePassword");
        }
        return modelAndView;
    }
}
