class CreateFugaHoges < ActiveRecord::Migration[5.1]
  def change
    create_table :fuga_hoges do |t|

      t.timestamps
    end
  end
end
