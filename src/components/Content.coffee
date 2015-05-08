m = require "mithril"

module.exports = {
  view: () ->
    return m(".content", [
      m("p", "If the view could only hold static data,
        there would be no need to learn Mithril.
        We can funnel data into the view
        from several sources. As we shall see, the view can print the data
        or alter it to enhance its presentation
        TODO: REMOVE DECIMAL PLACES! "),
      m("a.docs-icon", {
          href: "http://mithril.js.org/mithril.component.html#optional-controller",
          target: "_blank"
      })
      m("h3", "Data from the contoller"),
      m(".dothis", "see src/app.coffee"),
      m("p", m.trust("In addition to the <strong>view function</strong>,
        a component often contains a <strong>controller function</strong>.
        Like the view, it returns an object.
        ")),
      m("p", m.trust("Although there are intermediate steps that we'll cover
        later, program flow is generally
        like this:<br />
        <code>m.mount(el, App) -> App.controller() -> App.view() -> browser</code><br />
        Remember that if the controller is omitted, Mithril supplies one.
        Among the controller's many responsibilities, it may pass data
        to the view. This happens automatically.
        The view receives the returned object from the controller
        as a parameter. By convention,
        we call it <strong>ctrl</strong>.")),
      m("p", m.trust("In the code, the controller supplies data to the view
        in the object key/value pair: <code>displayLogo: true</code>,
        a boolean switch
        that turns the Logo component on and off. The view accesses
        it in the passed-in object: <code>ctrl.displayLogo</code>,
        then displays the Logo depending on it's value. ")),
      m(".dothis", "change the value of displayLogo from true to false.
        With the cursor still in the editor, save the file CTRL-S or CMD-S,
        and watch Logo disappear."),

      m("h3", "Data as argument to the component"),
      m(".dothis", "see src/app.coffee. Notice how m.components() is called
        with 2 arguments. 'Header' and an optional object with
        'title' and 'subtitle' as keys. "),
      m("p", m.trust("It's possible to pass arguments to a component before
        it's rendered to the screen. These arguments are passed to both
        the controller and the view. ")),
      m("code", "m.component(Header, {title: \"Lesson 3\"})"),
      m(".dothis", "see src/Header.coffee"),
      m("p", m.trust("It's possible to pass arguments to a component before
        it's rendered to the screen. These arguments are passed to both
        the controller and the view. ")),
      m("h3", "m.trust()"),
      m("p", "So far, we've only put strings in our views.
        Adding any kind of
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


