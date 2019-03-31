def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |keys,hash|   #keys are color, gender and lives
    hash.each do |inner_keys, arrs|
      arrs.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name]={}
        end
        if !pigeon_list[name].has_key?(keys)
          pigeon_list[name][keys]=[]
        end
        if !pigeon_list[name][keys].include?(inner_keys)
          pigeon_list[name][keys] << inner_keys.to_s
        end
      end
    end
  end
  pigeon_list
end
