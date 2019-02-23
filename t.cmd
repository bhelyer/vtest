@echo off
call volt95 -o vtests -I src vtest.lib test\main.volt test\SpyFixture.volt test\TestRunner.volt
vtests