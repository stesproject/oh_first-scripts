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

  def get_item(name)
    text = nil

    case name
    # Names
    when "Meat"
      case $lang
      when "it"
        text = "Carne"
      when "en"
        text = name
      end

    when "Regenerator"
      case $lang
      when "it"
        text = "Rigeneratore"
      when "en"
        text = name
      end

    when "Small Bridge"
      case $lang
      when "it"
        text = "Ponticello"
      when "en"
        text = name
      end

    when "Key"
      case $lang
      when "it"
        text = "Chiave"
      when "en"
        text = name
      end

    when "Book of the Forgotten Crafts"
      case $lang
      when "it"
        text = "Libro delle Doti Perdute"
      when "en"
        text = name
      end

    when "Controller Crystal"
      case $lang
      when "it"
        text = "Cristallo Controllore"
      when "en"
        text = name
      end

    when "Bronze Medal"
      case $lang
      when "it"
        text = "Medaglia di Bronzo"
      when "en"
        text = name
      end

    when "Silver Medal"
      case $lang
      when "it"
        text = "Medaglia d'Argento"
      when "en"
        text = name
      end

    when "Gold Medal"
      case $lang
      when "it"
        text = "Medaglia d'oro"
      when "en"
        text = name
      end

    when "Secrets Sheet"
      case $lang
      when "it"
        text = "Foglio dei Segreti"
      when "en"
        text = name
      end

    # Descriptions
    when "desc-meat"
      case $lang
      when "it"
        text = "Mangiala per recuperare tutta la tua energia!"
      when "en"
        text = "Eat it to recover all your energy!"
      end

    when "desc-regenerator"
      case $lang
      when "it"
        text = "Questa pozione permette di rigenerare le abilità delle tue armi."
      when "en"
        text = "This potion recharges your Skill Energy!"
      end

    when "desc-small_bridge"
      case $lang
      when "it"
        text = "Un piccolo ponte."
      when "en"
        text = "A small, portable bridge for crossing gaps."
      end

    when "desc-key_forest"
      case $lang
      when "it"
        text = "Una chiave trovata nella foresta."
      when "en"
        text = "A key found in the forest."
      end

    when "desc-key_desert"
      case $lang
      when "it"
        text = "Una chiave trovata nel deserto."
      when "en"
        text = "A key found in the desert."
      end

    when "desc-key_boss_castle"
      case $lang
      when "it"
        text = "La chiave che apre l'ingresso verso la sala di Bossfinale."
      when "en"
        text = "This key opens the entrance to the Finalboss hall."
      end

    when "desc-crystal"
      case $lang
      when "it"
        text = "Un frammento di cristallo in grado di interferire con le capacità dei nemici."
      when "en"
        text = "A crystal fragment that can temporarily disrupt weak enemies."
      end

    when "desc-medal_bronze"
      case $lang
      when "it"
        text = "Una medaglia di bronzo ottenuta in arena."
      when "en"
        text = "A bronze medal gained in the arena."
      end

    when "desc-medal_silver"
      case $lang
      when "it"
        text = "Una medaglia d'argento ottenuta in arena."
      when "en"
        text = "A silver medal gained in the arena."
      end

    when "desc-medal_gold"
      case $lang
      when "it"
        text = "Una medaglia d'oro ottenuta in arena."
      when "en"
        text = "A golden medal gained in the arena."
      end

    when "desc-secrets_sheet"
      case $lang
      when "it"
        text = "Immetti un codice per ottenere dei bonus!"
      when "en"
        text = "Enter a code to unlock a bonus!"
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