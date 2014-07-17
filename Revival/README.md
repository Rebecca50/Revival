##Revival
A d3 display of EdX.org's course data provided by an Academic Study, "HarvardX and MITx: The first year of open online courses" by Andrew Ho, Justin Reich, Sergiy Nesterko, Daniel Seaton, Tommy Mullaney, Jim Waldo, and Isaac Chuang. (http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2381263). The first release of this dataset is the HarvardX-MITx Person_Course Academic Year 2013 De-Identified dataset, version 2.0, created May 2014.

## Intro
In its first year of existence, EdX.org presented 13 online courses to the world, offering free, high-quality education for anyone, anywhere, anytime. The dataset records 641,138 individual course registrations across the globe over 3 terms: Fall 2012, Spring 2013, and Summer 2013. It tracked registrants by course id, student's individual userid, country, registration, certification (dependent on passing grade), material viewed, material more fully studied, student's prior level of education, year of birth, gender, final grade, start date of course, date of student's last interaction with course, the number of interactions with the course, the number of days the student interacted with the course, the number of chapters in the Courseware with which the student interacted, the number of posts the student made to the discussion forum, staff identifier roles (removed), and the number of internal inconsistencies resulting from the record.

Revival aims to display the current revolution in higher education taking place throughout the world by illuminating individual dreams and the single, powerful desire to learn.


##Resources & Documentation:
  * Framework: `'rails', '4.1.1'

  * Revival makes use of the edX.org .csv dataset mentioned above for its main functionality and GoogleMaps Geolocator API for d3 implementation of data by country of registered students.


  * The database `db/seeds.rb` is seeded with a user-friendly course name associated with the original course_id.

Developed by Rebecca Strong & Andrew Madden.
