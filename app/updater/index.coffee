
modal = require './modal'

module.exports = (store, actionType, actionData) ->
  handler = switch actionType
    when 'modal/add' then modal.add
    when 'modal/remove' then modal.remove
    when 'modal/content-click' then modal.contentClick
    else (x) -> x

  handler store, actionData
