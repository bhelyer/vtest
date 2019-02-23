module vtest.TestFixture;

/**
 * Wraps up the preconditions for multiples tests,
 * implemented as methods of the fixture.
 */
class TestFixture {
    this(fixtureName: string) {
        m_Name = fixtureName;
    }

    /// Called before each test case.
    fn setup() {
    }

    /// Called after each test case.
    fn teardown() {
    }

    fn name() string {
        return m_Name;
    }

    /// Add a test to this fixture.
    fn register(name: string, test: dg()) {
        t: Test;
        t.name = name;
        t.test = test;
        m_Tests ~= t;
    }

    fn registeredTests() Test[] {
        return m_Tests;
    }

    private m_Name: string;
    private m_Tests: Test[];
}

struct Test {
    name: string;
    test: dg();
}