class DeleteColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :tickets, :content
  end
end
