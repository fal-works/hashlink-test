class IntCallbacks {
	public static function triple(n:Int)
		return 3 * n;

	public static inline function tripleInline(n:Int)
		return 3 * n;

	public static dynamic function tripleDynamic(n:Int)
		return 3 * n;

	public static final tripleVar = triple;
}
