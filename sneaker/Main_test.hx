import sneaker.unit_test.Tester.*;
import sneaker.unit_test.TesterSettings;
import sneaker.assertion.Asserter.assert;
import sneaker.print.Printer.println;

class GroupA {
	// Each test case should be wrapped with testCase(),
	// specifying a type of expected result (Ok/Fail/Visual)
	static final case1 = testCase(
		() -> {
			describe("This goes without error.");
			assert(1 < 2);
		},
		Ok // Ok means this case passes if it completes without error
	);

	static final case2 = testCase(
		() -> {
			describe("This should go without error...");
			final a = 9999;
			final b = 1;
			assert(a < b);
		},
		Ok // Although declared as Ok, this case fails (not expected)
	);

	// testCaseGroup() wraps multiple test cases
	public static final all = testCaseGroup([
		case1,
		case2
	]);
}

class GroupB {
	static final case1 = testCase(
		() -> {
			describe("This should fail.");
			assert(9999 < 1);
		},
		Fail // Fail means this case passes if it raises an exception
	);

	static final case2 = testCase(
		() -> {
			describe("This should fail and raise an exception.");
			final a = 1;
			final b = 9999;
			assert(a < b);
		},
		Fail // Although declared as Fail, this case succeeds (not expected)
	);

	public static final all = testCaseGroup([
		case1,
		case2
	]);
}

class GroupC {
	static final case1 = testCase(
		() -> {
			describe("This prints AAA.");
			println("AAA");
		},
		Visual // Visual means this case needs to be judged visually
	);

	public static final all = case1; // No difference whether grouped or not
}

class Main {
	// Nested groups, if needed
	static final allCases = testCaseGroup([
		GroupA.all,
		GroupB.all,
		GroupC.all
	]);

	static function main() {
		TesterSettings.hidePassedResults = true; // Just as the name says

		test(allCases); // This is where the test actually starts
	}
}
