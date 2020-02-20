class Case50 {
	static final array = [new IntWrapper(100), new IntWrapper(200)];

	public static function main() {
		IntWrapper.forEach(array, IntWrapper.triple);
	}
}
