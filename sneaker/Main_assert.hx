import sneaker.assertion.Asserter.*;

class Main {
	static function main() {
		final thisIsLess = 100;
		final thisIsGreater = -1;

		trace("Asserting. Should fail...");
		assert(thisIsLess < thisIsGreater);
		trace("Succeeded!?"); // This will not be reached
	}
}
