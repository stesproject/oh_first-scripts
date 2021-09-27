#==============================================================================
# ** Scene_Title
#------------------------------------------------------------------------------
#  This class performs the title screen processing.
#==============================================================================

WEBSITE_URL = "https://stesproject.com"
GAME_VERSION = "1.1.3"

class Window_TitleText < Window_Base
  def initialize
    super(-12, 374, 544, 64)
    refresh
  end
  def refresh
    self.contents.clear
    self.contents.font.size = 13
    self.contents.font.italic = false
    self.contents.font.shadow = false
    self.contents.font.color = text_color(15)
    self.contents.font.color.alpha = 164
    self.contents.draw_text(0, 0, 544, 32, "#{GAME_VERSION}")
  end
end

class Scene_Title < Scene_Base
  attr_accessor :title_commands
  def initialize
    # initialize_commands
  end

  def initialize_commands
    @title_commands = [
      Vocab::new_game,
      Vocab::continue,
      $local.get_text("website"),
      $local.get_text("menu_language"),
      Vocab::shutdown
    ]

    if ($default_language != "")
      @title_commands.delete_at(3)
    end
  end

  def translate_db
    localize_items($data_skills)
    localize_items($data_items)
    localize_items($data_weapons)
    localize_items($data_armors)
    localize_actors
  end

  #--------------------------------------------------------------------------
  # * Main Processing
  #--------------------------------------------------------------------------
  def main
    if $BTEST                         # If battle test
      battle_test                     # Start battle test
    else                              # If normal play
      super                           # Usual main processing
    end
  end
  #--------------------------------------------------------------------------
  # * Start processing
  #--------------------------------------------------------------------------
  def start
    super
    load_database                     # Load database
    create_game_objects               # Create game objects
    check_continue                    # Determine if continue is enabled
    create_title_graphic              # Create title graphic
    create_command_window             # Create command window
    play_title_music                  # Play title screen music
  end
  #--------------------------------------------------------------------------
  # * Execute Transition
  #--------------------------------------------------------------------------
  def perform_transition
    Graphics.transition(20)
  end
  #--------------------------------------------------------------------------
  # * Post-Start Processing
  #--------------------------------------------------------------------------
  def post_start
    super
    open_command_window
  end
  #--------------------------------------------------------------------------
  # * Pre-termination Processing
  #--------------------------------------------------------------------------
  def pre_terminate
    super
    close_command_window
  end
  #--------------------------------------------------------------------------
  # * Termination Processing
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_command_window
    snapshot_for_background
    dispose_title_graphic
    translate_db
  end
  #--------------------------------------------------------------------------
  # * Frame Update
  #--------------------------------------------------------------------------
  def update
    super
    @command_window.update
    if Input.trigger?(Input::C)
      case @command_window.index
      when 0    #New game
        command_new_game
      when 1    # Continue
        command_continue
      when @title_commands.size - 1    # Shutdown
        command_shutdown
      when 2    # Website
        command_website
      when 3    # Language
        # command_language
      end
    elsif Input.trigger?(Input::RIGHT)
      case @command_window.index
      when 3    # Language
        command_language(1)
      end
    elsif Input.trigger?(Input::LEFT)
      case @command_window.index
      when 3    # Language
        command_language(-1)
      end
    end
  end
  #--------------------------------------------------------------------------
  # * Load Database
  #--------------------------------------------------------------------------
  def load_database
    $data_actors        = load_data("Data/Actors.rvdata")
    $data_classes       = load_data("Data/Classes.rvdata")
    $data_skills        = load_data("Data/Skills.rvdata")
    $data_items         = load_data("Data/Items.rvdata")
    $data_weapons       = load_data("Data/Weapons.rvdata")
    $data_armors        = load_data("Data/Armors.rvdata")
    $data_enemies       = load_data("Data/Enemies.rvdata")
    $data_troops        = load_data("Data/Troops.rvdata")
    $data_states        = load_data("Data/States.rvdata")
    $data_animations    = load_data("Data/Animations.rvdata")
    $data_common_events = load_data("Data/CommonEvents.rvdata")
    $data_system        = load_data("Data/System.rvdata")
    $data_areas         = load_data("Data/Areas.rvdata")
  end
  #--------------------------------------------------------------------------
  # * Load Battle Test Database
  #--------------------------------------------------------------------------
  def load_bt_database
    $data_actors        = load_data("Data/BT_Actors.rvdata")
    $data_classes       = load_data("Data/BT_Classes.rvdata")
    $data_skills        = load_data("Data/BT_Skills.rvdata")
    $data_items         = load_data("Data/BT_Items.rvdata")
    $data_weapons       = load_data("Data/BT_Weapons.rvdata")
    $data_armors        = load_data("Data/BT_Armors.rvdata")
    $data_enemies       = load_data("Data/BT_Enemies.rvdata")
    $data_troops        = load_data("Data/BT_Troops.rvdata")
    $data_states        = load_data("Data/BT_States.rvdata")
    $data_animations    = load_data("Data/BT_Animations.rvdata")
    $data_common_events = load_data("Data/BT_CommonEvents.rvdata")
    $data_system        = load_data("Data/BT_System.rvdata")
  end
  #--------------------------------------------------------------------------
  # * Create Game Objects
  #--------------------------------------------------------------------------
  def create_game_objects
    $game_temp          = Game_Temp.new
    $game_message       = Game_Message.new
    $game_system        = Game_System.new
    $game_switches      = Game_Switches.new
    $game_variables     = Game_Variables.new
    $game_self_switches = Game_SelfSwitches.new
    $game_actors        = Game_Actors.new
    $game_party         = Game_Party.new
    $game_troop         = Game_Troop.new
    $game_map           = Game_Map.new
    $game_player        = Game_Player.new
  end
  #--------------------------------------------------------------------------
  # * Determine if Continue is Enabled
  #--------------------------------------------------------------------------
  def check_continue
    @continue_enabled = (Dir.glob('Save*.rvdata').size > 0)
  end
  #--------------------------------------------------------------------------
  # * Create Title Graphic
  #--------------------------------------------------------------------------
  def create_title_graphic
    draw_version_text
    @sprite = Sprite.new
    @sprite.bitmap = Cache.system("Title")
  end
  #--------------------------------------------------------------------------
  # * Dispose of Title Graphic
  #--------------------------------------------------------------------------
  def dispose_title_graphic
    @text_window.dispose
    @sprite.bitmap.dispose
    @sprite.dispose
  end
  #--------------------------------------------------------------------------
  # * Create Language Arrows
  #--------------------------------------------------------------------------
  def create_lang_arrows
    @lang_arrows = [Sprite.new, Sprite.new]
    @lang_arrows[0].bitmap = Cache.system("arrow-left")
    @lang_arrows[1].bitmap = Cache.system("arrow-right")
    @lang_arrows[0].x = 291
    @lang_arrows[1].x = 446
    @lang_arrows.each do |lang_arrow|
      lang_arrow.y = 341
      lang_arrow.z = 100
    end
  end
  #--------------------------------------------------------------------------
  # * Dispose of Lang Arrows
  #--------------------------------------------------------------------------
  def dispose_lang_arrows
    @lang_arrows.each do |lang_arrow|
      lang_arrow.bitmap.dispose
      lang_arrow.dispose
    end
  end
  #--------------------------------------------------------------------------
  # * Create Command Window
  #--------------------------------------------------------------------------
  def create_command_window(index = 1)
    initialize_commands
    @command_window = Window_Command.new(172, @title_commands)
    @command_window.x = (744 - @command_window.width) / 2
    @command_window.y = 348 - (@title_commands.size * 20)
    if @continue_enabled                    # If continue is enabled
      @command_window.index = index         # Move cursor over command
    else                                    # If disabled
      @command_window.draw_item(1, false)   # Make command semi-transparent
    end
    if index != 1
      @command_window.index = index
    end
    @command_window.openness = 0
    @command_window.open
  end
  #--------------------------------------------------------------------------
  # * Dispose of Command Window
  #--------------------------------------------------------------------------
  def dispose_command_window
    @command_window.dispose
  end
  #--------------------------------------------------------------------------
  # * Open Command Window
  #--------------------------------------------------------------------------
  def open_command_window
    @command_window.open
    begin
      @command_window.update
      Graphics.update
    end until @command_window.openness == 255
    create_lang_arrows
  end
  #--------------------------------------------------------------------------
  # * Close Command Window
  #--------------------------------------------------------------------------
  def close_command_window
    @command_window.close
    dispose_lang_arrows
    begin
      @command_window.update
      Graphics.update
    end until @command_window.openness == 0
  end
  #--------------------------------------------------------------------------
  # * Play Title Screen Music
  #--------------------------------------------------------------------------
  def play_title_music
    $data_system.title_bgm.play
    RPG::BGS.stop
    RPG::ME.stop
  end
  #--------------------------------------------------------------------------
  # * Check Player Start Location Existence
  #--------------------------------------------------------------------------
  def confirm_player_location
    if $data_system.start_map_id == 0
      print "Player start location not set."
      exit
    end
  end
  #--------------------------------------------------------------------------
  # * Command: New Game
  #--------------------------------------------------------------------------
  def command_new_game
    confirm_player_location
    Sound.play_decision
    $game_party.setup_starting_members            # Initial party
    $game_map.setup($data_system.start_map_id)    # Initial map position
    $game_player.moveto($data_system.start_x, $data_system.start_y)
    $game_player.refresh
    $scene = Scene_Map.new
    RPG::BGM.fade(1500)
    close_command_window
    Graphics.fadeout(60)
    Graphics.wait(40)
    Graphics.frame_count = 0
    RPG::BGM.stop
    $game_map.autoplay
  end
  #--------------------------------------------------------------------------
  # * Command: Continue
  #--------------------------------------------------------------------------
  def command_continue
    if @continue_enabled
      Sound.play_decision
      $scene = Scene_File.new(false, true, false)
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # * Command: Website
  #--------------------------------------------------------------------------
  def command_website
    Sound.play_decision
    Thread.new {system("start #{WEBSITE_URL}")}
  end
    #--------------------------------------------------------------------------
  # * Command: Language
  #--------------------------------------------------------------------------
  def command_language(value = 1)
    Sound.play_decision
    $local.switch_language(value)
    dispose_command_window
    create_command_window(3)
    localize_actors
  end
  #--------------------------------------------------------------------------
  # * Command: Shutdown
  #--------------------------------------------------------------------------
  def command_shutdown
    Sound.play_decision
    RPG::BGM.fade(800)
    RPG::BGS.fade(800)
    RPG::ME.fade(800)
    $scene = nil
  end
  #--------------------------------------------------------------------------
  # * Battle Test
  #--------------------------------------------------------------------------
  def battle_test
    load_bt_database                  # Load battle test database
    create_game_objects               # Create game objects
    Graphics.frame_count = 0          # Initialize play time
    $game_party.setup_battle_test_members
    $game_troop.setup($data_system.test_troop_id)
    $game_troop.can_escape = true
    $game_system.battle_bgm.play
    snapshot_for_background
    $scene = Scene_Battle.new
  end
  #--------------------------------------------------------------------------
  # * Translate data from Database (items, weapons, armors, skills)
  #--------------------------------------------------------------------------
  def localize_items(items)
    for i in 1...items.size
      item_name = items[i].name
      item_description = items[i].description
      item = $local.get_db_object(item_name)
      items[i].name = item.name
      items[i].description = item.desc
    end
  end
  #--------------------------------------------------------------------------
  # * Translate data from Database (actors, classes)
  #--------------------------------------------------------------------------
  def localize_actors
    for i in 1...$data_classes.size
      $data_classes[i].name = ""
    end
  end

  def draw_version_text
    @text_window = Window_TitleText.new
    @text_window.back_opacity = 0
    @text_window.opacity = 0
  end
end
