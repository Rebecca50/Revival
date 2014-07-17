# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



require 'csv'


Record.delete_all

def check_title(course_id)
    if course_id == 'HarvardX/CB22x/2013_Spring'
        return 'AncientHeroes'
    elsif course_id == 'HarvardX/CS50x/2012'
        return 'ComputerScience1'
    elsif course_id == 'HarvardX/ER22x/2013_Spring'
        return 'Justice'
    elsif course_id == 'HarvardX/PH207x/2012_Fall'
        return 'HealthStats'
    elsif course_id == 'HarvardX/PH278x/2013_Spring'
        return 'HealthEnvironment'
    elsif course_id == 'MITx/14.73x/2013_Spring'
        return 'GlobalPoverty'
    elsif course_id == 'MITx/2.01x/2013_Spring'
        return 'Structures'
    elsif course_id == 'MITx/3.091x/2012_Fall' || course_id == 'MITx/3.091x/2013_Spring'
        return 'SolidStateChemistry'
    elsif course_id == 'MITx/6.002x/2012_Fall' || course_id == 'MITx/6.002x/2013_Spring'
        return 'Circuits'
    elsif course_id == 'MITx/6.00x/2012_Fall' || course_id == 'MITx/6.00x/2013_Spring'
        return 'ComputerScienceProgramming'
    elsif course_id == 'MITx/7.00x/2013_Spring'
        return 'Biology'
    elsif course_id == 'MITx/8.02x/2013_Spring'
        return 'ElectricityMagnetism'
    elsif course_id == 'MITx/8.MReV/2013_Summer'
        return 'MechanicsReview'

    end
end

CSV.foreach("db/HMXPC13_DI_v2_5-14-14.csv") do |row|

  course_id,userid_di,registered,viewed,explored,certified,final_cc_cname_di,loe_di,yob,gender,grade,start_time_di,last_event_di,nevents,ndays_act,nplay_video,nchapters,nforum_posts,roles,incomplete_flag = row
  Record.create({
    course_id: course_id,
    short_title: check_title(course_id),
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
