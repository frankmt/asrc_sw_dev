class Account
  attr_reader :name, :account_balance

  def initialize
    @name = ""
    @account_balance = ""
  end
end
def display
   puts "Thank you for choosing Commonwealth Bank.
        Please enter your name:"
      @name = gets.chomp
   puts "please enter your opening_balance:"
      @account_balance = gets.chomp
      puts @account_balance.class
   if @account_balance == "0"
        puts main_menu
   elsif @account_balance.is_a? Numeric
    @account_balance = @account_balance.to_i
   elsif @account_balance.is_a? String
       puts "Please enter a number."
   else
       puts main_menu
   end
end

def main_menu
  puts "Thank you #{@name}, your bank account has been created.
        What would you like to do?
        1. Withdraw funds.
        2. Deposit funds.
        3. Transfer to another account.
        4. View bank statement."

     input = gets.chomp

# #    case option
#    when 1
#         withdrawl_funds
#    when 2
#         deposit_funds
#    when 3
#         transfer_to_another_account
#     when 4
#         view_bank_statement
#    else
#         exit
#    end
# end
#
# case option
# when 1
#       @account_balance -= amount
#       puts how much would you like to withdraw?
#       "You have withdrawn $#{amount}: your balance is now $$#{amount}"
#
#       account_balance > amount
#       puts "you cannot withdrawl more than your available balance of $#{amount}".

# when 2
#      @account_balance += amount
#      puts how much would you like to deposit?
#      "You have deposit $#{amount}: your balance is now $$#{amount}"
# else
#      incorrect_name
#
# when 3
#      @account_balance -= amount
#      puts how much would you like to transfer?
#      "You have transfer $#{amount} to to #{name}: your balance is now $$#{amount}"
# else
#      account_balance > amount
#      puts "I'm sprry. you cannot transfer more than your available balance of $#{amount}".
#
# when 4
#       print
#       Bank Account Statement for Tash Postolovski
#       ===========================================
#       Initial deposit:
#       Withdrawal:
#       Deposit:
#       Transfer to Mansoor:
#
#       Balance:
#
# Thank you for your time and expertise. Please contact me if you have any questions or need to clarify any of these requirements.
# All my best,
# Natasha Postolovski
# Chief Technology Officer,
# Commonwealth Bank of Australia
end

def incorrect_name
    puts "Access Denied: incorrect Name"
    exit
end
account = Account.new
display
