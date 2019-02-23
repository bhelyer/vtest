module vtest.TestFixture;

/**
 * Wraps up the preconditions for multiples tests,
 * implemented as methods of the fixture.
 */
class TestFixture {
    this(fixtureName: string) {
    }

    /// Called before each test case.
    fn setup() {
    }

    /// Called after each test case.
    fn teardown() {
    }

    /// Add a test to this fixture.
    fn register(name: string, test: dg()) {
    }
}
