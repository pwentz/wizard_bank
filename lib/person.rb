class Person
  attr_reader   :name
  attr_accessor :bank, :galleons, :account

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
  end


end
