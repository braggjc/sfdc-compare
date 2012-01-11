<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Test</fullName>
        <description>Test</description>
        <protected>false</protected>
        <recipients>
            <recipient>GTS Energis Retail</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Retail_Email_Templates/Contract_Provisioning_Reminder</template>
    </alerts>
    <rules>
        <fullName>Notify when owner changed</fullName>
        <actions>
            <name>SendQuote</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Send task to user assigned as new owner of request quotation with link to request quotation</description>
        <formula>ISCHANGED( OwnerId  )   &amp;&amp;   PRIORVALUE( OwnerId  )  &lt;&gt; NULL</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>SendQuote</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please provide your quote for the assigned request quotation, thanks</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Request_Quotation__c.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Send Quote</subject>
    </tasks>
</Workflow>
