exports.parseConfig = ->
  require.extensions['.coffee'] = ->
    require 'coffee-script/register'
    require.extensions['.coffee'].apply require.extensions, arguments

  cwd = process.cwd()
  config =
    cwd: cwd

  paths = [
    process.env.HOME + '/.hanzo'
    cwd + '/.hanzo'
    cwd + '/hanzo'
  ]

  for path in paths
    try
      conf = require.resolve path
    catch err
      continue

    for k,v of require conf
      config[k] = v

  config
