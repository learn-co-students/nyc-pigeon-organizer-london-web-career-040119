def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  
  data.each do |pigeon, pigeon_hash|
    pigeon_hash.each do |key, value|
      value.each do |name|
        if !hash.has_key?(name)
          hash[name] = {}
        end
        
        if !hash[name].has_key?(pigeon)
          hash[name][pigeon] = []
        end
        
        if !hash[name][pigeon].include?(key)
          hash[name][pigeon] << key.to_s
        end
        
      end
    end
  end
  hash
end