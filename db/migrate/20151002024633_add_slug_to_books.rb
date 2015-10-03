class AddSlugToBooks < ActiveRecord::Migration
  def change
    add_column :books, :slug, :string ,uniqueness: true
  end
end
