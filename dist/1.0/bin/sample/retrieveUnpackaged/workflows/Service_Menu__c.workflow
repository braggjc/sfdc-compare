<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Service_Menu_UniqueID_update</fullName>
        <description>generates uniqueid</description>
        <field>UniqueID__c</field>
        <formula>Account__r.Id + Bundle__r.Id</formula>
        <name>Service Menu - UniqueID update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Service Menu - UniqueID - %28re%29generate</fullName>
        <actions>
            <name>Service_Menu_UniqueID_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>generates unique id bsed on Bundle id and Partner Account id to which it is assigned</description>
        <formula>NOT(ISBLANK(Bundle__c))&amp;&amp; NOT(ISBLANK( Account__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
