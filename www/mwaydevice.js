module.exports = {
  isEmailAvailable: function (name, successCallback, errorCallback) {
    console.log(name);
    cordova.exec(successCallback, errorCallback, "MWAYDevice", "isEmailAvailable", []);
  }
};
