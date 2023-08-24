/**
 A bank account has a balance that can be changed by
 deposits and withdrawals.
 */
public class BankAccount {
  // declare instance variables
  private double balance;
  /**
   Constructs a bank account with a zero balance
   */
  public BankAccount()
  {
    balance = 0;
  }
  /**
   Constructs a bank account with a given balance
   @param initialBalance the initial balance
   */
  public BankAccount(double initialBalance)
  {
    balance = initialBalance;
  }

  /**
   Gets the current balance of the bank account.
   @return the current balance
   */
  public double getBalance()
  {
    return balance;
  }

  /**
   Deposits money into the bank account.
   @param amount the amount to deposit
   */
  public void deposit(double amount)
  {
    balance = balance + amount;
  }
  /**
   Withdraws money from the bank account.
   @param amount the amount to withdraw
   */
  public void withdraw(double amount)
  {
    balance = balance - amount;
  }
  /**
   Transfers money from the bank account to another.
   @params account destination and amount 
   */
  public void transfer(BankAccount account, double amount)
  {
    account.deposit(amount);
    this.balance = balance - amount;
  }
}
