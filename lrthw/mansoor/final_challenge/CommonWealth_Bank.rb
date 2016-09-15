class Account

  attr_reader :name, :account_balance, :amount, :initial_balance, :withdrawl_all, :deposit_all, :transfer_all
  def initialize
    @name = ""
    @account_balance = ""
    @amount = ""
    @other_account = ""
    @initial_balance = ""
    @withdrawl_all = 0
    @deposit_all = 0
    @transfer_all = 0
  end
  def display
     puts "Thank you for choosing Commonwealth Bank.
          Please enter your name:"
        @name = gets.chomp
     puts "please enter your opening_balance:"
        @initial_balance = gets.chomp
        @account_balance = @initial_balance
     if @account_balance == "0"
     puts main_menu
    else
        @account_balance = @account_balance.to_i
    if @account_balance != 0
     puts "Thank you #{@name}, your bank account has been created."
        main_menu
      else
           puts "Please enter a number."
      end
    end
  end

  def main_menu
    puts "What would you like to do?
          1. Withdraw funds.
          2. Deposit funds.
          3. Transfer to another account.
          4. View bank statement.
          5. Exit."
       option = gets.chomp

    case option
      when "1"
          withdrawl_funds(amount)
      when "2"
          deposit_funds(amount)
      when "3"
          transfer_to_another_account(amount)
      when "4"
          view_bank_statement(amount)
      when "5"
          exit
     end
  end
   def withdrawl_funds(amount)

         puts "how much would you like to withdrawl?"
         @amount = gets.chomp
         @amount = @amount.to_i
      if @amount >= @account_balance
         puts "you can not withdrawl more than your available balance of $#{@account_balance}"
      elsif @account_balance -= @amount
         puts "You have withdrawl $#{@amount}: your balance is now $#{@account_balance}"
         @withdrawl_all += @amount
          main_menu
     end
   end

  def deposit_funds(amount)

       puts "how much would you like to deposit?"
       @amount = gets.chomp
       @amount = @amount.to_i
    if @account_balance += @amount
       puts "You have deposit $#{@amount}: your balance is now $#{@account_balance}"
       @deposit_all += @amount
       main_menu
    end
  end


  def transfer_to_another_account(amount)

       puts "how much would you like to transfer?"
       @amount = gets.chomp
       @amount = @amount.to_i
    if @amount > @account_balance
        puts "I'm sorry. you can not transfer more than your available balance of $#{@account_balance}"
    elsif @amount <= @account_balance
        puts "Which account do you want to transfer to?"
          @other_account = gets.chomp
          @account_balance -= @amount
        puts "You have transfer $#{@amount} to #{@other_account} account: your balance is now $#{@account_balance}"
         @transfer_all += @amount
          main_menu
    end
  end

  def view_bank_statement(amount)

  print "Bank Account Statement for #{@name}
        ===========================================
        Initial Deposit: #{@initial_balance}
        withdrawl_all: #{@withdrawl_all}
        deposit_all: #{@deposit_all}
        transfer_all: #{@transfer_all}

        Balance: #{@account_balance}

  Thank you for your time and expertise.
  Please contact me if you have any questions or need to clarify any of these requirements.

  All My Best
  Natasha Postolovski
  Chief Technology Officer
  Commonwealth Bank of Australia"

  end
end
account = Account.new
account.display
