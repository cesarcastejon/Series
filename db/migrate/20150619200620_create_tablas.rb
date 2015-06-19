class CreateTablas < ActiveRecord::Migration
  def change
    create_table :tablas do |t|
      t.string :titulo
      t.string :categoria

      t.timestamps
    end
  end
end
