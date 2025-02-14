package jvb.vn.prj.controller;


import jvb.vn.prj.dto.UserDto;
import jvb.vn.prj.entities.UserEntity;
import jvb.vn.prj.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.sql.SQLException;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("createuser")
    public String createUser(Model model) {
        model.addAttribute("userDto", new UserDto());
        return "backend/createUser";
    }

    @RequestMapping(value = "save" , method = RequestMethod.POST , consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String saveUser(RedirectAttributes model,
                           @Validated @ModelAttribute UserDto userDto, BindingResult bindingResult) throws ClassNotFoundException , SQLException ,InstantiationError {
        if (bindingResult.hasErrors()) {
            return "backend/createUser";
        }
        UserEntity result = userService.save(userDto);
        if (result.getId() == null) {
            model.addFlashAttribute("Message" , "Tạo mới tài khoản thành công .");
        }
        else {
            model.addFlashAttribute("Message" , "Tạo mới tài khoản thất bại . ");
        }
        return "redirect:/WED-INF/backend/listUser.jsp";
    }
}
