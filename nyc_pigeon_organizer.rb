def nyc_pigeon_organizer (hash)
  new_hash = {}
  hash.each do |list, data|
    data.each do |option, birds|
      birds.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][list] == nil
          new_hash[name][list] = []
        end
        new_hash[name][list] << option.to_s
      end
    end
  end
  new_hash
end