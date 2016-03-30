/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import model.UserDao;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author vupham
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @RequestMapping(value = "/singup", method = RequestMethod.GET)
    public String singup(ModelMap map, HttpSession session) {
        if (session.getAttribute("username") != null) {
            return "redirect:/";
        }
        User user = new User();
        map.put("user", user);
        return "singup";
    }

    @RequestMapping(value = "/singup", method = RequestMethod.POST)
    public String singup(@ModelAttribute(value = "user") User user, ModelMap map, HttpSession session) {

        UserDao userDao = new UserDao();
        User existUser = userDao.getUser(user.getEmail());

        if (existUser != null) {
            map.addAttribute("message", "Tài khoản đã tồn tại");
            return "singup";
        }

        if (userDao.insert(user)) {
            session.setAttribute("username", user.getUsername());
            return "redirect:/";
        } else {
            map.addAttribute("message", "Hệ thống đã xảy ra lỗi, vui lòng thử lại sau");
            return "singup";
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap map, HttpSession session) {
        if (session.getAttribute("username") != null) {
            return "redirect:/";
        }
        User user = new User();
        map.put("user", user);
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute(value = "user") User user, ModelMap map, HttpSession session) {
        UserDao userDao = new UserDao();
        User newUser = userDao.getUser(user.getEmail(), user.getPassword());

        if (newUser != null) {
            session.setAttribute("username", newUser.getUsername());
            return "redirect:/";
        } else {
            map.addAttribute("message", "Tài khoản hoặc mật khẩu không chính xác");
            return "login";
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        return "redirect:/";
    }
}
