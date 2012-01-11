<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Cancelled_Prov_Date_Today</fullName>
        <description>Inserts current date</description>
        <field>Cancelled_in_provisioning_date__c</field>
        <formula>TODAY()</formula>
        <name>Cancelled Prov. Date - Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UnitPrice_fill_in</fullName>
        <description>Fill in UnitPrice with value from Monthly_Fee__c (MRP)</description>
        <field>UnitPrice</field>
        <formula>Monthly_Fee__c</formula>
        <name>UnitPrice - fill in</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UnitPrice_zeroed</fullName>
        <description>UnitPrice = 0</description>
        <field>UnitPrice</field>
        <formula>0</formula>
        <name>UnitPrice - zeroed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>IntegrationOppProductToINTRA</fullName>
        <apiVersion>18.0</apiVersion>
        <endpointUrl>http://62.84.129.23:9080/UpsertAccountToINTRAService/UpsertAccountToINTRAPort</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>emir.ekinovic@gtsnovera.cz</integrationUser>
        <name>IntegrationOppProductToINTRA</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Cancelled Prov%2E Date</fullName>
        <actions>
            <name>Cancelled_Prov_Date_Today</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Date when chekbox Cancelled Pov. was marked</description>
        <formula>Cancelled_in_provisioning__c =true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Include in Revenue - no</fullName>
        <actions>
            <name>UnitPrice_zeroed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 2</booleanFilter>
        <criteriaItems>
            <field>OpportunityLineItem.Include_in_Revenue__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Domestic</value>
        </criteriaItems>
        <description>Do not include MRP in  revenue. If Include in Revenues = flase then UnitPrice is zeroed</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Include in Revenue - yes</fullName>
        <actions>
            <name>UnitPrice_fill_in</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 2</booleanFilter>
        <criteriaItems>
            <field>OpportunityLineItem.Include_in_Revenue__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Domestic</value>
        </criteriaItems>
        <description>Include MRP in revenue. If Include in Revenues = true then UnitPrice is filled in with value in Monthly_fee__c (MRP)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IntegrationOppProductToINTRA</fullName>
        <actions>
            <name>IntegrationOppProductToINTRA</name>
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
</Workflow>
