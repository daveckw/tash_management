class CreateRemarks < ActiveRecord::Migration[5.1]
  def change
    create_table :remarks do |t|
      t.text :remark
      t.date :date

      t.timestamps
    end
  end
end
