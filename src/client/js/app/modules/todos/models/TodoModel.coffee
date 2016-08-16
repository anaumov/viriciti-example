class TodoModel extends Backbone.Model
  defaults:
    checked: false

  toggleChecked: -> @set 'checked', !@get('checked')

module.exports = TodoModel
