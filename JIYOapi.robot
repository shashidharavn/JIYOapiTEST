*** Settings ***
Library           JMeterLib.py
Library           Collections

*** Test Cases ***


JIYO API Functional Test Automation
    ${result}    run jmeter analyse jtl convert    ${CURDIR}/Application/bin/jmeter.sh    ${CURDIR}/Tests/JIYOmeditationRoom.jmx    ${CURDIR}/Tests/JIYOapi.jtl
    log    ${result}
    :FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}
    analyse jtl convert to html     ${CURDIR}/Tests/JIYOapi.jtl

