*** settings ***
Library     SeleniumLibrary
Suite Setup     BeforeEachTestSuite
Suite Teardown      AfterEachTestSuite


*** Keywords ***
BeforeEachTestSuite
    log to console  Before
    log    Before started

AfterEachTestSuite
    log to console  After
    log     After End

