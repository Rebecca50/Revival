var RevivalApp = RevivalApp || {
  Models: {},
  Views: {},
  Collections: {},
  Router: null,
  // initialize: function () {
  //   this.ViewManager = new RevivalApp.Views.ViewManager({el: $('body')});
  //   this.router = new RevivalApp.Router();
  //   Backbone.history.start();
  //   // this.collection = new App.Collections.ShapeCollection();
  //   // seedCollection(3000, this.collection);
  //   // var view  = new App.Views.ShapeListView({collection: this.collection, el: $('body')});
  //   // view.render();
  // }
};


RevivalApp.Views.CourseView = Backbone.View.extend({
  template: function () {
    return _.template($('#course-template').html())
  },
  tagName: 'li',
  render: function () {
    var that = this;
    this.$el.html(this.template()({ course: this.model.attributes }));
    this.$el.find('.show-button').on('click', function () {
      RevivalApp.router.navigate("#courses/" + that.model.get('id'), {trigger: true});
    });
    return this;
  }
});

RevivalApp.Views.ShowView = Backbone.View.extend({
  template: function () {
    return _.template($('#show-template').html());
  },
  url: '/courses',// + this.id,
  render: function () {
    this.$el.html(
      this.template()({course: this.model.toJSON()})
    );
    // this.model.get('books').fetch()
    // var bookListView = new GutenbergApp.Views.BookListView({
    //   collection: this.model.get('books'),
    //   el: this.$el.find('.books')
    // });
    // bookListView.render();
    return this;
  }
});
