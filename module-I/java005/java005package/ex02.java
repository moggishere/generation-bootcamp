package java005package;

// 2) Crie uma classe avião e apresente os atributos e métodos referentes
// esta classe, em seguida crie um objeto avião, defina as instancias deste
// objeto e apresente as informações deste objeto no console.
public class ex02 { // planes
    private int planeId;
    private String planeName;
    private String airlineCompany;
    private int capacity;
    private int year;

    public ex02(int planeId, int year, int capacity, String planeName, String airlineCompany) {
        this.planeId = planeId;
        this.year = year;
        this.capacity = capacity;
        this.planeName = planeName;
        this.airlineCompany = airlineCompany;
    }

    public void printPlane() {
        System.out.println("\nID " + planeId + "\nYEAR " + year + "\nCAPACITY " + capacity + "\nNAME " + planeName + "\nAIRLINE " + airlineCompany);
    }

    public int getPlaneId() {
        return this.planeId;
    }

    public void setPlaneId(int planeId) {
        this.planeId = planeId;
    }

    public String getPlaneName() {
        return this.planeName;
    }

    public void setPlaneName(String planeName) {
        this.planeName = planeName;
    }

    public String getAirlineCompany() {
        return this.airlineCompany;
    }

    public void setAirlineCompany(String airlineCompany) {
        this.airlineCompany = airlineCompany;
    }

    public int getCapacity() {
        return this.capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int getYear() {
        return this.year;
    }

    public void setYear(int year) {
        this.year = year;
    }

}