# Jekyll-Staging

by [Matt Gemmell](http://mattgemmell.com/)


## What is it?

It's a Ruby gem that stages and unstages draft posts for Jekyll's internal server.


## What are its requirements?

All you need is Ruby. Grab it by running `gem install jekyll-staging` in your terminal.


## What does it do?

This script is for people who:

1. Use [Jekyll](http://jekyllrb.com) to build their static sites.

2. Keep their drafts _outside_ of Jekyll's folder structure.

3. Like to work on posts using Jekyll's built-in web server.

If you have a lot of posts, Jekyll's rebuild process can take a while, so it can be handy to temporarily move all of your existing posts aside while you work on a draft. That's what this script does.

It lets you specify a given draft post, and it'll move it into Jekyll's folder structure (appropriately prefixing its filename with today's date). Then, it moves all other posts aside temporarily. That way, Jekyll's build and regeneration process will be super-fast while you're working on the draft.

It can also reverse the process when you're done, of course, putting the draft back into your drafts folder and restoring all your existing posts.

Note: It's assumed that your drafts' filenames _don't_ already have date-prefixes. Personally, I only add the date-prefixes when I'm ready to publish a new post. I often work on posts for several days, so it's easier that way.


## How do I use it?

First, specify the two appropriate paths in the script's Configuration block, and check that the post file-extension ("markdown" by default) matches your posts and drafts.

Then, run the script without any arguments to see usage instructions.

Basically:

- **`stage FILENAME_GLOB`** stages the first matching draft.
- **`stage -u`** unstages the first staged post.
- **`stage -u FILENAME_GLOB`** unstages the first matching staged post.

You don't need to specify full paths, because it'll be looking in your drafts folder anyway. Feel free to use partial filenames, and shell glob patterns. If there's more than one match, it'll use the first one, and it'll output the full list of matches as well as the filename it chose.

Let's say you had a draft whose filename was `got-a-new-iphone.markdown`. A typical workflow would be:

1. **`stage iphone`** (stage the draft for Jekyll)

2. **`jekyll serve`** (start the built-in web server, changing to your Jekyll directory first)

3. Edit your post as you see fit, and view it in your browser. When you're done, kill Jekyll's web server.

4. **`stage -u`** (unstage the draft, putting it back in your drafts folder)

You can then decide whether to publish the post, and build and deploy your site as usual.


## Where does it temporarily put my other posts?

In a directory called "`_stash`", in your Jekyll site's local root directory. The directory will be created if necessary. You can set a configuration option to make it use a different directory, if you want.


## Should I run it on my server?

Nope. I run it on my local machine, and so should you.


## Who made it?

Matt Gemmell (that's me).

- My website is at [mattgemmell.com](http://mattgemmell.com)

- I'm on Twitter as [@mattgemmell](http://twitter.com/mattgemmell)

- This code is on github at [github.com/mattgemmell/Jekyll-Staging](http://github.com/mattgemmell/Jekyll-Staging)


## What license is the code released under?

Creative Commons [Attribution-Sharealike](http://creativecommons.org/licenses/by-sa/4.0/).


## Can you provide support?

Nope. If you find a bug, please fix it and [submit a pull request on github](https://github.com/mattgemmell/Jekyll-Staging/pulls).


## I have a feature request or bug report.

Please [create an issue on github](https://github.com/mattgemmell/Jekyll-Staging/issues).


## How can I thank you?

You can:

- [Support my writing](https://www.patreon.com/mattgemmell).

- Check out [my Amazon wishlist](http://www.amazon.co.uk/registry/wishlist/1BGIQ6Z8GT06F).

- Say thanks [on Twitter](http://twitter.com/mattgemmell).
