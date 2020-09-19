package twitch_js;

@:jsRequire("twitch-js", "client") extern class Client_ extends Client {
	/**
		Alias for Client. Prefer to use Client instead.
	**/
	function new(?opts:ClientOptions);
	/**
		By default EventEmitters will print a warning if more than 10 listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. Obviously, not all events should be limited to just 10
		listeners. The emitter.setMaxListeners() method allows the limit to be
		modified for this specific EventEmitter instance. The value can be set to
		Infinity (or 0) to indicate an unlimited number of listeners.
	**/
	function setMaxListeners(n:Float):Client_;
	/**
		Adds the listener function to the end of the listeners array for the event
		named eventName. Alias for on.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener):Client_;
	/**
		Adds the listener function to the end of the listeners array for the event
		named eventName.
	**/
	function on(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener):Client_;
	/**
		Adds a one-time listener function for the event named eventName. The next
		time eventName is triggered, this listener is removed and then invoked.
	**/
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener):Client_;
	/**
		Removes the specified listener from the listener array for the event named
		eventName.
	**/
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:Listener):Client_;
	/**
		Removes all listeners, or those of the specified eventName.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Client_;
	static var prototype : Client_;
}