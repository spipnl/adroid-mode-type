package;

#if (android && openfl)
import openfl.utils.JNI;
#end

/**
 * Extension to retrieve the Android Mode Type and check if running on Android TV
 * 
 * @author spipnl (Jip Spinnewijn)
 */
class AndroidModeType
{
	/**
	 * Declare constant for mode type checking according to Android API
	 * 
	 * https://developer.android.com/reference/android/content/res/Configuration.html#UI_MODE_TYPE_TELEVISION
	 */
	public static inline var UI_MODE_TYPE_TELEVISION = 4;
	
	/**
	 * Retrieves the Mode Type from Java and checks if it is equal to Android TV
	 * 
	 * @return Boolean whether the app is running on Android TV
	 */
	public static function isAndriodTV():Bool
	{
		// Default is false
		var result:Bool = false;
		
		// Only make the native call if running on Android
		#if (android && openfl)
		
		var androidModeType:Int = get_android_mode_type();
		if (androidModeType == UI_MODE_TYPE_TELEVISION) {
			result = true;
		}
		
		#end
		
		return result;
	}
	
	#if (android && openfl)
	
	private static var get_android_mode_type = JNI.createStaticMethod("org.haxe.extension.AndroidModeType", "getAndroidModeType", "()I");
	
	#end
}
