class ChangeContentFromMessages < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :content, :body
  end
end
