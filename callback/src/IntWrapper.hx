class IntWrapper {
	public static function triple(object:IntWrapper)
		object.value *= 3;

	public static dynamic function tripleDynamic(object:IntWrapper)
		object.value *= 3;

	public static final tripleVar = (object:IntWrapper) -> triple;

	public static function call(value:IntWrapper, callback:IntWrapper->Void)
		callback(value);

	public static function forEach(array:Array<IntWrapper>, callback:IntWrapper->Void)
		for (i in 0...array.length)
			callback(array[i]);

	public var value:Int;

	public function new(value:Int)
		this.value = value;
}
