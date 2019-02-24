module test.main;

import vtest;

import test.TestAssert;
import test.TestRunner;

fn main() i32 {
    runner := new Runner(new ConsoleResultReporter());
    runner.addFixture(new TestRunner());
    runner.addFixture(new TestAssert());
    runner.run();
    return 0;
}
