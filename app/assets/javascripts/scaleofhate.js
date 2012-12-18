Scaleofhate = Ember.Application.create({
  VERSION: '1.0.0'
});

//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require_tree ./routes
//= require_self

//Scaleofhate.store = Scaleofhate.Store.create();

Scaleofhate.initialize();
