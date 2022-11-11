class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :trainer_name
      t.string :job_title
      t.string :specialization
    end
  end
end
