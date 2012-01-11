<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Desynchronization_DateTime_Update</fullName>
        <description>Desynchronization DateTime Update</description>
        <field>Desynchronization_Time__c</field>
        <formula>Now()</formula>
        <name>Desynchronization DateTime Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Desynchronization DateTime</fullName>
        <actions>
            <name>Desynchronization_DateTime_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Desynchronization DateTime</description>
        <formula>AND(
 ISCHANGED( Desynchronized__c ) ,
Desynchronized__c = true
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
