package jvb.vn.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {
    @RequestMapping("_admin/login")
    public String login() {
        return "backend/login";
    }
}
