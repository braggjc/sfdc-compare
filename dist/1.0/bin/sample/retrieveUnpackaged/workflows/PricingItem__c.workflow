<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Unique_Name_for_Pricing_Item</fullName>
        <field>UniqueName__c</field>
        <formula>Trim(Name)</formula>
        <name>Update Unique Name for Pricing Item</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set Name for Pricing Item</fullName>
        <actions>
            <name>Update_Unique_Name_for_Pricing_Item</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>PricingItem__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Name for Pricing Item</fullName>
        <actions>
            <name>Update_Unique_Name_for_Pricing_Item</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>PricingItem__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
