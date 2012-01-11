<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Lead_Completed_Notification_PL</fullName>
        <description>Lead - Completed Notification PL</description>
        <protected>false</protected>
        <recipients>
            <field>Lead_Notification_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications/Lead_Complete_Notification_PL</template>
    </alerts>
    <alerts>
        <fullName>Lead_Dealer_Open</fullName>
        <description>Lead (Dealer) - Open</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Lead_Open_Assigned</template>
    </alerts>
    <alerts>
        <fullName>Lead_Dealer_Time_Remianing</fullName>
        <description>Lead (Dealer) - Time Remianing</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Lead_Time_Remaining_to_complete</template>
    </alerts>
    <alerts>
        <fullName>Lead_Dealer_Unqualified</fullName>
        <description>Lead (Dealer) - Unqualified</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Lead_Unqualified</template>
    </alerts>
    <alerts>
        <fullName>Lead_Disqualified_Dealer</fullName>
        <description>Lead Disqualified (Dealer)</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Account_Lead_Disqualified</template>
    </alerts>
    <alerts>
        <fullName>Lead_Qualified_Dealer</fullName>
        <description>Lead Qualified (Dealer)</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Account_Lead_Qualified</template>
    </alerts>
    <alerts>
        <fullName>Send_notify_to_Partner_user_about_Lead_conversion</fullName>
        <description>Send notify to Partner user about Lead conversion</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_User__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>GTS_Slovakia_Templates/Lead_Assigment_to_Queue</template>
    </alerts>
    <fieldUpdates>
        <fullName>Lead_Account_Validation_Invalid</fullName>
        <description>Account Validation = Invalid</description>
        <field>Account_Validation__c</field>
        <literalValue>Invalid</literalValue>
        <name>Lead - Account Validation - Invalid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Account_Validation_Valid</fullName>
        <description>Lead - Account Validation - Valid</description>
        <field>Account_Validation__c</field>
        <literalValue>Valid</literalValue>
        <name>Lead - Account Validation - Valid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Close_Date_30</fullName>
        <description>Sets Lead Close Date to TODAY +60</description>
        <field>Lead_Close_Date__c</field>
        <formula>TODAY() +60</formula>
        <name>Lead Close Date +60</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Close_Date_current</fullName>
        <field>Lead_Close_Date__c</field>
        <formula>TODAY()</formula>
        <name>Lead Close Date - current</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Close_Time_Limit_Exceeded</fullName>
        <field>Reason_Lost__c</field>
        <literalValue>Time Limit Exceeded</literalValue>
        <name>Lead Close - Time Limit Exceeded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Has_Address_false</fullName>
        <field>Has_Address__c</field>
        <literalValue>0</literalValue>
        <name>Lead Has Address false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Has_Address_true</fullName>
        <field>Has_Address__c</field>
        <literalValue>1</literalValue>
        <name>Lead Has Address true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Status_Unqualified</fullName>
        <field>Status</field>
        <literalValue>Unqualified</literalValue>
        <name>Lead Status - Unqualified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Lead - Account Validation - Invalid</fullName>
        <actions>
            <name>Lead_Account_Validation_Invalid</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Set Account Validation to Invalid if data required for Account are missing</description>
        <formula>AND(NOT(ISPICKVAL(Account_Record_Type__c,&quot;Company&quot;) &amp;&amp; Company&lt;&gt;null &amp;&amp; Registration_Address_OSS__c &lt;&gt; null &amp;&amp; !ISPICKVAL(Identification_type__c , &quot;&quot;) &amp;&amp; !ISPICKVAL(Segment__c , &quot;&quot;) &amp;&amp;!ISPICKVAL(Segment__c , &quot;HOME&quot;) &amp;&amp; !ISPICKVAL( GTS_Location__c , &quot;&quot;) &amp;&amp; FirstName &lt;&gt; null &amp;&amp; LastName &lt;&gt; null &amp;&amp; ( Contact_Phone__c&lt;&gt;null || MobilePhone&lt;&gt;null) &amp;&amp; Email &lt;&gt; null),   NOT(ISPICKVAL(Account_Record_Type__c,&quot;Partner&quot;) &amp;&amp; Company&lt;&gt;null &amp;&amp; Registration_Address_OSS__c &lt;&gt; null &amp;&amp; !ISPICKVAL(Identification_type__c , &quot;&quot;) &amp;&amp; !ISPICKVAL( GTS_Location__c , &quot;&quot;) &amp;&amp; FirstName &lt;&gt; null &amp;&amp; LastName &lt;&gt; null &amp;&amp; ( Contact_Phone__c&lt;&gt;null || MobilePhone&lt;&gt;null) &amp;&amp; Email &lt;&gt; null),   NOT(ISPICKVAL(Account_Record_Type__c,&quot;Residential&quot;) &amp;&amp; Registration_Address_OSS__c &lt;&gt; null &amp;&amp; !ISPICKVAL(Identification_type__c , &quot;&quot;) &amp;&amp; ISPICKVAL(Segment__c , &quot;HOME&quot;) &amp;&amp; !ISPICKVAL( GTS_Location__c , &quot;&quot;) &amp;&amp; FirstName &lt;&gt; null &amp;&amp; LastName &lt;&gt; null &amp;&amp; ( Contact_Phone__c&lt;&gt;null || MobilePhone&lt;&gt;null) &amp;&amp; Email &lt;&gt; null))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Account Validation - Valid</fullName>
        <actions>
            <name>Lead_Account_Validation_Valid</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Set Account Validation to Valid if all required data for new Account are provided</description>
        <formula>OR(ISPICKVAL(Account_Record_Type__c,&quot;Company&quot;) &amp;&amp; Company&lt;&gt;null &amp;&amp; Registration_Address_OSS__c &lt;&gt; null &amp;&amp; !ISPICKVAL(Identification_type__c , &quot;&quot;) &amp;&amp; !ISPICKVAL(Segment__c , &quot;&quot;) &amp;&amp;!ISPICKVAL(Segment__c , &quot;HOME&quot;) &amp;&amp; !ISPICKVAL( GTS_Location__c , &quot;&quot;) &amp;&amp; FirstName &lt;&gt; null &amp;&amp; LastName &lt;&gt; null &amp;&amp; ( Contact_Phone__c&lt;&gt;null || MobilePhone&lt;&gt;null) &amp;&amp; Email &lt;&gt; null,   ISPICKVAL(Account_Record_Type__c,&quot;Partner&quot;) &amp;&amp; Company&lt;&gt;null &amp;&amp; Registration_Address_OSS__c &lt;&gt; null &amp;&amp; !ISPICKVAL(Identification_type__c , &quot;&quot;) &amp;&amp; !ISPICKVAL( GTS_Location__c , &quot;&quot;) &amp;&amp; FirstName &lt;&gt; null &amp;&amp; LastName &lt;&gt; null &amp;&amp; ( Contact_Phone__c&lt;&gt;null || MobilePhone&lt;&gt;null) &amp;&amp; Email &lt;&gt; null,   ISPICKVAL(Account_Record_Type__c,&quot;Residential&quot;) &amp;&amp; Registration_Address_OSS__c &lt;&gt; null &amp;&amp; !ISPICKVAL(Identification_type__c , &quot;&quot;) &amp;&amp; ISPICKVAL(Segment__c , &quot;HOME&quot;) &amp;&amp; !ISPICKVAL( GTS_Location__c , &quot;&quot;) &amp;&amp; FirstName &lt;&gt; null &amp;&amp; LastName &lt;&gt; null &amp;&amp; ( Contact_Phone__c&lt;&gt;null || MobilePhone&lt;&gt;null) &amp;&amp; Email &lt;&gt; null)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Complete Notification</fullName>
        <actions>
            <name>Lead_Completed_Notification_PL</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification to PL Sales Support email alias</description>
        <formula>(ISNEW() &amp;&amp; ISPICKVAL(Status, &quot;Complete&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) ) || (ISCHANGED(Status) &amp;&amp; ISPICKVAL(Status, &quot;Complete&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Has Address false</fullName>
        <actions>
            <name>Lead_Has_Address_false</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Marks Has Address as false i Registration Address on Lead is filled in</description>
        <formula>ISBLANK(Registration_Address_OSS__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Has Address true</fullName>
        <actions>
            <name>Lead_Has_Address_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Marks Has Address as true i Registration Address on Lead is filled in</description>
        <formula>!ISBLANK(Registration_Address_OSS__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Time Exceeded</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.GTS_Location__c</field>
            <operation>equals</operation>
            <value>GTS Poland</value>
        </criteriaItems>
        <description>Closes Lead if processing time is exceeded</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_Close_Time_Limit_Exceeded</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Lead_Status_Unqualified</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.Close_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead Close Date - Closed</fullName>
        <actions>
            <name>Lead_Close_Date_current</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Filles in planned Lead Close Date to current when closing Lead</description>
        <formula>(ISNEW()&amp;&amp; ISPICKVAL(Status,&quot;Qualified&quot; ) || ISNEW()&amp;&amp; ISPICKVAL(Status,&quot;Unqualified&quot; )) || (ISCHANGED(Status) &amp;&amp; (ISPICKVAL(Status, &quot;Qualified&quot;)|| ISPICKVAL(Status,&quot;Unqualified&quot;) )) &amp;&amp; ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; ISPICKVAL(LeadSource, &quot;Extranet&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Close Date - Open Status</fullName>
        <actions>
            <name>Lead_Close_Date_30</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Filles in planned Lead Close Date to +60</description>
        <formula>ISNEW()&amp;&amp; ISPICKVAL(Status,&quot;Open&quot; ) || ISCHANGED( Status ) &amp;&amp;ISPICKVAL (PRIORVALUE(Status),&quot;New&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; ISPICKVAL(LeadSource, &quot;Extranet&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Disqualified %28Dealer%29</fullName>
        <actions>
            <name>Lead_Disqualified_Dealer</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Change of Lead Status from Complete to Open</description>
        <formula>ISPICKVAL(PRIORVALUE(Status),&quot;Complete&quot;) &amp;&amp; ISPICKVAL(Status,&quot;Open&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; ISPICKVAL(LeadSource,&quot;Extranet&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Open %28Dealer%29</fullName>
        <actions>
            <name>Lead_Dealer_Open</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification for Partner Dealer  when Lead is Open</description>
        <formula>ISPICKVAL(PRIORVALUE(Status),&quot;New&quot;) &amp;&amp; ISPICKVAL(Status,&quot;Open&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; ISPICKVAL(LeadSource,&quot;Extranet&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Open %28Dealer%29 Time Remaining 15</fullName>
        <active>true</active>
        <description>Notification for Partner Dealer Time Remaining is 15 days</description>
        <formula>ISPICKVAL(Status,&quot;Open&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;)  &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; ISPICKVAL(LeadSource,&quot;Extranet&quot;)&amp;&amp; Time_Remaining__c &gt;=15</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_Dealer_Time_Remianing</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.Close_Date__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead Open %28Dealer%29 Time Remaining 3</fullName>
        <active>true</active>
        <description>Notification for Partner Dealer Time Remaining is 3 days</description>
        <formula>ISPICKVAL(Status,&quot;Open&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; ISPICKVAL(LeadSource,&quot;Extranet&quot;) &amp;&amp; Time_Remaining__c &gt;=3</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_Dealer_Time_Remianing</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.Close_Date__c</offsetFromField>
            <timeLength>-3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead Qualified %28Dealer%29</fullName>
        <actions>
            <name>Lead_Qualified_Dealer</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>IsConverted=true &amp;&amp; ISPICKVAL(GTS_Location__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK( Partner_Account__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Unqualified %28Dealer%29</fullName>
        <actions>
            <name>Lead_Dealer_Unqualified</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification for Partner Dealer when Lead is Unqualified</description>
        <formula>ISPICKVAL(Status,&quot;Unqualified&quot;) &amp;&amp; ISPICKVAL(GTS_Location__c, &quot;GTS Poland&quot;) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp; ISPICKVAL(LeadSource,&quot;Extranet&quot;) &amp;&amp; NOT(ISPICKVAL(Reason_Lost__c ,&quot;Time Limit Exceeded&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify Partner User about Conversion</fullName>
        <actions>
            <name>Send_notify_to_Partner_user_about_Lead_conversion</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.IsConverted</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.GTS_Location__c</field>
            <operation>equals</operation>
            <value>GTS Slovakia</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
