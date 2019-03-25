
def nyc_pigeon_organizer (hash)
  pigeon_list = {}
  hash.each do |list, data|
    data.each do |option, birds|
      birds.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][list] == nil
          pigeon_list[name][list] = []
        end
        pigeon_list[name][list] << option.to_s
      end
    end
  end
  pigeon_list
end