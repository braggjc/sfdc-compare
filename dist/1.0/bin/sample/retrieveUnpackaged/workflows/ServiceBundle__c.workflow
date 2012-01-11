<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Contract_No</fullName>
        <field>Local_Contract_no__c</field>
        <formula>CContract__r.Local_contract_number__c</formula>
        <name>Contract No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_local_contract_no</fullName>
        <field>Local_Contract_Number__c</field>
        <formula>CContract__r.Local_contract_number__c</formula>
        <name>update local contract no.</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_local_reference</fullName>
        <description>Update local reference field, when it´s empty.</description>
        <field>LocalReference__c</field>
        <formula>Name</formula>
        <name>update local reference</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CopyContractNo</fullName>
        <actions>
            <name>Contract_No</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ServiceBundle__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>1/1/1900</value>
        </criteriaItems>
        <description>copy Contract Number from parent lookup filed into child text field (it allows users to fulltext search, it´s not possible to search by lookup field)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>update local contract number</fullName>
        <actions>
            <name>update_local_contract_no</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ServiceBundle__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>1/1/1900</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>update local reference</fullName>
        <actions>
            <name>update_local_reference</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ServiceBundle__c.LocalReference__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Update local reference if it´s not filled</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
