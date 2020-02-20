class Case21 {
	static final array = [100, 200];

	public static function main() {
		IntCaller.forEach(array, IntCallbacks.tripleDynamic);
	}
}
