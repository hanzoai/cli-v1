{Command} = require 'ronin'

module.exports = Site = Command.extend
    desc: 'Logout of account'

    run: ->
      console.log @help()
