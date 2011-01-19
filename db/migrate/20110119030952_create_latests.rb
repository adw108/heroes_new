class CreateLatests < ActiveRecord::Migration

  def self.up
    create_table :latests do |t|
      t.string :title
      t.date :date
      t.text :description
      t.integer :image_id
      t.integer :image2_id
      t.integer :image3_id
      t.integer :brochure_id
      t.integer :position

      t.timestamps
    end

    add_index :latests, :id

    load(Rails.root.join('db', 'seeds', 'latests.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Latests"})

    Page.delete_all({:link_url => "/latests"})

    drop_table :latests
  end

end
