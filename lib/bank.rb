require 'pry'
class Bank
  attr_reader :name

  def initialize(name)
    @name = name
  end



  def open_account(person)
    person.bank = name
    # binding.pry
    person.account = 0
  end


  def deposit(person, amount)
    if amount > person.galleons
      "#{person} does not have enough cash to perform this deposit."
    else
      person.galleons -= amount
      person.account += amount
    end
  end

  def withdrawal(person, amount)
    if amount > person.account
      "Insufficient funds."
    else
      person.galleons += amount
      person.account -= amount
    end
  end

  def transfer(person, new_bank, funds)
    
  end
end
