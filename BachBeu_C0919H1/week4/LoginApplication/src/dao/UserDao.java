package dao;

import models.Login;
import models.Users;

import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static List<Users> users;
    static {
        users = new ArrayList<>();
        Users u1 = new Users();
        u1.setAge(10);
        u1.setUserName("Bach");
        u1.setAccount("bach");
        u1.setUserEmail("bach107@gmail.com");
        u1.setPassword("123456");
        users.add(u1);

        Users u2 = new Users();
        u2.setAge(15);
        u2.setUserName("hau");
        u2.setAccount("hau");
        u2.setUserEmail("cauvang@gmail.com");
        u2.setPassword("123456");
        users.add(u2);

        Users u3 = new Users();
        u3.setAge(20);
        u3.setUserName("Hoang");
        u3.setAccount("hoang");
        u3.setUserEmail("hoangcrush5nam@gmail.com");
        u3.setPassword("123456");
        users.add(u3);
    }

    public static Users checkLogin(Login login){
        for(Users u:users){
            if(u.getAccount().equals(login.getAccount())
            && u.getPassword().equals(login.getPassword())){
                return u;
            }
        }
        return null;
    }
}
