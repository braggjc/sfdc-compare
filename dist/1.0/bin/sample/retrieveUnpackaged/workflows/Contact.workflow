<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Desynchronize_Contact_Field</fullName>
        <description>Updates desynchronization contact</description>
        <field>ExtranetSynchronized__c</field>
        <literalValue>0</literalValue>
        <name>Desynchronize Contact Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Address</fullName>
        <field>Email_Unique__c</field>
        <formula>Email</formula>
        <name>Email Address</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Email_opt_out</fullName>
        <description>Sets the email opt out Checkbox value to true.</description>
        <field>HasOptedOutOfEmail</field>
        <literalValue>1</literalValue>
        <name>Set_Email_opt_out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SynchFlagChange</fullName>
        <field>Synchronized_with_OCTT__c</field>
        <literalValue>0</literalValue>
        <name>SynchFlagChange</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>IntegrationContactToINTRA</fullName>
        <apiVersion>18.0</apiVersion>
        <endpointUrl>http://62.84.129.23:9080/UpsertAccountToINTRAService/UpsertAccountToINTRAPort</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>emir.ekinovic@gtsnovera.cz</integrationUser>
        <name>IntegrationContactToINTRA</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>ContactOCTTdesynch</fullName>
        <actions>
            <name>SynchFlagChange</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Workflow responsible for changing the &quot;Synchronized with OCTT&quot; flag in case when some integrated field has been changed.</description>
        <formula>If(  OR(  AND(  Created_in_OCTT__c, OR(AND(INCLUDES(  PRIORVALUE(Role__c),&apos;Technical User&apos;  ), NOT(INCLUDES(Role__c,&apos;Technical User&apos;))  ), AND(INCLUDES(Role__c,&apos;Technical User&apos;), NOT(INCLUDES(PRIORVALUE(Role__c),&apos;Technical User&apos;))),   ISCHANGED( FirstName), ISCHANGED( LastName), ISCHANGED(Phone), ISCHANGED(MobilePhone), ISCHANGED( Description), ISCHANGED(Email))  ),   AND(  Created_in_OCTT__c, OR(AND(INCLUDES(  PRIORVALUE(Role__c),&apos;Planned Work&apos;  ), NOT(INCLUDES(Role__c,&apos;Planned Work&apos;))  ), AND(INCLUDES(Role__c,&apos;Planned Work&apos;), NOT(INCLUDES(PRIORVALUE(Role__c),&apos;Planned Work&apos;))),   ISCHANGED( FirstName), ISCHANGED( LastName), ISCHANGED(Phone), ISCHANGED(MobilePhone), ISCHANGED( Description), ISCHANGED(Email))  )   )  ,true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Desynchronize Contact</fullName>
        <actions>
            <name>Desynchronize_Contact_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>After every change, if Contact is Extranet User, desynchronization is marked</description>
        <formula>AND(Extranet_User__c = true,  PRIORVALUE( ExtranetSynchronized__c ) = true,  LastModifiedBy.Username != &apos;admin@gtsce.com.develop1&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Address Uniqueness</fullName>
        <actions>
            <name>Email_Address</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email Address Uniqueness</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email_opt_out</fullName>
        <actions>
            <name>Set_Email_opt_out</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>The rule marks an e-mail opt out field upon the record creation</description>
        <formula>IF( OwnerId = &quot;&quot;,HasOptedOutOfEmail = TRUE, HasOptedOutOfEmail = FALSE)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>IntegrationContactToINTRA</fullName>
        <actions>
            <name>IntegrationContactToINTRA</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.GTS_Location_del__c</field>
            <operation>equals</operation>
            <value>GTS Romania</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
