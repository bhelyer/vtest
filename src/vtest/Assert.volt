module vtest.Assert;

import core.exception;

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
