require 'pry'

def nyc_pigeon_organizer(data)

  #Create empty array for list of pigeons
  pigeons = []

  #Get all names of pigeons
  data[:color].each do |color, birds|
    birds.each {|pigeon| pigeons << pigeon}
  end

  #Remove duplicates from pigeon list.
  pigeons.uniq

  #Create empty hash for pigeon_list
  pigeon_list = {}

  #Get all keys for pigeon characteristics
  characteristics = data.keys

  pigeons.each do |pigeon|
    pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
  end

#I don't understand why this wouldn't work...it would make the code more abstract
#pigeons.each do |pigeon|
#  pigeon_list[pigeon] = characteristics.each {|char| {char => []}}
#end

data[:color].each do |color, birds|
  pigeon_list.keys.each do |pigeon|
    if birds.include?(pigeon)
      pigeon_list[pigeon][:color] << color.to_s
    end
  end
end

data[:gender].each do |gender, birds|
  pigeon_list.keys.each do |pigeon|
    if birds.include?(pigeon)
      pigeon_list[pigeon][:gender] << gender.to_s
    end
  end
end

data[:lives].each do |lives, birds|
  pigeon_list.keys.each do |pigeon|
    if birds.include?(pigeon)
      pigeon_list[pigeon][:lives] << lives.to_s
    end
  end
end

pigeon_list

end
