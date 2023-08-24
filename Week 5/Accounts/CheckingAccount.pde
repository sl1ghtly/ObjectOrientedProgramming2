/**
 A checking account that charges transaction fees.
 */
public class CheckingAccount extends BankAccount
{
  private int transactionCount;
  private static final int FREE_TRANSACTIONS = 2;
  private static final double TRANSACTION_FEE = 1.5;
  /**
   Constructs a checking account with a given balance.
   @param initialBalance the initial balance
   */
  public CheckingAccount(double initialBalance)
  {
    super(initialBalance);
  }
  /**
   Deposit into the account. This is a transaction.
   @param amount the amount to deposit
   */
  public void deposit(double amount)
  {
    super.deposit(getBalance() + amount);
  }
  /**
   Withdraw from the account. This is a transaction.
   @param amount the amount to withdraw
   */
  public void withdraw(double amount)
  {
    super.withdraw(getBalance() - amount);
  }
  /**
   Deducts the accumulated fees and resets the
   transaction count.
   */
  public void deductFees()
  {
    if (transactionCount > FREE_TRANSACTIONS)
    {
      double fees = TRANSACTION_FEE * (transactionCount - FREE_TRANSACTIONS);
      super.withdraw(fees);
    }
    transactionCount = 0;
  }
}
