// Java Program to demonstrate the working of a banking-system
// where we deposit and withdraw amount from our account.
// Creating an Account class which has deposit() and withdraw() methods
class Account {
    int acc_no;
    String name;
    float amount;

    // Method to initialize object
    void insert(int a, String n, float amt) {
        acc_no = a;
        name = n;
        amount = amt;
    }

    // deposit method
    void deposit(float amt) {
        amount = amount + amt;
        System.out.println(amt + " deposited");
    }

    // withdraw method
    void withdraw(float amt) {
        if (amount < amt) {
            System.out.println("Insufficient Balance");
        } else {
            amount = amount - amt;
            System.out.println(amt + " withdrawn");
        }
    }

    // method to check the balance of the account
    void checkBalance() {
        System.out.println("Balance is: " + amount);
    }

    // method to display the values of an object
    void display() {
        System.out.println(acc_no + " " + name + " " + amount);
    }
}

// Creating a test class to deposit and withdraw amount
class TestAccount {
    public static void main(String[] args) {
        Account a1 = new Account();
        a1.insert(832345, "Ankit", 1000);
        a1.display();
        a1.checkBalance();
        a1.deposit(40000);
        a1.checkBalance();
        a1.withdraw(15000);
        a1.checkBalance();
    }
}

public class javatpointexample {

}

//stdout
// 832345 Ankit 1000.0
// Balance is: 1000.0
// 40000.0 deposited
// Balance is: 41000.0
// 15000.0 withdrawn
// Balance is: 26000.0