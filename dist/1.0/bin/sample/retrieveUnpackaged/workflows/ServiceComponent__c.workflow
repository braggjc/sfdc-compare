<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>local_reference</fullName>
        <description>update local reference if it´s null</description>
        <field>LocalReference__c</field>
        <formula>Name</formula>
        <name>local reference</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Provider</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ServiceComponent__c.Provider__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Provider based on account GTS Location</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ServiceComponent__c.Provider__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This rule update Provider field on Service compont based on Account GTS location. It works, only when the Provider field is empty.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>local reference</fullName>
        <actions>
            <name>local_reference</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ServiceComponent__c.LocalReference__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>update local reference if it´s null</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
