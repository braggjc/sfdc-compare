<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ApplyDiscount</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>ApplyDiscount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Apply_Discount</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>Apply Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_Discount</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_Discount1</fullName>
        <field>Is_Done_End__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_Discount2</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_Discount5</fullName>
        <field>Is_Done_End__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_Of_Apply_Discount</fullName>
        <field>Is_Done_End__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_Of_Discount_Apply2</fullName>
        <field>Is_Done_End__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>End_of_Apply_Discount2</fullName>
        <field>Is_Done_End__c</field>
        <literalValue>1</literalValue>
        <name>End Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Start_Discount1</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>Start Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Start_Discount2</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>Start Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Start_Discount5</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>Start Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>isDoneUpdate</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>isDoneUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>start_discount</fullName>
        <field>Is_Done__c</field>
        <literalValue>1</literalValue>
        <name>Start Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CD RRLL Apply Discount</fullName>
        <active>false</active>
        <formula>AND(OR(ISPICKVAL(Type_of_Saving__c, &apos;Discount&apos;),ISPICKVAL(Type_of_Saving__c, &apos;Increase&apos;)),ISPICKVAL( Status__c, &apos;Completed&apos;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>saving__c.Start_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
