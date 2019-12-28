def nyc_pigeon_organizer(data)
  # write your code here!
end

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

# returns a list of all the names
#pigeon_names = []
#pigeon_data.each {|attribute, descriptor| descriptor.each {|sub_attribute, namelist| pigeon_names.push(namelist)}}
#pigeon_names.flatten!.uniq!
# we can now use this array of names to search through the old pigeon data and organize our new pigeon data
#pigeon_names

new_data = {}
pigeon_data.each {|attribute, descriptor|
  descriptor.each {|sub_attribute, namelist| 
    namelist.each {|name| 
      if new_data[name]
        if new_data[name].include?(attribute)
          new_data[name][attribute] << sub_attribute.to_s
        else
          new_data[name] = {
            attribute: [sub_attribute.to_s]
          }
        end
      else 
        new_data[name] = {
          attribute: [sub_attribute.to_s]
        }
      end
    }
    
  }
  
}
puts new_data

new_data
#new_data["Frank"] = {}
#new_data["Frank"] = {lives: ["Subway"]}

#if new_data["Frank"].include?(:lives)
#  puts "I will shovel new data in"
#else
#  puts "I will create a new key with an array value"
#end