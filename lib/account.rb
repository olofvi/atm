require 'Date'

class Account
  attr_accessor :pin_code
  # attr_accessor :balance
  attr_accessor :account_status
  attr_accessor :exp_date
  # attr_accessor :account_owner

  STANDARD_VALIDITY_YEARS = 5
end

  def initialize(attrs = {})
    @pin_code = rand(1000..9999)
    @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YEARS).strftime('%m/%y')
    @account_status = :active
  end
