#!/bin/bash -x
jmeter -n -Jhost=welcome2anthem.nimblefish.com -Jthreads=20 -JrampUp=1 -Jloops=1 -JrandomeDelayMax=1 \
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