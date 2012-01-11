<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>OC_End_of_Service_in_90_days</fullName>
        <description>Other Cost End of Service in 90 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Other_Cost_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Other_Cost_End_of_Service_90_days</fullName>
        <description>Other Cost End of Service in 90 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Other_Cost_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Other_Cost_End_of_Service_in_90_days</fullName>
        <description>Other Cost End of Service in 90 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Other_Cost_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Other_Cost_End_of_Service_in_90_days2</fullName>
        <description>Other Cost End of Service in 90 days</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Other_Cost_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Other_Cost_End_of_Service_in_90_days3</fullName>
        <description>Other Cost End of Service in 90 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Other_Cost_End_Of_Service_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>OC_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>OC Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Other_Cost_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Other Cost Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Other_Cost_Set_Inactive_Status2</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Other Cost Set Inactive Status</name>
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
        <fullName>activeUpdate</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>activeUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CD Other Cost Set Inactive Status</fullName>
        <active>true</active>
        <formula>NOT( ISNULL(End_of_Service__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Other_Cost_Set_Inactive_Status2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Other_cost__c.End_of_Service__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Other_Cost_End_of_Service</fullName>
        <active>true</active>
        <formula>NOT( ISNULL( Expiry_date__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>OC_End_of_Service_in_90_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Other_cost__c.Expiry_date__c</offsetFromField>
            <timeLength>-90</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
