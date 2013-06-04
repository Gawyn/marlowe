class CreateMarloweCookieSessions < ActiveRecord::Migration
  def change
    create_table :marlowe_cookie_sessions do |t|
      t.string :referer

      t.timestamps
    end
  end
end
