#encoding: utf-8
# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module NapakalakiGame
  
  require_relative 'treasure_kind'

class Treasure
  
  public
  
  def initialize(n, bonus, t)
    @name = n
    @bonus = bonus
    @type = t
  end
  
  def getName
    @name
  end
  
  def getBonus
    @bonus
  end
  
  def getType
    @type
  end
  
  def to_s
    cadena = "#{@name}"
    cadena += "\nBonus: #{@bonus}"
    cadena += "\nTipo: #{@type}"
    cadena
  end
end

end
