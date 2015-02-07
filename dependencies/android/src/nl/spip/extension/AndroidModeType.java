package nl.spip.extension;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;

import org.haxe.extension.Extension;

/**
 * Class used to read the ModeType from the mainContext
 *
 * Available mode types:
 * @use https://developer.android.com/reference/android/content/res/Configuration.html
 *
 * @author  spipnl (Jip Spinnewijn)
 * @version 1.0
 * @since   2015-01-28
 */
public class AndroidModeType extends Extension
{
    /**
     * Get the Current Mode Type
     *
     * @return Mode Type Integer of the mainContext
     */
	public static int getAndroidModeType()
    {
        UiModeManager uiModeManager = (UiModeManager) mainContext.getSystemService(Context.UI_MODE_SERVICE);
        int currentModeType = (int)uiModeManager.getCurrentModeType();

		return currentModeType;
	}

    /**
     * Check if the current mode type is equal to TV mode type
     *
     * @return Boolean whether the app is running on Android TV
     */
    public static boolean isAndroidTV()
    {
        boolean result = false;

        int currentModeType = AndroidModeType.getAndroidModeType();
        if (currentModeType == Configuration.UI_MODE_TYPE_TELEVISION) {
            result = true;
        }

		return result;
	}
}
