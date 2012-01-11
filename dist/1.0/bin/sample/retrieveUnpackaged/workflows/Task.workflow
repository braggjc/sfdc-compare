<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Call</fullName>
        <description>Task - Call true</description>
        <field>Call__c</field>
        <literalValue>1</literalValue>
        <name>Call</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Task_Call_update_false</fullName>
        <field>Call__c</field>
        <literalValue>1</literalValue>
        <name>Task - Call update - false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Task - Call update - false</fullName>
        <actions>
            <name>Task_Call_update_false</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>mark of custom field Call because standard field Type can not be reported</description>
        <formula>NOT(ISPICKVAL(Type, &quot;Call&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task - Call update - true</fullName>
        <actions>
            <name>Call</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>mark of custom field Call because standard field Type can not be reported</description>
        <formula>ISPICKVAL(Type, &quot;Call&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>zz_TestRule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>User.CreatedById</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
