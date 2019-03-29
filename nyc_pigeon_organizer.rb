def nyc_pigeon_organizer(data)
    hash = {}
    data.each do |stat, key|
      key.each do |option, pigeons|
        pigeons.each do |name|
          hash[name] ||= {}
          hash[name][stat] ||= []
          hash[name][stat] << option.to_s
        end
      end
    end

    hash
end