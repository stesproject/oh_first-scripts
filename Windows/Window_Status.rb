##################################################################
# Meu primeiro script
# Para jogos de Single Player                                                                                                                                      #
##################################################################

class Window_Status < Window_Base

  def initialize(actor)
    super(150, 0, 320, 416)
    @actor = actor
    refresh
  end
  
  def refresh
    self.contents.clear
    draw_actor_name(@actor, 4, 0)
    draw_actor_class(@actor, 128, 0)
    draw_actor_face(@actor, 8, 32)
    draw_basic_info(128, 30)
    draw_parameters(8, 135)
    draw_exp_info(170, 135)
    draw_equipments(8, 235)
  end

  def draw_basic_info(x, y)
    draw_actor_level(@actor, x, y + WLH * 0)
    draw_actor_state(@actor, x, y + WLH * 1)
    draw_actor_hp(@actor, x, y + WLH * 2)
    draw_actor_mp(@actor, x, y + WLH * 3)
  end

  def draw_parameters(x, y)
    draw_actor_parameter(@actor, x, y + WLH* 0, 0)
    draw_actor_parameter(@actor, x, y + WLH * 1, 1)
    draw_actor_parameter(@actor, x, y + WLH * 2, 2)
    draw_actor_parameter(@actor, x, y + WLH * 3, 3)
  end

  def draw_exp_info(x, y)
    s1 = @actor.exp_s
    s2 = @actor.next_rest_exp_s
    exp_next = $local.get_text("exp_next")
    exp_total = $local.get_text("exp_total")
    level = $local.get_text("level")
    s_next = sprintf(exp_next, level)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y + WLH * 0, 180, WLH, exp_total)
    self.contents.draw_text(x, y + WLH * 2, 180, WLH, s_next)
    self.contents.font.color = normal_color
    self.contents.draw_text(x - 70, y + WLH * 1, 180, WLH, s1, 2)
    self.contents.draw_text(x - 70, y + WLH * 3, 180, WLH, s2, 2)
  end

  def draw_equipments(x, y)
    self.contents.font.color = system_color
    self.contents.draw_text(x, y, 120, WLH, Vocab::equip)
    for i in 0..4
      draw_item_name(@actor.equips[i], x + 16, y + WLH * (i + 1))
    end
  end
end