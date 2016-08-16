class AddTodoView extends Marionette.ItemView
	template: require "../templates/add.jade"

	ui:
		input: "input[role=add-todo]"

	events:
		"keypress @ui.input": "onInputKeypress"

	onInputKeypress: (e) ->
		ENTER_KEY = 13
		todoText = this.ui.input.val().trim()

		if (e.which == ENTER_KEY && todoText)
			@collection.create(title: todoText)
			@ui.input.val('')

module.exports = AddTodoView
