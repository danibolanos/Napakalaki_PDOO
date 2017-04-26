# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module NapakalakiGame
  
require_relative 'player'

  class CultistPlayer < Player
    @@totalCultistPlayers = 0
    
    def initialize(p,c)
      copy(p)
      @myCultistCard = c
      @@totalCultistPlayers += 1
    end
    
    def getTotalCultistPlayers
      @@totalCultistPlayers
    end
    protected
    
    def getCombatLevel
      cl = (super * 1.7).truncate
      cl += @@totalCultistPlayers * @myCultistCard.getGainedLevels
    end
    
    def getOponentLevel(m)
      m.getCombatLevelAgainstCultistPlayer
    end
    
    def shouldConvert
      false
    end
    
    private
    
    def giveMeATreasure
      indice = rand(@visibleTreasures.length)
      t = @visibleTreasures.at(indice)
      discardHiddenTreasure(t)
      t
    end
    
    def canYouGiveMeATreasure
      puedo=true
      if @visibleTreasures.empty? then
        puedo=false
      end
      puedo
    end
  end
end
