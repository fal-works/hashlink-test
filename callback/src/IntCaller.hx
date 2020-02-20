class IntCaller {
	public static function call(value:Int, callback:Int->Int)
		return callback(value);

	public static function repeatCall(initialValue:Int, callback:Int->Int, repetition:Int) {
		var result = initialValue;
		for (_ in 0...repetition)
			result = callback(result);

		return result;
	}

	public static function forEach(array:Array<Int>, callback:Int->Void)
		for (i in 0...array.length)
			callback(array[i]);

	public static inline function callInline(value:Int, callback:Int->Int)
		return callback(value);
}
