// module Material.Component.Ripple

var MDCRipple = require("@material/ripple").MDCRipple;

exports.createRipple = function(element) {
  return function() {
    return new MDCRipple(element);
  };
};
