class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|

      t.string  :course_id
      t.string  :userid_di
      t.boolean :registered
      t.boolean :viewed
      t.boolean :explored
      t.boolean :certified
      t.string  :final_cc_cname_di
      t.string  :loe_di
      t.integer :yob
      t.string  :gender
      t.decimal :grade
      t.string  :start_time_di
      t.string  :last_event_di
      t.integer :nevents
      t.integer :ndays_act
      t.integer :nplay_video
      t.integer :nchapters
      t.integer :nforum_posts
      t.string  :roles
      t.boolean :incomplete_flag

      t.timestamps
    end
  end
end
