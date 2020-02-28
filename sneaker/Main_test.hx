import sneaker.unit_test.Tester.*;
import sneaker.unit_test.TesterSettings;
import sneaker.assertion.Asserter.assert;
import sneaker.print.Printer.println;

class Main {
	static var caseA1 = testCase(
		() -> {
			describe("This goes without error.");
			final a = 1;
			final b = 2;
			assert(a < b);
		},
		Ok // "Ok" means this case passes if it completes without error
	);

	static var caseA2 = testCase(
		() -> {
			describe("This goes without error.");
			final a = 10000; // !?
			final b = 2;
			assert(a < b);
		},
		Ok // Although declared as "Ok", this case actually fails
	);

	static var caseB1 = testCase(
		() -> {
			describe("This should fail.");
			final a = 10000;
			final b = 2;
			assert(a < b);
		},
		Fail // "Fail" means this case passes if it raises an exception"
	);

	static var caseB2 = testCase(
		() -> {
			describe("This should fail and throw anything.");
			final a = -10000; // !?
			final b = 2;
			assert(a < b);
		},
		Fail // Although declared as "Fail", this case actually succeeds
	);

	static var caseC1 = testCase(
		() -> {
			describe("This prints \"AAA\".");
			println("AAA");
		},
		Visual // "Visual" means this case needs to be judged visually
	);

	// This groups multiples test cases
	static var caseGroupA = testCaseGroup([
		caseA1,
		caseA2
	]);
	static var caseGroupB = testCaseGroup([
		caseB1,
		caseB2
	]);

	// Nested groups, if needed
	static var allCases = testCaseGroup([
		caseGroupA,
		caseGroupB,
		caseC1
	]);

	static function main() {
		TesterSettings.hidePassedResults = true; // Just as the name says

		test(allCases); // This is where the test actually starts
	}
}
