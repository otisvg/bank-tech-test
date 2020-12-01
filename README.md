# Bank tech test


### How to use

Run ```irb``` in your local console  
Enter ```require './lib/Account'```  
Enter ```require './lib/Transaction'```  
Create a bank account ```account = Account.new```  
Deposit money as you wish ```account.deposit(1000)```  
Withdraw money as you wish ```account.withdraw(500)```  
Print your transaction history ```account.statement```

Rough planning process: https://docs.google.com/document/d/11yRMNskT7XWWZfIx1FcPD_uXsXiQG_fjuXi8pyQrYd0/edit  

Bear in mind that the current codebase does not perfectly reflect the plan content, as I've since refactored and renamed certain classes and methods.

### Test Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### User Stories

```
As a user,
So that I can keep my money safe,
I would like to be able to create a bank account
```

```
As a user,
So that I can make interest on my savings,
I would like to be able to deposit money into my bank account
```

```
As a user,
So that I can spend my savings,
I would like to be able to withdraw money from my bank account
```

```
As a user,
So that I can see a history of my transactions,
I would like to be able to print a bank statement
```

```
As a user,
So that my bank statement is easy to read,
I would like my statements listed in reverse chronological order
```
