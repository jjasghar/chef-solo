chef-solo
=========

How to bootstrap a box

```bash
apt-get update && apt-get install git-core -y && git clone git@github.com:jjasghar/chef-solo.git && cd chef-solo && ./install.sh
```

How to bootstrap a nginx_unicorn box

```bash
apt-get update && apt-get install git-core -y && git clone git@github.com:jjasghar/chef-solo.git && cd chef-solo && git checkout nginx_unicorn && ./install.sh
```


TODO
----

* figure out deploy keys [here](https://help.github.com/articles/managing-deploy-keys)
* ~~add nginx cookbook~~ 
* ~~add unicorn cookbook~~
* need to get unicorn and nginx to talk to one another
* use berkshelf
* get deploy resource to work with github cloning
 * https://github.com/jjasghar/app-server-arena/blob/master/app.rb
