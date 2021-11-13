package Game;
public class gameClassesRock {
    private String nameRock;
    private int id;
    private int grit;
    private int weight;
    private int edge;
    
    public gameClassesRock(String nameRock, int id, int grit, int weight, int edge) {
        this.nameRock = nameRock;
        this.id = id;
        this.grit = grit;
        this.weight = weight;
        this.edge = edge;
    }


    public String getNameRock() {
        return this.nameRock;
    }

    public void setNameRock(String nameRock) {
        this.nameRock = nameRock;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getGrit() {
        return this.grit;
    }

    public void setGrit(int grit) {
        this.grit = grit;
    }

    public int getWeight() {
        return this.weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getEdge() {
        return this.edge;
    }

    public void setEdge(int edge) {
        this.edge = edge;
    }

}