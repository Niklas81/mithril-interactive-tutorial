# Mithril Interactive Tutorial

## (in development)

The goal of this project is to teach developers how to get up and running
with the [Mithril MVC framework](http://mithril.js.org).
After an intoduction and setup instructions, the first lesson begins
with the most basic app. A lesson consists of a guide, which is a live Mithril
web app, and comments in the editable source code. Links to pertinent sections of the official Mithril docs will
be provided throughout.

There will be two versions of the tutorial, each utilizing different technologies:

1.  Javascript, HTML, and CSS
2.  CoffeeScript, HTML, and Stylus

## Requirements

Git on the command line is essential. If you use a git GUI you should know how to switch branches.
The tutorial allows you to live-edit the source code with the help of
Browserfy, Watchify, and Live Reload. You will need `npm` to install these
libraries. To maximize interaction, the tutorial relies on the `Google Chrome`
web browser and the `DevTools` within. Firefox and Safari developer tools are
not yet capable of live editing. 

## Setup

- Clone the repo: `$ git clone https://github.com/pelonpelon/mithril-interactive-tutorial.git`
- Switch to the `mithril-interactive-tutorial` folder.
- Install dependencies: `$ npm install`
- Start the tutorial: `$ npm run tutorial`
- Open DevTools in Google Chrome: ALT-CTRL-I or OPT-CMD-I
 
The Introduction to the tutorial explains how to set up the browser window and
DevTools in a vertically split window. This is the setup that works best for
me, but arrange your dev environment however it's most comfortable. 

## Work flow

For each lesson:

- Read the guide in the browser window
- Read the comments in the DevTools editor pane (comments change with each lesson)
- Experiment in the DevTools live editor, debugger, console, etc
- Load the next lesson

## Current State of the Tutorial

The tutorial should progress in three phases:

1.  Step-by-step instructions leading to an understanding of everything in the Mithril "[Getting Started Guide](http://lhorie.github.io/mithril/getting-started.html)"
2.  A thorough exploration of the [Mithril API](http://lhorie.github.io/mithril/mithril.html) with an emphasis on experimentation. 
3.  Working examples to accompany Leo Horie's excellent [blog posts](http://lhorie.github.io/mithril-blog/).

This tutorial is a work in progress. I plan to add new lessons as time provides. I heartily welcome suggestions and criticism.
If you find mistakes, and you will, please submit a comment or pull request. 

## Teaching Philosophy

- Each lesson builds on the last. Some details are intentionally left out so as to focus on a few core concepts. Later lessons should fill in the gaps.
- This tutorial takes a "Components First" approach. By the popularity of React and Web Components it seems clear that components and their role in
the structure of MVC apps is readily comprehensible to most developers.

## Credits

- [Mithril MVC framework](http://mithril.js.org) was created and is diligently maintained by [Leo Horie](https://github.com/lhorie)
