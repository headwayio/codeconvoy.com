## Contributing

If you haven't [set up the site locally](#running-locally), do that now. If you are already up and running, just pull down the latest changes:

```sh
git pull origin master
```

Check out a new branch:

```sh
git checkout -b my_new_blog_post
```

Make your changes:

```sh
code your stuffs...
```

Push your changes:

```sh
git push origin my_new_blog_post
```

Submit [a pull request](https://help.github.com/articles/using-pull-requests/) to merge you changes in. Once your changes are in, the site will be built and deployed via our CI server.

## Running Locally

Here are the commands to run to get set up locally:

```sh
git clone git@github.com:headwayio/codefree.io.git
cd codefree
gem install bundler # if you don't already have it
bundle install
middleman
```

For more information on Middleman, the app we use to build our site, check out [middlemanapp.com](http://middlemanapp.com).
