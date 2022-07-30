class ChangeNameColumnToPetHistory < ActiveRecord::Migration[5.2]
  def change
    rename_column :pet_histories, :heigth, :height
  end
end
