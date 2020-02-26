// generic

class Util {
	public static function doSomething<T:Dat>(obj:T) {
		final a = obj.dat;
	}
	@:generic
	public static function doSomethingGeneric<T:Dat>(obj:T) {
		final a = obj.dat;
	}
}

interface Dat {
	public final dat:Int;
}
class ClassA implements Dat {
	public final dat = 0;
	public function new() {}
}
class ClassB implements Dat {
	public final dat = 1;
	public function new() {}
}

class Case01 {
	static function println<T>(obj:T) {
		Sys.println(obj);
	}
	public static function main() {
		final a = new ClassA();
		final b = new ClassB();

		Util.doSomething(a);
		Util.doSomething(b);

		Util.doSomethingGeneric(a);
		Util.doSomethingGeneric(b);
	}
}
