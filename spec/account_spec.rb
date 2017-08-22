require './lib/account.rb'
require 'spec_helper'

describe Account do
  it 'check length of a number' do
    number = 1234
    number_length = Math.log10(number).to_i + 1
    expect(number_length).to eq 4
  end
end
