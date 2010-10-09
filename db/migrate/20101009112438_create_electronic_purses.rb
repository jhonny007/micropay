class CreateElectronicPurses < ActiveRecord::Migration
  def self.up
    create_table :electronic_purses do |t|
      t.decimal :credit
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :electronic_purses
  end
end
