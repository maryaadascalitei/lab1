class AddCarsToRatings < ActiveRecord::Migration
  def change
    add_reference :ratings, :car, index: true, foreign_key: true
  end
end
