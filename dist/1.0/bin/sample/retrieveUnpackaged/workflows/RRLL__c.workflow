<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>RRLL_Expire_Date_in_90_days</fullName>
        <description>RRLL Expiry date in 90 days</description>
        <protected>false</protected>
        <recipients>
            <field>Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/RRLL_Expire_Date_Notification</template>
    </alerts>
    <alerts>
        <fullName>RRLL_Expiry_date_in_90_days</fullName>
        <description>RRLL Expiry date in 90 days</description>
        <protected>false</protected>
        <recipients>
            <field>Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/RRLL_Expire_Date_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>CD_RRLL_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>CD RRLL Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LL_ID_UpdateCN</fullName>
        <field>a_mig__c</field>
        <formula>SUBSTITUTE(Name, &apos;R&apos;, &apos;&apos;)</formula>
        <name>LL ID UpdateCN</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NextnoLL_Update</fullName>
        <field>RL_ID__c</field>
        <formula>SUBSTITUTE(Name, &apos;R&apos;, &apos;&apos;)</formula>
        <name>NextnoLL Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NextnoRR_Update</fullName>
        <field>RL_ID__c</field>
        <formula>SUBSTITUTE(Name, &apos;L&apos;, &apos;&apos;)</formula>
        <name>NextnoRR Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NextnoR_Update</fullName>
        <field>RR_Id__c</field>
        <formula>SUBSTITUTE(Name, &apos;L&apos;, &apos;&apos;)</formula>
        <name>NextnoR Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RL_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>RL Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RRLL_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>RRLL Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RR_ID_UpdateCN</fullName>
        <field>RR_Id__c</field>
        <formula>SUBSTITUTE(Name, &apos;L&apos;, &apos;&apos;)</formula>
        <name>RR ID UpdateCN</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>activeUpdate2</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>activeUpdate2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CD RRLL Set Inactive Status</fullName>
        <active>true</active>
        <formula>NOT( ISNULL(End_of_Service__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CD_RRLL_Set_Inactive_Status</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>RRLL__c.End_of_Service__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>RRLL_Expire_date</fullName>
        <active>true</active>
        <formula>NOT( ISNULL(Expiry_date__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RRLL_Expiry_date_in_90_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>RRLL__c.Expiry_date__c</offsetFromField>
            <timeLength>-90</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
