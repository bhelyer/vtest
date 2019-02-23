module vtest.IResultReporter;

interface IResultReporter {
    fn startFixture(fixtureName: string);
    fn completeTest(testName: string, pass: bool, reason: string);
}
