# This migration comes from blogit (originally 20140131072921)
class AddStateToPostsTable < ActiveRecord::Migration
  def change
    add_column(:blogit_posts, :state, :string, null: false, default: Blogit::configuration.hidden_states.first.to_s)
  end
end
