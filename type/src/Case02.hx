// T vs Dynamic vs Any

class Util {
	public static function doSomethingT<T>(obj:T) {
		final a = Std.string(obj);
	}
	public static function doSomethingDynamic(obj:Dynamic) {
		final a = Std.string(obj);
	}
	public static function doSomethingAny(obj:Any) {
		final a = Std.string(obj);
	}
}

class Case02 {
	static function println<T>(obj:T) {
		Sys.println(obj);
	}

	static function testInt(n:Int) {
		Util.doSomethingT(n);
		Util.doSomethingDynamic(n);
		Util.doSomethingAny(n);
	}

	static function testString(s:String) {
		Util.doSomethingT(s);
		Util.doSomethingDynamic(s);
		Util.doSomethingAny(s);
	}

	public static function main() {
		testInt(1);
		testString("a");
	}
}
