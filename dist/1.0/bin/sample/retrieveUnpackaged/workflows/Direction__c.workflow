<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Unique_Direction_ID_Field_Update</fullName>
        <description>Copies Direction ID + Calendar ID to Unique Direction ID Field; 
Implemented as a part of Release October (PRISRAII-42)</description>
        <field>Unique_Direction_ID__c</field>
        <formula>Banding_Model_ID__c + &quot;.&quot; + Direction_ID__c + &quot;.&quot; + Calendar_ID__c</formula>
        <name>Unique Direction ID Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Direction Uniqueness Validation</fullName>
        <actions>
            <name>Unique_Direction_ID_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Direction__c.Direction_ID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Copies Direction ID and Calendar ID to new field, which is set as unique; 
Implemented as a part of Release October (PRISRAII-42)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
