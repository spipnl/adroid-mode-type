# Android Mode Type OpenFL Extension

##About

A simple Android extension for OpenFL to read the Mode Type of the Context.
Useful to check whether the app is running on Android TV or not.

See [Check for a TV Device | Android Developers](http://developer.android.com/training/tv/start/hardware.html#runtime-check) for more information.

##Installation

To get the latest release, run:

```
haxelib git android-mode-type https://github.com/spipnl/adroid-mode-type.git
```

In your project xml include the following line:

```xml
<haxelib name="android-mode-type" />
```

##Usage

In your application use the following method to check if the app is running on Android TV:

```haxe
if (AndroidModeType.isAndriodTV()) {
	// Load TV interface
} else {
	// Load Mobile interface
}
```

##Example

For a working example of the extension check my [example app on GitHub](https://github.com/spipnl/android-tv-openfl-example).
