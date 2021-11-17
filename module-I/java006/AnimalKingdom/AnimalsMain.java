package AnimalKingdom;


public class AnimalsMain {
    public static void main(String[] args) {
        Horse horse01 = new Horse("Colinha", "neigh", 5, "RUNNER");
        Dog dog01 = new Dog("Spike", "woof", 2, "RUNNER");
        Sloth sloth01 = new Sloth("DMV", "aaaa", 3, "CLIMBER");
        dog01.cry();
        horse01.cry();
        sloth01.cry();
    }
}
