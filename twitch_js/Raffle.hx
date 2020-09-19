package twitch_js;

typedef Raffle = {
	/**
		Initialize a raffle for a channel. No need to call this manually, because
		it is automatically called for you at the beginning of each other method.
	**/
	dynamic function init(channel:String):Void;
	/**
		Enter a user into the raffle on a channel.
	**/
	dynamic function enter(channel:String, username:String):Void;
	/**
		Remove a user from the raffle on a channel.
	**/
	dynamic function leave(channel:String, username:String):Bool;
	/**
		Choose a winner for the raffle on a channel.
	**/
	dynamic function pick(channel:String):Null<String>;
	/**
		Clear/reset the pool of entries for the raffle on a channel.
	**/
	dynamic function reset(channel:String):Void;
	/**
		Count the number of entries for the raffle on a channel.
	**/
	dynamic function count(channel:String):Float;
	/**
		Check if a user is entered for the raffle on a channel.
	**/
	dynamic function isParticipating(channel:String, username:String):Bool;
};