# Mithril Interactive Tutorial

## (in development)

The goal of this project is to teach beginners and seasoned developers how to incorporate the [Mithril MVC framework](http://mithril.js.org) into any workflow. After an intoduction and setup instructions, the first lesson begins with the most basic app. A lesson consists of a guide (which is a live Mithril web app) and comments in the source code of the live app.
There are three versions of the tutorial, each utilizing different technologies:

1.  JHC - Plain javascript, HTML, and CSS
2.  CHC - CoffeeScript, HTML and CSS
3.  CJS - CoffeeScript, Jade, and Stylus

## Requirements

The tutorial allows you to live-edit the source code with the help of Browserfy, Watchify, and Live Reload. You will need `npm` to install these libraries. To maximize interaction, the tutorial relies on the `Google Chrome` web browser and the `DevTools` within. Firefox and Safari developer tools are not yet capable of live editing. 

## Setup

- Clone the repo: `$ git clone https://github.com/pelonpelon/mithril-interactive-tutorial.git`
- Switch to the `mithril-interactive-tutorial` folder.
- Install dependencies: `$ npm install`
- Start the tutorial: `$ npm run tutorial`
 
The Introduction to the tutorial explains how to set up the browser window and DevTools in a vertically split window. This is the setup that works best for me, but arrange your dev environment however it's most comfortable. 

## Work flow

For each lesson:

- Read the guide in the browser window
- Read the comments in the DevTools editor pane (comments change with each lesson)
- Experiment in DevTools' live editor, debugger, console, etc
- Change to the next lesson

## Current State of the Tutorial

This tutorial is a work in progress. I plan to add lessons as time provides. I heartily welcome suggestions and criticism. If you find mistakes, and you will, please submit a pull request. 

## Credits

- [Mithril MVC framework](http://mithril.js.org) was created and is diligently maintained by [Leo Horie](https://github.com/lhorie)
