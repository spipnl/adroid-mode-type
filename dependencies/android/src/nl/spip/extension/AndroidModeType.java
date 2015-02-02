package nl.spip.extension;

import android.app.UiModeManager;
import android.content.Context;

import org.haxe.extension.Extension;

/**
 * Class used to read the ModeType from the mainContext
 *
 * @author  spipnl (Jip Spinnewijn)
 * @version 1.0
 * @since   2015-01-28
 */
public class AndroidModeType extends Extension
{
    /**
     * Get the Mode Type
     *
     * @return The Mode Type of the mainContext
     */
	public static int getAndroidModeType()
    {
        UiModeManager uiModeManager = (UiModeManager) mainContext.getSystemService(Context.UI_MODE_SERVICE);
        int currentModeType = (int)uiModeManager.getCurrentModeType();

		return currentModeType;
	}
}
