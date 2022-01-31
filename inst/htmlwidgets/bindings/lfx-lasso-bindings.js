/* global LeafletWidget, L */

LeafletWidget.methods.addLasso = function(intersect, sel_color = '#3388ff') {
  (function() {

      var map = this;

      var lassoControl = L.control.lasso().addTo(this);
      lassoControl.setOptions({ intersect: intersect })
    }
  ).call(this);
};
