<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notify_AM_that_Calculation_is_ready_for_Submitting</fullName>
        <description>Notify AM that Calculation is ready for Submitting</description>
        <protected>false</protected>
        <recipients>
            <field>Opportunity_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Calcualtion_Ready_For_Submitting</template>
    </alerts>
    <rules>
        <fullName>Notify about ready for submitting</fullName>
        <actions>
            <name>Notify_AM_that_Calculation_is_ready_for_Submitting</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SFDC_Calculation__c.Ready_for_submitting__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>SFDC_Calculation__c.Evaluation_Type__c</field>
            <operation>notEqual</operation>
            <value>Price List</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
