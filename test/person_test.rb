gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/nyan_cat'
require_relative '../lib/person'

class PersonTest < Minitest::Test
  def test_person_created_with_two_arguments
    person1 = Person.new("Minerva", 1000)
    assert_equal Person, person1.class
    assert_equal "Minerva", person1.name
    assert_equal 1000, person1.galleons
  end
end
