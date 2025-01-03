class BankAccount {
  int accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance); // Constructor

  void deposit(double amount) {
    balance += amount;
    print("Deposited $amount. New balance: $balance");
  }

  // Withdraw function
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrew $amount. New balance: $balance");
    } else {
      print("Insufficient funds");
    }
  }

  // Get balance function
  double getBalance() {
    return balance;
  }
}

void main() {
  //  object
  BankAccount account = BankAccount(1234567890, 1000.0);

  //call functions
  account.deposit(500.0);
  account.withdraw(200.0);
  print("Current balance: ${account.getBalance()}");

  account.deposit(1000.0);
  account.withdraw(300.0);
  print("Current balance: ${account.getBalance()}");
}
