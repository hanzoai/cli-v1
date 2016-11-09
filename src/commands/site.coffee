{Command} = require 'ronin'

module.exports = Site = Command.extend
    desc: 'Manage sites'

    run: ->
      console.log @help()
