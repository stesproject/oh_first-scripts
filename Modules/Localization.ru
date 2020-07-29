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

    end

    return text.upcase

  end

  def set_common_msg(name)
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

    end
    
    set_msg_vars
  end

  def set_action(action, item, value)
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

    set_msg_vars
  end

  def reset_msg_vars
    for i in 0..3
      $game_variables[$msg_var[i]] = ""
    end
  end

  def set_msg_vars
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
          text = "Skill"
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

    end

    return text
  end

  def set_msg(map_id, index)
    reset_msg_vars

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

    end #end case map_id

    set_msg_vars
  end

end

$local = Localization.new()