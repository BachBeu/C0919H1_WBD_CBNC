package controllers;

import model.Dictionary;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DictionaryControllers {

    @GetMapping("/index")
    public String display() {

        return "index";
    }

    @PostMapping("/dictionary")
    public String dictionary(@RequestParam String word, Model model) {
        model.addAttribute("word", word);
        if (Dictionary.dictionary.containsKey(word)) {
            model.addAttribute("a", Dictionary.dictionary.get(word));
        } else {
            model.addAttribute("a", "Not fount");
        }
        return "dictionary";
    }


}
