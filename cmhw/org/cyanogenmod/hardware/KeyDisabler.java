/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.cyanogenmod.hardware;

import org.cyanogenmod.hardware.util.FileUtils;

import android.util.Log;
import java.io.File;

/*
 * Disable capacitive keys
 *
 * This is intended for use on devices in which the capacitive keys
 * can be fully disabled for replacement with a soft navbar. You
 * really should not be using this on a device with mechanical or
 * otherwise visible-when-inactive keys
 */

public class KeyDisabler {

    private static String TAG = "KeyDisabler";

    private static String CONTROL_PATH = "/sys/class/input/input8/enabled";

    public static boolean isSupported() {
         File f = new File(CONTROL_PATH);
	 return f.exists();
    }

    public static boolean isActive() {
	int i;
        i = Integer.parseInt(FileUtils.readOneLine(CONTROL_PATH));
        Log.v(TAG, "checking if active: " + i);
        return i > 0 ? false : true;
    }

    public static boolean setActive(boolean state) {
        boolean ant = false;
        Log.v(TAG, "setting to " + state);
        ant = FileUtils.writeLine(CONTROL_PATH, String.valueOf(state ? 0 : 1));
        Log.v(TAG, "state is " + ant);
	return ant;
    }

}
