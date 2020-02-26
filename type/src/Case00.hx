// null and string

using Case00.NullEx;

@:nullSafety(Strict)
class NullEx {
	public static inline function sure<T>(obj:Null<T>):T {
		return cast obj;
	}
	public static inline function formatNullable<T>(obj:Null<T>):String {
		return Std.string(cast obj);
	}
}

class Actor {
	public function new() {}
}

class Case00 {
	static function println<T>(obj:T) {
		Sys.println(obj);
	}
	public static function main() {
		final obj:Null<Any> = null;

		println('${obj}');
	}
}
