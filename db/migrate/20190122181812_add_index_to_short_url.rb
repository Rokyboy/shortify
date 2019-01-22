class AddIndexToShortUrl < ActiveRecord::Migration[5.1]
  def change
    add_index :shorties, :short_url
  end
end
