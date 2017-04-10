class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
        t.string :report_code, null: false
        t.string :quote_no, null: false
        t.string :project_site
        t.timestamps
    end
    add_index :reports, :report_code, unique: true
  end
end
