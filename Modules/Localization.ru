#==============================================================================
# Localization script
# Author: Ste
#==============================================================================
class Localization
  $default_language = ""
  $msg_var = [61,62,63,64]

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
    
    map_id = map_id == nil ? $game_map.map_id : map_id

    case map_id
    when 1 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Mio sireee, mio sireee!"
          ]
        when "en"
          @messages = [
            "My sireee, my sireee!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Comandi base.\\.",
            "\\c[2]SHIFT:\\c[0] Corsa."
          ]
        when "en"
          @messages = [
            "Controls:\\.",
            "\\c[2]SHIFT:\\c[0] Run."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\c[2]S:\\c[0] Attacco!\\|"
          ]
        when "en"
          @messages = [
            "\\c[2]S:\\c[0] Attack!\\|"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\c[2]A:\\c[0] Salto.\\|",
            "\\c[2]NB: L'eroe può saltare solo durante una battaglia!\\c[0]"
          ]
        when "en"
          @messages = [
            "\\c[2]A:\\c[0] Jump.\\|",
            "\\c[2]NOTE: the hero can only jump during battle!\\c[0]"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\c[2]INVIO:\\c[0] per interagire durante il gioco.\\|",
            "\\c[2]ESC:\\c[0] per accedere al menu."
          ]
        when "en"
          @messages = [
            "\\c[2]ENTER:\\c[0] Interact.\\|",
            "\\c[2]ESC:\\c[0] Open/close the menu."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Per salvare la partita seleziona \\c[2]Salva\\c[0]",
            "dal menu principale.",
            "\\c[2]NB: l'autosalvataggio è comunque attivo.\\c[0]"
          ]
        when "en"
          @messages = [
            "To save the game select \\c[2]Save\\c[0] from the",
            "menu.",
            "\\c[2]NOTE: autosave is enabled anyway.\\c[0]"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\c[2]Interfaccia di gioco.\\c[0]\\.",
            "In alto a sinistra puoi visualizzare la tua barra",
            "dell'energia."
          ]
        when "en"
          @messages = [
            "\\c[2]Game interface:\\c[0]\\.",
            "In the upper left corner you can see your health bar."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "La partita termina quando l'eroe perde tutti i",
            "cuoricini a disposizione."
          ]
        when "en"
          @messages = [
            "The game ends when the hero loses all the hearts."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "Premi il tasto \\c[2]D\\c[0] per mangiare la carne e",
            "recuperare energia.\\|",
            "PROSEGUI, NOSTROEROE!"
          ]
        when "en"
          @messages = [
            "Press \\c[2]D\\c[0] to eat meat and recover health.\\|",
            "GO ON, OURHERO!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 2 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Mio sireee, mio sireee!"
          ]
        when "en"
          @messages = [
            "My sireee, my sireee!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dimmi, contadino."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Tell me, paesant."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Il...\\| Il prezioso cristallo di Teorhemas!\\|",
            "L'hanno... \\|L'hanno rubato, non c'è più!"
          ]
        when "en"
          @messages = [
            "The...\\| the precious Teorhemas Crystal!\\|",
            "It's been... \\|it's been stolen!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Oh, per mille castori infuriati!",
            "Dimmi, contadino, tu cosa sai?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Oh, blabbering blithering beavers!",
            "Tell me, peasant, what happened?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "Sono entrato qui nel castello per parlare con lei, sire,",
            "e il cristallo... Il cristallo non c'era più!"
          ]
        when "en"
          @messages = [
            "I came to the castle for an audience, my sire,",
            "and the crystal... it wasn't there anymore!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Fatelo cavaliere!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Knight him!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dategli la Spada della Rivolta!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Give him the Revolt Sword!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Tu, Nostroeroe, combatterai i cattivi che hanno",
            "rubato il cristallo dal nostro regno e lo riporterai",
            "qui al castello tutto intero.\\|",
            "Tu, Nostroeroe, salverai il mondo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You, Ourhero, will fight the bad guys who have",
            "stolen the crystal from our Kingdom and bring",
            "it back to us safe and sound.\\|",
            "You, Ourhero, will save the world!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ma io mi chiamo..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]But my name is..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Non hai tempo da perdere, Nostroeroe!",
            "Va'... va'! \\|",
            "Con la Spada della Rivolta nelle tue mani nessuno",
            "potrà farti più nulla, non temere!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Don't waste time, Ourhero!",
            "Go... go! \\|",
            "With the Revolt Sword with you there's no one",
            "that can hurt you, don't worry!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ma come si usa?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]How do I use it though?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Basta rivoltarla... \\|Dall'altra parte..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Just point it at the enemy... \\|sharp end first..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Credevo che l'aggettivo \"rivolta\"",
            "stesse per qualcosa di più epico e potente..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I thought the word \"revolt\" was for something",
            "more epic and powerful..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Sì, forse... Può essere anche per quello...\\|",
            "Vai, combatti i nemici, va'!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Yeah, maybe... It could be for something like",
            "this...\\|",
            "Go, fight the enemies, go!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Sì!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Yes sire!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "\\c[9]STE'S PROJECT",
            "presenta...\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]STE'S PROJECT",
            "presents...\\|\\|\\^",
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 17
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Mio sireee, mio sireee!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]My sireee, my sireee!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
        
      when 18
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dimmi, Nostroeroe..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Tell me, Ourhero..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ho sconfitto tantissimi nemici!\\|",
            "Saranno stati loro a rubare il prezioso Cristallo di",
            "Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I defeated a lot of enemies!\\|",
            "They must be the ones who stole the Teorhemas",
            "Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 20
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Uhm, allora non ti resta altro che partire alla",
            "ricerca del cristallo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Uhm, then go find them and get the crystal back!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 21
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Devi assolutamente recuperarlo.",
            "Al nostro regno è stato affidato il compito di",
            "custodire e proteggere il cristallo..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You must retrieve it.",
            "Our Kingdom has been entrusted to guard and",
            "protect the crystal..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Sai cosa accadrebbe se finisse nelle",
            "mani sbagliate?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Do you know what would happen if it fell in",
            "the wrong hands?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]No."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]No."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Bene."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Great."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 25
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Vai, Nostroeroe, esci dal mio castello",
            "e dai inizio alla tua avventura!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Go, Ourhero, get out of my castle and start",
            "your adventure!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 26
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Prendi questa fodera, potrai riporre al suo",
            "interno ogni spada che otterrai durante il tuo",
            "viaggio!\\|",
            "Buona fortuna!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Take this Sword Case. It lets you carry and switch",
            "between any sword you find on our journey!\\|",
            "Good luck!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 27
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dannazione, Nostroeroe!",
            "Non dovevamo lasciare fuggire quel polletto con il",
            "nostro Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Darn it all, Ourhero!",
            "That villain has made off with our precious",
            "Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 28
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Io lo so perchè era qua!",
            "Voleva uccidermi, uccidermi!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]I know why he was here!",
            "He wanted to kill me, to kill me!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 29
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Così avrebbe preso il controllo del regno",
            "e poi del mondo intero!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]So that he would wrest control of the kingdom",
            "from me, and then move on to the entire world!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 30
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]A questo punto credo solo una cosa vorrà",
            "fare... Vorrà potenziarsi e... Tornare!",
            "Con un esercito ancora più potente per farmi fuori!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Right now he must be in hiding, raising another",
            "army and bolstering his forces for an ever bigger",
            "attack!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 31
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Devi fermarlo! Gli abitanti del villaggio",
            "l'hanno visto fuggire a sud...\\.",
            "Dovrai attraversare la Città dell'Acqua, ma attento!",
            "Lì è pieno di suoi scagnozzi!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You have to stop him! The villagers have spotted",
            "him fleeing through the Water City!",
            "He left a lot of goons in his wake, so be careful!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 32
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Okay, starò attento, però dammi qualche",
            "potenziamento o un'arma incredibilmente forte!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I'll be careful.\\. Any chance I can get another",
            "weapon or upgrade for my trouble?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 33
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Tieni, una fetta di carne."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Here, have a slab of meat."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when "king1"
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Ti aspetta una lunga avventura piena di",
            "battaglie, Nostroeroe!",
            "Va', devi recuperare il Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]A long adventure full of battles awaits you,",
            "Ourhero!",
            "Go, you have to retrieve the Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when "king2"
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Devi attraversare la città dell'acqua",
            "per raggiungere quel tizio!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You have to go through the Water City to",
            "chase that guy!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when "king3"
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dei saggi riuscirebbero ad aprire la porta",
            "del castello di Bossfinale?",
            "Non l'avrei mai detto! Bene, fatti aiutare da loro!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Some sages would be able to open the",
            "gate to the Finalboss castle?",
            "I would never have said that! Well, get help",
            "from them!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when "king4"
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Ben fatto, Nostroeroe!",
            "Tutti siamo fieri di te!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Well done, Ourhero!",
            "We are all proud of you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when "cit1"
        case $lang
        when "it"
          @messages = [
            "NOSTROEROE! NOSTROEROE!"
          ]
        when "en"
          @messages = [
            "OURHERO! OURHERO!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 3 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]E questi tipi chi sono?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Who are these guys?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Sarà meglio che li faccia fuori tutti quanti!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Better take them all out!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Premi \\c[2]S\\c[0] per attaccare!",
            "\\c[2]SHIFT\\c[0] per correre e \\c[2]A\\c[0] per saltare gli",
            "ostacoli!"
          ]
        when "en"
          @messages = [
            "Press \\c[2]S\\c[0] to attack!",
            "Press \\c[2]SHIFT\\c[0] to run and \\c[2]A\\c[0] to jump over",
            "obstacles!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 4 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Devo pensare ad uscire dal castello ora!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I have to get out of the castle now!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 5 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Queste pozze d'acqua magica permetteranno al tuo",
            "eroe di saltare anche al di fuori di una battaglia!"
          ]
        when "en"
          @messages = [
            "These magical puddles let your hero jump even",
            "out of battle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 6 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cos'è successo qui?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What happened here?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Buahaha e tu chi saresti?!\\|",
            "Uno dei tanti poveracci che tentano ancora",
            "di fermarci?"
          ]
        when "en"
          @messages = [
            "Buahaha! Who are you?!\\|",
            "Another one of those guys who thinks can",
            "defeat us?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Se è così finirai come loro. \\. Morto!"
          ]
        when "en"
          @messages = [
            "If so, it will end badly for you, just like them!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "UCCIDETELO!"
          ]
        when "en"
          @messages = [
            "KILL HIM!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "Buahahah! Non credere sia così semplice sbarazzarti",
            "di noi!"
          ]
        when "en"
          @messages = [
            "Buahahah! If you think it will be easy to get rid of us",
            "you are totally wrong!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Ormai questo è il nostro regno!\\.",
            "Con il Cristallo di Teorhemas dalla nostra parte,",
            "in ogni parte del mondo tremeranno di paura",
            "di fronte a noi!"
          ]
        when "en"
          @messages = [
            "This is now our Kingdom!\\.",
            "With the Teorhemas Crystal on our side, everyone in",
            "the world will be afraid of us!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Basta, sono stufo di mandarti contro dei buoni",
            "a nulla!"
          ]
        when "en"
          @messages = [
            "Enough! No more sending those good-for-nothing",
            "grunts after you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "Di certo non sarai più forte di tutti gli altri soldati",
            "in questo castello!"
          ]
        when "en"
          @messages = [
            "You'll be a pushover just like every other soldier",
            "in this castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "Ora te la vedrai con me!"
          ]
        when "en"
          @messages = [
            "Now you'll get it from me!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\nb[#{get_name(1)}]Ho fatto fuori tutti!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I defeated everyone!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Però non c'è traccia del cristallo..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]The problem is there's no sign of the crystal..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 7 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Finora hai ucciso \\v[2] nemici."
          ]
        when "en"
          @messages = [
            "You've killed \\v[2] enemies so far."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Meriti un premio per avere sconfitto tutti questi",
            "cattivi!"
          ]
        when "en"
          @messages = [
            "You deserve a reward for having killed all these",
            "enemies!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Sconfiggi \\v[35] cattivi e ti darò un premio!"
          ]
        when "en"
          @messages = [
            "Defeat \\v[35] enemies and I will give you a reward!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "Incredibile! Meriti il premio!"
          ]
        when "en"
          @messages = [
            "I can't believe it! You deserve the reward!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "Per guadagnarti l'ultimo premio devi ottenere",
            "tutti i personaggi nella Galleria dei Personaggi!"
          ]
        when "en"
          @messages = [
            "To win the last prize you have to unlock all the",
            "characters in the Characters Gallery!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Per guadagnarti l'ultimo premio devi sconfiggere",
            "\\v[35] cattivi, completare il gioco e ottenere tutti i",
            "personaggi nella Galleria dei Personaggi!"
          ]
        when "en"
          @messages = [
            "To win the last prize you have to kill \\v[35] enemies,",
            "finish the story and unlock all the characters in",
            "the Characters Gallery!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Ragazzo, non ho più premi da darti!",
            "Ma posso dirti che hai ucciso \\v[2] nemici."
          ]
        when "en"
          @messages = [
            "My friend, I do not have any other rewards left for",
            "you!",
            "But I can tell you that you killed \\v[2] enemies",
            "so far."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "Sai cos'è successo nel castello?"
          ]
        when "en"
          @messages = [
            "Do you know what happened to the castle?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Hanno rubato il Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Someone stole the Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "Wooo un potente guerriero!",
            "Dove hai preso quella spada gigante?"
          ]
        when "en"
          @messages = [
            "Wow, a mighty warrior!",
            "Where did you find that huge sword?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Nei giochi l'eroe non risponde mai a quello",
            "che gli dice la gente, anche se è lui ad attaccar bottone."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I'm sorry, in a game the hero never replies",
            "to what the people have to say."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Che ti ridi?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Why are you laughing?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "Mi piace correre felice nel giardino del Re!"
          ]
        when "en"
          @messages = [
            "I'm so happy to run around in the King's courtyard!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "Voglio avventurarmi in un un'avventura!"
          ]
        when "en"
          @messages = [
            "I want to go on an adventure!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Voglio anch'io una bandana come la tua!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I want a bandana like yours!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "Na, è mia."
          ]
        when "en"
          @messages = [
            "No, it's mine."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 17
        case $lang
        when "it"
          @messages = [
            "Hey! Tutto bene?"
          ]
        when "en"
          @messages = [
            "Hey! Is everything all right?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 18
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Sì!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Sure!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "Se vuoi posso venderti qualcosa di interessante..."
          ]
        when "en"
          @messages = [
            "Let me sell you something interesting..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 20
        case $lang
        when "it"
          @messages = [
            "Compra qualcosa",
            "Cerca missione",
            get_text("cancel")
          ]
        when "en"
          @messages = [
            "Buy something",
            "Check for quests",
            get_text("cancel")
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 21
        case $lang
        when "it"
          @messages = [
            "Non puoi cominciare una nuova missione se prima",
            "non completi quella in corso!"
          ]
        when "en"
          @messages = [
            "You already have a mission in progress, you cannot",
            "start a new one!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "Avrei un compito da affidarti...\\|",
            "Nella foresta sono state buttate delle casse che,",
            "per il Re, rovinano la bellezza del paesaggio..."
          ]
        when "en"
          @messages = [
            "I have a mission for you...\\|",
            "Someone thought the Forest would make for a good",
            "garbage dump and threw around a bunch of old",
            "crates..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "La tua missione è trovarle e distruggerle tutte!",
            "Non lo sappiamo bene quante siano..."
          ]
        when "en"
          @messages = [
            "Your mission is to find and destroy all these crates!",
            "The problem is that we don't know exactly how",
            "many crates there are..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "Accetti la missione?",
            "ACCETTA",
            "RIFIUTA"
          ]
        when "en"
          @messages = [
            "Do you accept the mission?",
            "ACCEPT",
            "REFUSE"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 26
        case $lang
        when "it"
          @messages = [
            "Perfetto, contiamo su di te, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "Great! We're counting on you, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 27
        case $lang
        when "it"
          @messages = [
            "Compra qualcosa",
            "Rapporto missione",
            get_text("cancel")
          ]
        when "en"
          @messages = [
            "Buy something",
            "Mission recap",
            get_text("cancel")
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 28
        case $lang
        when "it"
          @messages = [
            "Fin'ora hai distrutto \\v[16] casse su 21."
          ]
        when "en"
          @messages = [
            "You have destroyed \\v[16] crates out of 21."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 29
        case $lang
        when "it"
          @messages = [
            "Complimenti, hai ripulito la foresta da quelle",
            "casse, meriti una ricompensa, da parte del re!"
          ]
        when "en"
          @messages = [
            "Awesome! You got rid of all those crates!",
            "You deserve a reward, from the King himself!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 30
        case $lang
        when "it"
          @messages = [
            "Compra qualcosa",
            get_text("cancel")
          ]
        when "en"
          @messages = [
            "Buy something",
            get_text("cancel")
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 31
        case $lang
        when "it"
          @messages = [
            "Ho una nuova missione da affidarti!\\|",
            "Nella Valle Selvaggia si aggirano alcuni nemici..."
          ]
        when "en"
          @messages = [
            "I have a new mission for you!\\|",
            "There are enemies wandering around the Wild Valley..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 32
        case $lang
        when "it"
          @messages = [
            "Devi eliminarli tutti quanti!",
            "Stanno cercando di attaccare il Castello del Re!",
            "Fermali prima che sia troppo tardi!"
          ]
        when "en"
          @messages = [
            "You have to kill them all!",
            "They are trying to assault the King's Castle!",
            "You have to stop them before it's too late!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 33
        case $lang
        when "it"
          @messages = [
            "Fin'ora hai eliminato \\v[16] nemici su 29."
          ]
        when "en"
          @messages = [
            "You have killed \\v[16] enemies out of 29."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 34
        case $lang
        when "it"
          @messages = [
            "Complimenti, hai sconfitto tutti i nemici!",
            "Eccoti il premio!"
          ]
        when "en"
          @messages = [
            "Awesome, you have killed all the enemies!",
            "Here is your reward!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 35
        case $lang
        when "it"
          @messages = [
            "\\nb[VENDITORE DI SALUMI]Vuole acquistare qualcosa?"
          ]
        when "en"
          @messages = [
            "\\nb[BUTCHER]Do you want to buy something?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 36
        case $lang
        when "it"
          @messages = [
            "\\nb[NEGOZIO DI ARMI]Salve, come posso esserle utile?"
          ]
        when "en"
          @messages = [
            "\\nb[WEAPONS SELLER]Good morning, may I help you?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 37
        @messages = [
          get_map_name("Forest of the All-Eye Monster")
        ]

      when 38
        @messages = [
          get_map_name("Wild Valley")
        ]

      when 39
        case $lang
        when "it"
          @messages = [
            "Io mi occupo della costruzione di spade e del",
            "potenziamento di armi di ogni genere."
          ]
        when "en"
          @messages = [
            "I can smith and enhance all kinds of weapons."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 40
        case $lang
        when "it"
          @messages = [
            "Ma non credo tu ora ne possa avere bisogno..."
          ]
        when "en"
          @messages = [
            "But I don't think you need this right now."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 41
        case $lang
        when "it"
          @messages = [
            "So che il re ti ha incaricato di distruggere quelle",
            "rocce che bloccano il passaggio ad est..."
          ]
        when "en"
          @messages = [
            "I heard the path you're supposed to take to continue on",
            "your quest is blocked by rocks barring the way to",
            "the East..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 42
        case $lang
        when "it"
          @messages = [
            "Bè, io forse potrei potenziare la tua Spada della",
            "Rivolta in modo che tu riesca a spaccare anche delle", 
            "rocce potenti come quelle!"
          ]
        when "en"
          @messages = [
            "I'll temper your Revolt Sword. It should make it",
            "strong enough to break through those rocks!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 43
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Fantastico!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Amazing!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 44
        case $lang
        when "it"
          @messages = [
            "Solo che...\\. Non mi ricordo come si fa."
          ]
        when "en"
          @messages = [
            "The problem is...\\. I don't remember how to do it."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 45
        case $lang
        when "it"
          @messages = [
            "Ho bisogno di un libro, dove c'è scritto tutto,",
            "passo passo, su come potenziare la tua spada!"
          ]
        when "en"
          @messages = [
            "I need a rare book on swordsmithing techniques in",
            "order to do that."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 46
        case $lang
        when "it"
          @messages = [
            "Si chiama \"Libro delle Doti Perdute\" e dovrebbe",
            "essere nascosto da qualche parte nella Foresta",
            "dell'Occhio Sgorbio!"
          ]
        when "en"
          @messages = [
            "It's called \"Book of the Forgotten Crafts\", and it",
            "should be hidden somewhere in the Forest of the",
            "All-Eye Monster!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 47
        case $lang
        when "it"
          @messages = [
            "Devi trovare il mio Libro delle Doti Perdute!\\.",
            "Così potrò potenziare la tua spada...\\.",
            "Si trova nella Foresta dell'Occhio Sgorbio!"
          ]
        when "en"
          @messages = [
            "You have to find the Book of the Forgotten Crafts!\\.",
            "This way I can upgrade your sword...\\.",
            "You can find the book in the Forest of the All-Eye", 
            "Monster!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 48
        case $lang
        when "it"
          @messages = [
            "Hai trovato il Libro delle Doti Perdute, grande!\\.",
            "Ora potrò potenziare la tua Spada della",
            "Rivolta!"
          ]
        when "en"
          @messages = [
            "You found the Book of the Forgotten Crafts,",
            "awesome!\\.",
            "Now I can upgrade your Revolt Sword!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 49
        case $lang
        when "it"
          @messages = [
            "\\gOra ho solo bisogno di \\v[34] Dindini per le materie",
            "prime che mi servono per potenziare questa spada!",
            "Paga \\v[34] Dindini",
            "Non pagare"
          ]
        when "en"
          @messages = [
            "\\gNow I only need \\v[34] Dindini for the rest of the",
            "materials and I can proceed with the upgrade.",
            "Pay \\v[34] Dindini",
            "Don't pay"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 50
        case $lang
        when "it"
          @messages = [
            "Perfetto, ecco la tua Spada della Rivolta potenziata!"
          ]
        when "en"
          @messages = [
            "Here we go, your enhanced Revolt Sword!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 51
        case $lang
        when "it"
          @messages = [
            "#{get_text("no-dindini")}\\|",
            "Vai nella foresta a combattere qualche cattivo,",
            "così potrai impossessarti dei loro bottini!"
          ]
        when "en"
          @messages = [
            "#{get_text("no-dindini")}\\|",
            "You can go to the forest to fight some baddies,",
            "so you can get their loots!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 54
        case $lang
        when "it"
          @messages = [
            "Hai una Spada della Rivolta che vuoi potenziare?",
            "Potenzia spada",
            get_text("cancel")
          ]
        when "en"
          @messages = [
            "Do you have a Revolt Sword you want to upgrade?",
            "Upgrade sword",
            get_text("cancel")
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 55
        case $lang
        when "it"
          @messages = [
            "Prova subito la potenza della tua nuova spada!"
          ]
        when "en"
          @messages = [
            "Go experience the new power of your Revolt Sword!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 56
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Non troverò il cristallo di Teorhemas da",
            "questa parte..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I won't find the Teorhemas Crystal over here..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 11 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Tu devi essere Nostroeroe...\\|",
            "È un po' che ti seguo."
          ]
        when "en"
          @messages = [
            "You must be Ourhero...\\|",
            "I've been following you for a while."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Tu chi sei?!\\|",
            "Perché mi segui?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Who are you?!\\|",
            "Why are you following me?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Tranquillo, sono qui per aiutarti!"
          ]
        when "en"
          @messages = [
            "Don't worry, I'm here to help you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "Se non sbaglio a nord della foresta c'è un",
            "portale elettrico che ti impedisce di proseguire."
          ]
        when "en"
          @messages = [
            "If I'm not wrong at the North of the Forest there is",
            "an electric gate you can't overcome."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "Io so come poterlo distruggere!"
          ]
        when "en"
          @messages = [
            "I know how you can destroy it!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Oh, fantastico!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Oh, that's good!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Prendi questa spada!"
          ]
        when "en"
          @messages = [
            "Take this sword!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "Grazie a questa spada potrai lanciare",
            "delle potenti scariche elettriche contro il",
            "portale, fino a farlo sovraccaricare!"
          ]
        when "en"
          @messages = [
            "Use the electricity in this sword to overload the gate!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Fico!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Cool!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "Vai a provare!"
          ]
        when "en"
          @messages = [
            "Go and try it!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\c[2]Abilità:\\c[0]\\|",
            "Durante la tua avventura potrai trovare delle",
            "spade con caratteristiche particolari."
          ]
        when "en"
          @messages = [
            "\\c[2]Skills:\\c[0]\\|",
            "During your adventure you can find swords with",
            "special abilities."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "Alcune spade, se equipaggiate, insegneranno",
            "all'eroe delle Abilità!"
          ]
        when "en"
          @messages = [
            "Some swords, once equipped, will give the hero",
            "special Skills!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "Per utilizzare l'abilità conferita dalla spada,",
            "apri il menu, seleziona \\c[2]Abilità\\c[0] e premi sopra",
            "l'abilità selezionata il tasto \"1\" per assegnare",
            "l'abilità a quel tasto!"
          ]
        when "en"
          @messages = [
            "To cast the skill learned from the sword, open the",
            "Menu, go to \\c[2]Skills\\c[0] and press the \"1\" button to",
            "assign the skill to that button!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "Per poi usare l'abilità durante il gioco basterà",
            "premere il tasto \"1\" e verrà lanciato l'attacco",
            "contro oggetti o nemici!"
          ]
        when "en"
          @messages = [
            "To then use the skill you will just have to press",
            "the button \"1\" and the hero will use the skill",
            "against obstacles or enemies!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "Apri menu-> Equipaggia la spada->",
            "CHIUDI MENU.",
            "Apri menu-> Assegna l'abilità->",
            "Chiudi menu."
          ]
        when "en"
          @messages = [
            "Open menu-> Equip the sword ->",
            "CLOSE MENU.",
            "Open menu-> Assign the skill ->",
            "Close menu."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "\\c[2]Ricorda:\\c[0] lanciare le abilità ha un costo!\\.",
            "Tieni d'occhio la tua Barra delle Abilità (sotto la tua",
            "energia). Quando è vuota avrai bisogno di un \\c[2]Rigeneratore\\c[0]",
            "per ricaricarla."
          ]
        when "en"
          @messages = [
            "\\c[2]Remember:\\c[0] casting skills has a cost!\\.",
            "Keep an eye on your Skill Energy (under your",
            "health bar). When empty you'll need a \\c[2]Regenerator\\c[0]",
            "to recharge it."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 17
        case $lang
        when "it"
          @messages = [
            "Hai provato a distruggere il portale elettrico",
            "che blocca la strada nella foresta?"
          ]
        when "en"
          @messages = [
            "Did you try to destroy the electric gate which",
            "blocks the way in the forest?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 18
        case $lang
        when "it"
          @messages = [
            "Tieni, prendi un Rigeneratore."
          ]
        when "en"
          @messages = [
            "Here, have a Regenerator."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]È impossibile proseguire da questa parte..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]There's no way to go on here..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 20
        case $lang
        when "it"
          @messages = [
            "Torna nelle zone Boss per trovare sempre nemici",
            "da sconfiggere e con cui allenarti!"
          ]
        when "en"
          @messages = [
            "You can refight enemies in the Boss arenas to gain",
            "money and EXP!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 21
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ciao!\\. Chi sei?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Hi!\\. Who are you?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "\\nb[TAY]Il mio nome è Tay.\\.",
            "Sto cercando il mio amico, Fury..."
          ]
        when "en"
          @messages = [
            "\\nb[TAY]My name is Tay.\\.",
            "I'm looking for my friend, Fury..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "\\c[10]TAY",
            "Nuovo personaggio sbloccato nella Galleria dei Personaggi!"
          ]
        when "en"
          @messages = [
            "\\c[10]TAY",
            "New character unlocked in the Characters Gallery!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "\\nb[TAY]Non può essersi allontanato troppo..."
          ]
        when "en"
          @messages = [
            "\\nb[TAY]He can't be so far..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 25
        case $lang
        when "it"
          @messages = [
            "Il Ponticello è troppo pesante,",
            "non riesci a saltare!"
          ]
        when "en"
          @messages = [
            "The Small Bridge is too heavy,",
            "you can't jump!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 17 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Mi si parla di fronte."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Please address me from the front."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Oh, eccoti Nostroeroe!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Oh, here you are Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cosa ci fai su un tappeto?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Why are you on a carpet?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Io non posso non stare su un non tappeto."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]I can't not stay on a carpet."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Eh?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Cosa?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]What?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Non ho capito."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I don't get it."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dicevamo...\\|",
            "Le mie guardie hanno visto scappare qualcuno da",
            "questa parte... Con il Cristallo di Teorhemas in mano!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]As I was saying...\\|",
            "My soldiers saw someone escaping over there...",
            "Holding the Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Chiunque sia devi raggiungerlo al più",
            "presto, prima che si allontani troppo con il nostro",
            "cristallo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Anyway, you have to catch him before he gets",
            "away with the crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Però... Hanno bloccato il passaggio",
            "con queste robustissime rocce...",
            "Nemmeno la tua Spada della Rivolta può distruggerle!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]The problem is... they blocked the way with",
            "these heavy rocks...",
            "Even your Revolt Sword can't destroy them!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dovresti potenziare la tua spada.\\.",
            "I miei armaioli potranno esserti d'aiuto!\\|",
            "Forza Nostroeroe, contiamo su di te!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You should upgrade your sword.\\.",
            "My blacksmiths will be able to assist you!\\|",
            "Come on Ourhero, we're counting on you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Se solo trovassi un modo per potenziare",
            "la tua Spada della Rivolta...",
            "Saresti poi in grado di distruggere queste rocce",
            "che bloccano il passaggio!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]If only you could find a way to upgrade your",
            "Revolt Sword...",
            "Then you will be able to destroy those rocks which",
            "block the way!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 19 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Dannazione! Perché avete aperto il cancello?!",
            "PERCHÉ?!"
          ]
        when "en"
          @messages = [
            "Damn it! Why did you open the gate?!",
            "WHY?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 21 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Questo portale elettrico è troppo potente!\\.",
            "Ma se questi zombie ci finissero contro..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]This electric gate is too powerful!\\.",
            "I wonder what could happen if one of these zombies",
            "crashes on the gate..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 24 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Meglio non saltare qui, è troppo",
            "rischioso."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Better not to jump here, it's too risky."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 25 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Non sappiamo cosa stia succedendo qui...",
            "Sembra che i soldati caduti in battaglia si",
            "risveglino... Da morti!"
          ]
        when "en"
          @messages = [
            "We don't know what is happening here...",
            "It looks like the dead soldiers... came back to life!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Più avanti troverai l'entrata sul retro del castello..."
          ]
        when "en"
          @messages = [
            "This way leads right to the castle's back entrance..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Chi ha aperto il cancello?!",
            "Lo avevamo chiuso per evitare che quei mostri",
            "raggiungessero il castello!"
          ]
        when "en"
          @messages = [
            "Who opened the gate?!",
            "We had closed it to prevent those monsters from",
            "reaching the castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 26 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]I morti viventi rendono immortale quel mostro!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]The undead are making the monster impervious",
            "to your attacks!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Nostroeroe, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Ourhero, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Mio sire, mio sire!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]My sire, my sire!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Lui è la causa di tutto!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]That guy is the cause of all this!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Il cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]The Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Gnahahah poveri stolti!",
            "Il cristallo è mio e nessuno me lo leverà",
            "dalle grinfie!"
          ]
        when "en"
          @messages = [
            "Gnahahah poor folks!",
            "The crystal is now mine and no one will be able",
            "to take it off from me!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Nostroeroe, tu non sai qual è l'incredibile",
            "potere del Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Ourhero, I still haven't told you about the real power", 
            "of the Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Chiunque possegga il cristallo può dare vita a",
            "qualsiasi oggetto inanimato!\\.",
            "Sostanze, oggetti... qualsiasi cosa non vivente, insomma!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]The crystal can bring any inanimated object to life!\\.",
            "It can control all nonliving matter!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ora si spiega tutto!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]That explains everything!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "Gnahahah guardate cosa posso fare con questo",
            "fantastico cristallo!"
          ]
        when "en"
          @messages = [
            "Gnahahah have a look at what I can do with the",
            "power of this amazing crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ha creato quel mostro da una bottiglia",
            "di vino che era caduta in terra!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]He created that monster from a broken bottle",
            "of wine!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Ora sai qual è la potenza del Cristallo di Teorhemas.\\|",
            "Puoi facilmente capire che non possiamo lasciarlo",
            "nella mani di quel pazzo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You know the power of the Teorhemas Crystal now.\\|",
            "You understand it's far too dangerous to leave the",
            "crystal in his hands!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "Gnahahah io vi lascio nelle scrimpi del mio mostro!\\.",
            "Il cristallo è mio.\\.",
            "Gnahahahaha!!!"
          ]
        when "en"
          @messages = [
            "Gnahahah I leave you in the cluthces of my monster!\\.",
            "The crystal is mine.\\.",
            "Gnahahahaha!!!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Nostroeroe, uccidi quel mostro prima che raggiunga",
            "il mio castello!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Ourhero, kill that monster before he can reach",
            "my castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 27 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Benvenuti in arena."
          ]
        when "en"
          @messages = [
            "Welcome to the arena."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\c[10]L'arena è attualmente chiusa."
          ]
        when "en"
          @messages = [
            "\\c[10]The arena is currently closed."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Vuoi accedere all'arena?",
            "Entra in Arena",
            get_text("cancel")
          ]
        when "en"
          @messages = [
            "Do you want to enter the Arena?",
            "Enter the Arena",
            get_text("cancel")
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "Uccidi il maggior numero di nemici nel tempo",
            "limite!"
          ]
        when "en"
          @messages = [
            "Kill as many enemies as you can before the time's", 
            "up!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\c[6]25 nemici = Medaglia di Bronzo",
            "50 nemici = Medaglia d'Argento",
            "75 nemici = Medaglia d'Oro"
          ]
        when "en"
          @messages = [
            "\\c[6]25 enemies = Bronze Medal",
            "50 enemies = Silver Medal",
            "75 enemies = Gold Medal"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Tempo scaduto."
          ]
        when "en"
          @messages = [
            "Time out."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Hai eliminato \\v[21] nemici!"
          ]
        when "en"
          @messages = [
            "You've killed \\v[21] enemies!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 28 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Solo un soldato potrà proseguire verso il tesoro."
          ]
        when "en"
          @messages = [
            "Only a soldier will be able to go towards the",
            "treasure."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Solo un guerriero dallo spirito elettrizzante saprà",
            "come proseguire verso il tesoro."
          ]
        when "en"
          @messages = [
            "Only a warrior with an electric spirit will be able to",
            "go towards the treasure."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Una spada potentissima, evoluzione della sua",
            "versione precedente."
          ]
        when "en"
          @messages = [
            "A mighty sword, evolution of its previous version."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "Il soldato che riuscì ad ammazzare i morti viventi",
            "diventò leggenda."
          ]
        when "en"
          @messages = [
            "The soldier who managed to kill the undeads became",
            "legend."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "La magica lucentezza dei ghiacciai potrà aprire",
            "molte strade verso il tesoro."
          ]
        when "en"
          @messages = [
            "The magic shine of the glaciers can open",
            "the path towards the treasure."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Il resto è illeggibile."
          ]
        when "en"
          @messages = [
            "The rest is illegible."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 30 #map_id
      case index
      when 1
        @messages = [
          get_map_name("Water City")
        ]

      when 2
        case $lang
        when "it"
          @messages = [
            "\\>Città dell'Acqua",
            "\\>Regno di Bossfinale",
            "\\>Resta qui"
          ]
        when "en"
          @messages = [
            "\\>Water City",
            "\\>Finalboss Domain",
            "\\>Stay here"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 38 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Aiuto, aiuto!!!"
          ]
        when "en"
          @messages = [
            "Help, help!!!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Hey! A qualcuno serve una mano!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Hey! Someone needs help!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]La voce proveniva da qui dietro!\\.",
            "Ci deve essere un bottone che apre il cancello qui da",
            "qualche parte..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]The voice came from here!\\.",
            "There should be a button that opens this door",
            "around here..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cosa ci facevi chiuso lì dentro?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Why were you trapped here?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "Mi hanno catturato! Quei maledetti scagnozzi di",
            "Bossfinale!"
          ]
        when "en"
          @messages = [
            "The minions of the bloody Finalboss kidnapped me!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Bossfinale?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Finalboss?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Sì, quello che ha rubato il Cristallo di Teorhemas!\\|",
            "La notizia ormai circola per tutto il regno!"
          ]
        when "en"
          @messages = [
            "Yeah, the one who stole the Teorhemas Crystal!\\|",
            "Everyone knows him by now!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Perché ti hanno imprigionato?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Why did they lock you up?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "Perchè io conosco il loro punto debole!"
          ]
        when "en"
          @messages = [
            "Because I know their weakness!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "Devi sapere che gli scagnozzi di Bossfinale sono",
            "solo degli esseri privi di qualsiasi capacità",
            "intellettiva! Non sanno pensare, parlare, ragionare..."
          ]
        when "en"
          @messages = [
            "You must be aware that the Finalboss henchmen are",
            "just living beings without any IQ!",
            "They can't think, speak or rationalize..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "Anche loro sono esseri riportati in vita dal magico",
            "e portentoso stratosferico Cristallo di Teorhemas!\\|",
            "Seguono solo lo scopo per cui sono stati riportati",
            "in vita... Uccidere!"
          ]
        when "en"
          @messages = [
            "They are living beings brought to life thanks to the",
            "amazing and magical power of the Teorhemas",
            "Crystal!\\|",
            "They exist with only one purpose... TO KILL!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "Ma... Se si interferisse con il Cristallo di Teorhemas,",
            "ovvero la fonte di tutti i loro comandi, questi esseri",
            "diventerebbero ancora più stupidi di quello",
            "che sono!"
          ]
        when "en"
          @messages = [
            "But if you could interfere with the Teorhemas",
            "Crystal, the source of all their knowledge, those", 
            "beings would become even stupider than they",
            "already are!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "Neppure guidati dal loro scopo principale.",
            "Corpi morti, ma in vita, che seguono le mosse",
            "di qualsiasi cosa gli si trovi davanti."
          ]
        when "en"
          @messages = [
            "They would even stop obeying orders!",
            "They would be shambling dead incapable of doing",
            "anything but mimic the movement of anything they",
            "see."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Wow! E come posso interferire con",
            "il Cristallo di Teorhemas?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Wow! And how can I interfere with the",
            "Teorhemas Crystal?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "In questo momento farlo direttamente è impossibile,",
            "dato che il cristallo non è nelle nostre mani."
          ]
        when "en"
          @messages = [
            "At the moment is not possible, due to the fact that",
            "the crystal is not in our hands."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "Ma questo frammento di Cristallo Controllore",
            "fa al caso nostro!"
          ]
        when "en"
          @messages = [
            "But this fragment of Controller Crystal is everything",
            "we need!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 17
        case $lang
        when "it"
          @messages = [
            "Per farlo funzionare hai solo bisogno di una piccola",
            "fonte di energia..."
          ]
        when "en"
          @messages = [
            "Just a small amount of energy is enough to activate",
            "it..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 18
        case $lang
        when "it"
          @messages = [
            "Ecco! Quelle lucine sono perfette!",
            "Prova ad attivare il frammento vicino ad una di",
            "quelle lucine, dove ci sia anche un nemico, e vedrai",
            "il suo incredibile potere!"
          ]
        when "en"
          @messages = [
            "There! Those little lights are perfect!",
            "Try to activate the fragment I gave you close to one",
            "of those lights, with an enemy nearby, and you will",
            "see its astonishing power!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "Prova ad attivare il frammento vicino ad una di",
            "quelle lucine, dove ci sia anche un nemico, e vedrai",
            "il suo incredibile potere!"
          ]
        when "en"
          @messages = [
            "Try to activate the fragment I gave you close to one",
            "of those lights, with an enemy nearby, and you will",
            "see its astonishing power!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 40 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Accidenti... Questo laser dev'essere",
            "controllato da quel terminale...",
            "Ma non posso raggiungerlo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Damn it... this laser must be controlled from",
            "that terminal...",
            "But I can't reach it!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 43 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Credo voglia farmi fuori."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I think he wants to take me down."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]È un osso duro!\\. Sembra che i miei",
            "attacchi non avranno più effetto su di lui!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]He looks even tougher than before!\\.",
            "My attacks aren't even scratching him!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ok, fatti sotto!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]All right, let's do this!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 44 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\c[14]COMPLIMENTI!",
            "Hai ottenuto tutte le spade presenti nel gioco!"
          ]
        when "en"
          @messages = [
            "\\c[14]CONGRATULATIONS!",
            "You collected all the swords!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\c[14]COMPLIMENTI!",
            "Hai completato la Galleria dei Personaggi!\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[14]CONGRATULATIONS!",
            "You completed the Characters Gallery!\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS CASTELLO",
            "Chi si crede di essere, era solo il primo boss..."
          ]
        when "en"
          @messages = [
            "\\c[14]CASTLE BOSS",
            "Who does he think he is, he's just the first boss..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\c[14]BRACCIO BOSS FORESTA",
            "Dato che l'intero boss della foresta era difficile",
            "da far stare su una casellina, eccovi un suo braccio."
          ]
        when "en"
          @messages = [
            "\\c[14]FOREST BOSS ARM",
            "The boss of the forest was too big to make a trophy",
            "of, so here's one of his arms instead."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS VALLE SELVAGGIA",
            "Sostanza proveniente da una bottiglia di vino.",
            "Caduta in terra."
          ]
        when "en"
          @messages = [
            "\\c[14]WILD VALLEY BOSS",
            "This boss was animated from the leftover wine in",
            "a broken bottle."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS CITTA' DELL'ACQUA"
          ]
        when "en"
          @messages = [
            "\\c[14]WATER CITY BOSS"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS DESERTO",
            "Un nemico cybernetico venuto fuori da chissà",
            "quale magia del Cristallo di Teorhemas."
          ]
        when "en"
          @messages = [
            "\\c[14]DESERT BOSS",
            "A cybernetic enemy augmented in mysterious ways", 
            "by the wild energy of the Teorhemas Crystal."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS VULCANO",
           "Eccovi una versione ridotta del verme gigante nelle",
           "Profondità del Vulcano."
          ]
        when "en"
          @messages = [
            "\\c[14]VOLCANO BOSS",
            "Here we have a smaller version of the giant worm",
            "from the Volcano Depth."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS FORESTA OSCURA",
            "Ed ecco una versione ridotta anche della pianta",
            "carnivora gigante venuta fuori dall'ennesimo",
            "sortilegio del Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\c[14]DARK FOREST BOSS",
            "Here we have a smaller version of the carnivorous", 
            "plant, coming from the n-th spell of the Teorhemas",
            "Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSS EVOLUTO",
            "La versione più evoluta del primo boss!",
            "Riportato in vita e potenziato con l'incredibile",
            "potere del Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\c[14]EVOLVED BOSS",
            "The advanced version of the first boss!",
            "Came back to life and enhanced thanks to the",
            "unbelievable power of the Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSSFINALE",
            "Il tremendo Bossfinale!",
            "Guarda com'è simpatico... Avreste potuto diventare", 
            "grandi amici."
          ]
        when "en"
          @messages = [
            "\\c[14]FINALBOSS",
            "The terrible Finalboss!",
            "He looks so nice... You could have become",
            "good friends."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\c[14]BOSSFINALE TRASFORMATO",
            "Ecco cosa può fare il Cristallo di Teorhemas se non", 
            "viene usato nel modo corretto..."
          ]
        when "en"
          @messages = [
            "\\c[14]TRANSFORMED FINALBOSS",
            "That's what the Teorhemas Crystal could do",
            "when it is used in the wrong way..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "\\c[14]NEMICO 1"
          ]
        when "en"
          @messages = [
            "\\c[14]ENEMY 1"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "\\c[14]NEMICO 2"
          ]
        when "en"
          @messages = [
            "\\c[14]ENEMY 2"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 17
        case $lang
        when "it"
          @messages = [
            "\\c[14]NINJA",
            "Più agili di qualsiasi altro nemico!"
          ]
        when "en"
          @messages = [
            "\\c[14]NINJA",
            "Faster than any other enemy!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 18
        case $lang
        when "it"
          @messages = [
            "\\c[14]ZOMBIE",
            "Solo l'Ammazzazombie può sconfiggerli."
          ]
        when "en"
          @messages = [
            "\\c[14]ZOMBIE",
            "Only the Zombiesbane can defeat them."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "\\c[14]NEMICO 3"
          ]
        when "en"
          @messages = [
            "\\c[14]ENEMY 3"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 20
        case $lang
        when "it"
          @messages = [
            "\\c[14]NEMICO 4",
            "Resistenti al fuoco, deboli al ghiaccio."
          ]
        when "en"
          @messages = [
            "\\c[14]ENEMY 4",
            "Resistant to fire, weak to ice."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 21
        case $lang
        when "it"
          @messages = [
            "\\c[14]CARBONELLO",
            "Questi nemici nascono dalle fiamme dei vulcani, gli",
            "attacchi di fuoco sono completamente inutili, invece",
            "il ghiaccio li distrugge."
          ]
        when "en"
          @messages = [
            "\\c[14]CHARCOAL",
            "An enemy spawned from the core of the Volcanic",
            "Depths.",
            "Fire is useless against him, but ice will destroy him."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "\\c[14]GHIACCIOLI",
            "Questi nemici sono completamente ghiacciati, vivono",
            "solo nei posti più freddi.",
            "Il fuoco li distrugge."
          ]
        when "en"
          @messages = [
            "\\c[14]ICICLE",
            "Their bodies are constantly frozen from exposure to",
            "their icy habitat.",
            "Fire kills them instantly."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "\\c[14]OMBRA",
            "Temibili esseri che si aggirano per la Foresta",
            "Oscura."
          ]
        when "en"
          @messages = [
            "\\c[14]SHADOW",
            "Fearsome creatures that wander around the Dark",
            "Forest."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "\\c[14]NEMICO 5"
          ]
        when "en"
          @messages = [
            "\\c[14]ENEMY 5"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 25
        case $lang
        when "it"
          @messages = [
            "\\c[14]RE",
            "Come si farebbe senza di lui..."
          ]
        when "en"
          @messages = [
            "\\c[14]KING",
            "What would we do without him?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 26
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 4",
            "Vai da lui se credi di aver eliminato un numero",
            "considerevole di nemici."
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 4",
            "Go to him if you think you have defeated a",
            "considerable amount of enemies."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 27
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 5",
            "La vorresti una bandana come la sua, eh?!"
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 5",
            "You want a bandana like his, don't you?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 28
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 2",
            "Probabilmente non è in grado di aprire la bocca."
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 2",
            "Probably is not able to open his mouth."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 29
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 7",
            "Cosa c'è da ridere?"
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 7",
            "What's so funny?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 30
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 1"
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 1"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 31
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 6"
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 6"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 32
        case $lang
        when "it"
          @messages = [
            "\\c[14]CITTADINO 3",
            "Vi assomigliate un po' troppo..."
          ]
        when "en"
          @messages = [
            "\\c[14]PAESANT 3",
            "He looks like you... too much."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 33
        case $lang
        when "it"
          @messages = [
            "\\c[14]VENDITORE DI SALUMI",
            "Grazie a lui e alla sua carne sei riuscito a salvarti",
            "nelle situazioni più disastrose."
          ]
        when "en"
          @messages = [
            "\\c[14]BUTCHER",
            "Thanks to him and his meat you managed to save",
            "yourself in the most dangerous situations."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 34
        case $lang
        when "it"
          @messages = [
            "\\c[14]TAY",
            "Sta cercando il suo amico..."
          ]
        when "en"
          @messages = [
            "\\c[14]TAY",
            "He is looking for his friend..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 35
        case $lang
        when "it"
          @messages = [
            "\\c[14]NOSTROEROE",
            "Hey, ci sei pure tu!",
            "L'eroe numero uno, incontrastato!"
          ]
        when "en"
          @messages = [
            "\\c[14]OURHERO",
            "Hey, here you are!",
            "Number one hero, unmatched!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 36
        case $lang
        when "it"
          @messages = [
            "\\c[14]EROE 2",
            "Grazie a lui hai ottenuto la tua Spada Elettrica,",
            "che lancia scariche elettriche!"
          ]
        when "en"
          @messages = [
            "\\c[14]HERO 2",
            "He gave you the Electric Sword and taught you how",
            "to use the Lightning skill!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 37
        case $lang
        when "it"
          @messages = [
            "\\c[14]EROE 3",
            "Chissà quali ardue imprese hanno affrontato",
            "questi valorosi eroi...",
            "Il Cristallo Controllore proviene da lui!"
          ]
        when "en"
          @messages = [
            "\\c[14]HERO 3",
            "Nobody knows how many tough challenges these",
            "heroes faced...",
            "The Controller Crystal comes from him!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 38
        case $lang
        when "it"
          @messages = [
            "\\c[14]GUARDIA",
            "Fedele guardia del castello del Re!"
          ]
        when "en"
          @messages = [
            "\\c[14]GUARD",
            "Loyal guard of the King's castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 39
        case $lang
        when "it"
          @messages = [
            "\\c[14]GUARDIA 2",
            "Questa guardia si occupa di costruire armi e",
            "potenziarle quanto più può."
          ]
        when "en"
          @messages = [
            "\\c[14]GUARD 2",
            "This guard dabbles in blacksmithing.",
            "He can craft and upgrade weapons!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 40
        case $lang
        when "it"
          @messages = [
            "\\c[14]SAGGIO 1",
            "Alcuni hanno dei dubbi che quella cosa in testa",
            "sia veramente una bandana."
          ]
        when "en"
          @messages = [
            "\\c[14]SAGE 1",
            "There are rumors that his hat is not actually a hat."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 41
        case $lang
        when "it"
          @messages = [
            "\\c[14]SAGGIO 2",
            "Gli piacciono le collane luccicanti..."
          ]
        when "en"
          @messages = [
            "\\c[14]SAGE 2",
            "He really likes lavish necklaces..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 42
        case $lang
        when "it"
          @messages = [
            "\\c[14]SAGGIO 3",
            "Ah, i saggi...",
            "Uno più brutto dell'altro."
          ]
        when "en"
          @messages = [
            "\\c[14]SAGE 3",
            "Ah, the sages...",
            "So fugly."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 43
        case $lang
        when "it"
          @messages = [
            "\\c[14]SAGGIO 4",
            "Brutto come suo fratello."
          ]
        when "en"
          @messages = [
            "\\c[14]SAGE 4",
            "Ugly as his brother."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 44
        case $lang
        when "it"
          @messages = [
            "\\c[14]SAGGIO 5",
            "L'ultimo dei cinque saggi.",
            "E il cancello di Bossfinale si aprì..."
          ]
        when "en"
          @messages = [
            "\\c[14]SAGE 5",
            "The last of the five sages.",
            "And so the Finalboss gate opened..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 45
        case $lang
        when "it"
          @messages = [
            "Sembra che qualcuno sia arrivato nella foresta..."
          ]
        when "en"
          @messages = [
            "Looks like someone has arrived in the forest..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 46 #map_id
      case index
      when 1
        get_map_name("Foxes Desert")

      when 2
        get_map_name("Volcanic Depths")

      when 3
        get_map_name("Eternal Glaciers")

      when 4
        get_map_name("Dark Forest")

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Pensa prima a liberare gli altri saggi, non",
            "sei ancora pronto per entrare nella Foresta Oscura!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Go to free the other sages first, you are not",
            "ready for the Dark Forest yet!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "Sai che con i tuoi spadoni puoi distruggere dei",
            "piccoli oggetti?"
          ]
        when "en"
          @messages = [
            "Do you know that with your big swords you can",
            "destroy small objects?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Provaci! Magari ci trovi dentro qualcosa!"
          ]
        when "en"
          @messages = [
            "You should try it! You may find something inside!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Nostroeroe, devi liberare gli altri saggi in",
            "modo che possano utilizzare la loro magia per",
            "sbloccare il portale del castello!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Ourhero, you have to free the other sages in",
            "order to let them use their magic to unlock the gate",
            "of the castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Forza, ti resta l'ultimo saggio da liberare!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Come on, just one more sage to free!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Fagli vedere quello che sei, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Let's do it, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Da soli non siamo in grado di aprire il",
            "portale.",
            "Serve la forza di tutti i saggi!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]The power of one sage isn't enough to open that",
            "gate.",
            "You need to find the rest of us!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Ti resta ancora un saggio!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]One more sage is left!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Siamo tutti con te, forza!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]We're all with you, come on!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Forza, piano piano ce la faremo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Come on, step by step we'll do it!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Vai a liberare l'ultimo di noi saggi!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Find the last sage and set him free!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Bossfinale è tutto tuo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Finalboss is all yours!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end


      when 17
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]La porta del castello è aperta!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]The castle's gate is open!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 18
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Ed eccomi qui, come promesso!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Here I am, as promised!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Ormai è fatta!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]We're almost there!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 20
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Riprenditi il Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Go and bring the Teorhemas Crystal back!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 21
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Qui c'è qualcosa che non va."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Something's not right here."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ma non capisco cosa!\\|",
            "Castello oscuro circondato da lava viola...\\.",
            "Uhm... Probabilmente è il castello di Bossfinale!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]But I don't know what!\\|",
            "A dark castle sorrounded by purple lava...\\.",
            "Uhm... It might be the Finalboss castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Devo capire come entrarci, quel maledetto",
            "ha il nostro Cristallo di Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I have to find a way to get inside, that",
            "crook has our Teorhemas Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cos'hai in testa?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What is that on your head?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 25
        case $lang
        when "it"
          @messages = [
            "Una bandana."
          ]
        when "en"
          @messages = [
            "A hat."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 26
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ah, carina!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Ah, cute!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 27
        case $lang
        when "it"
          @messages = [
            "Eheh!"
          ]
        when "en"
          @messages = [
            "Eheh!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 28
        case $lang
        when "it"
          @messages = [
            "Guarda!"
          ]
        when "en"
          @messages = [
            "Look!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 29
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Wow!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Wow!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 30
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]E quindi?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]So... what?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 31
        case $lang
        when "it"
          @messages = [
            "L'entrata del Castello di Bossfinale è bloccata.\\|",
            "Ma noi, i Magici Saggi, riuniti con il nostro potere,",
            "potremmo aprire le porte del castello per farvi",
            "entrare un valoroso eroe!"
          ]
        when "en"
          @messages = [
            "The gate to enter the Finalboss Castle is locked.\\|",
            "But we, the Sages, can combine our powers to",
            "open the way forward for the hero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 32
        case $lang
        when "it"
          @messages = [
            "Quell'eroe sei tu!\\|",
            "Il problema è che il malvagio Bossfinale ha catturato gli",
            "altri saggi.\\. Tu sei l'unico che può liberarli, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "That hero is you!\\|",
            "Except that the evil Finalboss kidnapped the other",
            "sages.\\| You are the only one who can set them",
            "free, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 33
        case $lang
        when "it"
          @messages = [
            "Visita ogni parte del regno.\\.",
            "Qui troverai i saggi che aspettano il tuo aiuto!",
            "Siamo con te, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "Each Sage is imprisoned in a different region of our",
            "kingdom, and needs your help!",
            "Good luck on your quest, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 34
        case $lang
        when "it"
          @messages = [
            "Hai una Spada della Rivolta II che vuoi potenziare?",
            "Potenzia spada",
            get_text("cancel")
          ]
        when "en"
          @messages = [
            "Do you have a Revolt Sword II you want to upgrade?",
            "Upgrade sword",
            get_text("cancel")
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 35
        case $lang
        when "it"
          @messages = [
            "Grazie ancora per avermi liberato!"
          ]
        when "en"
          @messages = [
            "Thank you again for freeing me!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
        
      when 36
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Grazie a te per Cristallo Controllore!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Thanks to you for the Controller Crystal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 37
        case $lang
        when "it"
          @messages = [
            "Se vuoi posso venderti qualcosa di molto utile!"
          ]
        when "en"
          @messages = [
            "If you like, I can sell you something really useful!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 38
        case $lang
        when "it"
          @messages = [
            "Una missione? Ti posso dire che le profondità del vulcano",
            "stanno andando a fuoco..."
          ]
        when "en"
          @messages = [
            "A mission? Sure, the Volcanic Depths are burning",
            "right now..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 39
        case $lang
        when "it"
          @messages = [
            "Se tu spegnessi tutte le fiamme con una spada di",
            "ghiaccio, potrei darti un'adeguata ricompensa!"
          ]
        when "en"
          @messages = [
            "If you could put the flames out with an icy sword,",
            "I would be very glad to give you a proper reward!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 40
        case $lang
        when "it"
          @messages = [
            "Fin'ora hai spento \\v[16] fiamme su 28."
          ]
        when "en"
          @messages = [
            "You put out \\v[16] flames out of 28."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 41
        case $lang
        when "it"
          @messages = [
            "Complimenti, hai spento tutte le fiamme accese",
            "nelle Profondità del Vulcano!"
          ]
        when "en"
          @messages = [
            "Awesome, you put out all the flames in the",
            "Volcanic Depths!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 42
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(4)}]La porta è aperta!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(4)}]The gate is open!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 54 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Questa struttura mi impedisce di",
            "proseguire!",
            "Ci sarà un modo per aggirarla..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]This building blocks the way!",
            "There should be a way to remove it..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 56 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Lì dentro è imprigionato uno dei",
            "Magici Saggi!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]The one imprisoned over there must be one",
            "of the Sages!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Ahahah! Stupido eroe!\\|",
            "Al piccolo saggio ci bado io! Di te non abbiamo",
            "bisogno, grazie!"
          ]
        when "en"
          @messages = [
            "Ahahah! Stupid hero!\\|",
            "No need to worry about your friend!",
            "We're taking reeeeally good care of him!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Vai prima ad uccidere quel terribile mostro!" 
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]You should destroy that horrible monster first!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Oh, finalmente! Ce l'hai fatta!\\|",
            "Quel tizio mi aveva catturato e rinchiuso qui",
            "dentro... Non so proprio il perché!" 
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Oh, finally! You did it!\\|",
            "That guy kidnapped me and locked me in here...",
            "I don't know why, seriously!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Forse perché..." 
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Maybe because..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Bene, ora posso andare a completare la mia opera",
            "che ci permetterà di eliminare i cattivi e distruggere",
            "per sempre le forze del male!" 
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Alright, time to fulfill my duty and accomplish our",
            "final mission to crush the baddies and defeat the",
            "forces of Evil forever!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ecco, forse per quello."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]That's it, that's probably the reason."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 60 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Dell'energia si è dispersa nell'aria..."
          ]
        when "en"
          @messages = [
            "The electric gate dissipated into thin air..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 62 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Queste pozze d'acqua magica si asciugheranno",
            "per la temperatura troppo elevata che c'è qui.",
            "Dovrai aspettare un po' per poterle riutilizzare."
          ]
        when "en"
          @messages = [
            "The magical puddles here will evaporate from the",
            "heat after using them.",
            "You'll have to wait for them to refill."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 65 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Quel vermone gigante è troppo alto!",
            "Devo trovare il suo punto debole per sconfiggerlo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]That giant worm is too tall!",
            "I have to find its weak point to defeat it!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Vai prima ad eliminare quel vermone",
            "gigante!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Kill that gigantic worm first of all!"
          ]
        end
      when "es"
        @messages = [
          "TRADUCCIÓN",
        ]

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Non sei tanto carino, eh."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]You don't look so cool, to be honest."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]E poi cos'è quella roba che hai addosso?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]And what's that thing you are wearing?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]È una fantastica armatura!\\|",
            "Ti piace, eh? Eh? Eh???"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]It's body armor!\\|",
            "That IS cool, right? Right?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]È l'ultima cosa che vorrei al mondo."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I wouldn't wear it if it was the last thing in the",
            "world."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Bene, mi hai salvato!",
            "Aiuterò gli altri saggi ad aprire il portale del",
            "Castello di Bossfinale!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Good, you saved me!",
            "I will help the other sages to open the gate of the",
            "Finalboss Castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      end #end case index

    when 68 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Solamente una spada dal fuoco perenne può",
            "frantumare queste gelide rocce."
          ]
        when "en"
          @messages = [
            "Only the sword of everlasting flame can destroy",
            "frozen rocks."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 73 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Tu cosa ci fai qui?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Why are you here?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Stavo uscendo."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]I was just leaving back to town."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Quindi ho dovuto distruggere quel mostro",
            "senza alcun motivo."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]So I killed that monster for nothing at all?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Eh sì, sono riuscito a scappare da solo..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Yes, I managed to escape by myself..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Vai subito dagli altri saggi. ADESSO!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Go back to the town with the other sages. NOW!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Sai che sono il fratello del Saggio della",
            "Lava?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]You know, the Lava Sage is my brother."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]VAI!!!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]GO! NOW!!!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 74 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Fa troppo freddo qui!",
            "Il freddo ha rallentato i tuoi movimenti e non",
            "riesci più a saltare!"
          ]
        when "en"
          @messages = [
            "It is so cold here!",
            "Your movement speed is reduced and you cannot",
            "jump!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Il calore ha fatto sciogliere il mostro!"
          ]
        when "en"
          @messages = [
            "The warmth melted the monster into nothingness!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Dov'è il saggio?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Where is the sage?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 81 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Tu cosa ci fai qui?!\\|",
            "Non dovresti essere dentro al tuo castello?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What are you doing here?!\\|",
            "Shouldn't you be holed up in your castle?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Vuol dire che ho liberato tutti i saggi",
            "per nulla?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Does that mean I rescued all the sages for",
            "nothing?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "No, adesso ci vado, non ti preocc...\\|...\\|",
            "COSA?!"
          ]
        when "en"
          @messages = [
            "No, I'm going to the castle right n...\\|...\\|",
            "WHAT?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "Hai liberato gli altri saggi?!\\|",
            "Maledizione! Non ti lascerò liberare anche l'ultimo!"
          ]
        when "en"
          @messages = [
            "You have rescued the other sages?!\\|",
            "Damn you! You won't be rescuing this last one!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "Gnahahahahahahahah!"
          ]
        when "en"
          @messages = [
            "Gnahahahahahahahah!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 83 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Questo altare rende quelle ombre invincibili!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]This altar makes those shadow invincible!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 85 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Ahah! Stupido eroe! Ci si rivede!"
          ]
        when "en"
          @messages = [
            "Ahah! Stupid hero! We meet again!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Io ti avevo fatto fuori!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Didn't I defeat you already?",
            "You should be dead!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "Purtroppo per te non puoi eliminare nessuno finchè",
            "il Cristallo di Teorhemas è nelle nostre mani!"
          ]
        when "en"
          @messages = [
            "As long as we have the Teorhemas Crystal, we won't",
            "stay that way for long!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "Bossfinale mi ha riportato in vita, ed ora sono",
            "più forte che mai!\\|",
            "Fatti sotto, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "Finalboss brought me back better than I've ever",
            "been!\\|",
            "Stap up and face me, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Devi prima sconfiggere il boss!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]You have to kill the boss first!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Hey! Ti piace il mio colorito fatato?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Hey! Do you like my whimsy color scheme?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Sì, molto carino!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Yes, it's very nice!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cosa tieni lì in mano?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What are you keeping in your hand?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]È una bacchetta magica!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]It's a staff!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Hai mai visto un saggio senza la sua bacchetta",
            "magica?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Have you ever seen a sage without a magic staff?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Sì"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Yes."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Eheh, gli altri saggi senza bacchetta",
            "magica ti starebbero aspettando per aprire il",
            "portale del Castello di Bossfinale..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]The other sages are trying to open the gate to",
            "Finalboss Castle, but they're a bit, well,",
            "understaffed."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Li raggiungo subito!\\.",
            "Ci vediamo là davanti al castello!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]I'm joining them right now!\\.",
            "We'll see each other in front of the castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 88 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Vuoi salvare la partita in un altro slot prima di",
            "continuare?",
            "Salva partita",
            "Continua senza salvare"
          ]
        when "en"
          @messages = [
            "Do you want to save the game on a different slot",
            "before continuing?",
            "Save game",
            "Continue without saving"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "Sei pronto per proseguire?",
            "Avanti!",
            "No"
          ]
        when "en"
          @messages = [
            "Are you ready to proceed?",
            "Come on!",
            "No"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 89 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Ahah! Farabutto!\|
            Ti stavo aspettando."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]Ahah! Hooligan!\\|",
            "I was waiting for you."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Scommetto che fino a un attimo fa stavi ancora",
            "sperando che io non riuscissi a liberare",
            "l'ultimo dei saggi."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I bet you weren't counting on me rescuing the sages",
            "and changed your plans last minute, didn't you."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Proprio così."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]That's right."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Ma ora siamo qui, uno contro l'altro,",
            "in lotta per il Cristallo di Teorhemas."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]But now we are here, against each other,",
            "fighting for the Teorhemas Crystal."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Il cristallo è là."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]The crystal is over there."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Facciamo che chi vince se lo prende, ci stai?"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]Winner takes all. Is it okay for you?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Mi pare ovvio che si debba fare così.\\|",
            "Non mi sfuggi, ho la vittoria in pugno!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]It looks obvious to me we have to do in this way.\\|",
            "You can't escape me now, victory is mine!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]La vittoria si trasfomerà presto in disperazione."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]That bravado will turn into despair soon enough."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Dove credi di andare...\\. Hanf..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]Where are you going...\\. Hanf..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Ho vinto io!\\|",
            "Il Cristallo di Teorhemas è mio.\\|",
            "Me lo riprendo."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]I won!\\|",
            "The Teorhemas Crystal is mine.\\|",
            "I'll take it back."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Nostroeroe, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Ourhero, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Forza, riprendi il Cristallo di Teorhemas,",
            "ce l'hai fatta!\\.",
            "Hai sconfitto quel cattivone!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Come on, take the Teorhemas Crystal, you did it!\\.",
            "You defeated that villain!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]NOOO! Idiota!\\| Il Cristallo di Teorhemas",
            "non va usato così!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]NOOO! Idiot!\\| The Teorhemas Crystal should",
            "not be used in that way!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Guarirò le mie ferite\\|...\\|"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]I will heal my wounds\\|...\\|"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Può essere usato solo su cose MORTE!\\|",
            "Tu ancora non sei morto!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]It only works on the DEAD!\\|",
            "You are not dead yet!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Questa volta saprò sconfiggerti.\\|",
            "Anche l'essere più supremo dovrà avere paura di me!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]This time I'll destroy you.\\|",
            "Even the mightiest will fear me!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 90 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cos'è diventato?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What has it become?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Devi farlo fuori!\\. Questa piattaforma non",
            "reggerà il suo peso ancora per molto!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You have to destroy him!\\. This platform won't hold",
            "his weight for much longer!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(5)}]Il cristallo!\\. Fonte di potenza senza limiti!\\|",
            "Guarda cosa sono diventato!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(5)}]The crystal!\\. Source of power with no limits!\\|",
            "Look what I've become!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Mi fai schifo."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]You disgust me."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]È fatta! Nostroeroe! Prendi il Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]It's done! Ourhero! Take the Teorhemas!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Sì, mio sire!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Yes, my sire!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Prende energia dal Cristallo di Teorhemas!",
            "È l'unica cosa che ormai lo tiene in vita!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]He is taking energy from the Teorhemas Crystal!",
            "It's the only thing keeping him alive!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index

    when 91 #map_id
      case index
      when 1
        case $lang
        when "it"
          @messages = [
            "Gustatevi il banchetto!"
          ]
        when "en"
          @messages = [
            "Enjoy the feast!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 2
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Oh, Nostroeroe..."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Oh, Ourhero..."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 3
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Te la sei cavata bene!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]You did pretty good!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 4
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Sapevamo di poter contare su di te!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]We knew we could counting on you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Senza di te quel pazzo avrebbe preso il",
            "controllo del mondo intero!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]Without you that scoundrel would have taken control",
            "of the whole world!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 6
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(3)}]Uno scontro eccezionale!...\\|",
            "Mi hanno detto che è stato."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(3)}]An awesome fight!...\\|",
            "They told me has been."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Grazie Nostroeroe, grazie!"
          ]
        when "en"
          @messages = [
            "Thank you Ourhero, thank you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 8
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Cosa c'è da ridere?!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]What's so funny?!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 9
        case $lang
        when "it"
          @messages = [
            "Mi hanno detto che lo scontro contro Bossfinale",
            "è stato più epico che mai!"
          ]
        when "en"
          @messages = [
            "They say the fight against Finalboss was truly epic!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 10
        case $lang
        when "it"
          @messages = [
            "Eccezionale! Come avremmo fatto senza di te?"
          ]
        when "en"
          @messages = [
            "Amazing! What would we do without you?"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 11
        case $lang
        when "it"
          @messages = [
            "Siamo tutti fieri di te, Nostroeroe!"
          ]
        when "en"
          @messages = [
            "We are all proud of you, Ourhero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 12
        case $lang
        when "it"
          @messages = [
            "Non pensare ai nemici uccisi per una volta e",
            "goditi il pranzo!"
          ]
        when "en"
          @messages = [
            "Don't worry about the enemies you killed for once",
            "and enjoy the meal!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 13
        case $lang
        when "it"
          @messages = [
            "Complimenti Nostroeroe, veramente un ottimo lavoro."
          ]
        when "en"
          @messages = [
            "Congratulations Ourhero, you did a very nice job."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "Vuoi della carne?",
            "15 Dindini per allungarmi e prenderla dal tavolo",
            "di fronte a me!"
          ]
        when "en"
          @messages = [
            "Do you want some meat?",
            "I'm eating it right now, but I can make it 15 Dindini",
            "for you!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 15
        case $lang
        when "it"
          @messages = [
            "Quanto avrei voluto assistere alla battaglia!"
          ]
        when "en"
          @messages = [
            "I wish I was there to see the battle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 16
        case $lang
        when "it"
          @messages = [
            "Quante cose buone!"
          ]
        when "en"
          @messages = [
            "So much delicious food!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 17
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Cittadini, un attimo di attenzione!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]People, a moment of attention please!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 18
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Ecco a voi il nostro eroe!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Here is our hero!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 19
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Colui che ha sconfitto milioni di nemici e",
            "mostri giganti fino ad eliminare Bossfinale e",
            "riportare qui al castello il Cristallo di",
            "Teorhemas!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]The one who defeated millions of enemies and huge",
            "monsters until he opened the way to Finalboss and",
            "wrested the Teorhemas Crystal back from him!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 20
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Adoratelo!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Adore him!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 21
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Riprendete a mangiare."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]You can go back to feasting now."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(1)}]Grazie, mio sire!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(1)}]Thank you, my sire!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Voglio donarti una ricompensa per ciò che",
            "hai fatto. Accettala."
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]I want to give you a reward for what you've done.",
            "Please, accept it."
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Per ogni nemico che hai sconfitto!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]For every enemy you defeated!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 25
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]E ora va, va! Ricomincia la tua avventura!"
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]And now go, go! Resume your adventure!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 26
        case $lang
        when "it"
          @messages = [
            "\\c[9]Grazie per aver giocato.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]Thanks for playing.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 27
        case $lang
        when "it"
          @messages = [
            "\\c[9]In memoria di",
            "Zio Michele.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]In memory of",
            "Zio Michele.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 28
        case $lang
        when "it"
          @messages = [
            "\\c[9]Un gioco realizzato da Stefano Mercadante.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]A game created by Stefano Mercadante.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 29
        case $lang
        when "it"
          @messages = [
            "\\c[9]Con il grande aiuto di...\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]With the great help of...\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 30
        case $lang
        when "it"
          @messages = [
            "\\c[9]ARES VAIARELLI",
            "per la revisione dei testi in inglese.\\|\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]ARES VAIARELLI",
            "for English translation review.\\|\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 31
        case $lang
        when "it"
          @messages = [
            "\\c[9]NERGHRAY",
            "per la traccia:",
            "Title.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]NERGHRAY",
            "for the track:",
            "Title.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 32
        case $lang
        when "it"
          @messages = [
            "\\c[9]RAFFAELE MURRI",
            "per le tracce:",
            "Castle, Battle.\\|\\|\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]RAFFAELE MURRI",
            "for the tracks:",
            "Castle, Battle.\\|\\|\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 33
        case $lang
        when "it"
          @messages = [
            "\\c[9]JOHN LEONARD FRENCH",
            "per le tracce:",
            "Desert, Volcano, Water City, Finalboss Domain.\\|\\|\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]JOHN LEONARD FRENCH",
            "for the tracks:",
            "Desert, Volcano, Water City, Finalboss Domain.\\|\\|\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 34
        case $lang
        when "it"
          @messages = [
            "\\c[9]RPG MAKER 3 MUSIC PACK",
            "per le tracce:",
            "Forest, Wild Valley, Finalboss Battle 2.\\|\\|\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]RPG MAKER 3 MUSIC PACK",
            "for the tracks:",
            "Forest, Wild Valley, Finalboss Battle 2.\\|\\|\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 35
        case $lang
        when "it"
          @messages = [
            "\\c[9]DIBUR",
            "per la traccia:",
            "Finalboss Battle 1.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]DIBUR",
            "for the track:",
            "Finalboss Battle 1.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 36
        case $lang
        when "it"
          @messages = [
            "\\c[9]RECLAIMEDGLORY",
            "per la traccia:",
            "Victory.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]RECLAIMEDGLORY",
            "for the track:",
            "Victory.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 37
        case $lang
        when "it"
          @messages = [
            "\\c[9]AUDIONAUTIX",
            "per la traccia:",
            "Glaciers.\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]AUDIONAUTIX",
            "for the track:",
            "Glaciers.\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 38
        case $lang
        when "it"
          @messages = [
            "\\c[9]NERGHRAY, DIAMOND, POLAKKO,",
            "AKM, RETURNOFHYLIAN,",
            "GUARDIAN OF IRAEL, UCA",
            "per avere betatestato il gioco.\\|\\|\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]NERGHRAY, DIAMOND, POLAKKO,",
            "AKM, RETURNOFHYLIAN,",
            "GUARDIAN OF IRAEL, UCA",
            "for beta testing the game.\\|\\|\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 39
        case $lang
        when "it"
          @messages = [
            "\\c[9]A TE",
            "Per aver giocato Our Hero!\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]TO YOU",
            "For playing Our Hero!\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 40
        case $lang
        when "it"
          @messages = [
            "\\c[9]Prova a sbloccare tutti i personaggi nella",
            "Galleria dei Personaggi e ad ottenere tutte le armi",
            "del gioco per completare il gioco al 100%!\\|\\|\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]Try to unlock all the characters in the Characters",
            "Gallery and to obtain all the weapons to complete",
            "the 100% of the game!\\|\\|\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 41
        case $lang
        when "it"
          @messages = [
            "\\c[9]A presto...\\|\\|\\^"
          ]
        when "en"
          @messages = [
            "\\c[9]See you soon...\\|\\|\\^"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end

      when 42
        case $lang
        when "it"
          @messages = [
            "\\c[10]\\>                        Hai sbloccato la modalità",
            "\\>                          BATTAGLIA IN ARENA",
            "\\>                            nel Castello del Re!"
          ]
        when "en"
          @messages = [
            "\\c[10]\\>                        You have unlocked the",
            "\\>                              ARENA MODE",
            "\\>                          in the King's Castle!"
          ]
        when "es"
          @messages = [
            "TRADUCCIÓN",
          ]
        end
      end #end case index
    end #end case map_id

    set_msg_vars
  end

end

$local = Localization.new()