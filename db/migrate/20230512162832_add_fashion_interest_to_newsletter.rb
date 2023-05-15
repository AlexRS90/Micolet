class AddFashionInterestToNewsletter < ActiveRecord::Migration[7.0]
  def change
    add_column :newsletters, :fashion_interest, :text, array: true, default: []
  end
end
