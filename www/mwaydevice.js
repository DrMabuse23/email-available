/*global cordova, module*/

module.exports = {
    isEmailAvailable: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "isEmailAvailable", "isEmailAvailable", [name]);
    }
};
