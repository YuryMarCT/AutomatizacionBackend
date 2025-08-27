package reqres.in;

import com.intuit.karate.junit5.Karate;

public class ListarUsuario_Runner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:reqres/features/ListarUsuario.feature");
    }
}