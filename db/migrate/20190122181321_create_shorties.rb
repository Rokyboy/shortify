class CreateShorties < ActiveRecord::Migration[5.1]
  def change
    create_table :shorties do |t|
      t.string :url, null: false, default: ''
      t.string :short_url, null: false, default: ''

      t.timestamps
    end
  end
end
