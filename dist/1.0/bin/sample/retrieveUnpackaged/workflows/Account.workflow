<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Account_Dealer_Account_Reassigned</fullName>
        <description>Account (Dealer) - Account Reassigned</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Account_Customer_Reassigned</template>
    </alerts>
    <alerts>
        <fullName>Account_Dealer_Lead_Qualified</fullName>
        <description>Account (Dealer) - Lead Qualified</description>
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
        <fullName>Account_Dealer_Status_Inactive</fullName>
        <description>Account (Dealer) - Status Inactive</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply-sfdc@gtsenergis.pl</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Notifications_for_Partners_PL/Account_Customer_Inactivated</template>
    </alerts>
    <fieldUpdates>
        <fullName>Partner_Emaill_Acc</fullName>
        <field>Partner_Email__c</field>
        <formula>Partner_Account__r.Email__c</formula>
        <name>Partner Emaill - Acc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateUniquenessString_ForNameAndAddress</fullName>
        <description>updating Uniqe ID field for Accounts with Company record type and &quot;Name and Address&quot; value in ID Type field.</description>
        <field>UniqueIDs__c</field>
        <formula>RecordTypeId+TEXT(GTS_Location_del__c)+TEXT(Identification_type__c)+UPPER(Name ) + UPPER(ShippingStreet ) + UPPER(ShippingCity )+ID_Extension__c</formula>
        <name>UpdateUniquenessString ForNameAndAddress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Primary_care</fullName>
        <description>Set Primary care as INOC on all International customers.</description>
        <field>Primary_Care__c</field>
        <literalValue>INOC</literalValue>
        <name>Update Primary care</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Uniqueness_String</fullName>
        <description>Updates Uniqueness String

if ID Type is Birth date - UniqueID is extended with Name</description>
        <field>UniqueIDs__c</field>
        <formula>IF ( 
 ISPICKVAL( Identification_type__c , &quot;Birth Date&quot;) 
,
(RecordTypeId+TEXT(Identification_type__c)+Tax_Id__c+TEXT(GTS_Location_del__c)+ Name  + ID_Extension__c ) 
,
(RecordTypeId+TEXT(Identification_type__c)+Tax_Id__c+TEXT(GTS_Location_del__c)+ID_Extension__c)  
)</formula>
        <name>Update Uniqueness String</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Uniqueness_String_SCALA_GTSPoland</fullName>
        <description>No uniqueness for SCALA and GTS Poland</description>
        <field>UniqueIDs__c</field>
        <name>Update Uniqueness String SCALA GTSPoland</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Uniqueness_String_for_Personal</fullName>
        <field>UniqueIDs__c</field>
        <formula>RecordTypeId+ UPPER(Name) +  UPPER( ShippingStreet ) +  UPPER( ShippingCity ) + ID_Extension__c</formula>
        <name>Update Uniqueness String for Personal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Validated_By_field_update</fullName>
        <description>Field update filling &quot;Validated By&quot; field with: current date, user first and last name, current value, prior value of &quot;Accound Validation&quot; field</description>
        <field>Validated_By__c</field>
        <formula>TEXT(now()) + &quot; &quot; + $User.FirstName + &quot; &quot; + $User.LastName + &quot; &quot; +  &quot;Changed from: &quot; + BLANKVALUE(TEXT(PRIORVALUE(Account_Validation__c)), &quot;no value&quot;) + &quot; to: &quot; + BLANKVALUE(TEXT(Account_Validation__c), &quot;no value&quot;) + BR()
+PRIORVALUE( Validated_By__c )</formula>
        <name>&quot;Validated By&quot; field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>IntegrationAccountToINTRA</fullName>
        <apiVersion>18.0</apiVersion>
        <endpointUrl>http://62.84.129.23:9080/UpsertAccountToINTRAService/UpsertAccountToINTRAPort</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>emir.ekinovic@gtsnovera.cz</integrationUser>
        <name>IntegrationAccountToINTRA</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>%22Account validation%22 check if changed value</fullName>
        <actions>
            <name>Validated_By_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rule checking if &quot;Account validation&quot; fileld changed its value. 
