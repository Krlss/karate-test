package users;

import com.intuit.karate.junit5.Karate;

public class UserRunner {

    @Karate.Test
    Karate RunnerUser(){
        return Karate.run().relativeTo(getClass());
    }
}
