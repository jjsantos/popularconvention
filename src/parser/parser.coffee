# parsing source
#
# Copyright (c) 2013 JeongHoon Byun aka "Outsider", <http://blog.outsider.ne.kr/>
# Licensed under the MIT license.
# <http://outsider.mit-license.org/>

helpers = require '../helpers'

module.exports =
  parsePatch: (commit) ->
    commit = JSON.parse commit if 'string' is helpers.extractType commit
    commit.files

  parseAdditionTokens: (patch) ->
    patch = patch.split '\n'
    line.substr(1) for line in patch when line.charAt(0) is '+'

# private