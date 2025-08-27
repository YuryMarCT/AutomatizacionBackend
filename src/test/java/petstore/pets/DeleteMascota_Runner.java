package petstore.pets;

import com.intuit.karate.junit5.Karate;

public class DeleteMascota_Runner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:petstore/features/DeleteMascota.feature");
    }
}