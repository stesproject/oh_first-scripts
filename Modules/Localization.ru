#==============================================================================
# Localization script
# Author: Ste
#==============================================================================
class Localization
  $msg_var = [81,82,83,84]

  def initialize
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

  def set_message(index)
    messages = nil

    case $game_map.map_id
    when 93 #map id
      case index
      when 1
        case $lang
        when "it"
          messages = [
            "linea 1",
            "linea 2"
          ]
        when "en"
          messages = [
            "line 1\\.",
            "line 2"
          ]
        end

      when 2
        case $lang
        when "it"
          messages = [
            "ciao 1",
            "ciao 2",
            "ciao 3",
            "ciao 4"
          ]
        when "en"
          messages = [
            "hi 1\\|",
            "hi 2",
            "hi 3",
            "\\c[3]hi 4"
          ]
        end
      end

    when 1 #map id
    end

    for i in 0..3
      $game_variables[$msg_var[i]] = messages[i]
    end

  end

  class ItemText
    attr_accessor :name
    attr_accessor :desc
  end

  def get_item(name)
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
    when "Katana"
      case $lang
      when "it"
        text.name = "Katana"
        text.desc = "Spada ninja debole, ma con alte probabilità di sferrare colpi critici."
      when "en"
        text.name = "Katana"
        text.desc = "A lightweight ninja weapon with an increased critical hit ratio."
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
          text = "Tempo di gioco: "
        when "en"
          text = "Playtime: "
        end

      when "location"
        case $lang
        when "it"
          text = "Posizione: "
        when "en"
          text = "Location: "
        end

      when "dindini"
        case $lang
        when "it"
          text = "Dindini: "
        when "en"
          text = "Dindini: "
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

end

$local = Localization.new()