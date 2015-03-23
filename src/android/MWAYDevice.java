package com.mway.plugin;

import android.content.Intent;
import android.net.Uri;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class MWAYDevice extends CordovaPlugin {
    private boolean isEmailAvailable() {
      final Intent intent = new Intent(Intent.ACTION_SENDTO, Uri.fromParts("mailto", "someone@domain.com", null));
      return cordova.getActivity().getPackageManager().queryIntentActivities(intent, 0).size() > 1;
    }
    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {
        if (action.equals("isEmailAvailable")) {
            boolean isEmailAvailable = isEmailAvalaible();
            callbackContext.success(isEmailAvailable);
            return true;
        } else {
            return false;
        }
    }
}
