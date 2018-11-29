class CreateChallengeInstanceProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :challenge_instance_progresses do |t|
      t.references :challenge_instance, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :due_to
      t.string :status

      t.timestamps
    end
  end
end
