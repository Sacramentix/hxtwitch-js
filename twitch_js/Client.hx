package twitch_js;
import twitch_js.Listener;

@:jsRequire("twitch-js", "Client") extern class Client extends EventEmitter {
	function new(?opts:ClientOptions);
	var channels : Array<String>;
	var clientId : Null<String>;
	var currentLatency : Float;
	var emotes : String;
	var emotesets : { };
	var globaluserstate : TagsCollection;
	var lastJoined : String;
	var latency : js.lib.Date;
	var log : Logger;
	var maxReconnectAttempts : Float;
	var maxReconnectInterval : Float;
	var moderators : { };
	var opts : ClientOptions;
	var pingLoop : Null<Float>;
	var pingTimeout : Null<Float>;
	var port : String;
	var reason : String;
	var reconnect : Bool;
	var reconnectDecay : Float;
	var reconnectInterval : Float;
	var reconnectTimer : Float;
	var secure : Bool;
	var server : String;
	var username : String;
	var userstate : TagsCollection;
	var wasCloseCalled : Bool;
	final utils : Utilities;
	/**
		Make a call to the Twitch.tv kraken api.
		See https://dev.twitch.tv/docs/v5/.
	**/
	//function api(?options:request.Options, ?cb:request.RequestCallback):js.lib.Promise<Dynamic>;
	/**
		Connect to server.
	**/
	function connect():js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Disconnect from server.
	**/
	function disconnect():js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Get the current channels.
	**/
	function getChannels():Array<String>;
	/**
		Get the current options.
	**/
	function getOptions():ClientOptions;
	/**
		Get the current username.
	**/
	function getUsername():String;
	/**
		Handle parsed chat server message. Do not call this manually unless you
		replace the onmessage handler on the WebSocket.
	**/
	function handleMessage(message:Message):Void;
	/**
		NOT RECOMMENDED. Might not be accurate dure to race conditions. Use the
		chat event and check the user's mod property to tell if they are a mod or
		not.
		
		Check if username is a moderator on a channel.
	**/
	function isMod(channel:String, username:String):Bool;
	/**
		Get the current state of the socket.
	**/
	function readyState():String;
	/**
		Send action message (/me <message>) on a channel.
	**/
	function action(channel:String, message:String):js.lib.Promise<ts.Tuple2<String, String>>;
	/**
		Ban username on channel.
	**/
	function ban(channel:String, username:String, reason:String):js.lib.Promise<ts.Tuple3<String, String, String>>;
	/**
		Clear all messages on a channel.
	**/
	function clear(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Change the color of your username.
		
		Change the color of your username. Attempts to set the color to the first
		parameter, and sets as the second on failure. Useful for setting turbo-only
		colors with normal color fallbacks.
	**/
	@:overload(function(newColorAttempt:String, newColorFallback:String):js.lib.Promise<ts.Tuple1<String>> { })
	function color(newColor:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Run commercial on a channel for X seconds.
	**/
	function commercial(channel:String, seconds:Float):js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Enable emote-only mode on a channel.
	**/
	function emoteonly(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Disable emote-only mode on a channel.
	**/
	function emoteonlyoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Enable followers-only mode on a channel. Alias of followersonly.
	**/
	function followersmode(channel:String, minutes:Float):js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Disable followers-only mode on a channel. Alias of followersonlyoff.
	**/
	function followersmodeoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Enable followers-only mode on a channel.
	**/
	function followersonly(channel:String, minutes:Float):js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Disable followers-only mode on a channel.
	**/
	function followersonlyoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Host a channel.
	**/
	function host(channel:String, target:String):js.lib.Promise<ts.Tuple3<String, String, Float>>;
	/**
		Join a channel.
	**/
	function join(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Leave a channel. Alias of part.
	**/
	function leave(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Mod username on channel.
	**/
	function mod(channel:String, username:String):js.lib.Promise<ts.Tuple2<String, String>>;
	/**
		Get list of mods on a channel.
	**/
	function mods(channel:String):js.lib.Promise<Array<String>>;
	/**
		Leave a channel.
	**/
	function part(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Send a ping to the server.
	**/
	function ping():js.lib.Promise<ts.Tuple1<Float>>;
	/**
		Enable R9KBeta mode on a channel.
	**/
	function r9kbeta(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Disable R9KBeta mode on a channel.
	**/
	function r9kbetaoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Enable R9KBeta mode on a channel. Alias of r9kbeta.
	**/
	function r9kmode(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Disable R9KBeta mode on a channel. Alias of r9kbetaoff.
	**/
	function r9kmodeoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Send a raw message to the server.
	**/
	function raw(message:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Send a message on a channel.
	**/
	function say(channel:String, message:String):js.lib.Promise<ts.Tuple2<String, String>>;
	/**
		Enable slow mode on a channel.
	**/
	function slow(channel:String, seconds:Float):js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Enable slow mode on a channel. Alias of slow.
	**/
	function slowmode(channel:String, seconds:Float):js.lib.Promise<ts.Tuple2<String, Float>>;
	/**
		Disable slow mode on a channel. Alias of slowoff.
	**/
	function slowmodeoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Disable slow mode on a channel.
	**/
	function slowoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Enable subscribers mode on a channel.
	**/
	function subscribers(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Disable subscribers mode on a channel.
	**/
	function subscribersoff(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Timeout username on channel for X seconds.
	**/
	function timeout(channel:String, username:String, seconds:Float, reason:String):js.lib.Promise<ts.Tuple4<String, String, Float, String>>;
	/**
		Unban username on channel.
	**/
	function unban(channel:String, username:String):js.lib.Promise<ts.Tuple2<String, String>>;
	/**
		End the current hosting.
	**/
	function unhost(channel:String):js.lib.Promise<ts.Tuple1<String>>;
	/**
		Unmod username on channel.
	**/
	function unmod(channel:String, username:String):js.lib.Promise<ts.Tuple2<String, String>>;
	/**
		Send a whisper message to a user.
	**/
	function whisper(username:String, message:String):js.lib.Promise<ts.Tuple2<String, String>>;
	/**
		By default EventEmitters will print a warning if more than 10 listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. Obviously, not all events should be limited to just 10
		listeners. The emitter.setMaxListeners() method allows the limit to be
		modified for this specific EventEmitter instance. The value can be set to
		Infinity (or 0) to indicate an unlimited number of listeners.
	**/
	function setMaxListeners(n:Float):Client;
	/**
		Adds the listener function to the end of the listeners array for the event
		named eventName. Alias for on.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):Client {})
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):Client;
	/**
		Adds the listener function to the end of the listeners array for the event
		named eventName.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):Client {})
	function on(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):Client;
	/**
		Adds a one-time listener function for the event named eventName. The next
		time eventName is triggered, this listener is removed and then invoked.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):Client {})
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):Client;
	/**
		Removes the specified listener from the listener array for the event named
		eventName.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):Client {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):Client {})
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):Client;
	/**
		Removes all listeners, or those of the specified eventName.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Client;
	static var prototype : Client;
}