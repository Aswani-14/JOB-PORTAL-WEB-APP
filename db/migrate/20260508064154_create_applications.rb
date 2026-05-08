class CreateApplications < ActiveRecord::Migration[8.1]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
