package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
    public class CurrencyController {
        @GetMapping("/converter")
        public String display(@RequestParam int rate, int usd, Model model){
            float vnd = rate * usd;
            model.addAttribute("vnd", vnd);
            model.addAttribute("usd", usd);
            model.addAttribute("rate", rate);
            return "converter";
        }
        @GetMapping("/index")
        public String convert(){
            return "index";
        }
}
