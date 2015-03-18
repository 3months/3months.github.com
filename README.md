3months.github.com
==================

### 3month's Dev Team page on Github

---

#### Build

* `git clone git@github.com:3months/3months.github.com`
* Use the less compiler of your choice to build `src/less` into `css/`
* `Commit and push to master`

---

#### Generating Gravatar image hash

The Gravatar image hashes can be generated from your termainal:

```
md5 -s developer@3months.com
MD5 ("developer@3months.com") = f442a970f3bf6024f62e9cfb82c13c8a
```

Where "developer@3months.com" is registered on gravatar.com. Put the output hash into the img link:

``` html
<img src="https://secure.gravatar.com/avatar/f442a970f3bf6024f62e9cfb82c13c8a" />
```