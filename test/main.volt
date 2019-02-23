module test.main;

import vtest;

import test.TestRunner;

fn main() i32 {
    runner := new Runner();
    runner.addFixture(new TestRunner());
    runner.run();
    return 0;
}
