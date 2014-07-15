var RevivalApp = RevivalApp || {
  Models: {},
  Views: {},
  Collections: {},
  Router: null,
  initialize: function(){
    this.ViewManager = new RevivalApp.Views.ViewManager({el: $('body')});
    this.router = new RevivalApp.Router();
    Backbone.history.start();
    // this.collection = new App.Collections.ShapeCollection();
    // seedCollection(3000, this.collection);
    // var view  = new App.Views.ShapeListView({collection: this.collection, el: $('body')});
    // view.render();
  } };

// RevivalApp.Models.Course = Backbone.Model.extend({
//   initialize:function(){
    // var booksUrl = '/authors/'+ this.get('id') + '/books';
    // var books = new GutenbergApp.Collections.BookCollection();
    // books.url = booksUrl;
    // this.set('books', books);
//   }
// });
