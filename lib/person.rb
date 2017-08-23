require './lib/account.rb'
require './lib/atm.rb'
require 'pry'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    set_name(attrs[:name])
    @cash = 0
  end

  def create_account(attrs = {})
    @account = Account.new(owner: self)
  end

  def set_name(obj)
    obj == nil ?  missing_name : @name = obj
  end

  def deposit(amount)
    @account == nil ? missing_account : deposit_funds(amount)
  end

  def withdraw_funds(args)
    args[:atm] == nil ? missing_atm : atm = args[:atm]
    account = @account
    amount = args[:amount]
    pin = args[:pin]
    response = atm.withdraw(amount, pin, account)
    response[:status] == true ? increase_cash(response) : response
  end
  
  private

  def deposit_funds(amount)
    @cash -= amount
    @account.balance += amount
  end

  def increase_cash(response)
    @cash += response[:amount]
  end

  def missing_atm
    raise RuntimeError, 'An ATM is required'
  end

  def missing_account
    raise "No account present"
  end

  def missing_name
    @name= nil
    raise "A name is required"
  end
end
