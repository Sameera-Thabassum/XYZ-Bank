package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
    	System.setProperty("karate.env", "qa");
        return Karate.run("login").tags("ManagerLogin,CustomerLogin").relativeTo(getClass());
        
    }    

}
