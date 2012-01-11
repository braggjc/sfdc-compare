<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>GE_End_Of_Service_in_7_motnhs</fullName>
        <description>Grant Element End Of Service in 7 motnhs</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Grant_Element_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Grant_Element_End_Of_Service_in_7_months</fullName>
        <description>Grant Element End Of Service in 7 months</description>
        <protected>false</protected>
        <recipients>
            <field>Financial_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Grant_Element_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Grant_Element_End_Of_Service_in_7_months2</fullName>
        <description>Grant Element End Of Service in 7 months</description>
        <protected>false</protected>
        <recipients>
            <field>Financial_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Grant_Element_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Grant_Element_End_Of_Service_in_7_motnhs</fullName>
        <description>Grant Element End Of Service in 7 motnhs</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Grant_Element_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Grant_Element_End_Of_Service_in_7_motnhs2</fullName>
        <description>Grant Element End Of Service in 7 motnhs</description>
        <protected>false</protected>
        <recipients>
            <recipient>jacek.garbiec@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>maciej.skweres@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Grant_Element_End_Of_Service_Notification</template>
    </alerts>
    <alerts>
        <fullName>Grant_Element_End_Of_Service_in_seven_months</fullName>
        <description>Grant Element End Of Service in 7 months</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Grant_Element_End_Of_Service_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>GE_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Grant Element Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Ge_Set_Inactive_Status2</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Grant Element Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grant_Element_Set_Inactive_Status</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Grant Element Set Inactive Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grant_Element_Set_Inactive_Status2</fullName>
        <field>Active__c</field>
        <formula>0</formula>
        <name>Grant Element Set Inactive Status</name>
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
        <fullName>test3</fullName>
        <field>Business_Unit__c</field>
        <formula>&quot;Udalo sie&quot;</formula>
        <name>test3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CD Grant Element Set Inactive Status</fullName>
        <active>true</active>
        <formula>NOT( ISNULL(End_Of_Service__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Ge_Set_Inactive_Status2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Grant_Element__c.End_Of_Service__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Grant Element End Of Service in 7 motnhs</fullName>
        <active>true</active>
        <formula>NOT( ISNULL( Expiry_Date__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Grant_Element_End_Of_Service_in_7_months2</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Grant_Element__c.End_Of_Service__c</offsetFromField>
            <timeLength>-210</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
