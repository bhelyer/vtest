module vtest.Runner;

import core.exception;

import vtest.TestFixture;
import vtest.IResultReporter;

/**
 * Manages a set of TestFixtures to be run.
 */
class Runner {
    this(IResultReporter reporter) {
        m_Reporter = reporter;
    }

    /// Add a fixture to be run by this runner.
    fn addFixture(testFixture: TestFixture) {
        m_Fixtures ~= testFixture;
    }

    /// Run the tests managed by this runner.
    fn run() {
        foreach (fixture; m_Fixtures) {
            m_Reporter.startFixture(fixture.name());
            tests: Test[] = fixture.registeredTests();
            foreach (test; tests) {
                fixture.setup();
                bool pass = true;
                string reason = "";
                try {
                    test.test();
                } catch (Exception e) {
                    pass = false;
                    reason = e.msg;
                }
                m_Reporter.completeTest(test.name, pass, reason);
                fixture.teardown();
            }
        }
    }

    private m_Reporter: IResultReporter;
    private m_Fixtures: TestFixture[];
}
