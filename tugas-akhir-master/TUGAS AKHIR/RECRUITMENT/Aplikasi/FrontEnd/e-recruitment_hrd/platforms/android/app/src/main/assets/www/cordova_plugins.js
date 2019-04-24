cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-clipboard2.Clipboard",
    "file": "plugins/cordova-plugin-clipboard2/www/clipboard.js",
    "pluginId": "cordova-plugin-clipboard2",
    "clobbers": [
      "cordova.plugins.clipboard"
    ]
  },
  {
    "id": "skwas-cordova-plugin-datetimepicker.DateTimePicker",
    "file": "plugins/skwas-cordova-plugin-datetimepicker/www/datetimepicker.js",
    "pluginId": "skwas-cordova-plugin-datetimepicker",
    "clobbers": [
      "cordova.plugins.DateTimePicker"
    ]
  },
  {
    "id": "phonegap-plugin-barcodescanner.BarcodeScanner",
    "file": "plugins/phonegap-plugin-barcodescanner/www/barcodescanner.js",
    "pluginId": "phonegap-plugin-barcodescanner",
    "clobbers": [
      "cordova.plugins.barcodeScanner"
    ]
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "cordova-plugin-clipboard2": "0.1.0",
  "cordova-plugin-whitelist": "1.3.3",
  "skwas-cordova-plugin-datetimepicker": "1.1.3",
  "phonegap-plugin-barcodescanner": "8.0.1"
};
// BOTTOM OF METADATA
});