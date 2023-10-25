@ubi9/openjdk-11
@ubi9/openjdk-17
Feature: Openshift S2I tests
  Scenario: Check networkaddress.cache.negative.ttl has been set correctly
    Given s2i build https://github.com/jhuttana/openjdk-test-applications from binary-cli-security-property using pick_relevant_sources
    Then s2i build log should contain networkaddress.cache.negative.ttl=0
