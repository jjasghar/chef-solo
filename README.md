chef-solo
=========

How to bootstrap a box

```bash
apt-get update && apt-get install git-core -y && git clone git@github.com:jjasghar/chef-solo.git && cd chef-solo && ./install.sh
```


TODO
----

* figure out deploy keys [here](https://help.github.com/articles/managing-deploy-keys)
* add nginx cookbook
* add unicorn cookbook
* use berkshelf
* get deploy resource to work with github cloning
