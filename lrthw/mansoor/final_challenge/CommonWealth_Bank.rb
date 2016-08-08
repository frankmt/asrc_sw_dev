class Account
  attr_reader :name, :account_balance

  def initialize(name, account_balance)
    @name = name
    @account_balance = account_balance
  end
end

def display
   puts "Thank you for choosing Commonwealth Bank.
        Please enter your name:"
     input = gets.chomp
  if input == "Tash_Postolovski"
  else
    puts incorrect_name
  end
    puts "please enter your opening_balance:"
     input = gets.chomp
  if input == "100"
    puts  main_menu
  else
    input != @account_balance
    puts "Please enter a number."
  end
end

def main_menu
  puts "Thank you Tash_Postolovski, your bank account has been created.
        What would you like to do?
        1. Withdraw funds.
        2. Deposit funds.
        3. Transfer to another account.
        4. View bank statement."

     input = gets.chomp

   case option
   when 1
        withdrawl_funds
   when 2
        deposit_funds
   when 3
        transfer_to_another_account
    when 4
        view_bank_statement
   else
        exit
   end
end
when 1
      @account_balance -= amount
      puts how much would you like to withdraw?
      "You have withdrawn $#{amount}: your balance is now $$#{amount}"
else
      account_balance > amount
      puts "you cannot withdrawl more than your available balance of $#{amount}".
end
when 2
     @account_balance += amount
     puts how much would you like to deposit?
     "You have deposit $#{amount}: your balance is now $$#{amount}"
else
     incorrect_number
end
when 3
     @account_balance -= amount
     puts how much would you like to transfer?
     "You have transfer $#{amount} to to #{name}: your balance is now $$#{amount}"
else
     account_balance > amount
     puts "I'm sprry. you cannot transfer more than your available balance of $#{amount}".
end
when 4
      print
      Bank Account Statement for Tash Postolovski
      ===========================================
      Initial deposit:
      Withdrawal:
      Deposit:
      Transfer to Mansoor:

      Balance:

Thank you for your time and expertise. Please contact me if you have any questions or need to clarify any of these requirements.
All my best,
Natasha Postolovski
Chief Technology Officer,
Commonwealth Bank of Australia
end
def incorrect_name
    puts "Access Denied: incorrect Name"
    exit
end
account = Account.new("Tash_Postolovski", 100)
display
