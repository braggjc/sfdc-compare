<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Deinstalled</fullName>
        <field>Deinstalled_Capex__c</field>
        <formula>Task__r.Deinstalled_Capex__c</formula>
        <name>Deinstalled Capex</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ExpirationStage</fullName>
        <description>Change to Stage: Completed as a result of request expiration</description>
        <field>Request_Status__c</field>
        <literalValue>Completed</literalValue>
        <name>Expiration - Stage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ExpirationStatus</fullName>
        <description>Change of Status to Expired as a result of request expiration</description>
        <field>Field_Status_ST__c</field>
        <literalValue>Expired</literalValue>
        <name>Expiration - Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Network_Capex</fullName>
        <field>Network_Capex__c</field>
        <formula>Task__r.Network_Capex__c</formula>
        <name>Network Capex</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Old_Monthly_Opex</fullName>
        <field>Old_Monthly_Opex__c</field>
        <formula>Task__r.Old_Monthly_Opex__c</formula>
        <name>Old Monthly Opex</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Request Expiration - 90 Days</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Request_Status__c</field>
            <operation>contains</operation>
            <value>Order,New,Firm Quotation,Budgetary Quotation</value>
        </criteriaItems>
        <description>Automatic Expiration of unattended Requests</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>ExpirationStage</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>ExpirationStatus</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Request__c.LastModifiedDate</offsetFromField>
            <timeLength>90</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update CBCT fields from Costing Task</fullName>
        <actions>
            <name>Deinstalled</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Network_Capex</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Old_Monthly_Opex</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(AND( ISNULL(Task__r.Deinstalled_Capex__c) , ISNULL(Task__r.Old_Monthly_Opex__c)  , ISNULL(Task__r.Network_Capex__c) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
