<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Unique_Name_For_Bundle</fullName>
        <field>UniqueName__c</field>
        <formula>Trim(Name)</formula>
        <name>Set Unique Name For Bundle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unique_Name_for_Bundle</fullName>
        <field>UniqueName__c</field>
        <formula>TRIM(Name)</formula>
        <name>Update Unique Name for Bundle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Name for Bundle</fullName>
        <actions>
            <name>Set_Unique_Name_For_Bundle</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Unique_Name_for_Bundle</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CProduct__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>setRequiredLabel</fullName>
        <active>false</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>User.GTS_Location__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Rule checks current User&apos;s GTSLocation and sets proper Label as Required.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
