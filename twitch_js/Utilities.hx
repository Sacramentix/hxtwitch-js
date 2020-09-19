package twitch_js;

typedef Utilities = {
	/**
		Perform a Levenshtein distance calculation between two strings.
	**/
	dynamic function levenshtein(s1:String, s2:String, caseSensitive:Bool):Float;
	var raffle : Raffle;
	/**
		Count the number of symbols in a string of text.
	**/
	dynamic function symbols(line:String):Float;
	/**
		Count the number of uppercase letters in a string of text.
	**/
	dynamic function uppercase(line:String):Float;
};