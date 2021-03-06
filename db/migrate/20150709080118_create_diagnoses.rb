class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.text :content
      t.references :patient, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
