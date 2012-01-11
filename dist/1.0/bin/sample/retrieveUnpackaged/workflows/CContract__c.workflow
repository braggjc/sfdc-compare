<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateDocumentNumber</fullName>
        <field>Document_Number__c</field>
        <formula>IF(ISPICKVAL(Type__c, &apos;Agreement&apos;), Name, IF(ISPICKVAL(Type__c, &apos;Annex&apos;), Parent_Contract__r.Name+&apos;/AN&apos;+TEXT(SequenceNumber__c), IF(ISPICKVAL(Parent_Contract__r.Type__c, &apos;Annex&apos;), Parent_Contract__r.Parent_Contract__r.Name+&apos;/AN&apos;+TEXT(Parent_Contract__r.SequenceNumber__c)+&apos;/SO&apos;+TEXT(SequenceNumber__c),Parent_Contract__r.Name+&apos;/SO&apos;+TEXT(SequenceNumber__c))))</formula>
        <name>UpdateDocumentNumber</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Generate Document Number</fullName>
        <actions>
            <name>UpdateDocumentNumber</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(Document_Number__c = null, ISCHANGED(Document_Number__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>update service bundle</fullName>
        <active>false</active>
        <formula>ischanged( LastModifiedDate)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
