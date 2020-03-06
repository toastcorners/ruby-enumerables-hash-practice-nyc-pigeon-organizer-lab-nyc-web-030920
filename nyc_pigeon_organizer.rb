require "spec_helper"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  names = []
  data.each do |key, value| #=> iterates through whole hash
  value.each do |info, arr|
      arr.each do |name|
        if pigeon_list.has_key?(name)
              if pigeon_list[name].has_key?(key)
            pigeon_list[name][key] << info.to_s
          else
            pigeon_list[name][key] = [info.to_s]
      end
    else
      pigeon_list[name] = {key => [info.to_s]}
    end
  end
end
end
pigeon_list
end