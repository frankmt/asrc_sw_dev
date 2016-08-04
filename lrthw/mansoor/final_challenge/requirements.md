Hello Mansoor,

My name is Natasha Postolovski and I am the Chief Technology Officer at the Commonwealth Bank of Australia.

I have heard great things about your programming skills and was wondering if you can do some work for us.

We need to become a bank of the future. To do this, we will need to offer our customers electronic bank accounts.

I believe you are the man to build this system for us. Below I have included instructions for how I want our customers to be able to use this system.

### Requirements

When I run the program `commonwealth_bank.rb`, I should be greeted with the following:

`Thank you for choosing Commonwealth Bank.`

`Please enter your name:`

The customer enters their name.

`Please enter your opening balance:`

The customer enters their opening balance i.e. 100.

`Thank you, your bank account has been created.`

If I enter something that is not a number, I see the following error message and must try again:

`Please enter a number.`

When my account is created, I am shown a menu:

```
What would you like to do?
1. Withdraw funds.
2. Deposit funds.
3. Transfer to another account.
4. View bank statement.
```

If I type 1 and hit enter:

`How much would you like to withdraw?`

The customer enters a number.

`You have withdrawn $<number>. Your balance is now $<number>.`

If I try to withdraw more money than I have, I see the following message:

`You cannot withdraw more than your available balance of $<number>.`

When I have withdrawn money, this amount is subtracted from my balance.

If I type 2:

`How much would you like to deposit?`

The customer enters a number.

`You have deposited $<number>. Your balance is now $<number>.`

When I have deposited money, this amount is added to my balance.

If I type 3:

`Which account are you transferring to?`

The customer enters the account name.

`How much do you wish to transfer?`

The customer enters a number.

`You have transferred $<number> to <name>.`

If you don't have enough money, the customer sees the following error message:

`I'm sorry, you cannot transfer more than your available balance of $<number>.`

When my transfer is completed, the amount is subtracted from my balance.

If I type 4, I receive a printed statement of my activity which includes my opening balance, withdrawals, deposits, transfers and total balance:

```
Bank Account Statement for Tash Postolovski
===========================================

Initial deposit: $100
Withdrawal: $50
Deposit: $100
Transfer to Mansoor: $75

Balance: $75
```

Thank you for your time and expertise. Please contact me if you have any questions or need to clarify any of these requirements.

All my best,

Natasha Postolovski

*Chief Technology Officer,*

*Commonwealth Bank of Australia*
