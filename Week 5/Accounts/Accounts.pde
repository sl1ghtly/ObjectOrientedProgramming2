void setup()
{
  CheckingAccount harrysChecking = new CheckingAccount(125);

  harrysChecking.withdraw(70);
  harrysChecking.deposit(50);
  harrysChecking.deposit(45);
  harrysChecking.deposit(16);
  harrysChecking.withdraw(50);

  // Simulate end of month
  harrysChecking.deductFees();

  // Print out how much is in the account
  println("Total amount of money: " + harrysChecking.getBalance());
  
}

void draw()
{
}
