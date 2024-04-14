# pixi-vector

Not complete vector 2D for pixi.js framework

Usage examples:

```coffeescript
vector1 = Vector.fromRad Math.PI * .25
sprite = new PIXI.Sprite PIXI.Assets.get 'bunny'
distance = Vector.dist sprite, vector1
Vector.sub(vector2, sprite).invX().norm().mult 5
```

If it will be somebody useful - i'm complete it later and make package.
