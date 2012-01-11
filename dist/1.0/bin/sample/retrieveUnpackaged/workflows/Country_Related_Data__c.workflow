<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CountryRelatedData_UniquenessUpdate</fullName>
        <description>CountryRelatedData_UniquenessUpdate</description>
        <field>UniqueIDs__c</field>
        <formula>Account__r.RecordTypeId +DataType__r.Name+Value__c+TEXT(Account__r.GTS_Location_del__c)+ Account__r.ID_Extension__c</formula>
        <name>CountryRelatedData_UniquenessUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UniqueID_Clear</fullName>
        <field>UniqueIDs__c</field>
        <name>UniqueID - Clear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CountryRelatedData_UniquenessClear</fullName>
        <actions>
            <name>UniqueID_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Clears Unique ID for non unique data. Country Related Data Type has to be different then &quot;Identification Number&quot;</description>
        <formula>DataType__r.RecordTypeId &lt;&gt; &quot;01220000000LWXl&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CountryRelatedData_UniquenessUpdate</fullName>
        <actions>
            <name>CountryRelatedData_UniquenessUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>used to update Field storing Uniqueness String
valid for objects with RecordType = &quot;Identification Number&quot;</description>
        <formula>DataType__r.RecordTypeId =&quot;01220000000LWXl&quot; &amp;&amp;  NOT(ISBLANK(Value__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update CRD Name</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Country_Related_Data__c.RecordTypeId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates Name based on Record Type</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
