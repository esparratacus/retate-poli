class CreateChallengeInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :challenge_instances do |t|
      t.references :challenge, foreign_key: true
      t.datetime :closed_on
      t.boolean :is_active
      t.boolean :is_public
      t.timestamps
    end
  end
end
