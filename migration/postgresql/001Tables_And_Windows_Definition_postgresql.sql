-- 28/01/2013 10:58:31 AM VET
-- Sales Force Mobile with ADempiere
INSERT INTO AD_EntityType (AD_Client_ID,AD_EntityType_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,Name,Processing,Updated,UpdatedBy,ModelPackage) VALUES (0,2950000,0,TO_TIMESTAMP('2013-01-28 10:58:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA01','Y','Android Sales Force','N',TO_TIMESTAMP('2013-01-28 10:58:30','YYYY-MM-DD HH24:MI:SS'),100,'org.erpca.model')
;

-- Mar 24, 2013 10:55:17 PM VET
-- Get weight from scale
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,3000204,'N',TO_TIMESTAMP('2013-03-24 22:55:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','N','Y','Y','N','Y','N','N','N',0,'Serial Port Configuration','L','CUST_SerialPortConfig',TO_TIMESTAMP('2013-03-24 22:55:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 24, 2013 10:55:17 PM VET
-- Get weight from scale
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Mar 24, 2013 10:55:19 PM VET
-- Get weight from scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,3000200,TO_TIMESTAMP('2013-03-24 22:55:18','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table CUST_SerialPortConfig',1,'Y','N','Y','Y','CUST_SerialPortConfig','N',1000000,TO_TIMESTAMP('2013-03-24 22:55:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 24, 2013 11:07:37 PM VET
-- Get weight from scale
UPDATE AD_Table_Trl SET Name='Configuración de Puerto Serie',Updated=TO_TIMESTAMP('2013-03-24 23:07:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000204 AND AD_Language='es_MX'
;

-- Mar 24, 2013 11:18:20 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000200,0,'CUST_SerialPortConfig_ID',TO_TIMESTAMP('2013-03-24 23:18:00','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 8900...','ECA03','Y','Serial Port Configuration','Serial Port Configuration',TO_TIMESTAMP('2013-03-24 23:18:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 24, 2013 11:18:20 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 24, 2013 11:20:50 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Configuración de Puerto Serie',PrintName='Configuración de Puerto Serie',Description='Configuración de Puerto Serie ejemplo: COM1 o tty01, 8900...',Updated=TO_TIMESTAMP('2013-03-24 23:20:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000200 AND AD_Language='es_MX'
;

-- Mar 24, 2013 11:28:32 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000200,3000200,0,13,3000204,'CUST_SerialPortConfig_ID',TO_TIMESTAMP('2013-03-24 23:28:15','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 8900...','ECA03',10,'Y','Y','N','N','N','N','Y','Y','N','N','N','N','N','Serial Port Configuration',0,TO_TIMESTAMP('2013-03-24 23:28:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:28:32 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 24, 2013 11:30:47 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000201,102,0,19,3000204,'AD_Client_ID',TO_TIMESTAMP('2013-03-24 23:30:32','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA03',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2013-03-24 23:30:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:30:47 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 24, 2013 11:32:27 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000202,113,0,19,3000204,'AD_Org_ID',TO_TIMESTAMP('2013-03-24 23:31:54','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA03',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2013-03-24 23:31:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:32:27 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 24, 2013 11:50:41 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000203,348,0,20,3000204,'IsActive',TO_TIMESTAMP('2013-03-24 23:50:37','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA03',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2013-03-24 23:50:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:50:42 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 24, 2013 11:52:55 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000204,246,0,16,3000204,'CreatedBy',TO_TIMESTAMP('2013-03-24 23:52:53','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA03',7,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-03-24 23:52:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:52:55 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 24, 2013 11:53:26 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000205,608,0,16,3000204,'UpdatedBy',TO_TIMESTAMP('2013-03-24 23:53:19','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA03',7,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-03-24 23:53:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:53:26 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 24, 2013 11:54:20 PM VET
-- Get weight from scale
UPDATE AD_Column SET AD_Element_ID=607, ColumnName='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.', Name='Updated',Updated=TO_TIMESTAMP('2013-03-24 23:54:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000205
;

-- Mar 24, 2013 11:54:20 PM VET
-- Get weight from scale
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=3000205
;

-- Mar 24, 2013 11:54:20 PM VET
-- Get weight from scale
UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=3000205 AND IsCentrallyMaintained='Y'
;

-- Mar 24, 2013 11:54:31 PM VET
-- Get weight from scale
UPDATE AD_Column SET AD_Element_ID=245, ColumnName='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.', Name='Created',Updated=TO_TIMESTAMP('2013-03-24 23:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000204
;

-- Mar 24, 2013 11:54:31 PM VET
-- Get weight from scale
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=3000204
;

-- Mar 24, 2013 11:54:31 PM VET
-- Get weight from scale
UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=3000204 AND IsCentrallyMaintained='Y'
;

-- Mar 24, 2013 11:58:56 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000206,246,0,18,110,3000204,'CreatedBy',TO_TIMESTAMP('2013-03-24 23:58:47','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA03',10,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-03-24 23:58:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 24, 2013 11:58:56 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 12:00:03 AM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000207,608,0,18,110,3000204,'UpdatedBy',TO_TIMESTAMP('2013-03-25 00:00:00','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA03',10,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-03-25 00:00:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 12:00:03 AM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 12:06:15 AM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000201,0,'SerialPort',TO_TIMESTAMP('2013-03-25 00:06:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Serial Port','Serial Port',TO_TIMESTAMP('2013-03-25 00:06:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 12:06:15 AM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 12:06:29 AM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Puerto Serie',PrintName='Puerto Serie',Updated=TO_TIMESTAMP('2013-03-25 00:06:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000201 AND AD_Language='es_MX'
;

-- Mar 25, 2013 12:07:28 AM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000208,3000201,0,10,3000204,'SerialPort',TO_TIMESTAMP('2013-03-25 00:07:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',60,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Serial Port',0,TO_TIMESTAMP('2013-03-25 00:07:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 12:07:28 AM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 2:57:35 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000202,0,'Bauds',TO_TIMESTAMP('2013-03-25 14:57:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Bauds','Bauds',TO_TIMESTAMP('2013-03-25 14:57:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 2:57:35 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 2:57:58 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Baudios',PrintName='Baudios',Description='Velocidad del Puerto en Baudios',Updated=TO_TIMESTAMP('2013-03-25 14:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000202 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:13:18 PM VET
-- Get weight from scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,3000200,TO_TIMESTAMP('2013-03-25 15:13:18','YYYY-MM-DD HH24:MI:SS'),100,'Speed in Bauds','ECA03','Y','Y','Bauds',TO_TIMESTAMP('2013-03-25 15:13:18','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Mar 25, 2013 3:13:19 PM VET
-- Get weight from scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 25, 2013 3:23:03 PM VET
-- Get weight from scale
UPDATE AD_Reference SET VFormat='0000',Updated=TO_TIMESTAMP('2013-03-25 15:23:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=3000200
;

-- Mar 25, 2013 3:23:23 PM VET
-- Get weight from scale
UPDATE AD_Reference_Trl SET Name='Baudios',Description='Velocidad en Baudios',Updated=TO_TIMESTAMP('2013-03-25 15:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=3000200 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:24:26 PM VET
-- Get weight from scale
UPDATE AD_Reference SET VFormat='000000',Updated=TO_TIMESTAMP('2013-03-25 15:24:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=3000200
;

-- Mar 25, 2013 3:25:15 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000200,TO_TIMESTAMP('2013-03-25 15:25:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','75',TO_TIMESTAMP('2013-03-25 15:25:14','YYYY-MM-DD HH24:MI:SS'),100,'000075')
;

-- Mar 25, 2013 3:25:16 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:25:50 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000201,TO_TIMESTAMP('2013-03-25 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','110',TO_TIMESTAMP('2013-03-25 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,'000110')
;

-- Mar 25, 2013 3:25:50 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:26:59 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000202,TO_TIMESTAMP('2013-03-25 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','300',TO_TIMESTAMP('2013-03-25 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,'000300')
;

-- Mar 25, 2013 3:26:59 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:27:15 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000203,TO_TIMESTAMP('2013-03-25 15:27:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','1200',TO_TIMESTAMP('2013-03-25 15:27:14','YYYY-MM-DD HH24:MI:SS'),100,'001200')
;

-- Mar 25, 2013 3:27:15 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:27:33 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000204,TO_TIMESTAMP('2013-03-25 15:27:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','2400',TO_TIMESTAMP('2013-03-25 15:27:33','YYYY-MM-DD HH24:MI:SS'),100,'002400')
;

-- Mar 25, 2013 3:27:33 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:27:49 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000205,TO_TIMESTAMP('2013-03-25 15:27:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','4800',TO_TIMESTAMP('2013-03-25 15:27:49','YYYY-MM-DD HH24:MI:SS'),100,'004800')
;

-- Mar 25, 2013 3:27:49 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:28:05 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000206,TO_TIMESTAMP('2013-03-25 15:28:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','9600',TO_TIMESTAMP('2013-03-25 15:28:05','YYYY-MM-DD HH24:MI:SS'),100,'009600')
;

-- Mar 25, 2013 3:28:05 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:28:26 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000207,TO_TIMESTAMP('2013-03-25 15:28:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','19200',TO_TIMESTAMP('2013-03-25 15:28:25','YYYY-MM-DD HH24:MI:SS'),100,'019200')
;

-- Mar 25, 2013 3:28:26 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:28:43 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000208,TO_TIMESTAMP('2013-03-25 15:28:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','38400',TO_TIMESTAMP('2013-03-25 15:28:43','YYYY-MM-DD HH24:MI:SS'),100,'038400')
;

-- Mar 25, 2013 3:28:43 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:29:08 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000209,TO_TIMESTAMP('2013-03-25 15:29:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','57600',TO_TIMESTAMP('2013-03-25 15:29:08','YYYY-MM-DD HH24:MI:SS'),100,'057600')
;

-- Mar 25, 2013 3:29:08 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:29:25 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,3000210,TO_TIMESTAMP('2013-03-25 15:29:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','115200',TO_TIMESTAMP('2013-03-25 15:29:24','YYYY-MM-DD HH24:MI:SS'),100,'115200')
;

-- Mar 25, 2013 3:29:25 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:30:20 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000209,3000202,0,17,3000200,3000204,'Bauds',TO_TIMESTAMP('2013-03-25 15:30:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',6,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Bauds',0,TO_TIMESTAMP('2013-03-25 15:30:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 3:30:20 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 3:30:51 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000210,469,0,10,3000204,'Name',TO_TIMESTAMP('2013-03-25 15:30:50','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA03',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','Y','N','Y','N','N','Y','Name',1,TO_TIMESTAMP('2013-03-25 15:30:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 3:30:51 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 3:31:06 PM VET
-- Get weight from scale
UPDATE AD_Column SET IsIdentifier='Y', IsSelectionColumn='Y', SeqNo=2,Updated=TO_TIMESTAMP('2013-03-25 15:31:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000209
;

-- Mar 25, 2013 3:31:23 PM VET
-- Get weight from scale
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2013-03-25 15:31:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000208
;

-- Mar 25, 2013 3:31:41 PM VET
-- Get weight from scale
UPDATE AD_Column SET SeqNo=3,Updated=TO_TIMESTAMP('2013-03-25 15:31:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000209
;

-- Mar 25, 2013 3:31:54 PM VET
-- Get weight from scale
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2013-03-25 15:31:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000208
;

-- Mar 25, 2013 3:32:43 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000203,0,'DataBits',TO_TIMESTAMP('2013-03-25 15:32:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Data Bits','Data Bits',TO_TIMESTAMP('2013-03-25 15:32:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 3:32:43 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 3:32:55 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Bits de Datos',PrintName='Bits de Datos',Updated=TO_TIMESTAMP('2013-03-25 15:32:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000203 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:39:31 PM VET
-- Get weight from scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,3000201,TO_TIMESTAMP('2013-03-25 15:39:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','DataBits',TO_TIMESTAMP('2013-03-25 15:39:29','YYYY-MM-DD HH24:MI:SS'),100,'L','0')
;

-- Mar 25, 2013 3:39:31 PM VET
-- Get weight from scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 25, 2013 3:39:44 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000201,3000211,TO_TIMESTAMP('2013-03-25 15:39:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','5',TO_TIMESTAMP('2013-03-25 15:39:44','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- Mar 25, 2013 3:39:44 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:39:53 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000201,3000212,TO_TIMESTAMP('2013-03-25 15:39:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','6',TO_TIMESTAMP('2013-03-25 15:39:52','YYYY-MM-DD HH24:MI:SS'),100,'6')
;

-- Mar 25, 2013 3:39:53 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:40:01 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000201,3000213,TO_TIMESTAMP('2013-03-25 15:40:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','7',TO_TIMESTAMP('2013-03-25 15:40:00','YYYY-MM-DD HH24:MI:SS'),100,'7')
;

-- Mar 25, 2013 3:40:01 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:40:06 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000201,3000214,TO_TIMESTAMP('2013-03-25 15:40:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','8',TO_TIMESTAMP('2013-03-25 15:40:06','YYYY-MM-DD HH24:MI:SS'),100,'8')
;

-- Mar 25, 2013 3:40:06 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000214 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:40:30 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000211,3000203,0,17,3000201,3000204,'DataBits',TO_TIMESTAMP('2013-03-25 15:40:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Data Bits',0,TO_TIMESTAMP('2013-03-25 15:40:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 3:40:30 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 3:41:09 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000204,0,'Parity',TO_TIMESTAMP('2013-03-25 15:41:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Parity','Parity',TO_TIMESTAMP('2013-03-25 15:41:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 3:41:09 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 3:41:18 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Paridad',PrintName='Paridad',Updated=TO_TIMESTAMP('2013-03-25 15:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000204 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:47:15 PM VET
-- Get weight from scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,3000202,TO_TIMESTAMP('2013-03-25 15:47:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','Parity',TO_TIMESTAMP('2013-03-25 15:47:14','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Mar 25, 2013 3:47:15 PM VET
-- Get weight from scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 25, 2013 3:50:17 PM VET
-- Get weight from scale
UPDATE AD_Reference SET VFormat='0',Updated=TO_TIMESTAMP('2013-03-25 15:50:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=3000202
;

-- Mar 25, 2013 3:50:49 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000202,3000215,TO_TIMESTAMP('2013-03-25 15:50:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','None',TO_TIMESTAMP('2013-03-25 15:50:48','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- Mar 25, 2013 3:50:49 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000215 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:50:56 PM VET
-- Get weight from scale
UPDATE AD_Ref_List_Trl SET Name='Ninguno',Updated=TO_TIMESTAMP('2013-03-25 15:50:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000215 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:51:35 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000202,3000216,TO_TIMESTAMP('2013-03-25 15:51:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Odd',TO_TIMESTAMP('2013-03-25 15:51:35','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Mar 25, 2013 3:51:35 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000216 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:51:41 PM VET
-- Get weight from scale
UPDATE AD_Ref_List_Trl SET Name='Impar',Updated=TO_TIMESTAMP('2013-03-25 15:51:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000216 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:52:04 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000202,3000217,TO_TIMESTAMP('2013-03-25 15:52:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Even',TO_TIMESTAMP('2013-03-25 15:52:04','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- Mar 25, 2013 3:52:04 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000217 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:52:09 PM VET
-- Get weight from scale
UPDATE AD_Ref_List_Trl SET Name='Par',Updated=TO_TIMESTAMP('2013-03-25 15:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000217 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:52:23 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000202,3000218,TO_TIMESTAMP('2013-03-25 15:52:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Mark',TO_TIMESTAMP('2013-03-25 15:52:22','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- Mar 25, 2013 3:52:23 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000218 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:52:36 PM VET
-- Get weight from scale
UPDATE AD_Ref_List_Trl SET Name='Marca',Updated=TO_TIMESTAMP('2013-03-25 15:52:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000218 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:52:51 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000202,3000219,TO_TIMESTAMP('2013-03-25 15:52:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Space',TO_TIMESTAMP('2013-03-25 15:52:50','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- Mar 25, 2013 3:52:51 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000219 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:52:59 PM VET
-- Get weight from scale
UPDATE AD_Ref_List_Trl SET Name='Espacio',Updated=TO_TIMESTAMP('2013-03-25 15:52:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000219 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:54:54 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000212,3000204,0,17,3000202,3000204,'Parity',TO_TIMESTAMP('2013-03-25 15:54:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Parity',0,TO_TIMESTAMP('2013-03-25 15:54:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 3:54:54 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 3:55:38 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000205,0,'StopBits',TO_TIMESTAMP('2013-03-25 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Stop Bits','Stop Bits',TO_TIMESTAMP('2013-03-25 15:55:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 3:55:39 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 3:55:56 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Bit de Parada',PrintName='Bit de Parada',Updated=TO_TIMESTAMP('2013-03-25 15:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000205 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:56:11 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Bits de Parada',PrintName='Bits de Parada',Updated=TO_TIMESTAMP('2013-03-25 15:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000205 AND AD_Language='es_MX'
;

-- Mar 25, 2013 3:58:24 PM VET
-- Get weight from scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,3000203,TO_TIMESTAMP('2013-03-25 15:58:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','StopBits',TO_TIMESTAMP('2013-03-25 15:58:23','YYYY-MM-DD HH24:MI:SS'),100,'L','AAA')
;

-- Mar 25, 2013 3:58:24 PM VET
-- Get weight from scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 25, 2013 3:58:35 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000203,3000220,TO_TIMESTAMP('2013-03-25 15:58:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','1',TO_TIMESTAMP('2013-03-25 15:58:34','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Mar 25, 2013 3:58:35 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000220 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:58:59 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000203,3000221,TO_TIMESTAMP('2013-03-25 15:58:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','2',TO_TIMESTAMP('2013-03-25 15:58:59','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- Mar 25, 2013 3:58:59 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000221 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:59:14 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000203,3000222,TO_TIMESTAMP('2013-03-25 15:59:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','1.5',TO_TIMESTAMP('2013-03-25 15:59:13','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- Mar 25, 2013 3:59:14 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000222 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 3:59:21 PM VET
-- Get weight from scale
UPDATE AD_Reference SET VFormat='0',Updated=TO_TIMESTAMP('2013-03-25 15:59:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=3000203
;

-- Mar 25, 2013 3:59:41 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000213,3000205,0,17,3000203,3000204,'StopBits',TO_TIMESTAMP('2013-03-25 15:59:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',3,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Stop Bits',0,TO_TIMESTAMP('2013-03-25 15:59:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 3:59:41 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 4:00:24 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000206,0,'FlowControl',TO_TIMESTAMP('2013-03-25 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Flow Control','Flow Control',TO_TIMESTAMP('2013-03-25 16:00:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:00:24 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 4:00:35 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Control de Flujo',PrintName='Control de Flujo',Updated=TO_TIMESTAMP('2013-03-25 16:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000206 AND AD_Language='es_MX'
;

-- Mar 25, 2013 4:01:43 PM VET
-- Get weight from scale
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,3000204,TO_TIMESTAMP('2013-03-25 16:01:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','FlowControl',TO_TIMESTAMP('2013-03-25 16:01:43','YYYY-MM-DD HH24:MI:SS'),100,'L','0')
;

-- Mar 25, 2013 4:01:43 PM VET
-- Get weight from scale
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 25, 2013 4:01:58 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000204,3000223,TO_TIMESTAMP('2013-03-25 16:01:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','None',TO_TIMESTAMP('2013-03-25 16:01:57','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- Mar 25, 2013 4:01:58 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000223 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 4:02:03 PM VET
-- Get weight from scale
UPDATE AD_Ref_List_Trl SET Name='Ninguno',Updated=TO_TIMESTAMP('2013-03-25 16:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000223 AND AD_Language='es_MX'
;

-- Mar 25, 2013 4:02:31 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000204,3000224,TO_TIMESTAMP('2013-03-25 16:02:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','RTSCTS IN',TO_TIMESTAMP('2013-03-25 16:02:31','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Mar 25, 2013 4:02:31 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000224 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 4:02:44 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000204,3000225,TO_TIMESTAMP('2013-03-25 16:02:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','RTSCTS OUT',TO_TIMESTAMP('2013-03-25 16:02:43','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- Mar 25, 2013 4:02:44 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000225 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 4:03:10 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000204,3000226,TO_TIMESTAMP('2013-03-25 16:03:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','XON/XOFF IN',TO_TIMESTAMP('2013-03-25 16:03:09','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- Mar 25, 2013 4:03:10 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000226 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 4:03:29 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000204,3000227,TO_TIMESTAMP('2013-03-25 16:03:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','XON/XOFF OUT',TO_TIMESTAMP('2013-03-25 16:03:29','YYYY-MM-DD HH24:MI:SS'),100,'8')
;

-- Mar 25, 2013 4:03:29 PM VET
-- Get weight from scale
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000227 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 25, 2013 4:03:58 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000214,3000206,0,17,3000204,3000204,'FlowControl',TO_TIMESTAMP('2013-03-25 16:03:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Flow Control',0,TO_TIMESTAMP('2013-03-25 16:03:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 4:03:58 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000214 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 4:05:29 PM VET
-- Get weight from scale
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2013-03-25 16:05:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000214
;

-- Mar 25, 2013 4:05:45 PM VET
-- Get weight from scale
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2013-03-25 16:05:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000213
;

-- Mar 25, 2013 4:06:20 PM VET
-- Get weight from scale
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2013-03-25 16:06:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000212
;

-- Mar 25, 2013 4:06:47 PM VET
-- Get weight from scale
UPDATE AD_Column SET DefaultValue='8',Updated=TO_TIMESTAMP('2013-03-25 16:06:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000211
;

-- Mar 25, 2013 4:07:11 PM VET
-- Get weight from scale
UPDATE AD_Column SET DefaultValue='9600',Updated=TO_TIMESTAMP('2013-03-25 16:07:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000209
;

-- Mar 25, 2013 4:10:26 PM VET
-- Get weight from scale
CREATE TABLE CUST_SerialPortConfig (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Bauds VARCHAR(6) DEFAULT '9600' NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_SerialPortConfig_ID NUMERIC(10) NOT NULL, DataBits CHAR(1) DEFAULT '8' NOT NULL, FlowControl CHAR(1) DEFAULT '1' NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Parity CHAR(1) DEFAULT '0' NOT NULL, SerialPort VARCHAR(60) NOT NULL, StopBits VARCHAR(3) DEFAULT '1' NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_SerialPortConfig_Key PRIMARY KEY (CUST_SerialPortConfig_ID))
;

-- Mar 25, 2013 4:12:56 PM VET
-- Get weight from scale
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,3000200,TO_TIMESTAMP('2013-03-25 16:12:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','N','N','Y','Serial Port Configuration','N',TO_TIMESTAMP('2013-03-25 16:12:54','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Mar 25, 2013 4:12:56 PM VET
-- Get weight from scale
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Mar 25, 2013 4:13:51 PM VET
-- Get weight from scale
UPDATE AD_Window_Trl SET Name='Configuración del Puerto Serie',Updated=TO_TIMESTAMP('2013-03-25 16:13:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=3000200 AND AD_Language='es_MX'
;

-- Mar 25, 2013 4:16:36 PM VET
-- Get weight from scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,3000200,3000204,3000200,TO_TIMESTAMP('2013-03-25 16:16:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','N','N','Y','N','N','Y','N','Y','N','N','Port Configuration','N',10,0,TO_TIMESTAMP('2013-03-25 16:16:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:16:36 PM VET
-- Get weight from scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Mar 25, 2013 4:16:59 PM VET
-- Get weight from scale
UPDATE AD_Tab_Trl SET Name='Configuración de Puerto',Updated=TO_TIMESTAMP('2013-03-25 16:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=3000200 AND AD_Language='es_MX'
;

-- Mar 25, 2013 4:17:08 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000203,3000200,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:07','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA03','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-03-25 16:17:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:08 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:08 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000209,3000201,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:08','YYYY-MM-DD HH24:MI:SS'),100,6,'ECA03','Y','Y','Y','N','N','N','N','N','Bauds',TO_TIMESTAMP('2013-03-25 16:17:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:08 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:09 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000201,3000202,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:08','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA03','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-03-25 16:17:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:09 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:10 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000211,3000203,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:09','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA03','Y','Y','Y','N','N','N','N','N','Data Bits',TO_TIMESTAMP('2013-03-25 16:17:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:10 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:11 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000214,3000204,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:10','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA03','Y','Y','Y','N','N','N','N','N','Flow Control',TO_TIMESTAMP('2013-03-25 16:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:11 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:11 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000210,3000205,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:11','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA03','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-03-25 16:17:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:11 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:12 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000202,3000206,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:11','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA03','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-03-25 16:17:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:12 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:13 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000212,3000207,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:12','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA03','Y','Y','Y','N','N','N','N','N','Parity',TO_TIMESTAMP('2013-03-25 16:17:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:13 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:14 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000208,3000208,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:13','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA03','Y','Y','Y','N','N','N','N','N','Serial Port',TO_TIMESTAMP('2013-03-25 16:17:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:14 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:15 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000200,3000209,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:14','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 8900...',10,'ECA03','Y','Y','N','N','N','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-03-25 16:17:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:15 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:17:15 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000213,3000210,0,3000200,TO_TIMESTAMP('2013-03-25 16:17:15','YYYY-MM-DD HH24:MI:SS'),100,3,'ECA03','Y','Y','Y','N','N','N','N','N','Stop Bits',TO_TIMESTAMP('2013-03-25 16:17:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:17:15 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=3000202
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=3000206
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=3000200
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=3000205
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=3000208
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=3000201
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3000207
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3000203
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3000210
;

-- Mar 25, 2013 4:41:27 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3000204
;

-- Mar 25, 2013 4:41:43 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 16:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000206
;

-- Mar 25, 2013 4:41:53 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 16:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000201
;

-- Mar 25, 2013 4:41:59 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 16:41:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000203
;

-- Mar 25, 2013 4:42:05 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 16:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000204
;

-- Mar 25, 2013 4:47:18 PM VET
-- Get weight from scale
UPDATE AD_Table SET AD_Window_ID=3000200,Updated=TO_TIMESTAMP('2013-03-25 16:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000204
;

-- Mar 25, 2013 4:56:53 PM VET
-- Get weight from scale
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,3000205,'N',TO_TIMESTAMP('2013-03-25 16:56:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','N','Y','Y','N','Y','N','N','N',0,'Port Configuration by User','L','CUST_PortConfig_User',TO_TIMESTAMP('2013-03-25 16:56:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:56:53 PM VET
-- Get weight from scale
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Mar 25, 2013 4:56:53 PM VET
-- Get weight from scale
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,3000201,TO_TIMESTAMP('2013-03-25 16:56:53','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table CUST_PortConfig_User',1,'Y','N','Y','Y','CUST_PortConfig_User','N',1000000,TO_TIMESTAMP('2013-03-25 16:56:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 4:57:04 PM VET
-- Get weight from scale
UPDATE AD_Table SET AD_Window_ID=3000200,Updated=TO_TIMESTAMP('2013-03-25 16:57:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000205
;

-- Mar 25, 2013 4:57:48 PM VET
-- Get weight from scale
UPDATE AD_Table_Trl SET Name='Usuarios Asignados',Updated=TO_TIMESTAMP('2013-03-25 16:57:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000205 AND AD_Language='es_MX'
;

-- Mar 25, 2013 5:01:35 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000215,102,0,19,3000205,'AD_Client_ID',TO_TIMESTAMP('2013-03-25 17:01:34','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA03',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2013-03-25 17:01:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:35 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000215 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:36 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000216,113,0,19,3000205,'AD_Org_ID',TO_TIMESTAMP('2013-03-25 17:01:35','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA03',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2013-03-25 17:01:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:36 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000216 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:36 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000217,245,0,16,3000205,'Created',TO_TIMESTAMP('2013-03-25 17:01:36','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA03',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2013-03-25 17:01:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:36 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000217 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:37 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000218,246,0,18,110,3000205,'CreatedBy',TO_TIMESTAMP('2013-03-25 17:01:36','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA03',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2013-03-25 17:01:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:37 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000218 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:38 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000207,0,'CUST_PortConfig_User_ID',TO_TIMESTAMP('2013-03-25 17:01:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Port Configuration by User','Port Configuration by User',TO_TIMESTAMP('2013-03-25 17:01:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:01:38 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 5:01:38 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000219,3000207,0,13,3000205,'CUST_PortConfig_User_ID',TO_TIMESTAMP('2013-03-25 17:01:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',10,'Y','N','N','N','Y','Y','N','N','N','N','N','Port Configuration by User',0,TO_TIMESTAMP('2013-03-25 17:01:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:38 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000219 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:39 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000220,348,0,20,3000205,'IsActive',TO_TIMESTAMP('2013-03-25 17:01:38','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA03',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2013-03-25 17:01:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:39 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000220 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:40 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000221,607,0,16,3000205,'Updated',TO_TIMESTAMP('2013-03-25 17:01:39','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA03',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2013-03-25 17:01:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:40 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000221 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:01:40 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000222,608,0,18,110,3000205,'UpdatedBy',TO_TIMESTAMP('2013-03-25 17:01:40','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA03',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2013-03-25 17:01:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:01:40 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000222 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:03:19 PM VET
-- Get weight from scale
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=3000219
;

-- Mar 25, 2013 5:03:19 PM VET
-- Get weight from scale
DELETE FROM AD_Column WHERE AD_Column_ID=3000219
;

-- Mar 25, 2013 5:05:42 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000223,3000200,0,19,3000205,'CUST_SerialPortConfig_ID',TO_TIMESTAMP('2013-03-25 17:05:42','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 8900...','ECA03',10,'Y','Y','N','N','N','Y','N','Y','Y','N','N','N','N','Serial Port Configuration',1,TO_TIMESTAMP('2013-03-25 17:05:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:05:42 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000223 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:06:10 PM VET
-- Get weight from scale
UPDATE AD_Element SET Description='Serial Port Configuration example: COM1 or tty01, 9600...',Updated=TO_TIMESTAMP('2013-03-25 17:06:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000200
;

-- Mar 25, 2013 5:06:10 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=3000200
;

-- Mar 25, 2013 5:06:10 PM VET
-- Get weight from scale
UPDATE AD_Column SET ColumnName='CUST_SerialPortConfig_ID', Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL WHERE AD_Element_ID=3000200
;

-- Mar 25, 2013 5:06:10 PM VET
-- Get weight from scale
UPDATE AD_Process_Para SET ColumnName='CUST_SerialPortConfig_ID', Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL, AD_Element_ID=3000200 WHERE UPPER(ColumnName)='CUST_SERIALPORTCONFIG_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 25, 2013 5:06:10 PM VET
-- Get weight from scale
UPDATE AD_Process_Para SET ColumnName='CUST_SerialPortConfig_ID', Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL WHERE AD_Element_ID=3000200 AND IsCentrallyMaintained='Y'
;

-- Mar 25, 2013 5:06:10 PM VET
-- Get weight from scale
UPDATE AD_Field SET Name='Serial Port Configuration', Description='Serial Port Configuration example: COM1 or tty01, 9600...', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=3000200) AND IsCentrallyMaintained='Y'
;

-- Mar 25, 2013 5:06:19 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Description='Configuración de Puerto Serie ejemplo: COM1 o tty01, 9600...',Updated=TO_TIMESTAMP('2013-03-25 17:06:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000200 AND AD_Language='es_MX'
;

-- Mar 25, 2013 5:07:26 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000224,138,0,19,3000205,'AD_User_ID',TO_TIMESTAMP('2013-03-25 17:07:25','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact','ECA03',10,'The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','Y','N','N','N','Y','N','Y','N','N','N','N','Y','Usuario',2,TO_TIMESTAMP('2013-03-25 17:07:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 5:07:26 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000224 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 5:09:00 PM VET
-- Get weight from scale
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-03-25 17:09:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000224
;

-- Mar 25, 2013 5:09:49 PM VET
-- Get weight from scale
CREATE TABLE CUST_PortConfig_User (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_User_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_SerialPortConfig_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_PortConfig_User_Key PRIMARY KEY (AD_User_ID, CUST_SerialPortConfig_ID))
;

-- Mar 25, 2013 5:12:03 PM VET
-- Get weight from scale
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,3000201,3000205,3000200,TO_TIMESTAMP('2013-03-25 17:12:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','N','N','Y','N','N','Y','N','N','N','N','Port Configuration by User','N',20,1,TO_TIMESTAMP('2013-03-25 17:12:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:12:03 PM VET
-- Get weight from scale
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Mar 25, 2013 5:12:15 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000220,3000211,0,3000201,TO_TIMESTAMP('2013-03-25 17:12:14','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA03','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-03-25 17:12:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:12:15 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 5:12:16 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000215,3000212,0,3000201,TO_TIMESTAMP('2013-03-25 17:12:15','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA03','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-03-25 17:12:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:12:16 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 5:12:16 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000216,3000213,0,3000201,TO_TIMESTAMP('2013-03-25 17:12:16','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA03','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-03-25 17:12:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:12:16 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 5:12:16 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000223,3000214,0,3000201,TO_TIMESTAMP('2013-03-25 17:12:16','YYYY-MM-DD HH24:MI:SS'),100,'Serial Port Configuration example: COM1 or tty01, 9600...',10,'ECA03','Y','Y','Y','N','N','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-03-25 17:12:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:12:16 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000214 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 5:12:17 PM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000224,3000215,0,3000201,TO_TIMESTAMP('2013-03-25 17:12:16','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact',10,'ECA03','The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','Y','Y','N','N','N','N','N','Usuario',TO_TIMESTAMP('2013-03-25 17:12:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:12:17 PM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000215 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 25, 2013 5:13:08 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=3000212
;

-- Mar 25, 2013 5:13:08 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=3000213
;

-- Mar 25, 2013 5:13:08 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=3000214
;

-- Mar 25, 2013 5:13:08 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=3000211
;

-- Mar 25, 2013 5:13:08 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=3000215
;

-- Mar 25, 2013 5:13:29 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 17:13:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000213
;

-- Mar 25, 2013 5:13:41 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 17:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000211
;

-- Mar 25, 2013 5:21:04 PM VET
-- Get weight from scale
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,3000200,0,TO_TIMESTAMP('2013-03-25 17:21:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','N','N','Y','Material Control (Input / Output)',TO_TIMESTAMP('2013-03-25 17:21:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:21:04 PM VET
-- Get weight from scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 25, 2013 5:21:04 PM VET
-- Get weight from scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 3000200, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=3000200)
;

-- Mar 25, 2013 5:21:19 PM VET
-- Get weight from scale
UPDATE AD_Menu_Trl SET Name='Control de Material (Entrada / Salida)',Updated=TO_TIMESTAMP('2013-03-25 17:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000200 AND AD_Language='es_MX'
;

-- Mar 25, 2013 5:22:47 PM VET
-- Get weight from scale
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,3000201,0,TO_TIMESTAMP('2013-03-25 17:22:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','N','N','Y','Material Setup',TO_TIMESTAMP('2013-03-25 17:22:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:22:47 PM VET
-- Get weight from scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 25, 2013 5:22:47 PM VET
-- Get weight from scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 3000201, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=3000201)
;

-- Mar 25, 2013 5:23:21 PM VET
-- Get weight from scale
UPDATE AD_Menu_Trl SET Name='Configuración',Updated=TO_TIMESTAMP('2013-03-25 17:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000201 AND AD_Language='es_MX'
;

-- Mar 25, 2013 5:23:30 PM VET
-- Get weight from scale
UPDATE AD_Menu SET Name='Setup',Updated=TO_TIMESTAMP('2013-03-25 17:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000201
;

-- Mar 25, 2013 5:23:30 PM VET
-- Get weight from scale
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=3000201
;

-- Mar 25, 2013 5:23:34 PM VET
-- Get weight from scale
UPDATE AD_TreeNodeMM SET Parent_ID=3000200, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=3000201
;

-- Mar 25, 2013 5:24:00 PM VET
-- Get weight from scale
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,3000202,0,3000200,TO_TIMESTAMP('2013-03-25 17:24:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Y','N','N','N','Serial Port Configuration',TO_TIMESTAMP('2013-03-25 17:24:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 5:24:00 PM VET
-- Get weight from scale
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 25, 2013 5:24:00 PM VET
-- Get weight from scale
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 3000202, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=3000202)
;

-- Mar 25, 2013 5:24:05 PM VET
-- Get weight from scale
UPDATE AD_TreeNodeMM SET Parent_ID=3000201, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=3000202
;

-- Mar 25, 2013 5:34:08 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='4800',Updated=TO_TIMESTAMP('2013-03-25 17:34:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000205
;

-- Mar 25, 2013 5:34:20 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='57600',Updated=TO_TIMESTAMP('2013-03-25 17:34:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000209
;

-- Mar 25, 2013 5:34:27 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='38400',Updated=TO_TIMESTAMP('2013-03-25 17:34:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000208
;

-- Mar 25, 2013 5:34:32 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='19200',Updated=TO_TIMESTAMP('2013-03-25 17:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000207
;

-- Mar 25, 2013 5:34:39 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='9600',Updated=TO_TIMESTAMP('2013-03-25 17:34:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000206
;

-- Mar 25, 2013 5:34:46 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='2400',Updated=TO_TIMESTAMP('2013-03-25 17:34:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000204
;

-- Mar 25, 2013 5:34:53 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='1200',Updated=TO_TIMESTAMP('2013-03-25 17:34:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000203
;

-- Mar 25, 2013 5:35:01 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='300',Updated=TO_TIMESTAMP('2013-03-25 17:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000202
;

-- Mar 25, 2013 5:35:07 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='110',Updated=TO_TIMESTAMP('2013-03-25 17:35:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000201
;

-- Mar 25, 2013 5:35:13 PM VET
-- Get weight from scale
UPDATE AD_Ref_List SET Value='75',Updated=TO_TIMESTAMP('2013-03-25 17:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000200
;

-- Mar 25, 2013 5:36:14 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=10,Updated=TO_TIMESTAMP('2013-03-25 17:36:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000201
;

-- Mar 25, 2013 5:36:24 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=10,Updated=TO_TIMESTAMP('2013-03-25 17:36:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000208
;

-- Mar 25, 2013 5:40:26 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=3000208
;

-- Mar 25, 2013 5:40:26 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=3000201
;

-- Mar 25, 2013 5:44:16 PM VET
-- Get weight from scale
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-03-25 17:44:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000208
;

-- Mar 25, 2013 5:44:29 PM VET
-- Get weight from scale
UPDATE AD_Field SET DisplayLength=6,Updated=TO_TIMESTAMP('2013-03-25 17:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000208
;

-- Mar 25, 2013 5:45:46 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=3000211
;

-- Mar 25, 2013 5:45:46 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=3000214
;

-- Mar 25, 2013 5:45:55 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-03-25 17:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000211
;

-- Mar 25, 2013 5:46:01 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-03-25 17:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000215
;

