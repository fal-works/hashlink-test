class Case20 {
	static final array = [100, 200];

	public static function main() {
		IntCaller.forEach(array, IntCallbacks.triple);
	}
}
