#!/bin/bash 
echo [INFO] -------------------------------------------------------
echo [INFO]  P E R F O R M A N C E    T E S T S
echo [INFO] -------------------------------------------------------

jmeter -n -Jhost=welcome2anthem.nimblefish.com -Jthreads=50 -JrampUp=2 -Jloops=50 -JrandomeDelayMax=2000 \
			-t src/test/jmeter/wp/WellpointPURLTestPlan.jmx \
			-l Wellpoint.jtl 

echo [INFO] -------------------------------------------------------
echo [INFO]  Done!
echo [INFO] -------------------------------------------------------