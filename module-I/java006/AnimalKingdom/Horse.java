package AnimalKingdom;
public class Horse extends Animals{
    private String run;

    public Horse (String name, String sound, int age, String run) {
        super(name, sound, age);
        this.run = run;
    }


    public String getRun() {
        return this.run;
    }

    public void setRun(String run) {
        this.run = run;
    }

}
