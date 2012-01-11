<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>IntegrationAccConAddressToINTRA</fullName>
        <apiVersion>18.0</apiVersion>
        <endpointUrl>http://62.84.129.23:9080/UpsertAccountToINTRAService/UpsertAccountToINTRAPort</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>emir.ekinovic@gtsnovera.cz</integrationUser>
        <name>IntegrationAccConAddressToINTRA</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>IntegrationAccConAddressToINTRA</fullName>
        <actions>
            <name>IntegrationAccConAddressToINTRA</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account_Address__c.Street__c</field>
            <operation>notEqual</operation>
            <value>aa</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