Rule will not fire up for integration user = System Admin</description>
        <formula>ISCHANGED(Account_Validation__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account %28Dealer%29 - notify dealer about assignment</fullName>
        <actions>
            <name>Account_Dealer_Account_Reassigned</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification</description>
        <formula>ISCHANGED(Partner_Account__c) &amp;&amp; !ISBLANK(Partner_Account__c) &amp;&amp;  ISPICKVAL(GTS_Location_del__c,&quot;GTS Poland&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account %28Dealer%29 Inactivated</fullName>
        <actions>
            <name>Account_Dealer_Status_Inactive</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notification</description>
        <formula>ISPICKVAL(GTS_Location_del__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK( Partner_Account__c) &amp;&amp; ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c, &quot;Inactive&quot; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account %28Dealer%29 Lead Qualified</fullName>
        <actions>
            <name>Account_Dealer_Lead_Qualified</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Notification</description>
        <formula>Account_from_Lead__c=true &amp;&amp; ISPICKVAL(GTS_Location_del__c,&quot;GTS Poland&quot;) &amp;&amp; !ISBLANK( Partner_Account__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>AccountUniquenessUpdate</fullName>
        <actions>
            <name>Update_Uniqueness_String</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Field storing Uniqueness String</description>
        <formula>IF(NOT(isTest__c),   	(NOT(ISBLANK( Tax_Id__c )) &amp;&amp;  NOT( CONTAINS(RecordTypeId,&quot;01220000000LX4P&quot;) &amp;&amp;( ISPICKVAL(GTS_Location_del__c, &quot;GTS Slovakia&quot;))  ) &amp;&amp;  NOT(ISPICKVAL(Identification_type__c, &quot;Name and Address&quot;))  ) &amp;&amp;  	NOT(  ( ISPICKVAL(Identification_type__c,&quot;Other&quot;) &amp;&amp;  (ISPICKVAL(Type,&quot;Partner&quot;)) &amp;&amp; (Supplier__c = True) &amp;&amp;  (ISPICKVAL(GTS_Location_del__c ,&quot;GTS Poland&quot;)))  ),  false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>AccountUniquenessUpdateNameAndAddress</fullName>
        <actions>
            <name>UpdateUniquenessString_ForNameAndAddress</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3) AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Account.Tax_Id__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Residential</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.GTS_Location_del__c</field>
            <operation>notEqual</operation>
            <value>GTS Slovakia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Identification_type__c</field>
            <operation>equals</operation>
            <value>Name and Address</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Company</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.isTest__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Rule, similar to &quot;AccountUniquenessUpdate&quot;, but taking records with ID Type = &quot;Name and Address&quot; and Record type: &quot;Company&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>AccountUniquenessUpdatePersonSlovakia</fullName>
        <actions>
            <name>Update_Uniqueness_String_for_Personal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Residential</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.GTS_Location_del__c</field>
            <operation>equals</operation>
            <value>GTS Slovakia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ShippingStreet</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.isTest__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Updates Field storing Uniqueness String for Personal Accounts for Slovakia</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>AccountUniquenessUpdateSCALA_GTSPoland</fullName>
        <actions>
            <name>Update_Uniqueness_String_SCALA_GTSPoland</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates Field storing Uniqueness String with blan value</description>
        <formula>IF(NOT(isTest__c), ( ISPICKVAL(Identification_type__c,&quot;SCALA&quot;) &amp;&amp; ISPICKVAL(GTS_Location_del__c ,&quot;GTS Poland&quot;) ), false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IntegrationAccountToINTRA</fullName>
        <actions>
            <name>IntegrationAccountToINTRA</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.GTS_Location_del__c</field>
            <operation>equals</operation>
            <value>GTS Romania</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Partner Email</fullName>
        <actions>
            <name>Partner_Emaill_Acc</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Fills in Partner Email for notifiaction purposes. Adress is taken from related to customer Partner Account.</description>
        <formula>!ISBLANK(Partner_Account__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Primary Care</fullName>
        <actions>
            <name>Update_Primary_care</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>International Wholesale,International Retail</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
