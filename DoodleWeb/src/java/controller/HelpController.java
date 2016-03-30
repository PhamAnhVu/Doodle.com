/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.User;
import entities.Users;
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
@RequestMapping(value = "/help")
public class HelpController {

    @RequestMapping(value = "/reset-password", method = RequestMethod.GET)
    public String login(ModelMap map, HttpSession session) {
        return "reset-password";
    }

    @RequestMapping(value = "/reset-password", method = RequestMethod.POST)
    public String login(@ModelAttribute(value = "user") User user, ModelMap map, HttpSession session) {
        if (user.getUsername().equals("vupa")) {
            session.setAttribute("username", user.getUsername());
            return "redirect:/";
        } else {
            return "error";
        }
    }
}
