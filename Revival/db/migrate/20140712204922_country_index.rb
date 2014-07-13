class CountryIndex < ActiveRecord::Migration
  def change
    add_index(:records, :final_cc_cname_di)
    add_index(:records, :course_id)

  end
end
