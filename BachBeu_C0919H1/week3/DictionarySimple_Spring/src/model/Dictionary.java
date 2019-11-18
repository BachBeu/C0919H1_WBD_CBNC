package model;

import java.util.HashMap;
import java.util.Map;

public class Dictionary {
    public static Map<String, String> dictionary = new HashMap<>();;

    static {
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");
    }
}
