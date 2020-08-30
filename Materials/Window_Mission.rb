#==============================================================================
# ** Window_Mission
#------------------------------------------------------------------------------
#  This window displays the current mission.
#==============================================================================

class Window_Mission < Window_Base
  #--------------------------------------------------------------------------
  # * Object Initialization
  #     text : text to display
  #--------------------------------------------------------------------------
  def initialize(text)
    width = 250
    height = 64
    super(0, 0, width, height)
    self.x = (544 - self.width) / 2 #Center window
    # self.back_opacity = 0
    # self.opacity = 0
    self.contents.font.color = text_color(15)
    self.windowskin = Cache.system("Window2")
    self.contents.font.shadow = false
    self.contents.font.italic = false
    refresh(text)
  end
  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def refresh(text)
    text_size = contents.text_size(text).width
    x = (self.width - text_size) / 2 #Center content
    self.contents.clear
    self.contents.draw_text(x - 12, -2, self.width, 32, text)
  end
end
