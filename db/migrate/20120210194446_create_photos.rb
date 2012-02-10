class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.decimal :lat, :precision => 15, :scale => 10
      t.decimal :lng, :precision => 15, :scale => 10

      t.timestamps
    end
  end
end
