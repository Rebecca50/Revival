var RevivalApp = RevivalApp || { Models: {}, Views: {}, Collections: {} };

var courses;
var courseListView;

RevivalApp.initialize = function (courseNames) {
  courses = new RevivalApp.Collections.CourseCollection(courseNames);

  courseListView = new RevivalApp.Views.CourseListView({
    collection: courses,
    el: $('.course-options')
  });
  // courses.fetch({
  //   success: function () {
  //     courseListView.render();
  //   }
  // });
  return courseListView;
  // RevivalApp.courses = courses;
  // RevivalApp.courseListView = courseListView;
};
