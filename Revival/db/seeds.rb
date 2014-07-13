# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Student.delete_all
# Course.delete_all
# Enrollment.delete_all

# CSV.foreach("db/HMXPC13_DI_v2_5-14-14.csv") do |row|

#   # puts count
#   # count += 1

# #


require 'csv'

Record.delete_all

CSV.foreach("db/HMXPC13_DI_v2_5-14-14.csv") do |row|

  course_id,userid_di,registered,viewed,explored,certified,final_cc_cname_di,loe_di,yob,gender,grade,start_time_di,last_event_di,nevents,ndays_act,nplay_video,nchapters,nforum_posts,roles,incomplete_flag = row

  Record.create({
    course_id: course_id,
    userid_di: userid_di,
    registered: registered,
    viewed: viewed,
    explored: explored,
    certified: certified,
    final_cc_cname_di: final_cc_cname_di,
    loe_di: loe_di,
    yob: yob,
    gender: gender,
    grade: grade,
    start_time_di: start_time_di,
    last_event_di: last_event_di,
    nevents: nevents,
    ndays_act: ndays_act,
    nplay_video: nplay_video,
    nchapters: nchapters,
    nforum_posts: nforum_posts,
    roles: roles,
    incomplete_flag: incomplete_flag
    })

  end
