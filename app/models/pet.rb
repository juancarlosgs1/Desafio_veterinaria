class Pet < ApplicationRecord
  has_many :pet_histories
  
  def to_s
    name
  end

  def history_count
    #TODO-implement
    pet_histories.count
  end

  def history_list
    i = 1
    histories_links = []
    pet_histories.each do |history_link|
      histories_links << "<a href='../pets/#{self.id}/pet_histories/#{history_link.id}''>'History #{i}'</a>"
      i+=1
    end
    histories_links.join(", ").html_safe
  end

  def avg_weight
    #TODO-implement
  end

  def avg_height
    #TODO-implement
  end

  def max_weight
    #TODO-implement
  end

  def max_height
    #TODO-implement
  end

end
