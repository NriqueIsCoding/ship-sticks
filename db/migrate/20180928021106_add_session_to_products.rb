class AddSessionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :session, foreign_key: true
  end
end
