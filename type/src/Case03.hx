// Class vs Anonymous structure

using Case03.StringBufferExtension;

typedef StringBuffer = {
	var length(get, never): Int;
	function add<T>(x: T): Void;
	function addChar(c: Int): Void;
	function addSub(
		s: String,
		pos: Int,
		?len: Int
	): Void;
	function toString(): String;
}

class StringBufferExtension {
	public static function addBuf<T>(buf: StringBuf, s: T): Void {
		@:nullSafety(Off) buf.add(s);
	}

	public static function addTypeDef<T>(buf: StringBuffer, s: T): Void {
		@:nullSafety(Off) buf.add(s);
	}
}

class Case03 {
	static function println<T>(obj:T) {
		Sys.println(obj);
	}

	static function normal(buf:StringBuf) {
		buf.addBuf("a");
	}

	static function useTypedef(buf:StringBuffer) {
		buf.addTypeDef("a");
	}

	public static function main() {
		final bufA = new StringBuf();
		final bufB = new StringBuf();
		normal(bufA);
		useTypedef(bufB);
	}
}
