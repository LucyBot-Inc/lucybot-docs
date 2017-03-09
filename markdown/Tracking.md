## Event Tracking

Event tracking is a great way to understand user behavior and measure success.
LucyBot integrates directly with [Mixpanel](http://mixpanel.com), which has a sizeable
free tier. However, you can also use Google Analytics or other event
tracking systems.

### Mixpanel
To add Mixpanel tracking, you'll need to copy the JavaScript code
provided by mixpanel into the file `javascript/mixpanel.js` (be sure
to remove the `<script>` tags).

For example:
```js
(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);
mixpanel.init("YOUR_MIXPANEL_ID");
```

### Other trackers
You can add the file `javascript/tracking.js`, and define a function which
sends tracking events to the system of your choice.
The function should take in an event name, and an object with key-value properties.

For example, to use Google Analytics:

```js
/* Paste Google Analytics setup here */

window.lucybot.tracker = function(name, properties) {
  for (var key in properties) {
    ga('send', {
      hitType: 'event',
      eventCategory: name,
      eventAction: key,
      eventLabel: key,
      eventValue: properties[key],
    })
  }
}
```
