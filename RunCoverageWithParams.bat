@echo off

cd unittest

rmdir ..\target\coverage /S /Q
mkdir ..\target\coverage

CodeCoverage.exe -e ..\bin\dbunit4delphitest.exe -m ..\bin\dbunit4delphitest.map -od ..\target\coverage -uf dbunit4delphitest.dpr -a /testcases TSampleDBTestCase /text 

cd ..

call target\coverage\CodeCoverage_summary.html