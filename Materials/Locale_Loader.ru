#==============================================================================
# CSV Reader script
# Author: Ste
#==============================================================================
module LOCSETT
  PATH = "Data/Locale/"
  LAST_MAP = 91
end

class Locale_Loader
  def initialize
    load_maps_data
  end

  def load_maps_data
    $maps_data = []

    for i in 0..LOCSETT::LAST_MAP
      map_data = []
      data_path = "#{LOCSETT::PATH}map#{i}.csv"

      if File.file?(data_path)
        data = load_data(data_path)
        data.split(/\r?\n/).each do |line|
          map_data.push(line)
        end
      end

      $maps_data.push(map_data)
    end
  end
end

class << Marshal
  alias_method(:th_core_load, :load)
  def load(port, proc = nil)
    th_core_load(port, proc)  # usual loading
  rescue TypeError
    if port.kind_of?(File)    # didn't work, so we read it as a raw file
      port.rewind 
      port.read
    else
      port
    end
  end
end unless Marshal.respond_to?(:th_core_load)

Locale_Loader.new()