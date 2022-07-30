class ChangeDataTypeColumnToPetHistory < ActiveRecord::Migration[5.2]
  def change
    change_column :pet_histories, :heigth, :float
  end
end
