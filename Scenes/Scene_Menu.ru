##################################################################
# Meu primeiro script
# Para jogos de Single Player
##################################################################

class Scene_Menu < Scene_Base
  def initialize(menu_index = 0)
  @menu_index = menu_index
end
def start
  super
  create_menu_background
  @menu_window = Window_Command.new(100,[
    Vocab::item, 
    Vocab::equip, 
    Vocab::skill, 
    Vocab::save,
    $local.get_text("quit")
  ])
  @menu_window.x = 20
  @menu_window.y = 20
  @gold_window = Window_Gold.new(20, 175)
  actor_index = 0
  @actor_index = actor_index
  @actor = $game_party.members[@actor_index]
  @status_window = Window_Status.new(@actor)
end
def update
  super
  update_menu_background
  @gold_window.update
  @menu_window.update
  if Input.trigger?(Input::B)
    Sound.play_cancel
    $scene = Scene_Map.new
  elsif Input.trigger?(Input::C)
    case @menu_window.index
    when 0
      Sound.play_decision
      $scene = Scene_Item.new
    when 1
      Sound.play_decision
      $scene = Scene_Equip.new
    when 2
      Sound.play_decision
      $scene = Scene_Skill.new
    when 3
      Sound.play_decision
      $scene = Scene_File.new(true, false, true)
    when 4 # Sair
      Sound.play_decision
      $scene = Scene_End.new
    end
  end
end
def terminate
  super
  dispose_menu_background
  @menu_window.dispose
  @gold_window.dispose
  @status_window.dispose
end
end