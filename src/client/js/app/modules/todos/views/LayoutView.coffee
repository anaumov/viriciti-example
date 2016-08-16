TodosView = require "./TodosView"

class LayoutView extends Marionette.LayoutView
	template: require "../templates/layout.jade"
	regions:
		appWrapper: ".bb-todo-wrapper"

	onBeforeShow: ->
		@getRegion("appWrapper").show new TodosView

module.exports = LayoutView
