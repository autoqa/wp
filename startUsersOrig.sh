#!/bin/bash -x
echo [INFO] -------------------------------------------------------
echo [INFO]  P E R F O R M A N C E    T E S T S
echo [INFO] -------------------------------------------------------

jmeter -n -Jhost=welcome2anthem.nimblefish.com -Jthreads=20 -JrampUp=2 -Jloops=50 -JrandomeDelayMax=2000 \
			-t src/test/jmeter/wp/WellpointPURLTestPlan.jmx \
			-l Wellpoint.jtl 

echo [INFO] -------------------------------------------------------
echo [INFO]  VIEW RESULTS TREE DATA
echo [INFO] -------------------------------------------------------			
cat WellpointPURLTestPlan.jmx_ViewResultsTree*

echo [INFO] -------------------------------------------------------
echo [INFO]  RESPONSE TIME GRAPH DATA
echo [INFO] -------------------------------------------------------
cat *ResponseTimeGraph*

echo [INFO] -------------------------------------------------------
echo [INFO]  AGREEGATE REPORT DATA
echo [INFO] -------------------------------------------------------
cat *AggregateReport*

echo [INFO] -------------------------------------------------------
echo [INFO]  AGREEGATE REPORT DATA
echo [INFO] -------------------------------------------------------
cat *AggregateReport*

echo [INFO] -------------------------------------------------------
echo [INFO]  ASSERTION RESULTS DATA
echo [INFO] -------------------------------------------------------
cat *AssertionResults*