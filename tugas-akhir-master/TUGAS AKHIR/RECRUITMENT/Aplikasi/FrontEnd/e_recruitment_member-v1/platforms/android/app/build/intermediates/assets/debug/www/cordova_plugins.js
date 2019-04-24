cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-globalization.GlobalizationError",
    "file": "plugins/cordova-plugin-globalization/www/GlobalizationError.js",
    "pluginId": "cordova-plugin-globalization",
    "clobbers": [
      "window.GlobalizationError"
    ]
  },
  {
    "id": "cordova-plugin-globalization.globalization",
    "file": "plugins/cordova-plugin-globalization/www/globalization.js",
    "pluginId": "cordova-plugin-globalization",
    "clobbers": [
      "navigator.globalization"
    ]
  },
  {
    "id": "skwas-cordova-plugin-datetimepicker.DateTimePicker",
    "file": "plugins/skwas-cordova-plugin-datetimepicker/www/datetimepicker.js",
    "pluginId": "skwas-cordova-plugin-datetimepicker",
    "clobbers": [
      "cordova.plugins.DateTimePicker"
    ]
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "cordova-plugin-globalization": "1.11.0",
  "cordova-plugin-whitelist": "1.3.3",
  "skwas-cordova-plugin-datetimepicker": "1.1.3"
};
// BOTTOM OF METADATA
});