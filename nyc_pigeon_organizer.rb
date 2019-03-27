
def nyc_pigeon_organizer (hash)
  pigeon_list = {}
  hash.each do |a, b|
    b.each do |c, d|
      d.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][a] == nil
          pigeon_list[name][a] = []
        end
        pigeon_list[name][a] << c.to_s
      end
    end
  end
  pigeon_list
end