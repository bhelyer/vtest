module test.TestAssert;

import vtest;

class TestAssert : TestFixture {
    this() {
        super("TestAssert");
        addTest("Assert.isTrue positive", testAssertIsTruePositive);
        addTest("Assert.isTrue negative", testAssertIsTrueNegative);
        addTest("Assert.isFalse positive", testAssertIsFalsePositive);
        addTest("Assert.isFalse negative", testAssertIsFalseNegative);
        addTest("Assert.fail", testAssertFail);
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

    fn testAssertFail() {
        try {
            Assert.fail();
        } catch (Assert.TestException) {
            return;
        }
        Assert.isTrue(false);
    }

    fn testAssertIsFalsePositive() {
        Assert.isFalse(false);
    }

    fn testAssertIsFalseNegative() {
        try {
            Assert.isFalse(true);
        } catch (Assert.TestException) {
            return;
        }
        Assert.fail();
    }
}
