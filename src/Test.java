import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Test {
    private List<List<String>> eleves;
    public static final Test instance = new Test();

    private Test() {
        this.eleves = new ArrayList<List<String>>();
        this.eleves.add(new ArrayList<String>(Arrays.asList("1", "Kylian", "Mbappe")));
        this.eleves.add(new ArrayList<String>(Arrays.asList("2", "Lionel", "Messi")));
        this.eleves.add(new ArrayList<String>(Arrays.asList("3", "Antoine", "Griezmann")));
        this.eleves.add(new ArrayList<String>(Arrays.asList("4", "Cristiano", "Ronaldo")));
        this.eleves.add(new ArrayList<String>(Arrays.asList("5", "Didier", "Deschamps")));
    }

    public List<List<String>> getEleves() {
        return eleves;
    }

    public void launcher(Integer a) {
        if (a == 10) {
            Main.Affichage();
        } else {
            System.out.println("No display");
        }
    }
}
