package AnimalKingdom;
public class Dog extends Animals {
    private String run;

    public Dog(String name, String sound, int age, String run) {
        super(name, sound, age);
        this.run = run;
    }
    
}
