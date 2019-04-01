require 'pry'

def nyc_pigeon_organizer(data)

  #Create empty array for list of pigeons
  pigeons = []

  #Get all unique names of pigeons
  data[:color].each do |color, birds|
    birds.each {|pigeon| if pigeons.include?(pigeon) == false then pigeons << pigeon end}
  end

  #Create empty hash for pigeon_list
  pigeon_list = {}

  #Get all keys for pigeon characteristics
  characteristics = data.keys

  pigeons.each do |pigeon|
    pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
  end

=begin
I don't understand why this wouldn't work, instead of the block above...it would make the code more abstract
pigeons.each do |pigeon|
  pigeon_list[pigeon] = characteristics.each {|char| {char => []}}
end
=end

#Populate new hash pigeon_list with each bird characteristics
data.each do |characteristic, data|
  data.each do |char, birds|
    pigeon_list.keys.each do |pigeon|
      if birds.include?(pigeon)
        pigeon_list[pigeon][characteristic] << char.to_s
      end
    end
  end
end

#Call new hash
pigeon_list

end
