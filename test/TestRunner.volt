module test.TestRunner;

import vtest;

import test.SpyFixture;

class TestRunner : TestFixture {
    this() {
        super("TestRunner");
    }

    override fn setup() {
        m_Runner = new Runner();
        m_SpyFixture = new SpyFixture();
        m_Runner.addFixture(m_SpyFixture);
        m_Runner.run();
    }

    fn callOneFixture() {
        register("call one fixture", callOneFixture);
        Assert.IsTrue(m_SpyFixture.wasCorrectlyCalled());
    }

    private Runner m_Runner;
    private SpyFixture m_SpyFixture;
}
