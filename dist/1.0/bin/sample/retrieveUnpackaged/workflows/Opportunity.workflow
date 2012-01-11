<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Credit_Check_Error</fullName>
        <description>Credit Check Error</description>
        <protected>false</protected>
        <recipients>
            <recipient>b.walczak@gtsce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Credit_Check_Error</template>
    </alerts>
    <alerts>
        <fullName>Notification_Approved</fullName>
        <description>Notification, Approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Approval_Notifications/Approval_Decission_Approved</template>
    </alerts>
    <alerts>
        <fullName>Notification_Rejected</fullName>
        <description>Notification, Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Approval_Notifications/Approval_Decission_Rejected</template>
    </alerts>
    <alerts>
        <fullName>Oportunity_HPM_Assigned_Email_Notification</fullName>
        <description>Oportunity - HPM Assigned - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Head_Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>GTS_Poland_Templates/Opportunity_assigned_HPM_Notification</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Closed_DAM</fullName>
        <description>Opportunity Closed (DAM)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Opportunity_Closed_DAM</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Comment_Extranet_Comment_Notify_DAM_Opp_Owner</fullName>
        <description>Opportunity Comment - Extranet Comment - Notify DAM (Opp. Owner)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Opportunity_Comment_Notification_Extranet_to_SFDC_User</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Comment_SFDC_User_Comment_Notify_Partner_Dealer_PL</fullName>
        <description>Opportunity Comment - SFDC User Comment - Notify Partner (Dealer PL)</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Opportunity_Comment_Notification_SFDC_User_to_Dealer_PL</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Created</fullName>
        <description>Opportunity Created</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Opportunity_Created</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Created_DAM</fullName>
        <description>Opportunity Created (DAM)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Opportunity_Created_DAM</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Dealer_Time_Remaining</fullName>
        <description>Opportunity (Dealer) - Time Remaining</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Opportunity_Time_Remaining</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Time_Remaining_DAM</fullName>
        <description>Opportunity - Time Remaining (DAM)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Opportunity_Time_Remaining_DAM</template>
    </alerts>
    <alerts>
        <fullName>Sales_Type_Verified_Notification</fullName>
        <description>Sales Type Verified Notification</description>
        <protected>false</protected>
        <recipients>
            <field>OwnerUser__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Sales_Type_Verified</template>
    </alerts>
    <alerts>
        <fullName>Verification_Completed</fullName>
        <description>Verification Completed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Credit_Check_Completed</template>
    </alerts>
    <alerts>
        <fullName>Verification_Completed_Sales_Director</fullName>
        <description>Verification Completed - Sales Director</description>
        <protected>false</protected>
        <recipients>
            <recipient>Domestic Sales Director PL</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Credit_Check_Completed</template>
    </alerts>
    <fieldUpdates>
        <fullName>Actual_Close_Date_clear</fullName>
        <field>Actual_Close_Date__c</field>
        <name>Actual Close Date - clear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Actual_Close_Date_fill_in</fullName>
        <field>Actual_Close_Date__c</field>
        <formula>TODAY()</formula>
        <name>Actual Close Date - fill in</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CC_Decision</fullName>
        <field>CC_Credit_Decision__c</field>
        <literalValue>Approved</literalValue>
        <name>CC Decision</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Close_Date_Override_true</fullName>
        <field>Close_Date_Override__c</field>
        <literalValue>1</literalValue>
        <name>Close Date Override - true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_Frozen_true</fullName>
        <field>Is_Frozen__c</field>
        <literalValue>1</literalValue>
        <name>Is Frozen - true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Next_Stage</fullName>
        <field>StageName</field>
        <name>Next Stage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>NextValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Closed_Lost</fullName>
        <description>Stage = Closed Lost</description>
        <field>StageName</field>
        <literalValue>Closed Lost</literalValue>
        <name>Opportunity Closed Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Reason_Lost_Time_Exceeded</fullName>
        <description>Reason Lost = Time Exceeded</description>
        <field>Reason_Lost__c</field>
        <literalValue>Time Limit Exceeded</literalValue>
        <name>Opportunity Reason Lost - Time Exceeded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Partner_Emaill_Opp</fullName>
        <field>Partner_Email__c</field>
        <formula>Partner_Account__r.Email__c</formula>
        <name>Partner Emaill - Opp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Restart_Stage_Start</fullName>
        <field>Stage_Start_Date__c</field>
        <formula>TODAY()</formula>
        <name>Restart Stage Start</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Lost</fullName>
        <description>Updates Stage Lost with Stage Value prior to Closed Lost</description>
        <field>Stage_Lost__c</field>
        <formula>if ( TEXT(StageName) =&quot;Closed Lost&quot;, TEXT(PRIORVALUE(StageName)),null)</formula>
        <name>Stage Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Restart_Date_blank</fullName>
        <field>Stage_Restart_Date__c</field>
        <name>Stage Restart Date - blank</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Start_Date</fullName>
        <description>Updates Stage Start Date after ech change of Stage on Opportunity</description>
        <field>Stage_Start_Date__c</field>
        <formula>TODAY()</formula>
        <name>Stage Start Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_to_Proposal</fullName>
        <field>StageName</field>
        <literalValue>Proposal</literalValue>
        <name>Stage to Proposal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unfreeze</fullName>
        <field>Is_Frozen__c</field>
        <literalValue>0</literalValue>
        <name>Unfreeze</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Credit_Verified</fullName>
        <description>updates Credit Verified field</description>
        <field>CC_Credit_Verified__c</field>
        <literalValue>1</literalValue>
        <name>Update Credit Verified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Verification_DateTime</fullName>
        <description>Updates Verification Date and Time</description>
        <field>Verification_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Verification DateTime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setInApproval</fullName>
        <field>In_Approval__c</field>
        <literalValue>1</literalValue>
        <name>setInApproval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>unsetInApproval</fullName>
        <field>In_Approval__c</field>
        <literalValue>0</literalValue>
        <name>unsetInApproval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>IntegrationOpportunityToINTRA</fullName>
        <apiVersion>18.0</apiVersion>
        <endpointUrl>http://62.84.129.23:9080/UpsertAccountToINTRAService/UpsertAccountToINTRAPort</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>emir.ekinovic@gtsnovera.cz</integrationUser>
        <name>IntegrationOpportunityToINTRA</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Close Date Override for Czech Rep</fullName>
        <actions>
            <name>Close_Date_Override_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Automarking of Close Date Override for Domestic Opp. for Czech Rep Opportunities.</description>
        <formula>RecordTypeId =&quot;01220000000LWd0&quot; &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Czech Rep&quot;) &amp;&amp; ((ischanged(IsClosed) &amp;&amp; IsClosed=true) || (ISNEW() &amp;&amp; IsClosed=true))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Credit Check Approve</fullName>
        <actions>
            <name>CC_Decision</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>automatically sets Credit Decision to Approved</description>
        <formula>AND(  ISCHANGED( CC_Credit_Verified__c ),  CC_Credit_Verified__c = true,  ISPICKVAL(CC_Credit_Decision__c  , &apos;&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Credit Check Completed</fullName>
        <actions>
            <name>Verification_Completed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Updates Verification date and sends notification</description>
        <formula>AND( ISCHANGED( CC_Credit_Verified__c ), CC_Credit_Verified__c  = true )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Credit Check Completed - Sales Director</fullName>
        <actions>
            <name>Verification_Completed_Sales_Director</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends notification to Sales Director in case of Red or Black flag</description>
        <formula>AND( ISCHANGED( CC_Credit_Verified__c ), CC_Credit_Verified__c = true, OR( ISPICKVAL(CC_Credit_Flag__c, &apos;Red&apos;), ISPICKVAL(CC_Credit_Flag__c, &apos;Black&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Credit Check Error</fullName>
        <actions>
            <name>Credit_Check_Error</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>AND(  ISCHANGED( CC_Report_Status__c ) ,   CC_Report_Status__c = &apos;Error&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>HPM Assigned</fullName>
        <actions>
            <name>Oportunity_HPM_Assigned_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Triggers when HPM is assigned to Order</description>
        <formula>AND(PRIORVALUE(Head_Project_Manager__c) != Head_Project_Manager__c, Head_Project_Manager__c != null, PRIORVALUE(Head_Project_Manager__c) = null, Head_Project_Manager__c != LastModifiedById )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IntegrationOpportunityToINTRA</fullName>
        <actions>
            <name>IntegrationOpportunityToINTRA</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.GTS_Location__c</field>
            <operation>equals</operation>
            <value>GTS Hungary</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Oportunity %28DAM%29 - New Opp%2C Opp Source Extranet</fullName>
        <actions>
            <name>Opportunity_Created_DAM</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; RecordTypeId =&quot;01220000000LWd0&quot; &amp;&amp; !ISPICKVAL(LeadSource, &quot;Extranet&quot;) &amp;&amp; (ISPICKVAL(Opportunity_Source__c, &quot;Extranet&quot;)  || ISPICKVAL(Opportunity_Source__c, &quot;Extranet Weborder&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Oportunity %28Dealer %2B DAM%29 - Time Remaining 3</fullName>
        <active>true</active>
        <formula>ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; RecordTypeId =&quot;01220000000LWd0&quot; &amp;&amp;Time_Remaining__c&gt;=3 &amp;&amp;  IsClosed =false</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Opportunity_Dealer_Time_Remaining</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Opportunity_Time_Remaining_DAM</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Oportunity %28Dealer %2BDAM%29 - New Opp Lead Source Extranet</fullName>
        <actions>
            <name>Opportunity_Created</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Opportunity_Created_DAM</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; RecordTypeId =&quot;01220000000LWd0&quot; &amp;&amp;  ISPICKVAL(LeadSource, &quot;Extranet&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Oportunity %28Dealer %2BDAM%29 - Opp Closed</fullName>
        <actions>
            <name>Opportunity_Closed_DAM</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; RecordTypeId =&quot;01220000000LWd0&quot; &amp;&amp; (ISPICKVAL(LeadSource, &quot;Extranet&quot;) || ISPICKVAL(Opportunity_Source__c, &quot;Extranet&quot;)||ISPICKVAL(Opportunity_Source__c, &quot;Extranet Weborder&quot;)) &amp;&amp; (ISPICKVAL(StageName, &quot;Closed Won&quot;) || ISPICKVAL(StageName, &quot;Closed Lost&quot;) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Oportunity %28Dealer%29 - Time Remaining 10</fullName>
        <active>true</active>
        <formula>ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; RecordTypeId =&quot;01220000000LWd0&quot; &amp;&amp;Time_Remaining__c &gt;=10  &amp;&amp; IsClosed =false</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Opportunity_Dealer_Time_Remaining</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Oportunity %28Dealer%29 - Time Remaining 20</fullName>
        <active>true</active>
        <formula>ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; RecordTypeId =&quot;01220000000LWd0&quot;&amp;&amp; Time_Remaining__c &gt;=20 &amp;&amp; IsClosed=false</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Opportunity_Dealer_Time_Remaining</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-20</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Opp%2E Actual Close Date - clear</fullName>
        <actions>
            <name>Actual_Close_Date_clear</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>$RecordType.Name =&quot;Domestic&quot; &amp;&amp; ischanged(IsClosed) &amp;&amp; IsClosed = false</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opp%2E Actual Close Date - fill in</fullName>
        <actions>
            <name>Actual_Close_Date_fill_in</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>$RecordType.Name =&quot;Domestic&quot; &amp;&amp; ((ischanged(IsClosed) &amp;&amp; IsClosed = true) || (ISNEW()&amp;&amp; IsClosed = true))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opp%2E Partner - Time Exceeded</fullName>
        <active>true</active>
        <formula>$RecordType.Name =&quot;Domestic&quot; &amp;&amp; 
ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;) &amp;&amp; 
(ISPICKVAL(Opportunity_Source__c, &quot;Extranet&quot;) || ISPICKVAL(Opportunity_Source__c, &quot;Extranet Weborder&quot;)) &amp;&amp;  
NOT(ISPICKVAL(StageName, &quot;Closed Won&quot;) ) &amp;&amp; 
NOT(ISPICKVAL(StageName, &quot;Closed Lost&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Opportunity_Closed_Lost</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Opportunity_Reason_Lost_Time_Exceeded</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Opportunity Comment Added %5BExtranet%2C Notify DAM %28Opp Owner%29%5D</fullName>
        <actions>
            <name>Opportunity_Comment_Extranet_Comment_Notify_DAM_Opp_Owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of DAM (Opp Owner) when comment added by Extranet</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Last_Comment__c)  &amp;&amp; (ISCHANGED(Last_Modified_By_Ext_Txt__c)||  ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp;  ISPICKVAL(Opportunity_Source__c, &quot;Extranet&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Comment Added %5BSFDC User PUB%2C Notify Partner %28Dealer PL%29%5D</fullName>
        <actions>
            <name>Opportunity_Comment_SFDC_User_Comment_Notify_Partner_Dealer_PL</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification of Partner Dealer when comment added by SFDC User</description>
        <formula>NOT(ISNEW())&amp;&amp;ISCHANGED(Last_Comment__c)  &amp;&amp; NOT(ISCHANGED(Last_Modified_By_Ext_Txt__c))&amp;&amp;NOT( ISCHANGED(Last_Modified_By_Ext_Contact__c)) &amp;&amp;  (ISPICKVAL(Opportunity_Source__c, &quot;Extranet&quot;) ||   ISPICKVAL(Opportunity_Source__c, &quot;Extranet Weborder&quot;) )&amp;&amp; Last_Comment_is_Public__c =true &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;) &amp;&amp; RecordTypeId=&quot;01220000000LWd0&quot; &amp;&amp;ISPICKVAL(Partner_Account__r.GTS_Location_del__c,&quot;GTS Poland&quot;) &amp;&amp; Last_Comment_is_Public__c  = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Freeze</fullName>
        <actions>
            <name>Is_Frozen_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Not needed - repalced with class scheduler</description>
        <formula>Is_Frozen__c=false &amp;&amp;  IsClosed =false&amp;&amp;  ISBLANK(Partner_Account__c)  &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Stage Change</fullName>
        <actions>
            <name>Stage_Restart_Date_blank</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Stage_Start_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Not Needed - moved to trigger</description>
        <formula>ISNEW()||ISCHANGED(StageName)&amp;&amp; ($RecordType.Name =&quot;Domestic&quot; ||$RecordType.Name =&quot;Wholesale Voice&quot; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partner Email</fullName>
        <actions>
            <name>Partner_Emaill_Opp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>!ISBLANK(Partner_Account__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prospect Start Date</fullName>
        <active>false</active>
        <formula>ISNEW()|| ISCHANGED(StageName)&amp;&amp;ISPICKVAL(StageName,&quot;Prospect&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sales Type Verified</fullName>
        <actions>
            <name>Sales_Type_Verified_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Sales_Type_Verified__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.GTS_Location__c</field>
            <operation>notEqual</operation>
            <value>GTS Slovakia</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Lost</fullName>
        <actions>
            <name>Stage_Lost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>For Domestic And Wholesale Opportunities Stage prior to Closed Lost is stored in Stage Lost field</description>
        <formula>($RecordType.Name =&quot;Domestic&quot;||$RecordType.Name =&quot;Wholesale Voice&quot;)&amp;&amp;  ISCHANGED(StageName)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
