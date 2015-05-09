m = require "mithril"

# Our app requires a lot of good old HTML,
# so we move it into it's own file: src/assets/lesson4.html
# and require it here. Browserify, with the help of the stringify transform,
# will include it in bundle.js. If your app is not text-heavy
# you should not need this extra step.
# There are other ways to include large amounts of markup that we'll
# cover later.

html = require "../assets/lesson4.html"

module.exports = {
  view: (ctrl, args) ->
    return m( ".content", m.trust(html) )
}

#### WARNING: Using m.trust() is risky. If the html above contains
#### malicious <script> tags, they will run with full permissions.



