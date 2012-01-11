<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_about_Order_Line_Completion</fullName>
        <description>Notification about Order Line Completion</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>GTS_Slovakia_Templates/OrderLine_Completed</template>
    </alerts>
    <alerts>
        <fullName>Order_Line_Cancelled_Notify_Creator</fullName>
        <description>Order Line Cancelled - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>GTS_Slovakia_Templates/OrderLine_Cancelled</template>
    </alerts>
    <alerts>
        <fullName>Order_Line_Notify_Dealer_PL_Service_Activated</fullName>
        <description>Order Line - Notify Dealer PL - Service Activated</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Order_Line_Service_Activated_PL</template>
    </alerts>
    <alerts>
        <fullName>Order_Line_Notify_Dealer_PL_Service_In_Delivery</fullName>
        <description>Order Line - Notify Dealer PL - Service In Delivery</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Order_Line_In_Delivery_PL</template>
    </alerts>
    <alerts>
        <fullName>Order_Line_Notify_Dealer_PL_Service_Rejected_by_OE</fullName>
        <description>Order Line - Notify Dealer PL - Service Rejected by OE</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Order_Line_Rejected_by_OE_PL</template>
    </alerts>
    <alerts>
        <fullName>Order_Line_Notify_Dealer_PL_Srvice_Accepted_for_Delivery</fullName>
        <description>Order Line - Notify Dealer PL - Srvice Accepted for Delivery</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Order_Line_Accepted_In_Provisioning_PL</template>
    </alerts>
    <fieldUpdates>
        <fullName>Reason_of_Delay_Task</fullName>
        <description>Updates Reason_of_Delay_Task__c field</description>
        <field>Reason_of_Delay_Task__c</field>
        <literalValue>1</literalValue>
        <name>Reason of Delay Task</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SelectedOfferIDUpdate</fullName>
        <description>moved to trigger
