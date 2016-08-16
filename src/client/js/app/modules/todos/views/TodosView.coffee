TodosCollection = require "../collections/TodosCollection"
AddTodoView = require "./AddTodoView"
TodosListView = require "./TodosListView"

class TodosView extends Marionette.LayoutView
	template: require "../templates/todos.jade"

	regions:
		addTodo: ".bb-add-todo"
		todosList: ".bb-todos-table"

	initialize: ->
		@todosCollection = new TodosCollection

	onBeforeShow: ->
		todosListView = new TodosListView(collection: @todosCollection)
		addTodoView = new AddTodoView(collection: @todosCollection)

		@getRegion("addTodo").show addTodoView
		@getRegion("todosList").show todosListView

module.exports = TodosView
