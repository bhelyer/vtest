/**
 * Provides functions for verifying that tests work.
 * Don't import this directly, just import vtest and call
 * the functions through 'Assert' e.g. 'Assert.IsTrue(blah)'
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

fn IsTrue(value: bool) {
    assertImpl(value, "Assert.IsTrue expected 'true', got 'false'.");
}
