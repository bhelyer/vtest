module test.StubResultReporter;

import vtest;

class StubResultReporter : IResultReporter {
    override fn startFixture(fixtureName: string) {}
    override fn completeTest(testName: string, pass: bool, reason: string) {}
}
