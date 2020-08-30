	

    #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    #             Run Common Event When Equipping an Item
    #             Version: 1.0
    #             Author: DiamondandPlatinum3
    #             Date: September 25, 2012
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #  Description:
    #
    #    This script allows you to run a common event when you equip an item, be
    #    it a weapon or a piece of armour.
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #------------------------------------------------------------------------------
    #  Instructions:
    #    
    #     ~  In your weapon and armour noteboxes, insert this line of code
    #
    #           ~E_COMMONEVENT_ID: ?
    #
    #        Replacing the ? with a number to represent which common event you
    #        want to run when that specific item is equipped.
    #
    #
    #     ~  You do not have to place this code on every weapon and armour you
    #        have, just the ones you wish to use a common event on.
    #
    #
    #     ~  There is a visual example that can be found
    #        Here: http://img4host.net/upload/242103145060ae72be40a.png
    #
    #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    #
    #
    #                  THERE IS NO EDITABLE REGION TO THIS SCRIPT
    #
    #==============================================================================
    class Game_Actor < Game_Battler
      #--------------------------------------------------------------------------
      # * Change Equipment (designate object)
      #     equip_type : Equip region (0..4)
      #     item       : Weapon or armor (nil is used to unequip)
      #     test       : Test flag (for battle test or temporary equipment)
      #--------------------------------------------------------------------------
      alias dp3_equipcommonevent_9jsg4 change_equip
      def change_equip(equip_type, item, test = false)
     
        # Call Original Method
        dp3_equipcommonevent_9jsg4(equip_type, item, test)
       
       
        # Proceed
        item_id = item == nil ? 0 : item.id
        note = nil
       
        if item_id > 0
          if equip_type == 0
            note = $data_weapons[item_id].note
          elsif equip_type > 0
            note = $data_armors[item_id].note
          end
         
          note[/~E_COMMONEVENT_ID: ([-0-9]+)/]
          $game_temp.common_event_id = $1.to_i if $1
        end # If Statement
       
      end # Function
    end # Class

