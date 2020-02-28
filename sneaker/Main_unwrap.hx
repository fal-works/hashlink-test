import sneaker.assertion.Asserter.*;

@:nullSafety(Strict)
class Main {
	static function main() {
		// Actually not null
		final nullableA: Null<String> = "Succeeded!\n";

		trace("Unwrapping. Should succeed...");
		final notNullA: String = unwrap(nullableA); // Compiles even with @:nullSafety
		trace(notNullA);

		// Actually not null
		final nullableB: Null<String> = null;

		trace("Unwrapping. Should fail...");
		final notNullB: String = unwrap(nullableB); // Throws error
		trace(notNullB); // This will not be reached
	}
}
