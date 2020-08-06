#==============================================================================
# Localization script
# Author: Ste
#==============================================================================
class Localization
  $default_language = ""
  $msg_var = [
    61,
    62,
    63,
    64
  ]

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
      end

    when 3
      case $lang
      when "it"
        text = "Saggio"
      when "en"
        text = "Sage"
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
      end

    when "Throne Room"
      case $lang
      when "it"
        text = "Sala del Trono"
      when "en"
        text = "Throne Room"
      end

    when "Trophy Hall"
      case $lang
      when "it"
        text = "Sala dei Trofei"
      when "en"
        text = "Trophy Hall"
      end

    when "Arena"
      case $lang
      when "it"
        text = "Arena"
      when "en"
        text = "Arena"
      end

    when "Teorhemas Vault"
      case $lang
      when "it"
        text = "Sala del Teorhemas"
      when "en"
        text = "Teorhemas Vault"
      end

    when "Castle Grounds"
      case $lang
      when "it"
        text = "Cortile del Castello"
      when "en"
        text = "Castle Grounds"
      end

    when "Forest of the All-Eye Monster"
      case $lang
      when "it"
        text = "Foresta dell'Occhio Sgorbio"
      when "en"
        text = "Forest of the All-Eye Monster"
      end

    when "Wild Valley"
      case $lang
      when "it"
        text = "Valle Selvaggia"
      when "en"
        text = "Wild Valley"
      end

    when "Water City"
      case $lang
      when "it"
        text = "Città dell'Acqua"
      when "en"
        text = "Water City"
      end

    when "Finalboss Domain"
      case $lang
      when "it"
        text = "Regno di Bossfinale"
      when "en"
        text = "Finalboss Domain"
      end

    when "Foxes Desert"
      case $lang
      when "it"
        text = "Deserto dei Volpini"
      when "en"
        text = "Foxes Desert"
      end

    when "Volcanic Depths"
      case $lang
      when "it"
        text = "Profondità del Vulcano"
      when "en"
        text = "Volcanic Depths"
      end

    when "Eternal Glaciers"
      case $lang
      when "it"
        text = "Ghiacciai Perenni"
      when "en"
        text = "Eternal Glaciers"
      end

    when "Dark Forest"
      case $lang
      when "it"
        text = "Foresta Oscura"
      when "en"
        text = "Dark Forest"
      end

    when "Finalboss Castle"
      case $lang
      when "it"
        text = "Castello di Bossfinale"
      when "en"
        text = "Finalboss Castle"
      end

    when "Celebration Feast"
      case $lang
      when "it"
        text = "Banchetto"
      when "en"
        text = "Celebration Feast"
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
          "\\c[2]Equip the Electric Sword to use this skill!",
          ""
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
          "\\c[2]Equip the Icy Sword to use this skill!",
          ""
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
          "\\c[2]Equip the Flaming Sword to use this skill!",
          ""
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
          "\\c[2]Equip the Finalboss Sword to use this skill!",
          ""
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
          "not enough energy.\\|\\^",
          ""
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
      end

    when "gave"
      case $lang
      when "it"
        @messages.push("\\c[6]Consegni")
      when "en"
        @messages.push("\\c[6]You gave away")
      end

    when "got"
      case $lang
      when "it"
        @messages.push("\\c[6]Ricevi")
      when "en"
        @messages.push("\\c[6]You got")
      end
    end

    amount = value > 0 ? value.to_s + " " : ""
    @messages.push("#{amount}#{item}!")

    if (item2 != nil && value2 != nil)
      amount = value2 > 0 ? value2.to_s + " " : ""
      @messages.push("#{amount}#{item2}!")
    end

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
    end

    case index
    when 1
      case $lang
      when "it"
        @messages = [
          @messages.push("IL CASTELLO DEL RE")
        ]
      when "en"
        @messages = [
          @messages.push("THE KING'S CASTLE")
        ]
      end

    when 2
      case $lang
      when "it"
        @messages = [
          @messages.push("LA FORESTA DELL'OCCHIO SGORBIO")
        ]
      when "en"
        @messages = [
          @messages.push("THE FOREST OF THE ALL-EYE MONSTER")
        ]
      end

    when 3
      case $lang
      when "it"
        @messages = [
          @messages.push("LA VALLE SELVAGGIA")
        ]
      when "en"
        @messages = [
          @messages.push("THE WILD VALLEY")
        ]
      end

    when 4
      case $lang
      when "it"
        @messages = [
          @messages.push("LA CITTÀ DELL'ACQUA")
        ]
      when "en"
        @messages = [
          @messages.push("THE WATER CITY")
        ]
      end

    when 5
      case $lang
      when "it"
        @messages = [
          @messages.push("IL DESERTO DEI VOLPINI")
        ]
      when "en"
        @messages = [
          @messages.push("THE FOXES DESERT")
        ]
      end

    when 6
      case $lang
      when "it"
        @messages = [
          @messages.push("LE PROFONDITÀ DEL VULCANO")
        ]
      when "en"
        @messages = [
          @messages.push("THE VOLCANIC DEPTHS")
        ]
      end

    when 7
      case $lang
      when "it"
        @messages = [
          @messages.push("I GHIACCIAI PERENNI")
        ]
      when "en"
        @messages = [
          @messages.push("THE ETERNAL GLACIERS")
        ]
      end

    when 8
      case $lang
      when "it"
        @messages = [
          @messages.push("LA FORESTA OSCURA")
        ]
      when "en"
        @messages = [
          @messages.push("THE DARK FOREST")
        ]
      end

    when 9
      case $lang
      when "it"
        @messages = [
          @messages.push("IL CASTELLO DI BOSSFINALE")
        ]
      when "en"
        @messages = [
          @messages.push("THE FINALBOSS CASTLE")
        ]
      end

    end

    case $lang
    when "it"
      @messages.push("\\c[10]Completato!\\|\\|\\|\\|\\|\\^")
    when "en"
      @messages.push("\\c[10]Completed!\\|\\|\\|\\|\\|\\^")
    end

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
    end

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
      end

    when "Regenerator"
      case $lang
      when "it"
        text.name = "Rigeneratore"
        text.desc = "Questa pozione permette di rigenerare le abilità delle tue armi."
      when "en"
        text.name = "Regenerator"
        text.desc = "This potion recharges your Skill Energy!"
      end

    when "Small Bridge"
      case $lang
      when "it"
        text.name = "Ponticello"
        text.desc = "Un piccolo ponte."
      when "en"
        text.name = "Small Bridge"
        text.desc = "A small, portable bridge for crossing gaps."
      end

    when "key1"
      case $lang
      when "it"
        text.name = "Chiave"
        text.desc = "Una chiave trovata nella foresta."
      when "en"
        text.name = "Key"
        text.desc = "A key found in the forest."
      end

    when "key2"
      case $lang
      when "it"
        text.name = "Chiave"
        text.desc = "Una chiave trovata nel deserto."
      when "en"
        text.name = "Key"
        text.desc = "A key found in the desert."
      end

    when "key3"
      case $lang
      when "it"
        text.name = "Chiave"
        text.desc = "La chiave che apre l'ingresso verso la sala di Bossfinale."
      when "en"
        text.name = "Key"
        text.desc = "This key opens the entrance to the Finalboss hall."
      end

    when "Book of the Forgotten Crafts"
      case $lang
      when "it"
        text.name = "Libro delle Doti Perdute"
        text.desc = ""
      when "en"
        text.name = "Book of the Forgotten Crafts"
        text.desc = ""
      end

    when "Controller Crystal"
      case $lang
      when "it"
        text.name = "Cristallo Controllore"
        text.desc = "Un frammento di cristallo in grado di interferire con le capacità dei nemici."
      when "en"
        text.name = "Controller Crystal"
        text.desc = "A crystal fragment that can temporarily disrupt weak enemies."
      end

    when "Bronze Medal"
      case $lang
      when "it"
        text.name = "Medaglia di Bronzo"
        text.desc = "Una medaglia di bronzo ottenuta in arena."
      when "en"
        text.name = "Bronze Medal"
        text.desc = "A bronze medal gained in the arena."
      end

    when "Silver Medal"
      case $lang
      when "it"
        text.name = "Medaglia d'Argento"
        text.desc = "Una medaglia d'argento ottenuta in arena."
      when "en"
        text.name = "Silver Medal"
        text.desc = "A silver medal gained in the arena."
      end

    when "Gold Medal"
      case $lang
      when "it"
        text.name = "Medaglia d'Oro"
        text.desc = "Una medaglia d'oro ottenuta in arena."
      when "en"
        text.name = "Gold Medal"
        text.desc = "A golden medal gained in the arena."
      end

    when "Secrets Sheet"
      case $lang
      when "it"
        text.name = "Foglio dei Segreti"
        text.desc = "Immetti un codice per ottenere dei bonus!"
      when "en"
        text.name = "Secrets Sheet"
        text.desc = "Enter a code to unlock a bonus!"
      end

    when "Cute Monster"
      case $lang
      when "it"
        text.name = "Esserino"
        text.desc = ""
      when "en"
        text.name = "Cute Monster"
        text.desc = ""
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
      end

    when "Assassin Blade"
      case $lang
      when "it"
        text.name = "Lama Assassina"
        text.desc = "Una potente spada dalla lama... Affilata."
      when "en"
        text.name = "Assassin Blade"
        text.desc = "A powerful sword with a sharp blade."
      end

    when "Soldier's Sword"
      case $lang
      when "it"
        text.name = "Spada del Soldato"
        text.desc = "La spada comune usata da tutti i soldati del castello."
      when "en"
        text.name = "Soldier's Sword"
        text.desc = "A common sword used by all the soldiers of the castle."
      end

    when "Sabrelyzer"
      case $lang
      when "it"
        text.name = "Sciabolyzer"
        text.desc = "Una potente spada decisamente distruttiva!"
      when "en"
        text.name = "Sabrelyzer"
        text.desc = "A powerful sword with high destructive power!"
      end

    when "Gelizedor"
      case $lang
      when "it"
        text.name = "Gelizedor"
        text.desc = "Una spada affilata dalla lama gelida."
      when "en"
        text.name = "Gelizedor"
        text.desc = "A sharp sword with an icy blade."
      end

    when "Lollipop"
      case $lang
      when "it"
        text.name = "Lecca-Lecca"
        text.desc = "Uhm che buono!"
      when "en"
        text.name = "Lollipop"
        text.desc = "Mmm, so sweet!"
      end

    when "Electric Sword"
      case $lang
      when "it"
        text.name = "Spada Elettrica"
        text.desc = "Una spada che emette scariche elettriche in continuazione."
      when "en"
        text.name = "Electric Sword"
        text.desc = "A sword that constantly radiates electric shockwaves."
      end

    when "Revolt Sword II"
      case $lang
      when "it"
        text.name = "Spada della Rivolta II"
        text.desc = "La Spada della Rivolta potenziata! Ancora più resistente, ancora più distruttiva."
      when "en"
        text.name = "Revolt Sword II"
        text.desc = "The Revolt Sword, now strengthened and empowered!"
      end

    when "Zombiesbane"
      case $lang
      when "it"
        text.name = "AmmazzaZombie"
        text.desc = "Una spada superefficace contro qualsiasi morto vivente!"
      when "en"
        text.name = "Zombiesbane"
        text.desc = "A sword that's extra effective against undead!"
      end

    when "Sword of the Legendary Hero"
      case $lang
      when "it"
        text.name = "Spada dell'Eroe Leggendario"
        text.desc = "Una spada potente. Indistruttibile. Agile. LEGGENDARIA."
      when "en"
        text.name = "Sword of the Legendary Hero"
        text.desc = "A mighty sword. Indestructible. Fast. LEGENDARY."
      end

    when "Electric Guitar"
      case $lang
      when "it"
        text.name = "Chitarra Elettrica"
        text.desc = "Rock and roll baby!"
      when "en"
        text.name = "Electric Guitar"
        text.desc = "Rock and roll baby!"
      end

    when "Icy Sword"
      case $lang
      when "it"
        text.name = "Spada Ghiacciata"
        text.desc = "Una spada incredibilmente affilata, completamente scalfita nel ghiaccio."
      when "en"
        text.name = "Icy Sword"
        text.desc = "A sharp blade honed from nevermelting ice."
      end

    when "Flaming Sword"
      case $lang
      when "it"
        text.name = "Spada Infuocata"
        text.desc = "Una spada che si incendia di continuo non appena viene presa in mano."
      when "en"
        text.name = "Flaming Sword"
        text.desc = "A sword that catches fire as soon as you pick it up."
      end

    when "Silver Slash"
      case $lang
      when "it"
        text.name = "Silver Slash"
        text.desc = "Una lama in argento che distrugge i tuoi nemici!"
      when "en"
        text.name = "Silver Slash"
        text.desc = "A silver blade that destroys your enemies!"
      end

    when "Katana"
      case $lang
      when "it"
        text.name = "Katana"
        text.desc = "Spada ninja debole, ma con alte probabilità di sferrare colpi critici."
      when "en"
        text.name = "Katana"
        text.desc = "A lightweight ninja weapon with an increased critical hit ratio."
      end

    when "Final Revolt Sword"
      case $lang
      when "it"
        text.name = "Spada della Rivolta Finale"
        text.desc = "Il grado più potente della Spada della Rivolta! Spazza via ogni nemico!"
      when "en"
        text.name = "Final Revolt Sword"
        text.desc = "The most powerful Revolt Sword! It wipes out any enemy!"
      end

    when "Dragon Sword"
      case $lang
      when "it"
        text.name = "Spada del Drago"
        text.desc = "Una potentissima spada forgiata con scaglie di drago."
      when "en"
        text.name = "Dragon Sword"
        text.desc = "A very mighty sword forged from dragon scales."
      end

    when "Finalboss Sword"
      case $lang
      when "it"
        text.name = "Spada di Bossfinale"
        text.desc = "La potente spada dorata di Bossfinale!"
      when "en"
        text.name = "Finalboss Sword"
        text.desc = "The mighty golden sword of Finalboss!"
      end

    when "Soul Eater"
      case $lang
      when "it"
        text.name = "Divoranime"
        text.desc = "Colpisci i nemici e mangia le loro anime."
      when "en"
        text.name = "Soul Eater"
        text.desc = "Devours the souls of slain enemies!"
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
      end

    when "Bronze Necklace"
      case $lang
      when "it"
        text.name = "Collana di Bronzo"
        text.desc = "Questa collana protegge discretamente dai colpi dei nemici."
      when "en"
        text.name = "Bronze Necklace"
        text.desc = "This necklace discreetly protects from enemy attacks."
      end

    when "Silver Necklace"
      case $lang
      when "it"
        text.name = "Collana d'Argento"
        text.desc = "Più robusta di alcune collane, è ottima come protezione in una battaglia."
      when "en"
        text.name = "Silver Necklace"
        text.desc = "More robust than some necklaces, it is excellent as protection in a battle."
      end

    when "Golden Necklace"
      case $lang
      when "it"
        text.name = "Collana d'Oro"
        text.desc = "Una collana dorata che offre una difesa completa."
      when "en"
        text.name = "Golden Necklace"
        text.desc = "A golden necklace that offers complete defense."
      end

    when "Sword Case"
      case $lang
      when "it"
        text.name = "Fodera"
        text.desc = "Qui dentro potrai riporre ogni spada che otterrai durante la tua avventura!"
      when "en"
        text.name = "Sword Case"
        text.desc = "Lets you carry and switch between all of your swords!"
      end

    when "Strength Necklace"
      case $lang
      when "it"
        text.name = "Collana di Forza"
        text.desc = "Questa collana aumenta la tua potenza d'attacco."
      when "en"
        text.name = "Strength Necklace"
        text.desc = "This necklace increases your attack power."
      end

    when "Doubler Bracelet"
      case $lang
      when "it"
        text.name = "Bracciale Doppiatore"
        text.desc = "Equipaggiando questo bracciale sarà molto più semplice salire di livello!"
      when "en"
        text.name = "Doubler Bracelet"
        text.desc = "Equipping this bracelet lets you level up faster!"
      end

    when "Healing Bracelet"
      case $lang
      when "it"
        text.name = "Bracciale Energetico"
        text.desc = "Equipaggiando questo bracciale le tue ferite si cureranno automaticamente."
      when "en"
        text.name = "Healing Bracelet"
        text.desc = "Equipping this bracelet your wounds will heal automatically."
      end

    when "Rainbow Bracelets"
      case $lang
      when "it"
        text.name = "Bracciali Arcobaleno"
        text.desc = "Due bracciali che, se equipaggiati, renderanno doppia la tua ESP e ti restituirà energia!"
      when "en"
        text.name = "Rainbow Bracelets"
        text.desc = "Two bracelets that will double your ESP and restore your energy!"
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
      end

    when "Icy Storm"
      case $lang
      when "it"
        text.name = "Tempesta Gelida"
        text.desc = "La spada ghiacciata ti permette di lanciare devastanti tempeste di ghiaccio!"
      when "en"
        text.name = "Icy Storm"
        text.desc = "The Icy Sword allows you to cast devastating icy storms!"
      end

    when "Fire Bomb"
      case $lang
      when "it"
        text.name = "Bomba di Fuoco"
        text.desc = "La spada infuocata ti permette di lanciare distruttive bombe di fuoco!"
      when "en"
        text.name = "Fire Bomb"
        text.desc = "The Fire Sword allows you to cast destructive fire bombs!"
      end

    when "Magic Attack"
      case $lang
      when "it"
        text.name = "Attacco Magico"
        text.desc = "Sventola la spada di Bossfinale e lancia potenti attacchi magici!"
      when "en"
        text.name = "Magic Attack"
        text.desc = "Shake the Finalboss Sword and cast powerful magic attacks!"
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
      end

    when "Knight"
      case $lang
      when "it"
        text = "Cavaliere"
      when "en"
        text = "Knight"
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
        end

      when "empty"
        case $lang
        when "it"
          text = "-Vuoto-"
        when "en"
          text = "-Empty-"
        end

      when "playtime"
        case $lang
        when "it"
          text = "Tempo di gioco"
        when "en"
          text = "Playtime"
        end

      when "location"
        case $lang
        when "it"
          text = "Posizione"
        when "en"
          text = "Location"
        end

      when "currency"
        case $lang
        when "it"
          text = "Dindini"
        when "en"
          text = "Dindini"
        end

      when "ask_overwrite"
        case $lang
        when "it"
          text = "Sovrascrivere il file?"
        when "en"
          text = "Overwrite the file?"
        end

      when "cancel"
        case $lang
        when "it"
          text = "Annulla"
        when "en"
          text = "Cancel"
        end

      when "save_message"
        case $lang
        when "it"
          text = "Scegli uno slot in cui salvare la partita."
        when "en"
          text = "Choose a slot to save the game."
        end

      when "load_message"
        case $lang
        when "it"
          text = "Scegli una partita da caricare."
        when "en"
          text = "Choose a slot to load the game."
        end

      when "possession"
        case $lang
        when "it"
          text = "Ne hai"
        when "en"
          text = "Owned"
        end

      when "shop_buy"
        case $lang
        when "it"
          text = "Compra"
        when "en"
          text = "Buy"
        end

      when "shop_sell"
        case $lang
        when "it"
          text = "Vendi"
        when "en"
          text = "Sell"
        end

      when "shop_cancel"
        case $lang
        when "it"
          text = "Ciao..."
        when "en"
          text = "Bye..."
        end

      when "new_game"
        case $lang
        when "it"
          text = "Nuovo Gioco"
        when "en"
          text = "New Game"
        end

      when "continue"
        case $lang
        when "it"
          text = "Continua"
        when "en"
          text = "Continue"
        end

      when "shutdown"
        case $lang
        when "it"
          text = "Chiudi il gioco"
        when "en"
          text = "Quit the game"
        end

      when "game_end"
        case $lang
        when "it"
          text = "Chiudi il gioco"
        when "en"
          text = "Quit the game"
        end

      when "to_title"
        case $lang
        when "it"
          text = "Torna ai Titoli"
        when "en"
          text = "Back to Title"
        end

      when "save"
        case $lang
        when "it"
          text = "Salva"
        when "en"
          text = "Save"
        end

      when "item"
        case $lang
        when "it"
          text = "Oggetti"
        when "en"
          text = "Items"
        end

      when "equip"
        case $lang
        when "it"
          text = "Equip"
        when "en"
          text = "Equip"
        end

      when "level"
        case $lang
        when "it"
          text = "Livello"
        when "en"
          text = "Level"
        end

      when "hp"
        case $lang
        when "it"
          text = "PV"
        when "en"
          text = "HP"
        end

      when "mp"
        case $lang
        when "it"
          text = "PM"
        when "en"
          text = "MP"
        end

      when "atk"
        case $lang
        when "it"
          text = "PM"
        when "en"
          text = "MP"
        end

      when "weapon"
        case $lang
        when "it"
          text = "Arma"
        when "en"
          text = "Weapon"
        end

      when "armor1"
        case $lang
        when "it"
          text = "Acc. di Difesa"
        when "en"
          text = "Guard Accessory"
        end

      when "armor2"
        case $lang
        when "it"
          text = "Acc. d'Attacco"
        when "en"
          text = "Attack Accessory"
        end

      when "armor3"
        case $lang
        when "it"
          text = "Special"
        when "en"
          text = "Special"
        end

      when "armor4"
        case $lang
        when "it"
          text = "Oggetto"
        when "en"
          text = "Item"
        end

      when "attack"
        case $lang
        when "it"
          text = "Attacco"
        when "en"
          text = "Attack"
        end

      when "skill"
        case $lang
        when "it"
          text = "Abilità"
        when "en"
          text = "Skills"
        end

      when "guard"
        case $lang
        when "it"
          text = "Difesa"
        when "en"
          text = "Guard"
        end

      when "quit"
        case $lang
        when "it"
          text = "Esci"
        when "en"
          text = "Exit"
        end

      when "exp_next"
        case $lang
        when "it"
          text = "Prossimo Lv"
        when "en"
          text = "Next Level"
        end

      when "exp_total"
        case $lang
        when "it"
          text = "Esperienza"
        when "en"
          text = "Experience"
        end

      when "website"
        case $lang
        when "it"
          text = "Sito Web"
        when "en"
          text = "Website"
        end

      when "menu_language"
        case $lang
        when "it"
          text = "Lingua: ITA"
        when "en"
          text = "Language: ENG"
        end

      when "back-king"
        case $lang
        when "it"
          text = "Torna dal Re!"
        when "en"
          text = "Go back to the King!"
        end

      when "go-back"
        case $lang
        when "it"
          text = "Torna indietro!"
        when "en"
          text = "Go back!"
        end

      when "defeat-monster"
        case $lang
        when "it"
          text = "Sconfiggi il mostro!"
        when "en"
          text = "Defeat the monster!"
        end

      when "go-king"
        case $lang
        when "it"
          text = "Vai dal Re!"
        when "en"
          text = "Go to the King!"
        end

      when "find-book"
        case $lang
        when "it"
          text = "Trova il libro!"
        when "en"
          text = "Find the book!"
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
            "In the upper left corner you can see your health bar.",
            ""
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
            "The game ends when the hero loses all the hearts.",
            ""
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
            "GO ON, OURHERO!",
            ""
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
        end

      when 14
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Sì, forse... Può essere anche per quello...\\|",
            "Vai, combatti i nemici, va'!",
            ""
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Yeah, maybe... It could be for something like",
            "this...\\|",
            "Go, fight the enemies, go!"
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
            "\\nb[#{get_name(2)}]Uhm, then go find them and get the crystal back!",
            ""
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
            "Good luck!",
            ""
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
            "He left a lot of goons in his wake, so be careful!",
            ""
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
        end

      when "king3"
        case $lang
        when "it"
          @messages = [
            "\\nb[#{get_name(2)}]Dei saggi riuscirebbero ad aprire la porta",
            "del castello di Bossfinale?",
            "Non l'avrei mai detto! Bene, fatti aiutare da loro!",
            ""
          ]
        when "en"
          @messages = [
            "\\nb[#{get_name(2)}]Some sages would be able to open the",
            "gate to the Finalboss castle?",
            "I would never have said that! Well, get help",
            "from them!"
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
            "the world will be afraid of us!",
            ""
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
        end

      when 7
        case $lang
        when "it"
          @messages = [
            "Ragazzo, non ho più premi da darti!",
            "Ma posso dirti che hai ucciso \\v[2] nemici.",
            "",
            ""
          ]
        when "en"
          @messages = [
            "My friend, I do not have any other rewards left for",
            "you!",
            "But I can tell you that you killed \\v[2] enemies",
            "so far."
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
        end

      when 22
        case $lang
        when "it"
          @messages = [
            "Avrei un compito da affidarti...\\|",
            "Nella foresta sono state buttate delle casse che,",
            "per il Re, rovinano la bellezza del paesaggio...",
            ""
          ]
        when "en"
          @messages = [
            "I have a mission for you...\\|",
            "Someone thought the Forest would make for a good",
            "garbage dump and threw around a bunch of old",
            "crates..."
          ]
        end

      when 23
        case $lang
        when "it"
          @messages = [
            "La tua missione è trovarle e distruggerle tutte!",
            "Non lo sappiamo bene quante siano...",
            ""
          ]
        when "en"
          @messages = [
            "Your mission is to find and destroy all these crates!",
            "The problem is that we don't know exactly how",
            "many crates there are..."
          ]
        end

      when 24
        case $lang
        when "it"
          @messages = [
            "Accetti la missione?"
          ]
        when "en"
          @messages = [
            "Do you accept the mission?"
          ]
        end

      when 25
        case $lang
        when "it"
          @messages = [
            "ACCETTA",
            "RIFIUTA"
          ]
        when "en"
          @messages = [
            "ACCEPT",
            "REFUSE"
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
            "I can smith and enhance all kinds of weapons.",
            ""
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
        end

      when 41
        case $lang
        when "it"
          @messages = [
            "So che il re ti ha incaricato di distruggere quelle",
            "rocce che bloccano il passaggio ad est...",
            ""
          ]
        when "en"
          @messages = [
            "I heard the path you're supposed to take to continue on",
            "your quest is blocked by rocks barring the way to",
            "the East..."
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
            "strong enough to break through those rocks!",
            ""
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
        end

      when 47
        case $lang
        when "it"
          @messages = [
            "Devi trovare il mio Libro delle Doti Perdute!\\.",
            "Così potrò potenziare la tua spada...\\.",
            "Si trova nella Foresta dell'Occhio Sgorbio!",
            ""
          ]
        when "en"
          @messages = [
            "You have to find the Book of the Forgotten Crafts!\\.",
            "This way I can upgrade your sword...\\.",
            "You can find the book in the Forest of the All-Eye", 
            "Monster!"
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
            "\\nb[#{get_name(1)}]I won't find the Teorhemas Crystal over here...",
            ""
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
            "Use the electricity in this sword to overload the gate!",
            "",
            ""
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
            "assign the skill to that button!",
            ""
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
            "away with the crystal!",
            ""
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
        end

      when 5
        case $lang
        when "it"
          @messages = [
            "\\c[6]25 nemici= Medaglia di Bronzo",
            "50 nemici= Medaglia d'Argento",
            "75 nemici= Medaglia d'Oro"
          ]
        when "en"
          @messages = [
            "\\c[6]25 enemies = Bronze Medal",
            "50 enemies = Silver Medal",
            "75 enemies = Gold Medal"
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
            "There are rumors that his hat is not actually a hat.",
            ""
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
            "open the way forward for the hero!",
            ""
          ]
        end

      when 32
        case $lang
        when "it"
          @messages = [
            "Quell'eroe sei tu!\\|",
            "Il problema è che il malvagio Bossfinale ha catturato gli",
            "altri saggi.\\. Tu sei l'unico che può liberarli, Nostroeroe!",
            ""
          ]
        when "en"
          @messages = [
            "That hero is you!\\|",
            "Except that the evil Finalboss kidnapped the other",
            "sages.\\| You are the only one who can set them",
            "free, Ourhero!"
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
        end

      end #end case index

    end #end case map_id

    set_msg_vars
  end

end

$local = Localization.new()