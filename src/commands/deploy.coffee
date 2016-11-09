{Command} = require 'ronin'

module.exports = Command.extend
    desc: 'Deploy sites'

    # options:
    #     name: 'string'
    #     force:
    #         type: 'boolean'
    #         alias: 'f'

    run: ->
      console.log 'deploy'
