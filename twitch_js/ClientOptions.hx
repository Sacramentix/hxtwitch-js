package twitch_js;

typedef ClientOptions = {
	@:optional
	var channels : Array<String>;
	@:optional
	var connection : {
		@:optional
		var server : String;
		@:optional
		var port : Float;
		@:optional
		var reconnect : Bool;
		@:optional
		var maxReconnectAttempts : Float;
		@:optional
		var maxReconnectInterval : Float;
		@:optional
		var reconnectDecay : Float;
		@:optional
		var reconnectInterval : Float;
		@:optional
		var secure : Bool;
		@:optional
		var timeout : Float;
	};
	@:optional
	var identity : {
		@:optional
		var username : String;
		@:optional
		var password : String;
	};
	@:optional
	var options : {
		@:optional
		var clientId : String;
		@:optional
		var debug : Bool;
		@:optional
		var commandTimeout : Float;
	};
	@:optional
	var logger : Logger;
};