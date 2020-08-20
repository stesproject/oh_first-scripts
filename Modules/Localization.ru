#==============================================================================
# Localization script
# Author: Ste
#==============================================================================
class Localization
  $default_language = ""
  $msg_var = [61,62,63,64]

  LANG_INDEX = {
    "en" => 0,
    "it" => 1,
    "es" => 2
  }

  @messages = nil
  
  class ItemText
    attr_accessor :name
    attr_accessor :desc
  end

  def switch_language()
    case $lang
    when "it"
      $lang = "en"
    when "en"
      $lang = "it"
    end

    Scene_Title.new().save_language
  end

  def get_name(id)
    text = nil

    case id
    when 1
      text = $data_actors[1].name

    when 2
      case $lang
      when "it"
        text = "Re"
      when "en"
        text = "King"
      when "es"
        text = "TRADUCCIÓN"
      end

    when 3
      case $lang
      when "it"
        text = "Saggio"
      when "en"
        text = "Sage"
      when "es"
        text = "TRADUCCIÓN"
      end

    when 4
      case $lang
      when "it"
        text = "Saggi"
      when "en"
        text = "Sages"
      when "es"
        text = "TRADUCCIÓN"
      end

    when 5
      case $lang
      when "it"
        text = "Bossfinale"
      when "en"
        text = "Finalboss"
      when "es"
        text = "TRADUCCIÓN"
      end

    end

    return text.upcase
  end

  def get_map_name(name)
    text = name

    case name
    when "King's Castle"
      case $lang
      when "it"
        text = "Castello del Re"
      when "en"
        text = "King's Castle"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Throne Room"
      case $lang
      when "it"
        text = "Sala del Trono"
      when "en"
        text = "Throne Room"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Trophy Hall"
      case $lang
      when "it"
        text = "Sala dei Trofei"
      when "en"
        text = "Trophy Hall"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Arena"
      case $lang
      when "it"
        text = "Arena"
      when "en"
        text = "Arena"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Teorhemas Vault"
      case $lang
      when "it"
        text = "Sala del Teorhemas"
      when "en"
        text = "Teorhemas Vault"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Castle Grounds"
      case $lang
      when "it"
        text = "Cortile del Castello"
      when "en"
        text = "Castle Grounds"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Forest of the All-Eye Monster"
      case $lang
      when "it"
        text = "Foresta dell'Occhio Sgorbio"
      when "en"
        text = "Forest of the All-Eye Monster"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Wild Valley"
      case $lang
      when "it"
        text = "Valle Selvaggia"
      when "en"
        text = "Wild Valley"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Mistery Cave"
      case $lang
      when "it"
        text = "Grotta dei Misteri"
      when "en"
        text = "Mistery Cave"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Water City"
      case $lang
      when "it"
        text = "Città dell'Acqua"
      when "en"
        text = "Water City"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Finalboss Domain"
      case $lang
      when "it"
        text = "Regno di Bossfinale"
      when "en"
        text = "Finalboss Domain"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Foxes Desert"
      case $lang
      when "it"
        text = "Deserto dei Volpini"
      when "en"
        text = "Foxes Desert"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Volcanic Depths"
      case $lang
      when "it"
        text = "Profondità del Vulcano"
      when "en"
        text = "Volcanic Depths"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Eternal Glaciers"
      case $lang
      when "it"
        text = "Ghiacciai Perenni"
      when "en"
        text = "Eternal Glaciers"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Dark Forest"
      case $lang
      when "it"
        text = "Foresta Oscura"
      when "en"
        text = "Dark Forest"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Finalboss Castle"
      case $lang
      when "it"
        text = "Castello di Bossfinale"
      when "en"
        text = "Finalboss Castle"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Celebration Feast"
      case $lang
      when "it"
        text = "Banchetto"
      when "en"
        text = "Celebration Feast"
      when "es"
        text = "TRADUCCIÓN"
      end

    end

    return text
  end

  def set_common_msg(name, param = nil)
    reset_msg_vars

    case name
    when "skill-electric-1"
      case $lang
      when "it"
        @messages = [
          "L'eroe ha imparato l'abilità",
          "\\c[2]Scarica Elettrica!"
        ]
      when "en"
        @messages = [
          "The hero learned the skill",
          "\\c[2]Electric Shock!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-electric-2"
      case $lang
      when "it"
        @messages = [
          "\\c[2]Equipaggia la Spada Elettrica per usare",
          "questa abilità!"
        ]
      when "en"
        @messages = [
          "\\c[2]Equip the Electric Sword to use this skill!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-ice-1"
      case $lang
      when "it"
        @messages = [
          "L'eroe ha imparato l'abilità",
          "\\c[2]Tempesta Gelida!"
        ]
      when "en"
        @messages = [
          "The hero learned the skill",
          "\\c[2]Icy Storm!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-ice-2"
      case $lang
      when "it"
        @messages = [
          "\\c[2]Equipaggia la Spada Ghiacciata per usare",
          "questa abilità!"
        ]
      when "en"
        @messages = [
          "\\c[2]Equip the Icy Sword to use this skill!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-fire-1"
      case $lang
      when "it"
        @messages = [
          "L'eroe ha imparato l'abilità",
          "\\c[2]Bomba di Fuoco!"
        ]
      when "en"
        @messages = [
          "The hero learned the skill",
          "\\c[2]Fire Bomb!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-fire-2"
      case $lang
      when "it"
        @messages = [
          "\\c[2]Equipaggia la Spada Infuocata per usare",
          "questa abilità!"
        ]
      when "en"
        @messages = [
          "\\c[2]Equip the Flaming Sword to use this skill!"
        ]
      end

    when "skill-magic-1"
      case $lang
      when "it"
        @messages = [
          "L'eroe ha imparato l'abilità",
          "\\c[2]Attacco Magico!"
        ]
      when "en"
        @messages = [
          "The hero learned the skill",
          "\\c[2]Magic Attack!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-magic-2"
      case $lang
      when "it"
        @messages = [
          "\\c[2]Equipaggia la Spada di Bossfinale per usare",
          "questa abilità!"
        ]
      when "en"
        @messages = [
          "\\c[2]Equip the Finalboss Sword to use this skill!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-all-1"
      case $lang
      when "it"
        @messages = [
          "L'eroe ha imparato \\c[2]tutte le abilità!",
        ]
      when "en"
        @messages = [
          "The hero learned \\c[2]all the skills!",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "skill-all-2"
      case $lang
      when "it"
        @messages = [
          "\\c[2]Equipaggia la Spada dell'Eroe Leggendario",
          "per usare queste abilità!"
        ]
      when "en"
        @messages = [
          "\\c[2]Equip the Sword of the Legendary Hero to use",
          "these skills!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "cannot-control"
      case $lang
      when "it"
        @messages = [
          "Non c'è nessun elemento controllabile in",
          "questo posto o non c'è abbastanza energia per",
          "utilizzare il Cristallo Controllore qui.\\|\\.\\.\\^"
        ]
      when "en"
        @messages = [
          "No suitable enemies nearby to control or",
          "not enough energy.\\|\\^"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "end-mission-1"
      case $lang
      when "it"
        @messages = [
          "\\nb[#{get_name(1)}]Dovrei aver distrutto tutte quante le",
          "casse in questa foresta!"
        ]
      when "en"
        @messages = [
          "\\nb[#{get_name(1)}]This should be the last of the crates in",
          "the forest!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "end-mission-2"
      case $lang
      when "it"
        @messages = [
          "\\nb[#{get_name(1)}]Ho eliminato tutti quanti i cattivi!",
        ]
      when "en"
        @messages = [
          "\\nb[#{get_name(1)}]I defeated all the baddies!",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "end-mission-3"
      case $lang
      when "it"
        @messages = [
          "\\nb[#{get_name(1)}]Ho spento tutte le fiamme!",
        ]
      when "en"
        @messages = [
          "\\nb[#{get_name(1)}]I put out all the flames!",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "door-closed"
      case $lang
      when "it"
        @messages = [
          "La porta è chiusa.",
        ]
      when "en"
        @messages = [
          "The door is closed.",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "door-locked"
      case $lang
      when "it"
        @messages = [
          "La porta è chiusa a chiave.",
        ]
      when "en"
        @messages = [
          "The door is locked.",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "gate-locked"
      case $lang
      when "it"
        @messages = [
          "Il cancello è chiuso a chiave.",
        ]
      when "en"
        @messages = [
          "The gate is locked.",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "door-sealed"
      case $lang
      when "it"
        @messages = [
          "La porta è sigillata.",
        ]
      when "en"
        @messages = [
          "The door is sealed.",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "controlled-enemy"
      case $lang
      when "it"
        @messages = [
          "\\nb[#{get_name(1)}]Ohi! Sei vivo?",
        ]
      when "en"
        @messages = [
          "\\nb[#{get_name(1)}]Hey! Are you alive?",
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    when "no-weapon"
      case $lang
      when "it"
        @messages = [
          "Non hai una #{param}!"
        ]
      when "en"
        @messages = [
          "You don't have a #{param}!"
        ]
      when "es"
        @messages = [
          "TRADUCCIÓN"
        ]
      end

    else
      @messages = [
        "#{get_text(name)}",
      ]

    end
    
    set_msg_vars
  end

  def set_action(action, item, value, item2 = nil, value2 = nil)
    reset_msg_vars
    @messages = []

    case action
    when "find"
      case $lang
      when "it"
        @messages.push("\\c[6]Trovi")
      when "en"
        @messages.push("\\c[6]You find")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when "gave"
      case $lang
      when "it"
        @messages.push("\\c[6]Consegni")
      when "en"
        @messages.push("\\c[6]You gave away")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when "got"
      case $lang
      when "it"
        @messages.push("\\c[6]Ricevi")
      when "en"
        @messages.push("\\c[6]You got")
      when "es"
        @messages.push("TRADUCCIÓN")
      end
    end

    amount = value > 0 ? value.to_s + " " : ""
    @messages.push("#{amount}#{item}!")

    if (item2 != nil && value2 != nil)
      amount = value2 > 0 ? value2.to_s + " " : ""
      @messages.push("#{amount}#{item2}!")
    end

    $msg_params = ["normal", "bottom"]

    set_msg_vars
  end

  def set_act_completed(index)
    reset_msg_vars
    @messages = []

    case $lang
    when "it"
      @messages.push("\\c[14]Atto \\v[10]:")
    when "en"
      @messages.push("\\c[14]Act \\v[10]:")
    when "es"
      @messages.push("TRADUCCIÓN")
    end

    case index
    when 1
      case $lang
      when "it"
        @messages.push("IL CASTELLO DEL RE")
      when "en"
        @messages.push("THE KING'S CASTLE")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 2
      case $lang
      when "it"
        @messages.push("LA FORESTA DELL'OCCHIO SGORBIO")
      when "en"
        @messages.push("THE FOREST OF THE ALL-EYE MONSTER")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 3
      case $lang
      when "it"
        @messages.push("LA VALLE SELVAGGIA")
      when "en"
        @messages.push("THE WILD VALLEY")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 4
      case $lang
      when "it"
        @messages.push("LA CITTÀ DELL'ACQUA")
      when "en"
        @messages.push("THE WATER CITY")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 5
      case $lang
      when "it"
        @messages.push("IL DESERTO DEI VOLPINI")
      when "en"
        @messages.push("THE FOXES DESERT")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 6
      case $lang
      when "it"
        @messages.push("LE PROFONDITÀ DEL VULCANO")
      when "en"
        @messages.push("THE VOLCANIC DEPTHS")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 7
      case $lang
      when "it"
        @messages.push("I GHIACCIAI PERENNI")
      when "en"
        @messages.push("THE ETERNAL GLACIERS")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 8
      case $lang
      when "it"
        @messages.push("LA FORESTA OSCURA")
      when "en"
        @messages.push("THE DARK FOREST")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    when 9
      case $lang
      when "it"
        @messages.push("IL CASTELLO DI BOSSFINALE")
      when "en"
        @messages.push("THE FINALBOSS CASTLE")
      when "es"
        @messages.push("TRADUCCIÓN")
      end

    end

    case $lang
    when "it"
      @messages.push("\\c[10]Completato!\\|\\|\\|\\|\\|\\^")
    when "en"
      @messages.push("\\c[10]Completed!\\|\\|\\|\\|\\|\\^")
    when "es"
      @messages.push("TRADUCCIÓN")
    end

    $msg_params = ["transparent", "middle"]

    set_msg_vars
  end

  def set_weapon_stats(index)
    reset_msg_vars
    @messages = []

    weapon = $data_weapons[index]
    @messages.push("\\c[14]#{weapon.name.upcase}")
    
    case $lang
    when "it"
      @messages.push("Attacco: #{weapon.atk}")
      @messages.push("Difesa: #{weapon.def}")
    when "en"
      @messages.push("Attack: #{weapon.atk}")
      @messages.push("Defense: #{weapon.def}")
    when "es"
      @messages.push("TRADUCCIÓN")
      @messages.push("TRADUCCIÓN")
    end

    $msg_params = ["dark", "middle"]

    set_msg_vars
  end

  def reset_msg_vars
    for i in 0..3
      $game_variables[$msg_var[i]] = ""
    end
  end

  def set_msg_vars
    if (@messages == nil)
      return
    end

    for i in 0..3
      @messages[i] = @messages[i] == nil ? "" : @messages[i]
      $game_variables[$msg_var[i]] = @messages[i]
    end
  end

  def get_db_object(name)
    text = ItemText.new()

    case name
    # Items
    when "Meat"
      case $lang
      when "it"
        text.name = "Carne"
        text.desc = "Mangiala per recuperare tutta la tua energia!"
      when "en"
        text.name = "Meat"
        text.desc = "Eat it to recover all your energy!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Regenerator"
      case $lang
      when "it"
        text.name = "Rigeneratore"
        text.desc = "Questa pozione permette di rigenerare le abilità delle tue armi."
      when "en"
        text.name = "Regenerator"
        text.desc = "This potion recharges your Skill Energy!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Small Bridge"
      case $lang
      when "it"
        text.name = "Ponticello"
        text.desc = "Un piccolo ponte."
      when "en"
        text.name = "Small Bridge"
        text.desc = "A small, portable bridge for crossing gaps."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "key1"
      case $lang
      when "it"
        text.name = "Chiave"
        text.desc = "Una chiave trovata nella foresta."
      when "en"
        text.name = "Key"
        text.desc = "A key found in the forest."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "key2"
      case $lang
      when "it"
        text.name = "Chiave"
        text.desc = "Una chiave trovata nel deserto."
      when "en"
        text.name = "Key"
        text.desc = "A key found in the desert."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "key3"
      case $lang
      when "it"
        text.name = "Chiave"
        text.desc = "La chiave che apre l'ingresso verso la sala di Bossfinale."
      when "en"
        text.name = "Key"
        text.desc = "This key opens the entrance to the Finalboss hall."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Book of the Forgotten Crafts"
      case $lang
      when "it"
        text.name = "Libro delle Doti Perdute"
        text.desc = ""
      when "en"
        text.name = "Book of the Forgotten Crafts"
        text.desc = ""
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Controller Crystal"
      case $lang
      when "it"
        text.name = "Cristallo Controllore"
        text.desc = "Un frammento di cristallo in grado di interferire con le capacità dei nemici."
      when "en"
        text.name = "Controller Crystal"
        text.desc = "A crystal fragment that can temporarily disrupt weak enemies."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Bronze Medal"
      case $lang
      when "it"
        text.name = "Medaglia di Bronzo"
        text.desc = "Una medaglia di bronzo ottenuta in arena."
      when "en"
        text.name = "Bronze Medal"
        text.desc = "A bronze medal gained in the arena."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Silver Medal"
      case $lang
      when "it"
        text.name = "Medaglia d'Argento"
        text.desc = "Una medaglia d'argento ottenuta in arena."
      when "en"
        text.name = "Silver Medal"
        text.desc = "A silver medal gained in the arena."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Gold Medal"
      case $lang
      when "it"
        text.name = "Medaglia d'Oro"
        text.desc = "Una medaglia d'oro ottenuta in arena."
      when "en"
        text.name = "Gold Medal"
        text.desc = "A golden medal gained in the arena."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Secrets Sheet"
      case $lang
      when "it"
        text.name = "Foglio dei Segreti"
        text.desc = "Immetti un codice per ottenere dei bonus!"
      when "en"
        text.name = "Secrets Sheet"
        text.desc = "Enter a code to unlock a bonus!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Cute Monster"
      case $lang
      when "it"
        text.name = "Esserino"
        text.desc = ""
      when "en"
        text.name = "Cute Monster"
        text.desc = ""
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    # Weapons
    when "Revolt Sword"
      case $lang
      when "it"
        text.name = "Spada della Rivolta"
        text.desc = "Una spada distruttiva che ti è stata data dal Re in persona!"
      when "en"
        text.name = "Revolt Sword"
        text.desc = "A destructive sword received from the King himself!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Assassin Blade"
      case $lang
      when "it"
        text.name = "Lama Assassina"
        text.desc = "Una potente spada dalla lama... Affilata."
      when "en"
        text.name = "Assassin Blade"
        text.desc = "A powerful sword with a sharp blade."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Soldier's Sword"
      case $lang
      when "it"
        text.name = "Spada del Soldato"
        text.desc = "La spada comune usata da tutti i soldati del castello."
      when "en"
        text.name = "Soldier's Sword"
        text.desc = "A common sword used by all the soldiers of the castle."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Sabrelyzer"
      case $lang
      when "it"
        text.name = "Sciabolyzer"
        text.desc = "Una potente spada decisamente distruttiva!"
      when "en"
        text.name = "Sabrelyzer"
        text.desc = "A powerful sword with high destructive power!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Gelizedor"
      case $lang
      when "it"
        text.name = "Gelizedor"
        text.desc = "Una spada affilata dalla lama gelida."
      when "en"
        text.name = "Gelizedor"
        text.desc = "A sharp sword with an icy blade."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Lollipop"
      case $lang
      when "it"
        text.name = "Lecca-Lecca"
        text.desc = "Uhm che buono!"
      when "en"
        text.name = "Lollipop"
        text.desc = "Mmm, so sweet!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Electric Sword"
      case $lang
      when "it"
        text.name = "Spada Elettrica"
        text.desc = "Una spada che emette scariche elettriche in continuazione."
      when "en"
        text.name = "Electric Sword"
        text.desc = "A sword that constantly radiates electric shockwaves."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Revolt Sword II"
      case $lang
      when "it"
        text.name = "Spada della Rivolta II"
        text.desc = "La Spada della Rivolta potenziata! Ancora più resistente, ancora più distruttiva."
      when "en"
        text.name = "Revolt Sword II"
        text.desc = "The Revolt Sword, now strengthened and empowered!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Zombiesbane"
      case $lang
      when "it"
        text.name = "AmmazzaZombie"
        text.desc = "Una spada superefficace contro qualsiasi morto vivente!"
      when "en"
        text.name = "Zombiesbane"
        text.desc = "A sword that's extra effective against undead!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Sword of the Legendary Hero"
      case $lang
      when "it"
        text.name = "Spada dell'Eroe Leggendario"
        text.desc = "Una spada potente. Indistruttibile. Agile. LEGGENDARIA."
      when "en"
        text.name = "Sword of the Legendary Hero"
        text.desc = "A mighty sword. Indestructible. Fast. LEGENDARY."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Electric Guitar"
      case $lang
      when "it"
        text.name = "Chitarra Elettrica"
        text.desc = "Rock and roll baby!"
      when "en"
        text.name = "Electric Guitar"
        text.desc = "Rock and roll baby!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Icy Sword"
      case $lang
      when "it"
        text.name = "Spada Ghiacciata"
        text.desc = "Una spada incredibilmente affilata, completamente scalfita nel ghiaccio."
      when "en"
        text.name = "Icy Sword"
        text.desc = "A sharp blade honed from nevermelting ice."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Flaming Sword"
      case $lang
      when "it"
        text.name = "Spada Infuocata"
        text.desc = "Una spada che si incendia di continuo non appena viene presa in mano."
      when "en"
        text.name = "Flaming Sword"
        text.desc = "A sword that catches fire as soon as you pick it up."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Silver Slash"
      case $lang
      when "it"
        text.name = "Silver Slash"
        text.desc = "Una lama in argento che distrugge i tuoi nemici!"
      when "en"
        text.name = "Silver Slash"
        text.desc = "A silver blade that destroys your enemies!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Katana"
      case $lang
      when "it"
        text.name = "Katana"
        text.desc = "Spada ninja debole, ma con alte probabilità di sferrare colpi critici."
      when "en"
        text.name = "Katana"
        text.desc = "A lightweight ninja weapon with an increased critical hit ratio."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Final Revolt Sword"
      case $lang
      when "it"
        text.name = "Spada della Rivolta Finale"
        text.desc = "Il grado più potente della Spada della Rivolta! Spazza via ogni nemico!"
      when "en"
        text.name = "Final Revolt Sword"
        text.desc = "The most powerful Revolt Sword! It wipes out any enemy!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Dragon Sword"
      case $lang
      when "it"
        text.name = "Spada del Drago"
        text.desc = "Una potentissima spada forgiata con scaglie di drago."
      when "en"
        text.name = "Dragon Sword"
        text.desc = "A very mighty sword forged from dragon scales."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Finalboss Sword"
      case $lang
      when "it"
        text.name = "Spada di Bossfinale"
        text.desc = "La potente spada dorata di Bossfinale!"
      when "en"
        text.name = "Finalboss Sword"
        text.desc = "The mighty golden sword of Finalboss!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Soul Eater"
      case $lang
      when "it"
        text.name = "Divoranime"
        text.desc = "Colpisci i nemici e mangia le loro anime."
      when "en"
        text.name = "Soul Eater"
        text.desc = "Devours the souls of slain enemies!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    # Armors
    when "Copper Necklace"
      case $lang
      when "it"
        text.name = "Collana di Rame"
        text.desc = "Una semplice collana che protegge lievemente dagli attacchi nemici."
      when "en"
        text.name = "Copper Necklace"
        text.desc = "A simple necklace that slightly protects against enemy attacks."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Bronze Necklace"
      case $lang
      when "it"
        text.name = "Collana di Bronzo"
        text.desc = "Questa collana protegge discretamente dai colpi dei nemici."
      when "en"
        text.name = "Bronze Necklace"
        text.desc = "This necklace discreetly protects from enemy attacks."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Silver Necklace"
      case $lang
      when "it"
        text.name = "Collana d'Argento"
        text.desc = "Più robusta di alcune collane, è ottima come protezione in una battaglia."
      when "en"
        text.name = "Silver Necklace"
        text.desc = "More robust than some necklaces, it is excellent as protection in a battle."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Golden Necklace"
      case $lang
      when "it"
        text.name = "Collana d'Oro"
        text.desc = "Una collana dorata che offre una difesa completa."
      when "en"
        text.name = "Golden Necklace"
        text.desc = "A golden necklace that offers complete defense."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Sword Case"
      case $lang
      when "it"
        text.name = "Fodera"
        text.desc = "Qui dentro potrai riporre ogni spada che otterrai durante la tua avventura!"
      when "en"
        text.name = "Sword Case"
        text.desc = "Lets you carry and switch between all of your swords!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Strength Necklace"
      case $lang
      when "it"
        text.name = "Collana di Forza"
        text.desc = "Questa collana aumenta la tua potenza d'attacco."
      when "en"
        text.name = "Strength Necklace"
        text.desc = "This necklace increases your attack power."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Doubler Bracelet"
      case $lang
      when "it"
        text.name = "Bracciale Doppiatore"
        text.desc = "Equipaggiando questo bracciale sarà molto più semplice salire di livello!"
      when "en"
        text.name = "Doubler Bracelet"
        text.desc = "Equipping this bracelet lets you level up faster!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Healing Bracelet"
      case $lang
      when "it"
        text.name = "Bracciale Energetico"
        text.desc = "Equipaggiando questo bracciale le tue ferite si cureranno automaticamente."
      when "en"
        text.name = "Healing Bracelet"
        text.desc = "Equipping this bracelet your wounds will heal automatically."
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Rainbow Bracelets"
      case $lang
      when "it"
        text.name = "Bracciali Arcobaleno"
        text.desc = "Due bracciali che, se equipaggiati, renderanno doppia la tua ESP e ti restituirà energia!"
      when "en"
        text.name = "Rainbow Bracelets"
        text.desc = "Two bracelets that will double your ESP and restore your energy!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    # Skills
    when "Electric Shock"
      case $lang
      when "it"
        text.name = "Scarica Elettrica"
        text.desc = "La spada elettrica ti permette di lanciare potenti scariche elettriche contro i nemici!"
      when "en"
        text.name = "Electric Shock"
        text.desc = "The Electric Sword allows you to cast powerful electric shocks against your enemies!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Icy Storm"
      case $lang
      when "it"
        text.name = "Tempesta Gelida"
        text.desc = "La spada ghiacciata ti permette di lanciare devastanti tempeste di ghiaccio!"
      when "en"
        text.name = "Icy Storm"
        text.desc = "The Icy Sword allows you to cast devastating icy storms!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Fire Bomb"
      case $lang
      when "it"
        text.name = "Bomba di Fuoco"
        text.desc = "La spada infuocata ti permette di lanciare distruttive bombe di fuoco!"
      when "en"
        text.name = "Fire Bomb"
        text.desc = "The Fire Sword allows you to cast destructive fire bombs!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    when "Magic Attack"
      case $lang
      when "it"
        text.name = "Attacco Magico"
        text.desc = "Sventola la spada di Bossfinale e lancia potenti attacchi magici!"
      when "en"
        text.name = "Magic Attack"
        text.desc = "Shake the Finalboss Sword and cast powerful magic attacks!"
      when "es"
        text.name = "TRADUCCIÓN"
        text.desc = "TRADUCCIÓN"
      end

    end
    return text

  end

  def get_db_actor(name)
    text = nil

    case name
    when "Ourhero"
      case $lang
      when "it"
        text = "Nostroeroe"
      when "en"
        text = "Ourhero"
      when "es"
        text = "TRADUCCIÓN"
      end

    when "Knight"
      case $lang
      when "it"
        text = "Cavaliere"
      when "en"
        text = "Knight"
      when "es"
        text = "TRADUCCIÓN"
      end

    end

    return text
  end

  def get_text(name)
    text = nil

    case name
      when "cannot_save"
        case $lang
        when "it"
          text = "Non puoi salvare in questo slot."
        when "en"
          text = "You can not save in this slot."
        when "es"
          text = "TRADUCCIÓN"
        end

      when "empty"
        case $lang
        when "it"
          text = "-Vuoto-"
        when "en"
          text = "-Empty-"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "playtime"
        case $lang
        when "it"
          text = "Tempo di gioco"
        when "en"
          text = "Playtime"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "location"
        case $lang
        when "it"
          text = "Posizione"
        when "en"
          text = "Location"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "currency"
        case $lang
        when "it"
          text = "Dindini"
        when "en"
          text = "Dindini"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "ask_overwrite"
        case $lang
        when "it"
          text = "Sovrascrivere il file?"
        when "en"
          text = "Overwrite the file?"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "cancel"
        case $lang
        when "it"
          text = "Annulla"
        when "en"
          text = "Cancel"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "save_message"
        case $lang
        when "it"
          text = "Scegli uno slot in cui salvare la partita."
        when "en"
          text = "Choose a slot to save the game."
        when "es"
          text = "TRADUCCIÓN"
        end

      when "load_message"
        case $lang
        when "it"
          text = "Scegli una partita da caricare."
        when "en"
          text = "Choose a slot to load the game."
        when "es"
          text = "TRADUCCIÓN"
        end

      when "possession"
        case $lang
        when "it"
          text = "Ne hai"
        when "en"
          text = "Owned"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "shop_buy"
        case $lang
        when "it"
          text = "Compra"
        when "en"
          text = "Buy"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "shop_sell"
        case $lang
        when "it"
          text = "Vendi"
        when "en"
          text = "Sell"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "shop_cancel"
        case $lang
        when "it"
          text = "Ciao..."
        when "en"
          text = "Bye..."
        when "es"
          text = "TRADUCCIÓN"
        end

      when "new_game"
        case $lang
        when "it"
          text = "Nuovo Gioco"
        when "en"
          text = "New Game"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "continue"
        case $lang
        when "it"
          text = "Continua"
        when "en"
          text = "Continue"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "shutdown"
        case $lang
        when "it"
          text = "Chiudi il gioco"
        when "en"
          text = "Quit the game"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "game_end"
        case $lang
        when "it"
          text = "Chiudi il gioco"
        when "en"
          text = "Quit the game"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "to_title"
        case $lang
        when "it"
          text = "Torna ai Titoli"
        when "en"
          text = "Back to Title"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "save"
        case $lang
        when "it"
          text = "Salva"
        when "en"
          text = "Save"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "item"
        case $lang
        when "it"
          text = "Oggetti"
        when "en"
          text = "Items"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "equip"
        case $lang
        when "it"
          text = "Equip"
        when "en"
          text = "Equip"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "level"
        case $lang
        when "it"
          text = "Livello"
        when "en"
          text = "Level"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "hp"
        case $lang
        when "it"
          text = "PV"
        when "en"
          text = "HP"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "mp"
        case $lang
        when "it"
          text = "PM"
        when "en"
          text = "MP"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "atk"
        case $lang
        when "it"
          text = "PM"
        when "en"
          text = "MP"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "weapon"
        case $lang
        when "it"
          text = "Arma"
        when "en"
          text = "Weapon"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "armor1"
        case $lang
        when "it"
          text = "Acc. di Difesa"
        when "en"
          text = "Guard Accessory"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "armor2"
        case $lang
        when "it"
          text = "Acc. d'Attacco"
        when "en"
          text = "Attack Accessory"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "armor3"
        case $lang
        when "it"
          text = "Special"
        when "en"
          text = "Special"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "armor4"
        case $lang
        when "it"
          text = "Oggetto"
        when "en"
          text = "Item"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "attack"
        case $lang
        when "it"
          text = "Attacco"
        when "en"
          text = "Attack"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "skill"
        case $lang
        when "it"
          text = "Abilità"
        when "en"
          text = "Skills"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "guard"
        case $lang
        when "it"
          text = "Difesa"
        when "en"
          text = "Guard"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "quit"
        case $lang
        when "it"
          text = "Esci"
        when "en"
          text = "Exit"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "exp_next"
        case $lang
        when "it"
          text = "Prossimo Lv"
        when "en"
          text = "Next Level"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "exp_total"
        case $lang
        when "it"
          text = "Esperienza"
        when "en"
          text = "Experience"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "website"
        case $lang
        when "it"
          text = "Sito Web"
        when "en"
          text = "Website"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "menu_language"
        case $lang
        when "it"
          text = "Lingua: ITA"
        when "en"
          text = "Language: ENG"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "back-king"
        case $lang
        when "it"
          text = "Torna dal Re!"
        when "en"
          text = "Go back to the King!"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "go-back"
        case $lang
        when "it"
          text = "Torna indietro!"
        when "en"
          text = "Go back!"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "defeat-monster"
        case $lang
        when "it"
          text = "Sconfiggi il mostro!"
        when "en"
          text = "Defeat the monster!"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "go-king"
        case $lang
        when "it"
          text = "Vai dal Re!"
        when "en"
          text = "Go to the King!"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "find-book"
        case $lang
        when "it"
          text = "Trova il libro!"
        when "en"
          text = "Find the book!"
        when "es"
          text = "TRADUCCIÓN"
        end

      when "no-dindini"
        case $lang
        when "it"
          @messages = [
            "Non hai abbastanza Dindini!",
          ]
        when "en"
          @messages = [
            "You don't have enough Dindini!",
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

    end

    return text
  end

  def set_msg(map_id, index)
    reset_msg_vars
    @messages = []
    map_id = map_id == nil ? $game_map.map_id : map_id

    cells = []
    line_data = $maps_data[map_id][index]
    line_data.split(";").each do |cell|
      cells.push(cell)
    end

    lang_id = LANG_INDEX[$lang]
    msg_block = cells[lang_id]
    msg_block.split("-").each do |msg|
      @messages.push(msg.to_s)
    end

    set_msg_vars
  end

end

$local = Localization.new()