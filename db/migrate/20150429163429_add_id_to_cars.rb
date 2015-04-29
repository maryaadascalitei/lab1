class AddIdToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :car, index: true, foreign_key: true
  end
end
