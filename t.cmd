@echo off
del vtests.exe
call volt95 -o vtests -I src vtest.lib test\main.volt test\SpyFixture.volt test\TestRunner.volt test\TestAssert.volt ^
 test\StubResultReporter.volt
vtests