[![](https://images.microbadger.com/badges/image/ilyaglow/massdns.svg)](https://microbadger.com/images/ilyaglow/massdns "Get your own image badge on microbadger.com")

About
-----

Docker image for the awesome [massdns](https://github.com/blechschmidt/massdns)
high-performance DNS resolver.

It's based on Alpine edge image.

The image already includes a file with
[reliable resolvers](https://gist.github.com/roge-/e7d926a3b3551a0f3769), so
you don't even need to specify `-r` flag.

Usage
-----

```
sudo docker run -it --rm \
                -v path/to/names.txt:/data/names.txt \
                ilyaglow/massdns -o Sndtu /data/names.txt
```
