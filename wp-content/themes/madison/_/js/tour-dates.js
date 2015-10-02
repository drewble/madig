/*jshint multistr: true */

(function($) {
var url = 'http://api.bandsintown.com/artists/Madison%20McWilliams/events.json?app_id=legendshill';
 
$.ajax({
   type: 'GET',
    url: url,
    async: false,
    jsonpCallback: 'jsonCallback',
    contentType: "application/json",
    dataType: 'jsonp',
    success: function(json) {
       console.log(json[0].datetime);
       console.log("success");
        var items = [];



        var i = 0;
       $.each(json, function(key, value) {
          i++;
           var time = value.datetime;
           var date = new Date(time);
           var monthNames = [ "Jan", "Feb", "Mar", "Apr", "May", "Jun",
          "July", "Aug", "Sep", "Oct", "Nov", "Dec" ];


           console.log(monthNames[date.getMonth()] + ' ' + date.getDate());
           
          items.push('<div class="event">\
            <div class="row ' + ((i%2)? "odd": "even") +'" itemprop="events" itemscope itemtype="http://schema.org/MusicEvent">\
            <meta itemprop="startDate" content="' + time + '">\
            <meta itemprop="name" content="' + value.artists[0].name + ' @ ' +  value.venue.name + '">\
            <div class="small-3 columns"><div class="date"><h4>' + monthNames[date.getMonth()] + '</h4> <h2>' + date.getDate() + '</h2></div></div>\
            <div class="small-7 columns location" itemprop="location" itemscope itemtype="http://schema.org/Place">\
            <div class="city" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">' +
            '<h3 class="address"><span itemprop="addressLocality">' + value.venue.city + '</span>,');
            
            if(value.venue.country == 'United States'){
              items.push('\
                <itemprop="addressRegion">' +
                value.venue.region +
                '</span></h3>');
            }else{
              items.push('\
              <span itemprop="addressCountry">' +
                value.venue.country +
              '</span></h3>');
            }

            items.push('</div>\
            <div class="venue-name" itemprop="name">' + value.venue.name + '</div>\
            </div>\
            <div class="small-2 columns">\
            <a target="_blank" class="ticket-link"  href="' + value.ticket_url + '"><span class="icon-chevron-right"></span></a>\
            </div>\
          </div>\
          </div>'
          );
      });
      $('#tour-dates').html(items.join(""));

    },
    error: function(e) {
       console.log(e.message);
    }
});
 
})(jQuery);