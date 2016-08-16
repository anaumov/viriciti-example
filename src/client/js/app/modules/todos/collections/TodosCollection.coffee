TodoModel = require "../models/TodoModel"

class TodosCollection extends Backbone.Collection
	url: 'todos' # just a stub
	model: TodoModel

module.exports = TodosCollection
