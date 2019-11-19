package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.TimeZone;

@Controller
public class TimeController {
    @GetMapping("/worldClock") //ánh xạ request lên phương thức xử lý
    public String getTimeByTimezone(ModelMap model, @RequestParam(name = "city",
    required = false, defaultValue = "Asia/Ho_Chi_Minh") String city){
        //get current time at local
        Date date = new Date();
        //get timezone by the local
        TimeZone local = TimeZone.getDefault();
        //get timezone by the specified city
        TimeZone locale = TimeZone.getTimeZone(city);
        //calculate the curent time in the specified city
        long locale_time = date.getTime() + (local.getRawOffset() - local.getRawOffset());
        //reset the date by locale_time
        date.setTime(locale_time);
        //set the date sent to the view
        model.addAttribute("city", city);
        model.addAttribute("date" , date);
        return "index";
    }


}
