#==============================================================================
#------------------------------------------------------------------------------
# Questo script da la possibilità di far saltare il PG con il tasto Z (C)
# Autore: Ally
# www.rpgmkr.net
#______________________________________________________________________________
#                      °ISTRUZIONI°
# - Inserite lo script sotto Material
# - Create una Switch settata su On o Off per disabilitare/attivare
#   l'evento salto
# - Per cambiare l'ID della Switch fate riferimento a questo codice:
#   SWITCHSALTO = 2
# =============================================================================
# Script totalmente creato grazie agli script originali presenti su RMVX ^_^
#==============================================================================
#------------------------------------------------------------------------------
#                       ° SETTAGGIO TASTI°
# Per cambiare il tasto con cui volete far saltare il PG, fate riferimento
# a questo pezzo di script:  if Input.press?(Input::C)
# I tasti ve li elenco qui sotto:
# A = Shift o Z
# B = ESCO, X o Numero 0
# C = Spazio,Invio o C
# X = A
# Y = S
# Z = D
# Mancano la L e la R che a parer mio sono tasti troppo 'lontani'
# da accomunare al tasto per saltare.
#==============================================================================
module GameBaker
  JumpSE = RPG::SE.new('Jump1')
end
class Game_Player < Game_Character

  SWITCHSALTO = 6     # Switch che attiva/disattiva il salto alla pressione
                      # del tasto Z

  alias_method :salto_move_by_input, :move_by_input
  def move_by_input
    salto_move_by_input
    if Input.press?(Input::Letters["A"]) and $game_switches[SWITCHSALTO] and movable?
      case @direction
      when 2
        if passable?(@x,@y+2)
            @y += 2
            distance = 2
            @jump_peak = 10 + distance - @move_speed
            @jump_count = @jump_peak * 2
            @stop_count = 0
            GameBaker::JumpSE.play
            straighten
        elsif passable?(@x,@y+1)
          @y += 1
          distance = 1
          @jump_peak = 10 + distance - @move_speed
          @jump_count = @jump_peak * 2
          @stop_count = 0
          straighten
        end
      when 4
        if passable?(@x-2,@y)
            @x -= 2
            distance = 2
            @jump_peak = 10 + distance - @move_speed
            @jump_count = @jump_peak * 2
            @stop_count = 0
            GameBaker::JumpSE.play
            straighten
        elsif passable?(@x-1,@y)
          @x -= 1
          distance = 1
          @jump_peak = 10 + distance - @move_speed
          @jump_count = @jump_peak * 2
          @stop_count = 0
          straighten
        end
      when 6
        if passable?(@x+2,@y)
            @x += 2
            distance = 2
            @jump_peak = 10 + distance - @move_speed
            @jump_count = @jump_peak * 2
            @stop_count = 0
            GameBaker::JumpSE.play
            straighten
        elsif passable?(@x+1,@y)
          @x += 1
          distance = 1
          @jump_peak = 10 + distance - @move_speed
          @jump_count = @jump_peak * 2
          @stop_count = 0
          straighten
        end
      when 8
        if passable?(@x,@y-2)
            @y -= 2
            distance = 2
            @jump_peak = 10 + distance - @move_speed
            @jump_count = @jump_peak * 2
            @stop_count = 0
            GameBaker::JumpSE.play
            straighten
        elsif passable?(@x,@y-1)
          @y -= 1
          distance = 1
          @jump_peak = 10 + distance - @move_speed
          @jump_count = @jump_peak * 2
          @stop_count = 0
          straighten
        end
      end
    end
  end
end
#========================================================
# Fine Script =)
#========================================================