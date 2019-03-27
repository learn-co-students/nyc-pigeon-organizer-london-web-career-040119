pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer (input)
  new_hash = {}
  input.each do |list, data|
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
