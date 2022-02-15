import java.util.List;

public class Main {

    public static Test test = Test.instance;

    public static void main(String[] args) {
        test.launcher(9);
        test.launcher(10);
    }

    public static void Affichage() {
        for (List<String> eleve : test.getEleves()) {
            System.out.println("Id: " + eleve.get(0) + " / Firstname: " + eleve.get(1) + " / Lastname: " + eleve.get(2)) ;
        }
    }
}
