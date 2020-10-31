package com.sustart.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @ClassName WebControl
 * @Description TODO
 * @Author ZY
 * @Date2020/10/15 15:56
 * @Version 1.0
 **/
@Controller
public class SearchResultController {

    @RequestMapping(value = "/searchResult", method = RequestMethod.POST)
    public String getSearchText(@RequestParam("searchArea") String searContent, Model model) {
        if(searContent.length()>10 || searContent.length()<2){
            return "SearchContentError";
        }
        model.addAttribute("searContent", searContent);
        return "searchResult";
    }
}
