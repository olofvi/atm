the challange was to create an ATM  program that can create an account, a person, deposit funds, withdraw them, create an account and deactive account <h2>

The program is written in Ruby <h3>

to load the program put in IRB
```
*load 'lib/atm.rb'
*load 'lib/person.rb'
*load 'lib/account.rb'
```

You need to create a person class to use the ATM, you'll also need an account and some cash:

```
You set the person with > Person ='your_name'
You will need an account > @account = 'the_name_of_the_account'
You also need some cash > @cash = 100
```

'####' In the ATM you can **withdraw cash**, that takes the argument amount(integer) and pin number. It checks if the pin number is right, if the account is active and not expired also if there are suffiecient funds on the account and in the ATM. If this all checks out it will reduce the funds in the account and return a receipt.

In the ATM you can also **deposit cash**, after an account has been created. That will decrease the cash and add the amount to the account.

You can also deactivate the account in the ATM. <h4> 

The ATM will return an error if:
* if there's no ATM
* if there's no account present
* if there's insufficient funds in the ATM or account
* if there's wrong pin entered
* if the card is expired
* if the account is disabled

