TodoItemView = require "./TodoItemView"

class TodosListView extends Marionette.CollectionView
	tagName: 'ul'
	className: 'list-unstyled'
	childView: TodoItemView

module.exports = TodosListView
