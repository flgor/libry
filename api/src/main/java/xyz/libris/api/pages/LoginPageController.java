package xyz.libris.api.pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginPageController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String init() {
        return "login";
    }
}