---
title: "Setting Up Website"
date: 2018-07-02T01:54:41-07:00
draft: false
---

# Synopsis

Using hugo to create a website is very easy, as shown in these steps

I followed the [hugo quick start guide](https://gohugo.io/getting-started/quick-start/)

And the introduction theme's [instructions](https://github.com/vickylai/hugo-theme-introduction/blob/master/README.md)

# Steps

## Installing hugo
Because arch linux has a wide breadth of supported programs in it's repos, I was able to simply run:

`sudo pacman -S hugo`

And use the `hugo new site website` command to create the website in a folder named `website/`

## Finding the right theme
Using hugo's theme browser, I found a theme called [introduction](https://themes.gohugo.io/hugo-theme-introduction/) that really felt correct for this website.

Then, I added that theme as a submodule using

`cd themes`

`git submodule add https://github.com/vickylai/hugo-theme-introduction.git introduction`

To complete the integration of the theme, I [Followed the instructions on the theme's site](https://themes.gohugo.io/hugo-theme-introduction#configure-your-site)

## Creating content for the website
To add some content for the website, I

* Added some various projects that I like to work on
* Added my branding profile pic
* Added a favicon
* Made a quick little scene in blender for one of the porojects
* Added social media plugs
* Wrote this blog!

## Setting up github pages
Using [this easy to follow guide](https://gohugo.io/hosting-and-deployment/hosting-on-github/ "Hugo hosting on github tutorial"), I was able to easily set up a system where I can develop the website seperately from the deployed repo in my github account. 
I chose to host the website this way because now I am able to keep the version control history clean, with the recompilations of the
website separate from the development.

### Steps I took

1. Create a new github repo called `creikey.github.io`
2. Create another repo called `website`
3. Create this website and push it to the `website` repo
4. Delete the public directory with `rm -rf public/`
5. Add the `creikey.github.io` website as a submodule using `git submodule add -b master git@github.com:creikey/creikey.github.io.git public`
6. [Use the included script](https://gohugo.io/hosting-and-deployment/hosting-on-github/#put-it-into-a-script) to publish the changes

# Conclusion

Setting up a website with hugo is very easy, and even fun!

Thanks for taking time out of your day to read this blog. I hope that you found some sort of usefulness from my writing