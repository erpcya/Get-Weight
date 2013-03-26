-- Mar 25, 2013 11:42:57 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000208,0,'StrLength',TO_DATE('2013-03-25 23:42:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','String Length','String Length',TO_DATE('2013-03-25 23:42:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 11:42:58 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 11:43:23 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Longitud de Trama',PrintName='Longitud de Trama',Updated=TO_DATE('2013-03-25 23:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000208 AND AD_Language='es_MX'
;

-- Mar 25, 2013 11:44:14 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000225,3000208,0,29,3000204,'StrLength',TO_DATE('2013-03-25 23:44:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','String Length',0,TO_DATE('2013-03-25 23:44:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 11:44:14 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000225 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 11:45:35 PM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD StrLength NUMBER NOT NULL
;

-- Mar 25, 2013 11:52:06 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000209,0,'StartCharacter',TO_DATE('2013-03-25 23:52:05','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)','ECA03','Y','Start Character','Start Character',TO_DATE('2013-03-25 23:52:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 11:52:06 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 11:52:26 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Caracter de Inicio',PrintName='Caracter de Inicio',Description='Caracter de Inicio ejemplo: ASCII (3)',Updated=TO_DATE('2013-03-25 23:52:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000209 AND AD_Language='es_MX'
;

-- Mar 25, 2013 11:53:03 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000210,0,'EndCharacter',TO_DATE('2013-03-25 23:53:02','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (3)','ECA03','Y','End Character','End Character',TO_DATE('2013-03-25 23:53:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 11:53:03 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 11:53:35 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Caracter de Fin',PrintName='Caracter de Fin',Description='Caracter de Fin de Trama ejemplo: ASCII (28)',Updated=TO_DATE('2013-03-25 23:53:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000210 AND AD_Language='es_MX'
;

-- Mar 25, 2013 11:53:41 PM VET
-- Get weight from scale
UPDATE AD_Element SET Description='End Character example: ASCII (28)',Updated=TO_DATE('2013-03-25 23:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000210
;

-- Mar 25, 2013 11:53:41 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=3000210
;

-- Mar 25, 2013 11:53:41 PM VET
-- Get weight from scale
UPDATE AD_Column SET ColumnName='EndCharacter', Name='End Character', Description='End Character example: ASCII (28)', Help=NULL WHERE AD_Element_ID=3000210
;

-- Mar 25, 2013 11:53:42 PM VET
-- Get weight from scale
UPDATE AD_Process_Para SET ColumnName='EndCharacter', Name='End Character', Description='End Character example: ASCII (28)', Help=NULL, AD_Element_ID=3000210 WHERE UPPER(ColumnName)='ENDCHARACTER' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 25, 2013 11:53:42 PM VET
-- Get weight from scale
UPDATE AD_Process_Para SET ColumnName='EndCharacter', Name='End Character', Description='End Character example: ASCII (28)', Help=NULL WHERE AD_Element_ID=3000210 AND IsCentrallyMaintained='Y'
;

-- Mar 25, 2013 11:53:42 PM VET
-- Get weight from scale
UPDATE AD_Field SET Name='End Character', Description='End Character example: ASCII (28)', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=3000210) AND IsCentrallyMaintained='Y'
;

-- Mar 25, 2013 11:54:06 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000226,3000209,0,29,3000204,'StartCharacter',TO_DATE('2013-03-25 23:54:05','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)','ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Start Character',0,TO_DATE('2013-03-25 23:54:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 11:54:06 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000226 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 11:54:09 PM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD StartCharacter NUMBER NOT NULL
;

-- Mar 25, 2013 11:54:55 PM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000227,3000210,0,29,3000204,'EndCharacter',TO_DATE('2013-03-25 23:54:54','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)','ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','End Character',0,TO_DATE('2013-03-25 23:54:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2013 11:54:55 PM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000227 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2013 11:54:59 PM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD EndCharacter NUMBER NOT NULL
;

-- Mar 25, 2013 11:57:30 PM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000211,0,'PosStartCut',TO_DATE('2013-03-25 23:57:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Position Start Cut','Position Start Cut',TO_DATE('2013-03-25 23:57:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 25, 2013 11:57:30 PM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 25, 2013 11:58:05 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Posición de Inicio (Corte)',PrintName='Posición de Inicio (Corte)',Updated=TO_DATE('2013-03-25 23:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000211 AND AD_Language='es_MX'
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_Element SET Name='Position Start (Cut)', PrintName='Position Start (Cut)',Updated=TO_DATE('2013-03-25 23:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000211
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=3000211
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_Column SET ColumnName='PosStartCut', Name='Position Start (Cut)', Description=NULL, Help=NULL WHERE AD_Element_ID=3000211
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_Process_Para SET ColumnName='PosStartCut', Name='Position Start (Cut)', Description=NULL, Help=NULL, AD_Element_ID=3000211 WHERE UPPER(ColumnName)='POSSTARTCUT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_Process_Para SET ColumnName='PosStartCut', Name='Position Start (Cut)', Description=NULL, Help=NULL WHERE AD_Element_ID=3000211 AND IsCentrallyMaintained='Y'
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_Field SET Name='Position Start (Cut)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=3000211) AND IsCentrallyMaintained='Y'
;

-- Mar 25, 2013 11:58:16 PM VET
-- Get weight from scale
UPDATE AD_PrintFormatItem pi SET PrintName='Position Start (Cut)', Name='Position Start (Cut)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=3000211)
;

-- Mar 26, 2013 12:00:07 AM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000212,0,'PosStart_SCut',TO_DATE('2013-03-26 00:00:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Position Start (Screen cut)','Position Start (Screen cut)',TO_DATE('2013-03-26 00:00:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:00:07 AM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 26, 2013 12:00:40 AM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Posición de Inicio (Corte de Pantalla)',PrintName='Posición de Inicio (Corte de Pantalla)',Updated=TO_DATE('2013-03-26 00:00:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000212 AND AD_Language='es_MX'
;

-- Mar 26, 2013 12:01:03 AM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000213,0,'PosEnd_SCut',TO_DATE('2013-03-26 00:01:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Position End (Screen cut)','Position End (Screen cut)',TO_DATE('2013-03-26 00:01:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:01:03 AM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 26, 2013 12:01:26 AM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Posición de Fin (Corte de Pantalla)',PrintName='Posición de Fin (Corte de Pantalla)',Updated=TO_DATE('2013-03-26 00:01:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000213 AND AD_Language='es_MX'
;

-- Mar 26, 2013 12:01:50 AM VET
-- Get weight from scale
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000214,0,'PosEndCut',TO_DATE('2013-03-26 00:01:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Position End (Cut)','Position End (Cut)',TO_DATE('2013-03-26 00:01:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:01:50 AM VET
-- Get weight from scale
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000214 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 26, 2013 12:02:03 AM VET
-- Get weight from scale
UPDATE AD_Element_Trl SET Name='Posición de Fin (Corte)',PrintName='Posición de Fin (Corte)',Updated=TO_DATE('2013-03-26 00:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000214 AND AD_Language='es_MX'
;

-- Mar 26, 2013 12:23:50 AM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000228,3000211,0,29,3000204,'PosStartCut',TO_DATE('2013-03-26 00:23:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position Start (Cut)',0,TO_DATE('2013-03-26 00:23:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 26, 2013 12:23:50 AM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000228 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 26, 2013 12:23:55 AM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD PosStartCut NUMBER NOT NULL
;

-- Mar 26, 2013 12:24:31 AM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000229,3000212,0,29,3000204,'PosStart_SCut',TO_DATE('2013-03-26 00:24:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position Start (Screen cut)',0,TO_DATE('2013-03-26 00:24:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 26, 2013 12:24:31 AM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000229 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 26, 2013 12:24:37 AM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD PosStart_SCut NUMBER NOT NULL
;

-- Mar 26, 2013 12:25:03 AM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000230,3000214,0,29,3000204,'PosEndCut',TO_DATE('2013-03-26 00:25:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position End (Cut)',0,TO_DATE('2013-03-26 00:25:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 26, 2013 12:25:03 AM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000230 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 26, 2013 12:25:07 AM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD PosEndCut NUMBER NOT NULL
;

-- Mar 26, 2013 12:25:24 AM VET
-- Get weight from scale
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000231,3000213,0,29,3000204,'PosEnd_SCut',TO_DATE('2013-03-26 00:25:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA03',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Position End (Screen cut)',0,TO_DATE('2013-03-26 00:25:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 26, 2013 12:25:24 AM VET
-- Get weight from scale
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000231 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 26, 2013 12:25:28 AM VET
-- Get weight from scale
ALTER TABLE CUST_SerialPortConfig ADD PosEnd_SCut NUMBER NOT NULL
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000227,3000216,0,3000200,TO_DATE('2013-03-26 00:26:27','YYYY-MM-DD HH24:MI:SS'),100,'End Character example: ASCII (28)',10,'ECA03','Y','Y','Y','N','N','N','N','N','End Character',TO_DATE('2013-03-26 00:26:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000216 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000230,3000217,0,3000200,TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA03','Y','Y','Y','N','N','N','N','N','Position End (Cut)',TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000217 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000231,3000218,0,3000200,TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA03','Y','Y','Y','N','N','N','N','N','Position End (Screen cut)',TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000218 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000228,3000219,0,3000200,TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA03','Y','Y','Y','N','N','N','N','N','Position Start (Cut)',TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:28 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000219 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:26:29 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000229,3000220,0,3000200,TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA03','Y','Y','Y','N','N','N','N','N','Position Start (Screen cut)',TO_DATE('2013-03-26 00:26:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:29 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000220 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:26:29 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000226,3000221,0,3000200,TO_DATE('2013-03-26 00:26:29','YYYY-MM-DD HH24:MI:SS'),100,'Start Character example: ASCII (3)',10,'ECA03','Y','Y','Y','N','N','N','N','N','Start Character',TO_DATE('2013-03-26 00:26:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:29 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000221 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:26:29 AM VET
-- Get weight from scale
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000225,3000222,0,3000200,TO_DATE('2013-03-26 00:26:29','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA03','Y','Y','Y','N','N','N','N','N','String Length',TO_DATE('2013-03-26 00:26:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2013 12:26:29 AM VET
-- Get weight from scale
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000222 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3000222
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3000221
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3000216
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3000219
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3000217
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3000218
;

-- Mar 26, 2013 12:28:09 AM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3000220
;

-- Mar 26, 2013 12:29:22 AM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-03-26 00:29:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000216
;

-- Mar 26, 2013 12:29:30 AM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-03-26 00:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000217
;

-- Mar 26, 2013 12:29:36 AM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-03-26 00:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000220
;

-- Mar 26, 2013 12:31:42 AM VET
-- Get weight from scale
UPDATE AD_Field SET AD_FieldGroup_ID=133,Updated=TO_DATE('2013-03-26 00:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000222
;

