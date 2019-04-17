class Xfile < ActiveRecord::Base
  attr_accessible :name, :content
  
  def self.get_properties(h)
    new_array = []
    if h.is_a?(Hash)
      h.each_pair do |key, val|
        new_array = new_array + [key]
        new_array = new_array + get_properties(val)
      end
    else
      return []
    end
    return new_array
  end

end
