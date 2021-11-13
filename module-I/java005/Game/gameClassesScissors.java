package Game;

public class gameClassesScissors {
    private String nameScissors;
    private int id;
    private int cut;
    private int width;
    private int rust;

    public gameClassesScissors(String nameScissors, int id, int cut, int width, int rust) {
        this.nameScissors = nameScissors;
        this.id = id;
        this.cut = cut;
        this.width = width;
        this.rust = rust;
    }


    public String getNameScissors() {
        return this.nameScissors;
    }

    public void setNameScissors(String nameScissors) {
        this.nameScissors = nameScissors;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCut() {
        return this.cut;
    }

    public void setCut(int cut) {
        this.cut = cut;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getRust() {
        return this.rust;
    }

    public void setRust(int rust) {
        this.rust = rust;
    }

}
