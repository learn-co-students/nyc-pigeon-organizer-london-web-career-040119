def nyc_pigeon_organizer(data)
  result = {}
  data.each do |attributum, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        result[pigeon] ||= {}
        result[pigeon][attributum] ||= []
        result[pigeon][attributum] << option.to_s
      end
    end
  end
  result
end