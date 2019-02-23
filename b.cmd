@echo off
set VTESTFLAGS=-c -I src
call volt95 %VTESTFLAGS% src\vtest\Assert.volt -o Assert.o
call volt95 %VTESTFLAGS% src\vtest\package.volt -o package.o
call volt95 %VTESTFLAGS% src\vtest\Runner.volt -o Runner.o
call volt95 %VTESTFLAGS% src\vtest\TestFixture.volt -o TestFixture.o
lib /nologo /out:vtest.lib Assert.o Runner.o TestFixture.o
del *.o