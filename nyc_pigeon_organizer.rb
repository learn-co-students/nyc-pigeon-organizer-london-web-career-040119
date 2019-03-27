require 'pry'

def nyc_pigeon_organizer(data)

  pigeons = []

  data[:color].each do |color, birds|
    birds.each {|pigeon| pigeons << pigeon}
  end

  pigeons.uniq

  pigeon_list = {}

  pigeons.each do |pigeon|
    pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
  end

  binding.pry

end
