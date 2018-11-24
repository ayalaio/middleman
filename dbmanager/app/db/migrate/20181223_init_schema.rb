class InitSchema < ActiveRecord::Migration[4.2]
  DOWNTIME = true

  def up
    create_table "payment_references", force: :cascade do |t|
      t.text "message", null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end