// module Material.Utils

var MDCRipple = require("@material/base").MDCRipple;

exports._defaultDestroyComponent = function(unit) {
  return function(component) {
    return function() {
      component.destroy();
      return unit;
    };
  };
};
