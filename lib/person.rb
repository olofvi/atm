require './lib/account.rb'
require '.lib/atm.rb'

class Person
  attr_accessor :name, :cash, :account

    def initialize(attrs = {})
      set_name(attrs[:name])
      @cash = 0
    end

    def create_account(attrs = {})
      @account = Account.new(owner: self)
    end

    def deposit
      @balance = []

  private
  def set_name(obj)
obj == nil ?  missing_name : @name = obj
  end

  def missing_name
    raise "A name is required"
  end
end
