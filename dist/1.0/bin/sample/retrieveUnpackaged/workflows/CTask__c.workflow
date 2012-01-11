<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_about_Task_Creation_and_Queue_Assignment</fullName>
        <description>Notification about Task Creation and Queue Assignment</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Created_Notification_Queue</template>
    </alerts>
    <alerts>
        <fullName>Notification_about_Task_Error</fullName>
        <description>Notification about Task Error</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Error_Notification</template>
    </alerts>
    <alerts>
        <fullName>Notification_about_finished_conditional_plan</fullName>
        <description>Notification about finished conditional plan</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Plan_Finished</template>
    </alerts>
    <alerts>
        <fullName>Notification_that_created_task_is_still_unassigned_level_1</fullName>
        <description>Notification, that created task is still unassigned (level 1)</description>
        <protected>false</protected>
        <recipients>
            <field>EscalationLevel1__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Escalation_Level_1</template>
    </alerts>
    <alerts>
        <fullName>Notification_that_created_task_is_still_unassigned_level_2</fullName>
        <description>Notification, that created task is still unassigned (level 2)</description>
        <protected>false</protected>
        <recipients>
            <field>EscalationLevel2__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Escalation_Level_2</template>
    </alerts>
    <alerts>
        <fullName>Notification_that_created_task_is_still_unassigned_level_3</fullName>
        <description>Notification, that created task is still unassigned (level 3)</description>
        <protected>false</protected>
        <recipients>
            <field>EscalationLevel3__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Escalation_Level_3</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_and_Creator_of_Task_in_New_status</fullName>
        <description>Notify Owner of Task in New status</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Updated_Notification</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_that_task_has_been_accepted</fullName>
        <description>Notify Owner that task has been accepted</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Accepted_Notification</template>
    </alerts>
    <alerts>
        <fullName>Notify_Task_Creator_when_Owner_rejects_assignment</fullName>
        <description>Notify Task Creator when Owner rejects assignment</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Assignment_Rejected_Notification</template>
    </alerts>
    <alerts>
        <fullName>Notify_account_owner_only_IS_customers_when_the_task_is_marked_as_done</fullName>
        <description>Notify account owner (only IS customers) when the task is marked as done.</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Done_Notification</template>
    </alerts>
    <alerts>
        <fullName>Task_Dellivery_Rejected</fullName>
        <description>Task Dellivery Rejected - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Delivery_Rejected_Notification</template>
    </alerts>
    <alerts>
        <fullName>Task_Done_Notify_Creator</fullName>
        <description>Task Done - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Done_Notification</template>
    </alerts>
    <alerts>
        <fullName>Task_On_Hold_Notification_after_1_day</fullName>
        <description>Task On Hold Notification, after 1 day</description>
        <protected>false</protected>
        <recipients>
            <field>Last_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_On_Hold_Notification_after_1_day</template>
    </alerts>
    <alerts>
        <fullName>Task_On_Hold_Notification_after_1_hour</fullName>
        <description>Task On Hold Notification, after 1 hour</description>
        <protected>false</protected>
        <recipients>
            <field>LastModifiedById</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Last_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_On_Hold_Notification_after_1_day</template>
    </alerts>
    <alerts>
        <fullName>Task_On_Hold_Notification_after_2_days</fullName>
        <description>Task On Hold Notification, after 2 days</description>
        <protected>false</protected>
        <recipients>
            <field>Last_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_On_Hold_Notification_after_1_day</template>
    </alerts>
    <alerts>
        <fullName>Task_On_Hold_Notification_after_2_hours</fullName>
        <description>Task On Hold Notification, after 2 hours</description>
        <protected>false</protected>
        <recipients>
            <field>LastModifiedById</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Last_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_On_Hold_Notification_after_1_day</template>
    </alerts>
    <alerts>
        <fullName>Task_Rejected_Notify_Creator</fullName>
        <description>Task Rejected - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Rejected_Notification</template>
    </alerts>
    <alerts>
        <fullName>Task_owner_notification_when_the_status_was_changed_from_On_Hold_to_In_Progress</fullName>
        <description>Task owner notification, when the status was changed from On Hold to In Progress</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Status_On_Hold_was_changed_to_In_Progress</template>
    </alerts>
    <alerts>
        <fullName>Task_reassigned_notify_New_owner_and_creator</fullName>
        <description>Task reassigned - notify New owner and creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Reassignment_Notification</template>
    </alerts>
    <alerts>
        <fullName>creatorcommentnotifyowner</fullName>
        <description>Creator Comment - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>creatorreassignedtasknotifylastownerandnewowner</fullName>
        <description>Creator Reassigned Task - Notify New Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Reassignment_Notification</template>
    </alerts>
    <alerts>
        <fullName>creatorreassignedtasknotifyowner</fullName>
        <description>Creator Reassigned Task - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Reassignment_Notification</template>
    </alerts>
    <alerts>
        <fullName>othercommentnotifycreator</fullName>
        <description>Other Comment - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>othercommentnotifyownerandcreator</fullName>
        <description>Other Comment - Notify Owner and Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>othercommentnotifyownercreator</fullName>
        <description>Other Comment - Notify Owner-Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>otherreassignedtasknotifycreatorlastownerandnewowner</fullName>
        <description>Other Reassigned Task - Notify Creator, Last Owner and New Owner</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Last_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Reassignment_Notification</template>
    </alerts>
    <alerts>
        <fullName>ownercommentnotifycreator</fullName>
        <description>Owner Comment - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Comment_Notification</template>
    </alerts>
    <alerts>
        <fullName>ownerreassignedtasknotifycreatorandnewowner</fullName>
        <description>Owner Reassigned Task - Notify Creator and New Owner</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Reassignment_Notification</template>
    </alerts>
    <alerts>
        <fullName>taskcancellednotifyowner</fullName>
        <description>Task Cancelled - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Cancelled_Notification</template>
    </alerts>
    <alerts>
        <fullName>taskcreatednotifyowner</fullName>
        <description>Task Created - Notify Assigned User</description>
        <protected>false</protected>
        <recipients>
            <field>Assignee__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Created_Notification</template>
    </alerts>
    <alerts>
        <fullName>taskescalationnotification</fullName>
        <description>Task Escalation Notification</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Unassigned</template>
    </alerts>
    <alerts>
        <fullName>taskexpirationnotifyowner</fullName>
        <description>Task Expiration - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_Reminder</template>
    </alerts>
    <alerts>
        <fullName>taskincancellationnotifycreator</fullName>
        <description>Task In Cancellation - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_In_Cancellation_Notification</template>
    </alerts>
    <alerts>
        <fullName>taskonholdnotifycreator</fullName>
        <description>Task On Hold - Notify Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_On_Hold_Notification</template>
    </alerts>
    <alerts>
        <fullName>taskonholdnotifyowner</fullName>
        <description>Task On Hold - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Notifications/Task_On_Hold_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>OnHoldPrevious</fullName>
        <field>On_Hold_Duration_Prec__c</field>
        <formula>IF(ISBLANK(On_Hold_Duration_Prec__c), 0, On_Hold_Duration_Prec__c) + IF(AND(NOT(ISBLANK( On_Hold_Started__c)), NOT(ISBLANK(On_Hold_Ended__c))), On_Hold_Ended__c - On_Hold_Started__c, 0)</formula>
        <name>OnHoldPrevious</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PP_Completed_Date_Update</fullName>
        <description>Updates Completed Date</description>
        <field>PP_Task_Completed__c</field>
        <formula>now()</formula>
        <name>PP Completed Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PP_Start_Date_Update</fullName>
        <description>Updates Start Date</description>
        <field>PP_Task_Start_Date__c</field>
        <formula>now()</formula>
        <name>PP Start Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_APP_End_Date</fullName>
        <field>Actual_Provisioning_End_Date__c</field>
        <formula>IF ( ISNULL( Actual_Provisioning_End_Date__c ),  TODAY(),Actual_Provisioning_End_Date__c)</formula>
        <name>Stamp APP End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_APP_Start_Date</fullName>
        <field>Actual_Provisioning_Start_Date__c</field>
        <formula>now()</formula>
        <name>Stamp APP Start Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Actual_Provisioning_Plan_Start_Dat</fullName>
        <description>Stamps Actual Provisioning start date</description>
        <field>Actual_Provisioning_Start_Date__c</field>
        <formula>Accepted_Date__c</formula>
        <name>Stamp Actual Provisioning Plan Start Dat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>fillacceptancedate</fullName>
        <field>Acceptance_Date__c</field>
        <formula>now()</formula>
        <name>FillAcceptanceDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>fillaccepteddate</fullName>
        <field>Accepted_Date__c</field>
        <formula>Now()</formula>
        <name>Fill Accepted Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>fillcloseddate</fullName>
        <field>Closed_Date__c</field>
        <formula>Now()</formula>
        <name>FillClosedDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>fillfinisheddate</fullName>
        <field>Finshed_Date__c</field>
        <formula>Now()</formula>
        <name>Fill Finished Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>onholdend</fullName>
        <field>On_Hold_Ended__c</field>
        <formula>NOW()</formula>
        <name>OnHoldEnd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>onholdendclear</fullName>
        <field>On_Hold_Ended__c</field>
        <name>OnHoldEndClear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>onholdstart</fullName>
        <field>On_Hold_Started__c</field>
        <formula>NOW()</formula>
        <name>OnHoldStart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>PP Completed Date Update</fullName>
        <actions>
            <name>PP_Completed_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Updates Completed Date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PP Start Date Update</fullName>
        <actions>
            <name>PP_Start_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>In Progress</value>
        </criteriaItems>
        <description>Updates Start Date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stamp Actual Provisioning Start Date</fullName>
        <actions>
            <name>Stamp_Actual_Provisioning_Plan_Start_Dat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>CTask__c.Actual_Provisioning_Start_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Provisioning Plan</value>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.Accepted_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>In Progress</value>
        </criteriaItems>
        <description>Stamps the Actual Provisioing Start Date on Provisioning Plan Tasks</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Accepted from Queue</fullName>
        <actions>
            <name>Notify_Owner_that_task_has_been_accepted</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends notification to the Owner when Task is accepted from Queue</description>
        <formula>IF(IStask__c = &apos;COLORADO&apos; &amp;&amp; ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; LastModifiedById &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; CreatedById &amp;&amp; CONTAINS( PRIORVALUE(OwnerId) , &apos;00G&apos;) , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Cancelled</fullName>
        <actions>
            <name>taskcancellednotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification when Task is set to Cancelled</description>
        <formula>IF( IStask__c = &apos;IS&apos; ,  LastModifiedById  &lt;&gt; OwnerId &amp;&amp; CreatedById &lt;&gt; OwnerId &amp;&amp;  ISPICKVAL(Status__c, &apos;Cancelled&apos;) , false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Comment Added %5BCreator%5D</fullName>
        <actions>
            <name>creatorcommentnotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification when Comment has been added by Task Creator</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; ISCHANGED(Comments__c) &amp;&amp; LastModifiedById = CreatedById &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Comment Added %5BOther%5D</fullName>
        <actions>
            <name>othercommentnotifyownerandcreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification about comment added by person other than Creator and Owner if Owner is not Queue</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; ISCHANGED(Comments__c) &amp;&amp; LastModifiedById &lt;&gt; OwnerId &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; &amp;&amp;  AssignedQueue__c =&apos;&apos; , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Comment Added %5BOther%5D Owner is Queue</fullName>
        <actions>
            <name>othercommentnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification about comment added by person other than Creator and Owner if Owner is Queue</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; ISCHANGED(Comments__c) &amp;&amp; LastModifiedById &lt;&gt; OwnerId &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; &amp;&amp; AssignedQueue__c &lt;&gt;&apos;&apos; , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Comment Added %5BOwner%5D</fullName>
        <actions>
            <name>ownercommentnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification about Comment added by Task Owner</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; ISCHANGED(Comments__c) &amp;&amp; LastModifiedById = OwnerId &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Comment Added %5BSelf-Task Other%5D</fullName>
        <actions>
            <name>othercommentnotifyownercreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification about comment added by person other than Creator and Owner when Creator is Owner</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; ISCHANGED(Comments__c) &amp;&amp; LastModifiedById &lt;&gt; OwnerId &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; OwnerId = CreatedById &amp;&amp; LastAction__c = &apos;Add Comment&apos; , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Completed %5BOwner%5D</fullName>
        <actions>
            <name>Task_Done_Notify_Creator</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends notification when Owner Marks Task as Done</description>
        <formula>IF( isAutomatic__c  = &quot;false&quot; &amp;&amp; ISPICKVAL(Status__c, &apos;Completed&apos;) &amp;&amp; ISCHANGED(Status__c) &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; CreatedById &lt;&gt; OwnerId , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Created</fullName>
        <actions>
            <name>taskcreatednotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification after Task has been created</description>
        <formula>IF(CreatedById &lt;&gt; OwnerId &amp;&amp; Assignee__c != null , true, false)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Task Created - Queue</fullName>
        <actions>
            <name>Notification_about_Task_Creation_and_Queue_Assignment</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification after Task has been created and assigned to Queue</description>
        <formula>IF(CreatedById &lt;&gt; OwnerId &amp;&amp; AssignedQueue__c != &apos;&apos; &amp;&amp; AssignedQueue__c != null &amp;&amp; Assigned_Queue__c &lt;&gt; &apos;Costing SK&apos; &amp;&amp; Assigned_Queue__c &lt;&gt; &apos;Provisioning WS International SK&apos; &amp;&amp; Assigned_Queue__c &lt;&gt; &apos;Provisioning Retail SK&apos;, true, false)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Task Delivery Rejected %5BCreator%5D</fullName>
        <actions>
            <name>Task_Dellivery_Rejected</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends Notification when Task delivery has been rejected by Creator</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; ISCHANGED(LastAction__c) &amp;&amp; LastModifiedById = CreatedById &amp;&amp; OwnerId &lt;&gt; CreatedById &amp;&amp; LastAction__c = &apos;Reject Delivery&apos; , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Done %5BOwner%5D</fullName>
        <actions>
            <name>Task_Done_Notify_Creator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Owner Marks Task as Done</description>
        <formula>IF(ISPICKVAL(Status__c, &apos;Done&apos;) &amp;&amp; ISCHANGED(Status__c) &amp;&amp; LastModifiedById &lt;&gt; CreatedById &amp;&amp; CreatedById &lt;&gt; OwnerId , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Done - notifiy account owner</fullName>
        <actions>
            <name>Notify_account_owner_only_IS_customers_when_the_task_is_marked_as_done</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL(Status__c, &apos;Done&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Error</fullName>
        <actions>
            <name>Notification_about_Task_Error</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notifies Owner and creator about Task Error</description>
        <formula>ISPICKVAL(Status__c, &apos;Error&apos;) &amp;&amp;  NOT(ISPICKVAL(PRIORVALUE(Status__c), &apos;Error&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Escalation Level 1</fullName>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.EscalationLevel1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends escalation when Order not assigned</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notification_that_created_task_is_still_unassigned_level_1</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>CTask__c.CreatedDate</offsetFromField>
            <timeLength>4</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Task Escalation Level 2</fullName>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.EscalationLevel2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends escalation when Order not assigned</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notification_that_created_task_is_still_unassigned_level_2</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>CTask__c.CreatedDate</offsetFromField>
            <timeLength>8</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Task Escalation Level 3</fullName>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.EscalationLevel3__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends escalation when Order not assigned</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notification_that_created_task_is_still_unassigned_level_3</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>CTask__c.CreatedDate</offsetFromField>
            <timeLength>12</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Task In Cancellation</fullName>
        <actions>
            <name>taskincancellationnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends Notification when Task is set to In Cancellation</description>
        <formula>IF( IStask__c = &apos;IS&apos; &amp;&amp; LastModifiedById = OwnerId &amp;&amp; ISPICKVAL(Status__c, &apos;In Cancellation&apos;) &amp;&amp; CreatedById &lt;&gt; OwnerId , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Not Assigned Escalation</fullName>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <description>Sends escalation notification if Task was not accepted for specified period of time</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Task On Hold %5BCreator%5D</fullName>
        <actions>
            <name>taskonholdnotifyowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Creator puts Task On Hold</description>
        <formula>IF( IStask__c = &apos;IS&apos; , ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c, &apos;On Hold&apos;) &amp;&amp; LastModifiedById = CreatedById  &amp;&amp; CreatedById &lt;&gt; OwnerId , false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task On Hold %5BOwner%5D</fullName>
        <actions>
            <name>taskonholdnotifycreator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Owner puts Task On Hold</description>
        <formula>IF( IStask__c = &apos;IS&apos; , ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c, &apos;On Hold&apos;) &amp;&amp; LastModifiedById = OwnerId &amp;&amp; CreatedById &lt;&gt; OwnerId , false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task On Hold Notification%2C after 1 day</fullName>
        <active>false</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>On Hold</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Task On Hold Notification%2C after some hourse</fullName>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>Awaiting,Completed,In Progress,Done,Cancelled,On Hold,Rejected,In Cancellation,Pending,Error</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Task Plan Finished</fullName>
        <actions>
            <name>Notification_about_finished_conditional_plan</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Task_Plan_Notification__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends email notification to Task creator, who triggered conditional Task Plan</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Task Reassigned %5BCreator%5D</fullName>
        <actions>
            <name>creatorreassignedtasknotifylastownerandnewowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Task reassigned by creator to another user</description>
        <formula>IF(ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) = LastModifiedById &amp;&amp; PRIORVALUE(OwnerId) = CreatedById , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Reassigned %5BOther%5D</fullName>
        <actions>
            <name>otherreassignedtasknotifycreatorlastownerandnewowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Task reassigned by person not being a task owner to another user</description>
        <formula>IF(ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; LastModifiedById &amp;&amp; OwnerId &lt;&gt; LastModifiedById &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; CreatedById &amp;&amp; NOT(CONTAINS( PRIORVALUE(OwnerId) , &apos;00G&apos;)) , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Reassigned %5BOwner%5D</fullName>
        <actions>
            <name>ownerreassignedtasknotifycreatorandnewowner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Task reassigned by current assignee to another user</description>
        <formula>IF(ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) = LastModifiedById &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; CreatedById, true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Reassigned %5BPrevious owner queue%5D</fullName>
        <actions>
            <name>Task_reassigned_notify_New_owner_and_creator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Task reassigned by person not being a task owner to another user, previous owner was queue</description>
        <formula>IF(ISCHANGED(OwnerId) &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; LastModifiedById &amp;&amp; OwnerId &lt;&gt; LastModifiedById &amp;&amp; PRIORVALUE(OwnerId) &lt;&gt; CreatedById &amp;&amp; CONTAINS( PRIORVALUE(OwnerId) , &apos;00G&apos;) , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Reject Assignment %5BNotify Creator%5D</fullName>
        <actions>
            <name>Notify_Task_Creator_when_Owner_rejects_assignment</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends notification to Creator when Owner rejects task assignment (both on New and In Progress status)</description>
        <formula>IF( IStask__c = &apos;IS&apos; , ISCHANGED(LastAction__c) &amp;&amp; (LastAction__c  = &apos;Reject Assignment&apos;) , false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Rejected</fullName>
        <actions>
            <name>Task_Rejected_Notify_Creator</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Task was Rejected</description>
        <formula>IF(ISCHANGED(Status__c) &amp;&amp; ISPICKVAL(Status__c, &apos;Rejected&apos;) &amp;&amp;  CreatedById &lt;&gt;  LastModifiedById , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Task Reminder</fullName>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Remind_days__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends Notification to Task Owner when Due Date is close</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Task status New</fullName>
        <actions>
            <name>Notify_Owner_and_Creator_of_Task_in_New_status</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends notification when Task status is set to New</description>
        <formula>IF( isAutomatic__c  = &quot;false&quot; &amp;&amp; IStask__c = &apos;COLORADO&apos; &amp;&amp; ISPICKVAL(Status__c, &apos;New&apos;) &amp;&amp;  ISCHANGED(Status__c) , true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TaskClosedCancelled</fullName>
        <actions>
            <name>fillcloseddate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets value of Closed Date</description>
        <formula>OR(  AND(ISCHANGED( Status__c ),ISPICKVAL(Status__c,&quot;Completed&quot;)),  AND(ISCHANGED( Status__c ),ISPICKVAL(Status__c,&quot;Cancelled&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TaskCustomerAccepted</fullName>
        <actions>
            <name>fillacceptancedate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets date of Customer Aceptance</description>
        <formula>ISCHANGED( Customer_Accepted__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TaskDone</fullName>
        <actions>
            <name>fillfinisheddate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets date of status change to Done</description>
        <formula>OR( AND(ISCHANGED( Status__c ),ISPICKVAL(Status__c,&quot;Done&quot;)), AND(ISCHANGED( Status__c ),ISPICKVAL(Status__c,&quot;Completed&quot;),  ISBLANK( Finshed_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TaskDoneOrCompleted</fullName>
        <actions>
            <name>Stamp_APP_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>Done</value>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Sets date of status change to Done or Completed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TaskInProgressFirst</fullName>
        <actions>
            <name>Stamp_APP_Start_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>fillaccepteddate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CTask__c.Status__c</field>
            <operation>equals</operation>
            <value>In Progress</value>
        </criteriaItems>
        <criteriaItems>
            <field>CTask__c.Accepted_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sets date of status change to In Progress</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TaskOnHoldEnd</fullName>
        <actions>
            <name>OnHoldPrevious</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>onholdend</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets date of On Hold finish</description>
        <formula>IF(AND(ISCHANGED(Status__c), ISPICKVAL(PRIORVALUE(Status__c), &apos;On Hold&apos;) ),true,false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TaskOnHoldStart</fullName>
        <actions>
            <name>onholdendclear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>onholdstart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets date of On Hold start</description>
        <formula>ISCHANGED(Status__c) &amp;&amp;  ISPICKVAL(Status__c, &apos;On Hold&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>on_hold_notification</fullName>
        <actions>
            <name>Task_owner_notification_when_the_status_was_changed_from_On_Hold_to_In_Progress</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>OwnerId &lt;&gt;  LastModifiedById &amp;&amp; ISCHANGED(Status__c)  &amp;&amp;   ISPICKVAL(Status__c, &apos;In Progress&apos;) &amp;&amp;ISPICKVAL(PRIORVALUE(Status__c) , &apos;On Hold&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
