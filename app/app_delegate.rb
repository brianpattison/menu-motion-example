class AppDelegate

  def applicationDidFinishLaunching(notification)
    @menu = MenuMotion::Menu.new({
      sections: [{
        rows: [{
          title: "One"
        }, {
          title: "Two"
        }, {
          title: "Three"
        }]
      }, {
        rows: [{
          title: "Quit",
          action: "terminate:",
          shortcut: "cmd+q"
        }]
      }]
    })
    @menu.autoenablesItems = false

    @status_item = NSStatusBar.systemStatusBar.statusItemWithLength(NSSquareStatusItemLength).init
    @status_item.setHighlightMode(true)
    @status_item.setImage(NSImage.imageNamed("github.pdf"))

    @status_item.setMenu(@menu)
    true
  end

end
