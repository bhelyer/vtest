/**
 * Provides functions for verifying that tests work.
 * Don't import this directly, just import vtest and call
 * the functions through 'Assert' e.g. 'Assert.isTrue(blah)'
 */
module vtest.Assert;

import core.exception;

/**
 * Thrown when any of the assert functions fail.
 */
class TestException : Exception {
    this(message: string) {
        super(message);
    }
}

private fn assertImpl(value: bool, message: string) {
    if (!value) {
        throw new TestException(message);
    }
}

fn isTrue(value: bool) {
    assertImpl(value, "Assert.isTrue expected 'true', got 'false'.");
}

fn isFalse(value: bool) {
    assertImpl(!value, "Assert.isFalse expected 'false', got 'true'.");
}

fn areEqual(a: i32, b: i32) {
    assertImpl(a == b, new "Assert.areEqual, '${a}' != '${b}'.");
}

fn fail() {
    assertImpl(false, "Assert.fail called.");
}
