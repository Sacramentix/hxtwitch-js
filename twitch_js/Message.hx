package twitch_js;

typedef Message = {
	var raw : String;
	var tags : TagsCollection;
	var prefix : Null<String>;
	var command : String;
	var params : Array<String>;
};