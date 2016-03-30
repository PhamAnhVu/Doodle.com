/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author vupa
 */

@Controller
@RequestMapping(value = "/account")
public class AcountController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String showAccount(HttpSession session) {
       if (session.getAttribute("username") != null) {
            return "account";
        }
       return "redirect:user/login";
    }
    
}
