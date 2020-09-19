package twitch_js;
import twitch_js.Listener;


@:jsRequire("twitch-js", "EventEmitter") extern class EventEmitter {
	function new();
	/**
		By default EventEmitters will print a warning if more than 10 listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. Obviously, not all events should be limited to just 10
		listeners. The emitter.setMaxListeners() method allows the limit to be
		modified for this specific EventEmitter instance. The value can be set to
		Infinity (or 0) to indicate an unlimited number of listeners.
	**/
	function setMaxListeners(n:Float):EventEmitter;
	/**
		Synchronously calls each of the listeners registered for the event named
		eventName, in the order they were registered, passing the supplied
		arguments to each.
	**/
	function emit(eventName:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Adds the listener function to the end of the listeners array for the event
		named eventName. Alias for on.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):EventEmitter {})
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):EventEmitter;
	/**
		Adds the listener function to the end of the listeners array for the event
		named eventName.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):EventEmitter {})
	function on(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):EventEmitter;
	/**
		Adds a one-time listener function for the event named eventName. The next
		time eventName is triggered, this listener is removed and then invoked.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):EventEmitter {})
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):EventEmitter;
	/**
		Removes the specified listener from the listener array for the event named
		eventName.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener4):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener3):EventEmitter {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener2):EventEmitter {})
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener1):EventEmitter;
	/**
		Removes all listeners, or those of the specified eventName.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):EventEmitter;
	/**
		Returns a copy of the array of listeners for the event named eventName.
	**/
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<Listener4> {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<Listener3> {})
	@:overload(function(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<Listener2> {})
	function listeners(eventName:ts.AnyOf2<String, js.lib.Symbol>):Array<Listener1>;
	/**
		Returns the number of listeners listening to the event named eventName.
	**/
	function listenerCount(eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
	/**
		Emits multiple events named eventNames[i] with the data of values[i].
	**/
	function emits(eventNames:haxe.ds.ReadOnlyArray<ts.AnyOf2<String, js.lib.Symbol>>, values:haxe.ds.ReadOnlyArray<Dynamic>):Void;
	static var prototype : EventEmitter;
	static var defaultMaxListeners : Float;
	/**
		A class method that returns the number of listeners for the given eventName
		registered on the given emitter.
	**/
	@:native("listenerCount")
	static function listenerCount_(emitter:EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
}