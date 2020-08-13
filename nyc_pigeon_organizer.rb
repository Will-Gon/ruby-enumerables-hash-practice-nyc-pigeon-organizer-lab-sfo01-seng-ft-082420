require 'pry'

def nyc_pigeon_organizer(data)
  #write your code here!
  final_array = data.each_with_object({}) do |(key, value), new_array|
    value.each do |inner_key, names|
     names.each do |name|
       #binding.pry
       if !new_array[name]
          new_array[name] = {}
        end
       if !new_array[name][key]
         new_array[name][key] = []
      end
     final_array[name][key].push(inner_key)
    end
  end
end
binding.pry
end

