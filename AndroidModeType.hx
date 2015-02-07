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
     * Call the native Android 'isAndroidTV' to check if running on Android TV
     * 
     * @return Boolean whether the app is running on Android TV
     */
    public static function isAndriodTV():Bool
    {
        // Default is false
        var result:Bool = false;
        
        // Only make the native call if running on Android
        #if (android && openfl)
        
        result = is_android_tv();
        
        #end
        
        return result;
    }
    
    #if (android && openfl)
    
    private static var is_android_tv = JNI.createStaticMethod("nl.spip.extension.AndroidModeType", "isAndroidTV", "()Z");
    
    #end
}
