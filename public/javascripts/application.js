var UnobtrusiveLinker = Class.create({

  initialize: function() {
    this.options = Object.extend({
      container: 'container2',
      selector: 'div.pagination a'
    }, arguments[0] || {});
    this.initLinks();
  },

  initLinks: function() {
    $(this.options.container).select(this.options.selector).invoke('observe', 'click', this.linkHandler.bind(this));
  },

  linkHandler: function(event) {
    event.stop();
    new Ajax.Updater(this.options.container, event.element().getAttribute('href'),{
      method: 'get',
      onComplete: this.initLinks.bind(this)
    });
  }

});
