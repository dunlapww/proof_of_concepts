#to create a new migration type:
#$bundle exec rake db:new_migration name=<<create_movies>>

class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :director, null: false
      t.timestamps
    end
  end
end
