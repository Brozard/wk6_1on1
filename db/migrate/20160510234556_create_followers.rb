class CreateFollowers < ActiveRecord::Migration
  def up
    create_table :following_users, id: false do |t|
      t.integer :user_id
      t.integer :follower_user_id
    end

    add_index(:following_users, [:user_id, :follower_user_id], unique: true)
    add_index(:following_users, [:follower_user_id, :user_id], unique: true)
  end

  def down
    remove_index(:following_users, [:user_id, :follower_user_id])
    remove_index(:following_users, [:follower_user_id, :user_id])
    drop_table :following_users
  end
end
