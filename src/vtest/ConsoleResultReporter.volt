module vtest.ConsoleResultReporter;

import watt.io;

import vtest.IResultReporter;

/**
 * A simple IResultReporter implementation that simply
 * prints to stdout.
 */
class ConsoleResultReporter : IResultReporter {
    override fn startFixture(fixtureName: string) {
        writeln(fixtureName);
    }

    override fn completeTest(testName: string, pass: bool, reason: string) {
        write(new "\t${testName}: ");
        if (!pass) {
            writeln(new "FAIL (${reason})");
        } else {
            writeln("PASS");
        }
    }
}
