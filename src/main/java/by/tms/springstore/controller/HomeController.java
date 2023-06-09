package by.tms.springstore.controller;

import static by.tms.springstore.utils.Constants.Attributes.CATEGORIES;
import static by.tms.springstore.utils.Constants.PagePath.HOME;

import by.tms.springstore.domain.Category;
import by.tms.springstore.service.CategoryService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class HomeController {

    private final CategoryService categoryService;

    @GetMapping("/")
    public ModelAndView redirectToHome() {
        return new ModelAndView("redirect:/home");
    }

    @GetMapping("/home")
    public ModelAndView getHomePage(ModelAndView modelAndView) {
        List<Category> categories = categoryService.getCategories();
        modelAndView.addObject(CATEGORIES, categories);
        modelAndView.setViewName(HOME);
        return modelAndView;
    }
}
