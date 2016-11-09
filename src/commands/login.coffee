{Command} = require 'ronin'
prompt    = require '../prompt'

module.exports = Site = Command.extend
    desc: 'Login to account'

    run: ->
      schema =
        properties:
          organization:
            required: true
          username:
            pattern: /^[a-zA-Z\s\-]+$/
            message: 'Name must be only letters, spaces, or dashes'
            required: true
          password:
            hidden: true
            required: true

      prompt schema, (err, result) ->
        console.log result
