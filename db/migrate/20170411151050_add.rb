class Add < ActiveRecord::Migration[5.0]
  def change
    add_reference :voters, :user, foreign_key: true
  end
end
