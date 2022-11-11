class AddTrainer < ActiveRecord::Migration[6.1]
  def change
    create_table :add_trainers do |t|
      t.string :name
      t.string :job_title
      t.string :facebook
      t.string :twitter 
      t.string :linkedin
      t.string :pintrest
      t.string :image
    end
  end
end
