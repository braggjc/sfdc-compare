<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Unique_Name_For_GP</fullName>
        <field>UniqueName__c</field>
        <formula>Trim(Name)</formula>
        <name>Set Unique Name For GP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unique_Name_for_GP</fullName>
        <field>UniqueName__c</field>
        <formula>TRIM(Name)</formula>
        <name>Update Unique Name for GP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Name for GP</fullName>
        <actions>
            <name>Set_Unique_Name_For_GP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Unique_Name_for_GP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Generic_Product__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
