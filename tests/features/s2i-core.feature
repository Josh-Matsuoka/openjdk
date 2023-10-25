@ubi9/openjdk-11
@ubi9/openjdk-17
Feature: Openshift S2I tests
  # OPENJDK-84 - /tmp/src should not be present after build
  Scenario: run an s2i build and check that /tmp/src has been removed afterwards
    Given s2i build https://github.com/jhuttana/openjdk-test-applications from spring-boot-sample-simple using pick_relevant_sources
    Then run stat /tmp/src in container and immediately check its output does not contain File:
