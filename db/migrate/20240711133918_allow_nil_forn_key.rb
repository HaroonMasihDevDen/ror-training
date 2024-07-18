class AllowNilFornKey < ActiveRecord::Migration[7.1]
  def change
    change_column_null :comments, :article_id, true
  end
end
