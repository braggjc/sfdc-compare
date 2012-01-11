<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ropprobabilityupdate</fullName>
        <description>Regional opportunity update after stage is changed</description>
        <field>Probability__c</field>
        <formula>CASE(Stage__c, 
&quot;Suspect&quot;, 0.01, 
&quot;Prospect&quot;, 0.10, 
&quot;Proposal&quot;, 0.30,
&quot;Contract Signature&quot;, 0.80, 
&quot;Closed Won&quot;, 1, 
&quot;Closed Lost&quot;, 0, 
&quot;Cancelled&quot;, 0, 
PRIORVALUE(Probability__c))</formula>
        <name>ROP Probability update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Percentage change</fullName>
        <actions>
            <name>ropprobabilityupdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change percentage value at regional opportunity based on stage change</description>
        <formula>ISCHANGED( Stage__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Regional Opp Probability</fullName>
        <actions>
            <name>ropprobabilityupdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change percentage value at regional opportunity based on stage change</description>
        <formula>ISCHANGED( Stage__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
