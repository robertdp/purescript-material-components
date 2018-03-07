// module Material.Component.Button

var MDCButton = require("@material/button").MDCButton;

exports.createButton = function(element) {
  return function() {
    return new MDCButton(element);
  };
};