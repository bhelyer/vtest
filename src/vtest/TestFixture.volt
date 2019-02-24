module vtest.TestFixture;

/**
 * Wraps up the preconditions for multiples tests,
 * implemented as methods of the fixture.
 *
 * How to use:
 * - Inherit from this class.
 * - Call super("MyFixtureName") in the constructor of your class.
 * - Call register("testName", testMethod) for each test. (Again, in the constructor)
 * - Use the Assert module provided by vtest to uh assert.
 * - Give an instance of your fixture to a Runner, and call run.
 */
class TestFixture {
    /// Construct a TestFixture with a given name.
    this(fixtureName: string) {
        m_Name = fixtureName;
    }

    /// Called before each test case.
    fn setup() {
    }

    /// Called after each test case.
    fn teardown() {
    }

    /// Get the name of this fixture.
    fn name() string {
        return m_Name;
    }

    /// Add a test to this fixture.
    fn addTest(name: string, test: dg()) {
        t: Test;
        t.name = name;
        t.test = test;
        m_Tests ~= t;
    }

    /// Return every test registered to this fixture.
    fn tests() Test[] {
        return m_Tests;
    }

    private m_Name: string;
    private m_Tests: Test[];
}

// Represents a single test. Used by the Runner.
struct Test {
    name: string;
    test: dg();
}
