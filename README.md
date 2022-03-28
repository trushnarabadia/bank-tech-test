# bank-tech-test
## Specification 

Building a basic bank app. 

## Requirements
- You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023 <br>
And a deposit of 2000 on 13-01-2023 <br>
And a withdrawal of 500 on 14-01-2023 <br>
When she prints her bank statement <br>
Then she would see <br>

>date || credit || debit || balance <br>
>14/01/2023 || || 500.00 || 2500.00 <br>
>13/01/2023 || 2000.00 || || 3000.00 <br>
>10/01/2023 || 1000.00 || || 1000.00 


## My Approach 

First, in order to tackle the challenge, I created user stories which are attached below. 

### User Stories

As a customer of Bank, <br>
So that I can pay money into my account, <br>
I'd like to make a deposit.

As a customer of Bank, <br>
So that I can take some money out of my account, <br>
I'd like to make a withdrawal.

As the Bank, <br>
So that we can tell customers about their account, <br>
We'd need to access information like dates, amounts and balances.

As a customer of Bank, <br>
So that I can find out information about my account, <br>
I'd like to have my statement printed. 