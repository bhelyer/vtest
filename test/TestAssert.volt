module test.TestAssert;

import vtest;

class TestAssert : TestFixture {
    this() {
        super("TestAssert");
        register("Assert.isTrue positive", testAssertIsTruePositive);
        register("Assert.isTrue negative", testAssertIsTrueNegative);
    }

    fn testAssertIsTruePositive() {
        Assert.isTrue(true);
    }

    fn testAssertIsTrueNegative() {
        try {
            Assert.isTrue(false);
        } catch (Assert.TestException) {
            return;
        }
        Assert.isTrue(false);
    }
}
