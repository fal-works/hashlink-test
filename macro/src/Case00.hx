class Util {
	@:generic
	public static function doSomething<T:Dat>(object:T) {
		final a = object;
	}

	public static macro function macroDoSomething<T:Dat>(object:ExprOf<T>):ExprOf<Void> {
		return macro Util.doSomething($object);
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

class Case00 {
	public static function main() {
		Util.macroDoSomething(new ClassA());
		Util.macroDoSomething(new ClassB());
	}
}
