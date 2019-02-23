module test.SpyFixture;

import vtest;

class SpyFixture : TestFixture {
    this() {
        super("SpyFixture");
        register("TheTest1", theTest1);
        register("TheTest2", theTest2);

        m_Count = -1;
        m_SetupCalled = -1;
        m_TestsCalled[0] = -1;
        m_TestsCalled[1] = -1;
        m_TeardownCalled = -1;
    }

    override fn setup() {
        ++m_Count;
        m_SetupCalled = m_Count;
    }

    override fn teardown() {
        ++m_Count;
        m_TeardownCalled = m_Count;
    }

    fn theTest1() {
        ++m_Count;
        m_TestsCalled[0] = m_Count;
    }

    fn theTest2() {
        ++m_Count;
        m_TestsCalled[1] = m_Count;
    }

    fn wasCorrectlyCalled() bool {
        if (m_SetupCalled < 0 ||
            m_TestsCalled[0] < 0 ||
            m_TestsCalled[1] < 0 ||
            m_TeardownCalled < 0) {
            return false;
        }
        return m_SetupCalled < m_TeardownCalled;
    }

    private m_Count: i32;
    private m_SetupCalled: i32;
    private m_TestsCalled: i32[2];
    private m_TeardownCalled: i32;
}
