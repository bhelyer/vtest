module vtest.IResultReporter;

/// An interface for reporting the results of a test run from the runner.
interface IResultReporter {
    /// Called before running any tests of a fixture.
    fn startFixture(fixtureName: string);
    /**
     * Called after a test is completed.
     * If pass is true, reason is an empty string.
     */
    fn completeTest(testName: string, pass: bool, reason: string);
}
