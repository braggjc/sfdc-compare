<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Data_Type</fullName>
        <description>Sets Data Type to Text</description>
        <field>DataType__c</field>
        <literalValue>Text</literalValue>
        <name>Set Data Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Field_Type</fullName>
        <description>Sets Field Type to Picklist</description>
        <field>FieldType__c</field>
        <literalValue>Picklist</literalValue>
        <name>Set Field Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Name_for_Attribute</fullName>
        <field>UniqueName__c</field>
        <formula>Name</formula>
        <name>Set Name for Attribute</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contact Attribute</fullName>
        <actions>
            <name>Set_Data_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Field_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attribute__c.Contact__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sets necessary fields for Attribute definition flagged as Contact.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Unique Name</fullName>
        <actions>
            <name>Set_Name_for_Attribute</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attribute__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Name for Attribute</fullName>
        <actions>
            <name>Set_Name_for_Attribute</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attribute__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
