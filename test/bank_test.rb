gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/nyan_cat'
require_relative '../lib/person'
require_relative '../lib/bank'
require 'pry'
class BankTest < Minitest::Test
  def test_bank_has_name
    chase = Bank.new("JP Morgan Chase")
    assert_equal Bank, chase.class
    assert_equal "JP Morgan Chase", chase.name
  end

  def test_open_account_w_person
    chase = Bank.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    chase.open_account(person1)
    # binding.pry
    assert_equal "JP Morgan Chase", person1.bank
    chase.deposit(person1, 250)
    assert_equal 250, person1.account
    assert_equal 750, person1.galleons
  end

  def test_person_tries_to_deposit_more_than_they_have
    chase = Bank.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    # binding.pry
    chase.open_account(person1)
    chase.deposit(person1,1200)
    assert_equal 0, person1.account
    assert_equal 1000, person1.galleons
  end

  def test_person_withdrawal
    chase = Bank.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    chase.open_account(person1)
    chase.deposit(person1, 750)
    chase.withdrawal(person1,400)
    assert_equal 350, person1.account
    assert_equal 650, person1.galleons
    chase.withdrawal(person1, 400)
    assert_equal 350, person1.account
    assert_equal 650, person1.galleons
  end


end
