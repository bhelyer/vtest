module test.TestRunner;

import vtest;

import test.SpyFixture;
import test.StubResultReporter;

class TestRunner : TestFixture {
    this() {
        super("TestRunner");
        register("call one fixture", callOneFixture);
    }

    override fn setup() {
        m_Runner = new Runner(new StubResultReporter());
        m_SpyFixture = new SpyFixture();
        m_Runner.addFixture(m_SpyFixture);
        m_Runner.run();
    }

    fn callOneFixture() {
        Assert.IsTrue(m_SpyFixture.wasCorrectlyCalled());
    }

    private m_Runner: Runner;
    private m_SpyFixture: SpyFixture;
}
