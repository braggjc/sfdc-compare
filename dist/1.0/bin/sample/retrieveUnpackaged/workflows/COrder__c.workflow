<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>DepositCheckNotification</fullName>
        <description>DepositCheckNotification</description>
        <protected>false</protected>
        <recipients>
            <recipient>Deposit Check</recipient>
            <type>group</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Notifications/DepositCheckEmail</template>
    </alerts>
    <alerts>
        <fullName>Notification_about_new_Order_creation_and_Queue_assignment</fullName>
        <description>Notification about new Order creation and Queue assignment</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Created_Notification_Queue</template>
    </alerts>
    <alerts>
        <fullName>Order_Awaiting_Provisioning_CZ_Notify_Memebers</fullName>
        <description>Order Awaiting Provisioning CZ - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Local Costing and Prov. Mngr CZ</recipient>
            <type>roleSubordinates</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Awaiting_Provisioning_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Awaiting_Provisioning_HU_Notify_Memebers</fullName>
        <description>Order Awaiting Provisioning HU - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Costing &amp; Provisioning Manager HU</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Awaiting_Provisioning_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Awaiting_Provisioning_PL_Notify_Memebers</fullName>
        <description>Order Awaiting Provisioning PL - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Costing &amp; Provisioning Manager PL</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Domestic Sales Support PL</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Project Manager PL</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Local Costing and Prov. Mngr PL</recipient>
            <type>roleSubordinates</type>
        </recipients>
        <recipients>
            <recipient>lukasz.grzech@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Awaiting_Provisioning_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Awaiting_Provisioning_SK_Notify_Memebers</fullName>
        <description>Order Awaiting Provisioning SK - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Local Costing and Prov. Mngr SK</recipient>
            <type>roleSubordinates</type>
        </recipients>
        <recipients>
            <recipient>kristina.ulmanova@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>marek.hrdina@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>viktoria.nagyova@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Awaiting_Provisioning_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_Extranet_Comment_Notify_DAM_Opp_Owner</fullName>
        <description>Order Comment - Extranet Comment - Notify AM/DAM (Opp. Owner)</description>
        <protected>false</protected>
        <recipients>
            <field>Opportunity_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Order_Comment_Notification_Extranet_PL_for_SFDC_User</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_Extranet_Comment_Notify_Provisioning_PL_Assigned_PM</fullName>
        <description>Order Comment - Extranet Comment - Notify Provisioning (PL - Assigned PM)</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Order_Comment_Notification_Extranet_PL_for_SFDC_User</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_Extranet_Comment_Notify_Provisioning_PL_prov_retail_gts_pl</fullName>
        <ccEmails>prov.retail@gts.pl</ccEmails>
        <description>Order Comment - Extranet Comment - Notify Provisioning (PL - prov.retail@gts.pl)</description>
        <protected>false</protected>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Order_Comment_Notification_Extranet_PL_for_SFDC_User</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_Notify_Order_Entry</fullName>
        <description>Order Comment - Extranet Comment - Notify OE (PL)</description>
        <protected>false</protected>
        <recipients>
            <recipient>Order Entry Controller PL</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Order_Comment_Notification_Extranet_PL_for_SFDC_User</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_SFDC_User_Comment_Notify_DAM_Opp_Owner</fullName>
        <description>Order Comment - SFDC User Comment - Notify AM/DAM (Opp. Owner)</description>
        <protected>false</protected>
        <recipients>
            <field>Opportunity_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_SFDC_User_Comment_Notify_OE_PL</fullName>
        <description>Order Comment - SFDC User Comment - Notify OE (PL)</description>
        <protected>false</protected>
        <recipients>
            <recipient>Order Entry Controller PL</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_SFDC_User_Comment_Notify_Provisioning_PL_Assigned_PM</fullName>
        <description>Order Comment - SFDC User Comment - Notify Provisioning (PL - Assigned PM)</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_SFDC_User_Comment_Notify_Provisioning_PL_prov_retail_gts_pl</fullName>
        <ccEmails>prov.retail@gts.pl</ccEmails>
        <description>Order Comment - SFDC User Comment - Notify Provisioning (PL - prov.retail@gts.pl)</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Comment_SFDC_User_Comment_PUB_Notify_Dealer_PL</fullName>
        <description>Order Comment - SFDC User Comment PUB - Notify Dealer (PL)</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Order_Comment_Notification_SFDC_User_for_Dealer_PL</template>
    </alerts>
    <alerts>
        <fullName>Order_Entry_CZ_Notify_Memebers</fullName>
        <description>Order Entry CZ - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Domestic Sales Support CZ</recipient>
            <type>roleSubordinates</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Entry_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Entry_HU_Notify_Memebers</fullName>
        <description>Order Entry HU - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Costing &amp; Provisioning Manager HU</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Domestic Sales Support HU</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Entry_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Entry_PL_Notify_Memebers</fullName>
        <description>Order Entry PL - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Order Entry Controller PL</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Entry_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Entry_SK_Notify_Memebers</fullName>
        <description>Order Entry SK - Notify Memebers</description>
        <protected>false</protected>
        <recipients>
            <recipient>Domestic Sales Support Director SK</recipient>
            <type>roleSubordinates</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Entry_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Not_Opp_Owner</fullName>
        <description>Order - Not Opp Owner</description>
        <protected>false</protected>
        <recipients>
            <field>Opportunity_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications_for_Partners_PL/Order_Not_Opp_Owner</template>
    </alerts>
    <alerts>
        <fullName>Order_PM_Assigned_Email_Notification</fullName>
        <description>Order - PM Assigned - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>GTS_Slovakia_Templates/Order_Assigned_PM_Notificationnew</template>
    </alerts>
    <alerts>
        <fullName>Order_PM_Reassigned_Email_Notification</fullName>
        <description>Order - PM Reassigned - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Reassigned_PM_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Rejected_Notify_Creator</fullName>
        <description>Order Rejected - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Rejected_Notification</template>
    </alerts>
    <alerts>
        <fullName>Order_Rejected_Notify_Owner</fullName>
        <description>Order Rejected - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Rejected_Notification</template>
    </alerts>
    <alerts>
        <fullName>TerminationCase_OrderCreation_Notification</fullName>
        <description>TerminationCase_OrderCreation-Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Account_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Churn_Notification</template>
    </alerts>
    <alerts>
        <fullName>creatorcommentnotifyowner</fullName>
        <description>Order Comment - Creator Comment - Notify Order Owner and PM</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>ordercancellednotifycreator</fullName>
        <description>Order Cancelled - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Notifications/Order_Cancelled_Notification</template>
    </alerts>
    <alerts>
        <fullName>ordercompletednotifycreator</fullName>
        <description>Order Completed - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Completed_Notification</template>
    </alerts>
    <alerts>
        <fullName>ordercreatednotifyowner</fullName>
        <description>Order Created - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Created_Notification</template>
    </alerts>
    <alerts>
        <fullName>orderdeliveryexceedednotifycreator</fullName>
        <description>Order Delivery Exceeded - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Commitment_Date_Warning</template>
    </alerts>
    <alerts>
        <fullName>orderescalationnotification</fullName>
        <description>Order Escalation Notification</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Unassigned</template>
    </alerts>
    <alerts>
        <fullName>orderexpirationnotifyowner</fullName>
        <description>Order Expiration - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Reminder</template>
    </alerts>
    <alerts>
        <fullName>orderincancellationnotifycreator</fullName>
        <description>Order In Cancellation - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_In_Cancellation_Notification</template>
    </alerts>
    <alerts>
        <fullName>orderonholdnotifycreator</fullName>
        <description>Order On Hold - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_On_Hold_Notification</template>
    </alerts>
    <alerts>
        <fullName>orderonholdnotifyowner</fullName>
        <description>Order On Hold - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_On_Hold_Notification</template>
    </alerts>
    <alerts>
        <fullName>othercommentnotifyownerandcreator</fullName>
        <description>Order Comment - Other Comment - Notify Owner, Creator and PM</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>otherreassignedordernotifycreatorlastownerandnewowner</fullName>
        <description>Other Reassigned Order - Notify Creator, Last Owner and New Owner</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>LastOwner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Reassigned_Notification</template>
    </alerts>
    <alerts>
        <fullName>ownercommentnotifycreator</fullName>
        <description>Order Comment - Owner Comment - Notify Creator and PM</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <field>Assigned_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>ownerreassignedordernotifycreatorandnewowner</fullName>
        <description>Owner Reassigned Order - Notify Creator and New Owner</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Order_Reassigned_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>DelRejectedEnd</fullName>
        <description>Removes value of Rejected End Date</description>
        <field>Rejected_End__c</field>
        <name>DelRejectedEnd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Domestic_Order_Planned_Provision_Start</fullName>
        <field>PlannedProvisioningStart__c</field>
        <formula>TODAY()</formula>
        <name>Domestic Order Planned Provision. Start</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Escalate_unnasigned</fullName>
        <field>Sent_Escalation__c</field>
        <literalValue>Level 1</literalValue>
        <name>Escalate unnasigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Notify_Unassigned</fullName>
        <field>Sent_Escalation__c</field>
        <literalValue>Level 2</literalValue>
        <name>Notify Unassigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Order_Completed_Date</fullName>
        <description>Set Order Completed Date</description>
        <field>Order_Completed_Date__c</field>
        <formula>NOW()</formula>
        <name>Order Completed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetRejectedEnd</fullName>
        <description>Sets Rejected End Date</description>
        <field>Rejected_End__c</field>
        <formula>NOW()</formula>
        <name>SetRejectedEnd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetRejectedStart</fullName>
        <description>Sets Rejected Start Date</description>
        <field>Rejected_Start__c</field>
        <formula>NOW()</formula>
        <name>SetRejectedStart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetRejectedTotal</fullName>
        <description>Sets Rejected Total duration</description>
        <field>Rejected_Total__c</field>
        <formula>Rejected_Total__c + Rejected_Last__c</formula>
        <name>SetRejectedTotal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_OE_Assignment</fullName>
        <description>Sets Order Entry Assignment Date</description>
        <field>Order_Entry_Assignment__c</field>
        <formula>NOW()</formula>
        <name>Set OE Assignment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unassigned_level</fullName>
        <field>Sent_Escalation__c</field>
        <literalValue>Level 3</literalValue>
        <name>Unassigned level</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update</fullName>
        <field>PlannedProvisioningEnd__c</field>
        <formula>GTSCommitedDate__c</formula>
        <name>update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_cancellation_date</fullName>
        <field>Cancellation_Date__c</field>
        <formula>LastModifiedDate</formula>
        <name>update cancellation date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_customer_expected_delivery</fullName>
        <description>This actipon update Customer expected delivery date on Order based on Due date.</description>
        <field>CustomerExpectedDelivery__c</field>
        <formula>DueDate__c</formula>
        <name>update customer expected delivery</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Cancellation date</fullName>
        <actions>
            <name>update_cancellation_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Automatically update cancallation date when the Order status is changed to &quot;Cancelled&quot;</description>
        <formula>and(isnull(Cancellation_Date__c), OR(ISPICKVAL(Status__c, &quot;In Cancellation&quot;), ISPICKVAL(Status__c, &quot;Cancelled&quot;) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>DepositCheckNotificationRule</fullName>
        <actions>
            <name>DepositCheckNotification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>equals</operation>
            <value>Deposit Check</value>
        </criteriaItems>
        <description>This rule sends notification about Deposit Check</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Domestic Order Completed</fullName>
        <actions>
            <name>Order_Completed_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND($RecordType.Name=&apos;Domestic Order&apos;, ISPICKVAL(Status__c, &apos;Completed&apos;), ISNULL( Order_Completed_Date__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Domestic Order Submitted</fullName>
        <actions>
            <name>Domestic_Order_Planned_Provision_Start</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>$RecordType.Name = &apos;Domestic&apos; &amp;&amp;  ISPICKVAL(Status__c , &apos;Completed&apos;) &amp;&amp; (ISPICKVAL(OrderType__c, &apos;New Installation&apos;) ||  ISPICKVAL(OrderType__c, &apos;Modification&apos;) ||  ISPICKVAL(OrderType__c, &apos;Reactivation&apos;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Order Awaiting Provisioning CZ</fullName>
        <actions>
            <name>Order_Awaiting_Provisioning_CZ_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(Status__c, &apos;Awaiting Provisioning&apos;) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Czech&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Awaiting Provisioning HU</fullName>
        <actions>
            <name>Order_Awaiting_Provisioning_HU_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(Status__c, &apos;Awaiting Provisioning&apos;) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Hungary&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Awaiting Provisioning PL</fullName>
        <actions>
            <name>Order_Awaiting_Provisioning_PL_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(Status__c, &apos;Awaiting Provisioning&apos;) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Poland&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Awaiting Provisioning SK</fullName>
        <actions>
            <name>Order_Awaiting_Provisioning_SK_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL(Status__c, &apos;Awaiting Provisioning&apos;) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Slovakia&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Cancelled</fullName>
        <actions>
            <name>ordercancellednotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification when Order is set to Cancelled</description>
        <formula>LastModifiedById = OwnerId &amp;&amp; ISPICKVAL(Status__c, &apos;Cancelled&apos;) &amp;&amp; CreatedById &lt;&gt; OwnerId &amp;&amp; ISCHANGED(Status__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BExtranet - Notify DAM %28Opp Owner%29%5D</fullName>
        <actions>
            <name>Order_Comment_Extranet_Comment_Notify_DAM_Opp_Owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of DAM about Exranet comment added to Order</description>
        <formula>ISCHANGED(Last_Comment__c) &amp;&amp; NOT(ISBLANK(Partner_ID__c)) &amp;&amp; ISCHANGED(Last_Modified_By_Ext_Txt__c) &amp;&amp;  Extranet_Order__c = true &amp;&amp;  RecordTypeId  = &quot;01220000000LWdX&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BExtranet - Notify OE PL%5D</fullName>
        <actions>
            <name>Order_Comment_Notify_Order_Entry</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of OE PL (Role: Order Entry PL ) when comment added by Extranet. Order is in Status Order Entry, Rejected, Rejected Provisioning</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c) &amp;&amp;  Extranet_Order__c =true &amp;&amp;  ISCHANGED (Last_Modified_By_Ext_Txt__c)  &amp;&amp; (ISPICKVAL(Status__c,  &quot;Order Entry&quot;)||ISPICKVAL(Status__c,  &quot;Rejected&quot;)||ISPICKVAL(Status__c,  &quot;Rejected Provisioning&quot;))&amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BExtranet - Notify Provisioning - Assigned PM%5D</fullName>
        <actions>
            <name>Order_Comment_Extranet_Comment_Notify_Provisioning_PL_Assigned_PM</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Provisioning (Assigned Project Manager ) when comment added by Extranet. Order is in Status, Rejected Provisioning, Submitted, Awaiting Provisioning</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; Extranet_Order__c =true &amp;&amp; ISCHANGED (Last_Modified_By_Ext_Txt__c)  &amp;&amp; (ISPICKVAL(Status__c,  &quot;Rejected Provisioning&quot;)||ISPICKVAL(Status__c,  &quot;Awaiting Provisioning&quot;) ||ISPICKVAL(Status__c,  &quot;Submitted&quot;)) &amp;&amp; NOT(ISBLANK(Assigned_Project_Manager__c)) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp;  Assigned_Project_Manager__c &lt;&gt;  LastModifiedById</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BExtranet - Notify Provisioning - prov%2Eretail%40gts%2Epl%5D</fullName>
        <actions>
            <name>Order_Comment_Extranet_Comment_Notify_Provisioning_PL_prov_retail_gts_pl</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Provisioning (prov.retail@gts.pl]) when comment added by Extranet. Order is in Status, Rejected Provisioning, Submitted, Awaiting Provisioning</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; Extranet_Order__c =true &amp;&amp; ISCHANGED (Last_Modified_By_Ext_Txt__c) &amp;&amp; (ISPICKVAL(Status__c,  &quot;Rejected Provisioning&quot;)||ISPICKVAL(Status__c,  &quot;Awaiting Provisioning&quot;) ||ISPICKVAL(Status__c,  &quot;Submitted&quot;)) &amp;&amp; ISBLANK(Assigned_Project_Manager__c) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp;  GTS_Location__c =&quot;GTS Poland&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BSFDC User - Notify %28Order Owner %3C%3E Opp Owener%29%5D</fullName>
        <actions>
            <name>creatorcommentnotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Order Owner &lt;&gt; Opp Owner  when comment added by SFDC User.</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; NOT(ISCHANGED (Last_Modified_By_Ext_Txt__c)) &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp;     OwnerId  &lt;&gt;  LastModifiedById &amp;&amp; Opportunity_Owner__c &lt;&gt; OwnerId &amp;&amp; LastAction__c =&quot;Add Comment&quot; &amp;&amp; Last_Comment_Notification__c = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BSFDC User - Notify AM %28Opp Owner%29%5D</fullName>
        <actions>
            <name>Order_Comment_SFDC_User_Comment_Notify_DAM_Opp_Owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of AM (Opp Owner) when comment added by SFDC User.</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; NOT(ISCHANGED (Last_Modified_By_Ext_Txt__c)) &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp;    Opportunity_Owner__c &lt;&gt;  LastModifiedById &amp;&amp; Last_Comment_Notification__c = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BSFDC User - Notify OE PL%5D</fullName>
        <actions>
            <name>Order_Comment_SFDC_User_Comment_Notify_OE_PL</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of OE PL (Role: Order Entry Controller PL ) when comment added by SFDC User. Order is in Status Rejected, Orrder Entry, Rejected Provisioning</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; NOT(ISCHANGED (Last_Modified_By_Ext_Txt__c)) &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp; (ISPICKVAL(Status__c,  &quot;Rejected Provisioning&quot;)||ISPICKVAL(Status__c,  &quot;Order Entry&quot;) ||ISPICKVAL(Status__c,  &quot;Rejected&quot;)) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp; $UserRole.Id &lt;&gt;&quot;00E200000013486&quot; &amp;&amp; LastAction__c =&quot;Add Comment&quot; &amp;&amp; Last_Comment_Notification__c = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BSFDC User - Notify Provisioning - Assigned PM%5D</fullName>
        <actions>
            <name>Order_Comment_SFDC_User_Comment_Notify_Provisioning_PL_Assigned_PM</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Provisioning (Assigned Project Manager ) when comment added by SFDC User. Order is in Status, Rejected Provisioning, Submitted, Awaiting Provisioning</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; NOT(ISCHANGED (Last_Modified_By_Ext_Txt__c)) &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp; (ISPICKVAL(Status__c,  &quot;Rejected Provisioning&quot;)||ISPICKVAL(Status__c,  &quot;Awaiting Provisioning&quot;) ||ISPICKVAL(Status__c,  &quot;Submitted&quot;)) &amp;&amp; NOT(ISBLANK(Assigned_Project_Manager__c)) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp;  Assigned_Project_Manager__c &lt;&gt;  LastModifiedById &amp;&amp; LastAction__c =&quot;Add Comment&quot; &amp;&amp; Last_Comment_Notification__c = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BSFDC User - Notify Provisioning - prov%2Eretail%40gts%2Epl%5D</fullName>
        <actions>
            <name>Order_Comment_SFDC_User_Comment_Notify_Provisioning_PL_prov_retail_gts_pl</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Provisioning (prov.retail@gts.pl) when comment added by SFDC User. Order is in Status, Rejected Provisioning, Submitted, Awaiting Provisioning</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Comments__c) &amp;&amp; ISCHANGED(Last_Comment__c)  &amp;&amp; NOT(ISCHANGED (Last_Modified_By_Ext_Txt__c)) &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp; (ISPICKVAL(Status__c,  &quot;Rejected Provisioning&quot;)||ISPICKVAL(Status__c,  &quot;Awaiting Provisioning&quot;) ||ISPICKVAL(Status__c,  &quot;Submitted&quot;)) &amp;&amp; ISBLANK(Assigned_Project_Manager__c) &amp;&amp; RecordTypeId = &quot;01220000000LWdX&quot; &amp;&amp; LastAction__c =&quot;Add Comment&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added %5BSFDC User PUB%2C Notify Partner %28Dealer PL%29%5D</fullName>
        <actions>
            <name>Order_Comment_SFDC_User_Comment_PUB_Notify_Dealer_PL</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Partner about public comment added by SFDC USER</description>
        <formula>ISCHANGED(Last_Comment__c) &amp;&amp; NOT(ISBLANK(Partner_ID__c)) &amp;&amp;   Last_Comment_is_Public__c = true &amp;&amp; GTS_Location__c   = &quot;GTS Poland&quot; &amp;&amp;  Extranet_Order__c = true &amp;&amp;  RecordTypeId  = &quot;01220000000LWdX&quot;&amp;&amp; NOT(ISCHANGED (Last_Modified_By_Ext_Txt__c)) &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp; Last_Comment_Notification__c = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added - %5BCreator%5D</fullName>
        <actions>
            <name>creatorcommentnotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>[Domestic Excluded] Sends Notification when Comment has been added by Order Creator</description>
        <formula>ISCHANGED(Comments__c) &amp;&amp; LastModifiedById = CreatedById &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp;  LastAction__c = &apos;Add Comment&apos; &amp;&amp;  RecordTypeId &lt;&gt;&quot;01220000000LWdX&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added - %5BOther%5D</fullName>
        <actions>
            <name>othercommentnotifyownerandcreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>[Domestic Excluded] Sends Notification about comment added by person other than Creator and Owner if Owner is not Queue</description>
        <formula>ISCHANGED(Comments__c) &amp;&amp; LastModifiedById &lt;&gt; OwnerId &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; &amp;&amp; AssignedQueue__c &lt;&gt; OwnerId  &amp;&amp;  RecordTypeId &lt;&gt;&quot;01220000000LWdX&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added - %5BOther%5D Owner is Queue</fullName>
        <actions>
            <name>ownercommentnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>[Domestic Excluded] Sends Notification about comment added by person other than Creator and Owner if Owner is Queue</description>
        <formula>ISCHANGED(Comments__c) &amp;&amp; LastModifiedById &lt;&gt; OwnerId &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; &amp;&amp; AssignedQueue__c = OwnerId &amp;&amp;    RecordTypeId &lt;&gt;&quot;01220000000LWdX&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Comment Added - %5BOwner%5D</fullName>
        <actions>
            <name>ownercommentnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>[Domestic Excluded] Sends notification about Comment added by Order Owner.</description>
        <formula>ISCHANGED(Comments__c) &amp;&amp; LastModifiedById = OwnerId &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos;  &amp;&amp;  RecordTypeId &lt;&gt;&quot;01220000000LWdX&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Commitment Date Warning</fullName>
        <actions>
            <name>orderdeliveryexceedednotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification, that commited date will be exceeded</description>
        <formula>(NOT(ISNULL(GTSCommitedDate__c)) &amp;&amp; NOT(ISNULL(PlannedProvisioningEnd__c)) &amp;&amp; (GTSCommitedDate__c &lt; PlannedProvisioningEnd__c)) || (NOT(ISNULL(GTSCommitedDate__c)) &amp;&amp; NOT(ISNULL(PlannedBillingConfigurationEnd__c)) &amp;&amp; (GTSCommitedDate__c &lt; PlannedBillingConfigurationEnd__c)) || (NOT(ISNULL(GTSCommitedDate__c)) &amp;&amp; NOT(ISNULL(PlannedBillingStop__c)) &amp;&amp; (GTSCommitedDate__c &lt; PlannedBillingStop__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Order Completed</fullName>
        <actions>
            <name>ordercompletednotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notofication when Order set to Completed</description>
        <formula>LastModifiedById = OwnerId &amp;&amp; ISPICKVAL(Status__c, &apos;Completed&apos;) &amp;&amp; CreatedById &lt;&gt; OwnerId &amp;&amp;  ISCHANGED(Status__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Created</fullName>
        <actions>
            <name>ordercreatednotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification after Order has been created</description>
        <formula>CreatedById &lt;&gt; OwnerId &amp;&amp;  AssignedUser__c != &apos;&apos; &amp;&amp; AssignedUser__c != null</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Order Created - Queue</fullName>
        <actions>
            <name>Notification_about_new_Order_creation_and_Queue_assignment</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification after Order has been created and assigned to Queue</description>
        <formula>CreatedById &lt;&gt; OwnerId &amp;&amp;   AssignedQueue__c  != &apos;&apos; &amp;&amp; AssignedQueue__c  != null</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Order Created by NOT Opportunity Owner</fullName>
        <actions>
            <name>Order_Not_Opp_Owner</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends Notification after Order has been created by someone who isn&apos;t Opportuntiy Owner</description>
        <formula>AND(Opportunity_Owner__c  &lt;&gt; CreatedById,  GTS_Location__c= &quot;GTS Poland&quot;, $RecordType.Name = &quot;Domestic&quot; )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Order Entry Assignment Date</fullName>
        <actions>
            <name>Set_OE_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets date and time when Order was assigned to Order Entry</description>
        <formula>AND(  ISCHANGED(Status__c), OR( ISPICKVAL(Status__c,&apos;Order Entry&apos;), ISPICKVAL(Status__c,&apos;Rejected Provisioning&apos;) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Entry CZ</fullName>
        <actions>
            <name>Order_Entry_CZ_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(ISPICKVAL(Status__c, &apos;Rejected Provisioning&apos;) ||ISPICKVAL(Status__c, &apos;Order Entry&apos;)) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Czech&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Entry HU</fullName>
        <actions>
            <name>Order_Entry_HU_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(ISPICKVAL(Status__c, &apos;Rejected Provisioning&apos;) ||ISPICKVAL(Status__c, &apos;Order Entry&apos;)) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Hungary&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Entry PL</fullName>
        <actions>
            <name>Order_Entry_PL_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(ISPICKVAL(Status__c, &apos;Rejected Provisioning&apos;) ||ISPICKVAL(Status__c, &apos;Order Entry&apos;)) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Poland&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Entry SK</fullName>
        <actions>
            <name>Order_Entry_SK_Notify_Memebers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(ISPICKVAL(Status__c, &apos;Rejected Provisioning&apos;) ||ISPICKVAL(Status__c, &apos;Order Entry&apos;)) &amp;&amp; ISCHANGED(Status__c)&amp;&amp; CONTAINS(GTS_Location__c, &apos;Slovakia&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Escalation Level 1</fullName>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.EscalationLevel1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends escalation when Order not assigned</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Escalate_unnasigned</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>COrder__c.CreatedDate</offsetFromField>
            <timeLength>4</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Order Escalation Level 2</fullName>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.EscalationLevel2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends escalation when Order not assigned</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Unassigned</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>COrder__c.CreatedDate</offsetFromField>
            <timeLength>8</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Order Escalation Level 3</fullName>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.EscalationLevel3__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends escalation when Order not assigned</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Unassigned_level</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>COrder__c.CreatedDate</offsetFromField>
            <timeLength>12</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Order In Cancellation</fullName>
        <actions>
            <name>orderincancellationnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification when Order set In Cancellation</description>
        <formula>LastModifiedById = OwnerId &amp;&amp; ISPICKVAL(Status__c, &apos;In Cancellation&apos;) &amp;&amp; CreatedById &lt;&gt; OwnerId &amp;&amp;  ISCHANGED(Status__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Not Assigned Escalation</fullName>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <description>Sends escalation notification if Order was not accepted for specified period of time</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Order On Hold %5BCreator%5D</fullName>
        <actions>
            <name>orderonholdnotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Creator puts Order On Hold</description>
        <formula>ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c, &apos;On Hold&apos;) &amp;&amp; LastModifiedById = CreatedById &amp;&amp; CreatedById &lt;&gt; OwnerId</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order On Hold %5BOwner%5D</fullName>
        <actions>
            <name>orderonholdnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Owner puts Order On Hold</description>
        <formula>ISCHANGED(Status__c)  &amp;&amp; ISPICKVAL(Status__c, &apos;On Hold&apos;) &amp;&amp; LastModifiedById = OwnerId &amp;&amp; CreatedById &lt;&gt; OwnerId</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Reassignment %5BOther%5D</fullName>
        <actions>
            <name>otherreassignedordernotifycreatorlastownerandnewowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification about Order Reassignment if done by somebody else than Owner</description>
        <formula>ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; LastModifiedById &amp;&amp;  OR(AND(NOT(ISPICKVAL(Status__c, &apos;Rejected&apos;)),  ISCHANGED(Status__c) ), NOT(ISCHANGED(Status__c)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Reassignment %5BOwner%5D</fullName>
        <actions>
            <name>ownerreassignedordernotifycreatorandnewowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification to Creator that Order has been reassigned by Owner</description>
        <formula>ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) = LastModifiedById &amp;&amp; OR(AND(NOT(ISPICKVAL(Status__c, &apos;Rejected&apos;)), ISCHANGED(Status__c) ), NOT(ISCHANGED(Status__c)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Rejected</fullName>
        <actions>
            <name>Order_Rejected_Notify_Creator</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Order_Rejected_Notify_Owner</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL(Status__c, &apos;Rejected&apos;) &amp;&amp; ISCHANGED(Status__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Reminder</fullName>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Remind_days__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Cancelled</value>
        </criteriaItems>
        <description>Sends Notification to Order Owner when Due Date is close</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PM Assigned</fullName>
        <actions>
            <name>Order_PM_Assigned_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Triggers when PM is assigned to Order</description>
        <formula>AND(PRIORVALUE(Assigned_Project_Manager__c) != Assigned_Project_Manager__c, Assigned_Project_Manager__c != null, PRIORVALUE(Assigned_Project_Manager__c) = null, Assigned_Project_Manager__c != LastModifiedById )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PM Reassigned</fullName>
        <actions>
            <name>Order_PM_Reassigned_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Triggers when PM is reassigned to another at theOrder</description>
        <formula>AND(PRIORVALUE(Assigned_Project_Manager__c) != Assigned_Project_Manager__c, Assigned_Project_Manager__c != null, PRIORVALUE(Assigned_Project_Manager__c) != null)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Planned provisioning date update</fullName>
        <actions>
            <name>update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.GTSCommitedDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.PlannedProvisioningEnd__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Created based on Dariusz Pawlak request.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RejectedEnd</fullName>
        <actions>
            <name>SetRejectedEnd</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SetRejectedTotal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Status changed from Rejected</description>
        <formula>IF(AND(ISCHANGED(Status__c), ISPICKVAL(PRIORVALUE(Status__c), &apos;Rejected&apos;) ),true,false) &amp;&amp; $RecordType.DeveloperName != &apos;Domestic&apos;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RejectedStart</fullName>
        <actions>
            <name>DelRejectedEnd</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SetRejectedStart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Status changed to Rejected</description>
        <formula>ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c, &apos;Rejected&apos;) &amp;&amp; $RecordType.DeveloperName != &apos;Domestic&apos;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TerminationOrderNotification</fullName>
        <actions>
            <name>TerminationCase_OrderCreation_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification to Salesman (Account owner) when Termination Case with related Order is created.</description>
        <formula>IF(AND(ISNEW(), Churn_Order__c, NOT(ISBLANK(Case__c)), CreatedById != Account__r.OwnerId ),true,false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update</fullName>
        <actions>
            <name>update_customer_expected_delivery</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.DueDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>COrder__c.CustomerExpectedDelivery__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Update Customer Expected Delivery date based on Due date.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>lanned provisioning date update</fullName>
        <actions>
            <name>update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>COrder__c.PlannedProvisioningEnd__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Created based on Dariusz Pawlak request.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
