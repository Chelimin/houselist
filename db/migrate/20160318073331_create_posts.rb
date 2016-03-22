class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column(:title, :string)
      t.column(:description, :text)
      t.column(:image_url, :string)
      t.column(:user_id, :integer)
      t.column(:email, :string)
      t.column(:phone, :string)
      t.column(:category_id, :integer)

      t.timestamps null: false
    end
  end
end
