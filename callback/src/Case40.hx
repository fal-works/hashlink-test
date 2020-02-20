class Case40 {
	static final object = new IntWrapper(100);

	public static function main() {
		IntWrapper.call(object, IntWrapper.triple);
	}
}
