$(document).ready( function() {

  var url = window.location.pathname;
  var doc_load = Date.now();
  var logged = {};
  var w = 0;
  var debug = 0;

  ping_waypoint("window_open",0);

  if (url.match(/\/article\//g)) {
    var paragraphs = 0;
    $("#body p").each( function() { paragraphs++; });
    var q = Math.round(paragraphs/4);
    var p = 0;
    $("#body p").each( function() {
      p++;
      if (p == q) { apply_waypoint($(this),"fulltext_q1"); }
      if (p == q * 2) { apply_waypoint($(this),"fulltext_q2"); }
      if (p == q * 3) { apply_waypoint($(this),"fulltext_q3"); }
    });
    apply_waypoint($("#body"),"body");
    apply_waypoint($(".abstract"),"abstract");
    apply_waypoint($(".fn-group"),"footnotes");
    apply_waypoint($(".ref-list"),"references");
    apply_waypoint($("#info_wrap"),"bottom");
  }

  //------------------------------
  function apply_waypoint(e,location) {
    w++;
    e.waypoint({
      element: $(this),
      offset: "50%",
      handler: function() {
        var now = Date.now();
        var ms = now - doc_load;
        if (ms < 100) { return; } // too soon

        if (logged[location]) {
          var last_logged = now - logged[location];
          if (last_logged < 10000) {
            if (debug) { console.log("ignored: (last_logged " + last_logged + " ms ago)"); }
            return;
          }
        }
        logged[location] = now;

        ping_waypoint(location,ms);
      }
    });
  }

  //------------------------------
  function ping_waypoint(location,ms) {
    var url = window.location.href;
    $.post("/waypoint", { "url": url, "location": location, "ms": ms, "doc_load": doc_load }, function(data) {
      if (debug) { console.log("waypoint: " + location + " visited " + ms + " ms after page load"); }
    });
  }

});
