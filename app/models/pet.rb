class Pet < ApplicationRecord
  has_many :pet_histories
  validates :name, :race, :birthdate, presence: true
  
  def to_s
    name
  end

  def history_count
    #TODO-implement
    pet_histories.count
  end

  def history_list
    histories_links = []
    pet_histories.pluck(:id).each_with_index do |hist_id, i|
    histories_links << "<a href='/pet_histories/#{hist_id}''>'History #{i+1}'</a>"
    end
    histories_links.join(", ").html_safe
    
  end

  def avg_weight
    #TODO-implement
    if pet_histories.exists?
      avg_data = pet_histories.pluck(:weight)
      avg_data.sum / avg_data.count
    else
      0
    end
  end

  def avg_height
    #TODO-implement
    if pet_histories.exists?
      avg_data = pet_histories.pluck(:height)
      avg_data.sum / avg_data.count
    else
      0
    end
  end

  def max_weight
    #TODO-implement
    if pet_histories.exists?
      pet_histories.pluck(:weight).max
    else
      0
    end
  end

  def max_height
    #TODO-implement
    if pet_histories.exists?
      pet_histories.pluck(:height).max
    else
      0
    end
  end

end
