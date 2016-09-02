class Player

  START_HP = 100
  attr_reader :name, :hp, :receive_damage

  def initialize(name, hp = START_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end
end
