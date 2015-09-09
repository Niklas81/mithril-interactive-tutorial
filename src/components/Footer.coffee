m = require "mithril"

# The model holds the defaults, three of which are overridden when
# Footer is initialized in app.coffee

model = {
  preview: "Preview of the next lesson",
  title: "Next Lesson: ",
  nextLesson: "The one after this",
  gitBranch: "master"
}

# The view references the model directly, so we don't need a controller.
# But Mithril quietly supplies an empty controller function for us.
# Thus the first parameter to the view is ctrl,
# even when we did not explicitly define a controller in our component.
# The second parameter comes from app.coffee, where the Footer component
# was initialized. The args object holds the properties
# that will be overridden.

#### It's a common error to forget that view takes ctrl as its first argument,
#### especially when the controller is not created explicitly.

module.exports = {

  view: (ctrl, args) ->

    preview = if args and args.preview
    then args.preview
    else model.preview
    
    title = if args and args.title
    then args.title
    else model.title
    
    nextLesson = if args and args.nextLesson
    then args.nextLesson
    else model.nextLesson
    
    gitBranch = if args and args.gitBranch
    then args.gitBranch
    else model.gitBranch

# Here we take advantage of the terseness of coffeescript
# Mithril templates can be lovely!

    return m ".footer", [

      m "div.preview", preview
      m "h2", title + nextLesson
      m "ul", [
        m "li", m.trust "In the terminal, stop the tutorial with
          <code>CTRL-C</code> or <code>CMD-C</code>"

        m "li", m.trust "Reset: <code>git stash</code>"
        
        m "li", m.trust "Next lesson: <code>git checkout " + gitBranch + "</code>"

        m "li", m.trust "Restart the tutorial: <code>npm run tutorial</code>"
      ]

    ]
}



