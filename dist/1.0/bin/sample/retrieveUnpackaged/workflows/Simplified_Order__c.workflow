<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_about_installed_services</fullName>
        <description>Notification about installed services</description>
        <protected>false</protected>
        <recipients>
            <field>Service_Notification_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>hotline@gts.sk</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Simplified_Order_Notification_about_installed_services</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_NOFITICATION_SEND_flag</fullName>
        <field>Notification_Send__c</field>
        <literalValue>1</literalValue>
        <name>Update NOFITICATION SEND flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Notification about installed services</fullName>
        <actions>
            <name>Notification_about_installed_services</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_NOFITICATION_SEND_flag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF(AND(ISCHANGED(Service_Notification_Body__c), NOT( ISBLANK(Service_Notification_Body__c)), NOT( ISBLANK(Service_Notification_Subject__c)), NOT( ISBLANK( Service_Notification_Address__c)) ), true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
