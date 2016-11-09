require 'shortcake'

use 'cake-version'
use 'cake-publish'
use 'cake-test'

option '-v', '--verbose', 'Enable verbose logging for tests'

task 'build', 'Build module and bundled checkout.js', ->
  exec 'node_modules/.bin/coffee -bcm -o lib/ src/'

task 'watch', 'watch for changes and recompile', ->
  exec 'node_modules/.bin/coffee -bcmw -o lib/ src/'
