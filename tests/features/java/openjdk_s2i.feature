@ubi8/openjdk-8
@ubi8/openjdk-11
@ubi8/openjdk-17
# OpenJDK/hotspot only
Feature: Openshift OpenJDK-only S2I tests
  Scenario: Check java perf dir owned by jboss (CLOUD-2070)
    Given s2i build https://github.com/jboss-openshift/openshift-quickstarts from undertow-servlet
    Then run jstat -gc 1 1000 1 in container and check its output for S0C
    And run stat --printf="%U %G" /tmp/hsperfdata_jboss/ in container and check its output for jboss root
