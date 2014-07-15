var RevivalApp = RevivalApp || {
  Models: {},
  Views: {},
  Collections: {},
  Router: null,
  // initialize: function () {
  //   this.ViewManager = new RevivalApp.Views.ViewManager({el: $('body')});
  //   this.router = new RevivalApp.Router();
  //   Backbone.history.start();
  //   // this.collection = new App.Collections.CourseCollection();
  //   // seedCollection(3000, this.collection);
  //   // var view  = new App.Views.CourseListView({collection: this.collection, el: $('body')});
  //   // view.render();
  // }
};

RevivalApp.Views.CourseListView = Backbone.View.extend({
  initialize: function () {
    this.listenTo(this.collection, 'change', this.render);
  },
  render: function () {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function (course) {
      var courseView = new RevivalApp.Views.CourseView({model: course});
      that.$el.append(courseView.render().el);
    });
    return this;
  }
});
