<div align="center">
  <h1><code>fooocus-demo</code></h1>
</div>

![fooocus](https://github.com/fly-apps/fooocus-demo/assets/3727384/129f3fe9-7b15-43c6-b842-fd0b829410c3)

## Deploy

> [!NOTE]  
> This app is designed to run on [Fly GPUs](https://fly.io/docs/gpus/) — if you try to run it on a normal Fly Machine, you're gonna have a Bad Time™

```
fly launch --vm-gpu-kind a100-pcie-40gb --volume-initial-size 20
```
