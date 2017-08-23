require 'Date'

class Account
    STANDARD_VALIDITY_YEARS = 5
  attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner
    def deactivate
      @account_status = :deactivated
    end

  def initialize(attrs = {})
    @pin_code = rand(1000..9999)
    @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YEARS).strftime('%m/%y')
    @account_status = :active
    @balance = 0
    set_owner(attrs[:owner])
  end

  private
    def set_owner(obj)
    obj == nil ?  missing_owner : @owner = obj
  end

  def missing_owner
    raise "An Account owner is required"
  end
end
