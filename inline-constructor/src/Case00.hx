class StringBuffer {
	final buf = new StringBuf();

	public var length(get, never):Int;

	public inline function new() {}

	inline function get_length() return buf.length;

	public function add<T>(x:T):Void {
		buf.add(x);
	}

	public function addChar(c:Int):Void {
		buf.addChar(c);
	}

	public function addSub(s:String, pos:Int, ?len:Int):Void {
		buf.addSub(s, pos, len);
	}

	public function toString():String {
		return buf.toString();
	}
}

class Case00 {
	static function standard() {
		final buf = new StringBuf();
		buf.add("a");
		final len = buf.length;
		buf.toString();
	}
	static function extended() {
		final buf = new StringBuffer();
		buf.add("a");
		final len = buf.length;
		buf.toString();
	}
	public static function main() {
		standard();
		extended();
	}
}
