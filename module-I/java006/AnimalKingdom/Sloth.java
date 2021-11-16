package AnimalKingdom;
public class Sloth extends Animals{
    private String climb;

    public Sloth(String name, String sound, int age, String climb) {
        super(name, sound, age);
        this.climb = climb;
    }


    public String getClimb() {
        return this.climb;
    }

    public void setClimb(String climb) {
        this.climb = climb;
    }

}
