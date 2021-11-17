package AnimalKingdom;

public class Animals {
    private String name;
    private String sound;
    private int age;

    public Animals(String name, String sound, int age) {
        this.name = name;
        this.sound = sound;
        this.age = age;
    }

    public void cry() {
        System.out.println("Woof woof");
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSound() {
        return this.sound;
    }

    public void setSound(String sound) {
        this.sound = sound;
    }

    public int getAge() {
        return this.age;
    }

    public void setAge(int age) {
        this.age = age;
    }

}