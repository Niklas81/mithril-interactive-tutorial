m = require "mithril"

module.exports = {
  view: () ->
    return m(".content", [
      m("p", "If the view could only hold static data,
        there we be no need to learn Mithril. We can funnel data into the view
        from several sources. As we shall see, the view can print the data
        or alter it to enhance it's presentation TODO: REMOVE DECIMAL PLACES! ")
      m("h3", "Data from the contoller"),
      m(".dothis", "see src/app.coffee"),
      m("p", m.trust("<br>In addition to the <strong>view function</strong>,
        a component often contains a <strong>controller function</strong>.
        Like the view, it returns an object.
        Among its many responsibilities, a controller may pass data
        to the view. This happens automatically.
        The view receives the returned object from the controller
        as a parameter. By convention,
        we call it <strong>ctrl</strong>.")),
      m("p", m.trust("The data that our controller is supplying to the view
        <code>displayLogo: true</code> acts as a boolean switch
        that turns the Logo component on and off. The view accesses
        it with the passed-in object: <code>ctrl.displayLogo</code>,
        then displays the Logo depending on it's value. ")),
      m(".dothis", "change the value of displayLogo from true to false,
        save the file, and watch Logo disappear."),
      m("h3", "Data as argument to the component"),
      m("p", m.trust("The <code>m()</code> function optionally
        takes a second argument:
        an object that contains attributes that can affect
        the resulting HTML. In the Header component
        we use the HTML <strong>title</strong> attribute.
        Hover over the word <strong>Lesson</strong> at the top of this page
        and a tool-tip should pop up. We'll learn about other types
        of attributes in later lessons. ")),
      m("h3", "m.trust()"),
      m("p", "So far, we've only put strings in our views. Adding any kind of
        HTML results in raw HTML to be printed, verbatim:
        <h1>Hello World</h1>.
        Mithril provides the m.trust() function,
        which allows for raw HTML to be coded into the view,
        yet it prints out
        as we expect. In the editor panel, notice the HTML code
        used in the first paragraph of the view.
        This would not be possible without m.trust().
        In the next lesson we'll learn to use variables
        in our views. m.trust() doesn't understand variables.")
      m("hr"),
      m("h3", "Refactoring Components"),
      m("p", "In the next lesson, we will refactor our Page component,
        putting the nested components, Header, Content, and Footer,
        each in their own files. Notice in the code editor, we've
        already done some of the work by factoring out each component
        into separate objects on the page. "),
    ])
}


