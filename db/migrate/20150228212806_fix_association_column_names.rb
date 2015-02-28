class FixAssociationColumnNames < ActiveRecord::Migration
  def change
    rename_column :workout_sets, :exercises_id, :exercise_id
    rename_column :workout_sets, :workout_sessions_id,  :workout_session_id
    rename_column :personal_records, :users_id, :user_id
    rename_column :workout_sessions, :users_id, :user_id
  end
end
