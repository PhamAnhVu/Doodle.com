/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author vupa
 */
@Controller
@RequestMapping(value = "/create")
public class CreateController {

    @RequestMapping(method = RequestMethod.GET)
    public String discription() {
        return "create";
    }

    @RequestMapping(value = "/dates", method = RequestMethod.GET)
    public String getDate() {
        return "date";
    }

    @RequestMapping(value = "/times", method = RequestMethod.GET)
    public String getTime() {
        return "time";
    }

    @RequestMapping(value = "/invites", method = RequestMethod.GET)
    public String getInvite() {
        return "invite";
    }

    @RequestMapping(value = "/polls", method = RequestMethod.GET)
    public String ready(@RequestParam("pollId") String pollId, 
            @RequestParam("adminKey") String adminKey) {
        
        return "complete";
    }

}
