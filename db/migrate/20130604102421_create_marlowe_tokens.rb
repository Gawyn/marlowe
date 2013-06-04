class CreateMarloweTokens < ActiveRecord::Migration
  def change
    create_table :marlowe_tokens do |t|
      t.string :value

      t.timestamps
    end
  end
end
