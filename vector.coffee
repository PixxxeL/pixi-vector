
class Vector

    constructor: (@x = 0, @y = 0) ->

    add: (v) ->
        @x += v.x
        @y += v.y
        @

    @add: (v1, v2) ->
        new Vector v1.x + v2.x, v1.y + v2.y

    sub: (v) ->
        @x -= v.x
        @y -= v.y
        @

    @sub: (v1, v2) ->
        new Vector v1.x - v2.x, v1.y - v2.y

    mult: (scalar) ->
        @x *= scalar
        @y *= scalar
        @

    @mult: (v, scalar) ->
        new Vector v.x * scalar, v.y * scalar

    div: (scalar) ->
        @x /= scalar
        @y /= scalar
        @

    @div: (v, scalar) ->
        new Vector v.x / scalar, v.y / scalar

    angle: ->
        rad = Math.atan2(@x, @y)
        if rad >= 0 then rad else rad += Math.PI * 2

    @angle: (v1, v2) ->
        rad = Math.PI - Math.atan2(v2.x - v1.x, v2.y - v1.y)
        if rad >= 0 then rad else rad += Math.PI * 2

    len: ->
        Math.sqrt @x * @x + @y * @y

    @len: (v) ->
        Math.sqrt v.x * v.x + v.y * v.y

    norm: ->
        dy = @len()
        if dy != 0 then @div dy else new Vector 0, 1
    
    @norm: (v) ->
        dy = Vector.len v
        if dy != 0 then Vector.div v, dy else new Vector 0, 1

    # скалярное произведение
    dot: (v) ->
        @x * v.x + @y * v.y

    dist: (v) ->
        dx = @x - v.x
        dy = @y - v.y
        Math.sqrt dx * dx + dy * dy

    @dist: (v1, v2) ->
        dx = v1.x - v2.x
        dy = v1.y - v2.y
        Math.sqrt dx * dx + dy * dy

    @fromRad: (rad) ->
        new Vector Math.sin(rad), Math.cos(rad)

    @fromDeg: (deg) ->
        Vector.fromRad deg * (Math.PI / 180)

    clone: ->
        new Vector @x, @y

    invX: ->
        @x = -@x
        @

    invY: ->
        @y = -@y
        @

    inv: ->
        @x = -@x
        @y = -@y
        @

    toString: ->
        "#{@x}, #{@y}"


export default Vector
