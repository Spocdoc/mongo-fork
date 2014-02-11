class ObjectID
  @name = 'ObjectID'

  constructor: (@hex) ->
    if !@hex?
      i = 0
      h = ''
      h += (Math.random()*16|0).toString(16) while ++i <= 24
      @hex = h

  toString: -> @hex
  'toJSON': -> @hex

class DBRef
  @name = 'DBRef'
  constructor: (@namespace, @oid) ->
  toString: -> "#{@constructor.name} [#{@namespace}]:[#{@oid}]"

module.exports =
  'ObjectID': ObjectID
  'DBRef': DBRef

