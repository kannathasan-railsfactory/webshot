class CreateScreenShots < ActiveRecord::Migration
  def change
    create_table :screen_shots do |t|
    	t.string :screenshot 
    	t.string :url 
      t.timestamps
    end
  end
end
