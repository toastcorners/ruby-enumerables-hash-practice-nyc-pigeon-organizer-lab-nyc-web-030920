require "spec_helper"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  names = []
  data.each do |details, value| #=> iterates through whole hash
  value.each do |info, arr|
      arr.each do |name|
        if !name.include?(name)
            names << name 
      end
    end
  end
  names.each do |namez|
    pigeon_list[namez] = Hash.new {|k, v| k[v] = []}
    data.each do |details, value|
      pigeon_list[namez][details]
      value.each do |info, arr|
        arr.each do |name|
          if name == namez 
            pigeon_list[name][details] << info.to_s 
        end
      end
  end
  end
  pigeon_list
end