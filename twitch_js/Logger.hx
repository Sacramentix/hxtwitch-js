package twitch_js;

typedef Logger = {
	dynamic function info(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	dynamic function warn(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	dynamic function error(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
};