class Case41 {
	static final object = new IntWrapper(100);

	public static function main() {
		IntWrapper.call(object, IntWrapper.tripleDynamic);
	}
}
