package Game;

public class gameClassesPaper {
    private String namePaper;
    private int id;
    private int gramature;
    private int flammability;
    private int roughness;

    public gameClassPaper(String namePaper, int id, int gramature, int flammability, int roughness) {
        this.namePaper = namePaper;
        this.id = id;
        this.gramature = gramature;
        this.flammability = flammability;
        this.roughness = roughness;
    }


    public String getNamePaper() {
        return this.namePaper;
    }

    public void setNamePaper(String namePaper) {
        this.namePaper = namePaper;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getGramature() {
        return this.gramature;
    }

    public void setGramature(int gramature) {
        this.gramature = gramature;
    }

    public int getFlammability() {
        return this.flammability;
    }

    public void setFlammability(int flammability) {
        this.flammability = flammability;
    }

    public int getRoughness() {
        return this.roughness;
    }

    public void setRoughness(int roughness) {
        this.roughness = roughness;
    }

}
