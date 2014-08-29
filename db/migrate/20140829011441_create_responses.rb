class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :context, index: true
      t.string :trigger
      t.string :response

      t.timestamps
    end
  end
end
