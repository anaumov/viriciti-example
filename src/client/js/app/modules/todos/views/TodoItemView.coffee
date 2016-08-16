class TodoItemView extends Marionette.ItemView
	tagName: "li"
	className: "b-todo-list__item"
	template: require("../templates/item.jade")
	modelEvents: change: "render"

	ui:
		toggleCheckbox: "input[type=checkbox]"
		removeBtn: "span[role=remove]"

	events:
		"click @ui.toggleCheckbox": "toggleChecked"
		"click @ui.removeBtn": "removeItem"

	toggleChecked: -> @model.toggleChecked()
	removeItem: -> @model.destroy()

module.exports = TodoItemView
