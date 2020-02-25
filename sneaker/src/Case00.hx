import sneaker.assertion.Asserter.*;

@:nullSafety(Strict)
class Case00 {
	static function println<T>(obj:T) {
		Sys.println(obj);
	}
	public static function main() {
		final obj:Null<Any> = 777;

		println(unwrap(obj));
	}
}
