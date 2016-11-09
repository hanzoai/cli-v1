{Command} = require 'ronin'

module.exports = Command.extend
    desc: 'Create new site'

    use: ['auth']

    options:
        name: 'string'

    run: (name) ->
      console.log 'created site ' + name