was: Product__r.Id</description>
        <field>SelectedOfferId__c</field>
        <name>SelectedOfferIDUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SelectedOfferIDUpdateSelectedOfferIDUpda</fullName>
        <field>SelectedOfferId__c</field>
        <formula>Product__r.Id</formula>
        <name>SelectedOfferIDUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetActualProvisioningEndDate</fullName>
        <description>Sets ActualProvisioningEnd Date</description>
        <field>Actual_Provisioning_End__c</field>
        <formula>Today()</formula>
        <name>SetActualProvisioningEndDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetActualProvisioningStartDate</fullName>
        <description>Sets ActualProvisioningStart Date</description>
        <field>Actual_Provisioning_Start__c</field>
        <formula>Today()</formula>
        <name>SetActualProvisioningStartDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_CDDPopupFlag</fullName>
        <field>CommittedDeliveryDatePopupFlag__c</field>
        <literalValue>1</literalValue>
        <name>Set CDDPopupFlag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamo_OL_Avaiting_Provisioning_Stage_Dat</fullName>
        <field>OL_Awaiting_Provisioning_State_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamo OL Avaiting Provisioning Stage Dat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_OL_Cancelled_Date</fullName>
        <field>OL_Cancelled_State_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp OL Cancelled Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_OL_Completed_Date</fullName>
        <field>OL_Completed_State_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp OL Completed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_OL_Configured_Date</fullName>
        <field>OL_Configured_Status_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp OL Configured Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_OL_Submited_Date</fullName>
        <field>OL_Submited_State_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stamp OL Submited Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Committed Delivery Date Popup</fullName>
        <active>true</active>
        <description>Time dependent workflow for Committed Delivery Date - create Task in PM&apos;s calendar when CDD is not set in 10 days after PED</description>
        <formula>AND( ISBLANK(CommittedDeliveryDate__c), NOT( ISBLANK(CommittedDeliveryDatePopup__c)),NOT( OR( ISPICKVAL(Status__c,&apos;Cancelled&apos; ),ISPICKVAL(Status__c,&apos;In Cancellation&apos;))) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Set_CDDPopupFlag</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>OrderLine__c.CommittedDeliveryDatePopup__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>OL Awaiting Provisioning Date Stamp</fullName>
        <actions>
            <name>Stamo_OL_Avaiting_Provisioning_Stage_Dat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>New,Configured</value>
        </criteriaItems>
        <criteriaItems>
            <field>OrderLine__c.OL_Awaiting_Provisioning_State_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Stamps OL Awaiting Provisioning  State date 1st time the OL is Send to provisioning - IMPLEMENTED IN ORDER LINE TRIGGER</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>OL Cancelled Date Stamp</fullName>
        <actions>
            <name>Stamp_OL_Cancelled_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>OrderLine__c.OL_Cancelled_State_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>Cancelled</value>
        </criteriaItems>
        <description>Stamps OL Cancelled State date 1st time the OL is cancelled - IMPLEMENTED IN ORDER LINE TRIGGER</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>OL Completed Date Stamp</fullName>
        <actions>
            <name>Stamp_OL_Completed_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>OrderLine__c.OL_Completed_State_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Stamps OL Completed State date 1st time the OL is Completed - IMPLEMENTED IN ORDER LINE TRIGGER</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>OL Configured Date Stamp</fullName>
        <actions>
            <name>Stamp_OL_Configured_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>OrderLine__c.OL_Configured_Status_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>Configured</value>
        </criteriaItems>
        <description>Stamps OL Configured State date 1st time the OL is configured. - IMPLEMENTED IN ORDER LINE TRIGGER</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>OL Submited Date Stamp</fullName>
        <actions>
            <name>Stamp_OL_Submited_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>OrderLine__c.OL_Submited_State_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>Submitted</value>
        </criteriaItems>
        <description>Stamps OL Submited State date 1st time the OL is submited. - IMPLEMENTED IN ORDER LINE TRIGGER</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Order Line - Notification for Dealer PL- Service Accepted for Delivery</fullName>
        <actions>
            <name>Order_Line_Notify_Dealer_PL_Srvice_Accepted_for_Delivery</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notfication for Dealer when Order is Awaiting Provisioning = Service Accepted</description>
        <formula>OrderLookup__r.Extranet_Order__c=true&amp;&amp; OrderLookup__r.GTS_Location__c= &quot;GTS Poland&quot; &amp;&amp; ISCHANGED( Order_Status2__c ) &amp;&amp; Order_Status2__c = &quot;Awaiting Provisioning&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Line - Notification for Dealer PL- Service Activated</fullName>
        <actions>
            <name>Order_Line_Notify_Dealer_PL_Service_Activated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notfication for Dealer when Order Line is completed = Service Activated</description>
        <formula>OrderLookup__r.Extranet_Order__c=true&amp;&amp; OrderLookup__r.GTS_Location__c= &quot;GTS Poland&quot; &amp;&amp; ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c,  &quot;Completed&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Line - Notification for Dealer PL- Service Rejected by OE</fullName>
        <actions>
            <name>Order_Line_Notify_Dealer_PL_Service_Rejected_by_OE</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notfication for Dealer when Order Status is rejcted</description>
        <formula>OrderLookup__r.Extranet_Order__c=true&amp;&amp; OrderLookup__r.GTS_Location__c= &quot;GTS Poland&quot;&amp;&amp; ISCHANGED( Order_Status2__c) &amp;&amp;  Order_Status2__c=&quot;Rejected&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Line - Notification for Dealer PL- Service in Delivery</fullName>
        <actions>
            <name>Order_Line_Notify_Dealer_PL_Service_In_Delivery</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Order Line - Notification for Dealer PL- Service Submitted to Prov.</description>
        <formula>OrderLookup__r.Extranet_Order__c=true&amp;&amp; OrderLookup__r.GTS_Location__c= &quot;GTS Poland&quot; &amp;&amp; ISCHANGED(   Status__c  ) &amp;&amp; ISPICKVAL(Status__c, &quot;Submitted&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Order Line Cancelled Notification</fullName>
        <actions>
            <name>Order_Line_Cancelled_Notify_Creator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>Cancelled</value>
        </criteriaItems>
        <description>Sends email notification to OL creator (salesperson) about Order Line cancellation</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Order Line Completed</fullName>
        <actions>
            <name>Notification_about_Order_Line_Completion</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>OrderLine__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Order Line Completed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reason of Delay Popup</fullName>
        <active>true</active>
        <description>Time dependent workflow for Reason of Delay - create Task in PM&apos;s calendar in case of delay and missing RoD</description>
        <formula>AND(Reason_of_Delay__c = true,ISPICKVAL(Status__c,&apos;Submitted&apos;), Reason_of_Delay_Set__c = false, OR(RealDeliveryDate__c&gt;CommittedDeliveryDate__c, ISBLANK(RealDeliveryDate__c) ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Reason_of_Delay_Task</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>OrderLine__c.CommittedDeliveryDate__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>UpdateOfferID</fullName>
        <actions>
            <name>SelectedOfferIDUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates Selected Offer Id</description>
        <formula>ISCHANGED( Product__c ) || ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
