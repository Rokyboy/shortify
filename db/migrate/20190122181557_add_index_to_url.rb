class AddIndexToUrl < ActiveRecord::Migration[5.1]
  def change
    add_index :shorties, :url
  end
end
