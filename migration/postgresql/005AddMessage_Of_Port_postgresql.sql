-- Mar 29, 2013 5:22:08 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000201,0,TO_TIMESTAMP('2013-03-29 17:22:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Get Weight From Scale','I',TO_TIMESTAMP('2013-03-29 17:22:08','YYYY-MM-DD HH24:MI:SS'),100,'GetWeightFromScale')
;

-- Mar 29, 2013 5:22:08 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:24:11 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Obtener Peso desde Báscula',Updated=TO_TIMESTAMP('2013-03-29 17:24:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000201 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:25:35 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000202,0,TO_TIMESTAMP('2013-03-29 17:25:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','No Such Port Exception','E',TO_TIMESTAMP('2013-03-29 17:25:35','YYYY-MM-DD HH24:MI:SS'),100,'NoSuchPortException')
;

-- Mar 29, 2013 5:25:35 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:26:19 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='No Existe el Puerto Físico',Updated=TO_TIMESTAMP('2013-03-29 17:26:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000202 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:26:41 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000203,0,TO_TIMESTAMP('2013-03-29 17:26:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Port In Use','E',TO_TIMESTAMP('2013-03-29 17:26:41','YYYY-MM-DD HH24:MI:SS'),100,'PortInUseException')
;

-- Mar 29, 2013 5:26:41 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:26:51 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Puerto en Uso',Updated=TO_TIMESTAMP('2013-03-29 17:26:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000203 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:26:59 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='No Such Port',Updated=TO_TIMESTAMP('2013-03-29 17:26:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000202
;

-- Mar 29, 2013 5:26:59 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000202
;

-- Mar 29, 2013 5:27:23 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000204,0,TO_TIMESTAMP('2013-03-29 17:27:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Unsupported Comm Operation','E',TO_TIMESTAMP('2013-03-29 17:27:23','YYYY-MM-DD HH24:MI:SS'),100,'UnsupportedCommOperationException')
;

-- Mar 29, 2013 5:27:23 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:27:53 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Operación No Soportada por el Puerto',Updated=TO_TIMESTAMP('2013-03-29 17:27:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000204 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:28:21 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000205,0,TO_TIMESTAMP('2013-03-29 17:28:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','In/Out Exception','E',TO_TIMESTAMP('2013-03-29 17:28:20','YYYY-MM-DD HH24:MI:SS'),100,'IOException')
;

-- Mar 29, 2013 5:28:21 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:28:33 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Problemas de Entrada/Salida',Updated=TO_TIMESTAMP('2013-03-29 17:28:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000205 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:28:53 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000206,0,TO_TIMESTAMP('2013-03-29 17:28:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Too Many Listeners','E',TO_TIMESTAMP('2013-03-29 17:28:52','YYYY-MM-DD HH24:MI:SS'),100,'TooManyListenersException')
;

-- Mar 29, 2013 5:28:53 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:29:38 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Existen Muchos Escuchadores para el Puerto',Updated=TO_TIMESTAMP('2013-03-29 17:29:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000206 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:30:05 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000207,0,TO_TIMESTAMP('2013-03-29 17:30:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','No Class Defined Found Error','E',TO_TIMESTAMP('2013-03-29 17:30:05','YYYY-MM-DD HH24:MI:SS'),100,'NoClassDefFoundError')
;

-- Mar 29, 2013 5:30:05 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:30:19 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='No Existe la Clase Definida',Updated=TO_TIMESTAMP('2013-03-29 17:30:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000207 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:30:49 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000208,0,TO_TIMESTAMP('2013-03-29 17:30:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Unsatisfied Link Error','E',TO_TIMESTAMP('2013-03-29 17:30:49','YYYY-MM-DD HH24:MI:SS'),100,'UnsatisfiedLinkError')
;

-- Mar 29, 2013 5:30:49 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:31:13 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Error de Enlace',Updated=TO_TIMESTAMP('2013-03-29 17:31:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000208 AND AD_Language='es_MX'
;

-- Mar 29, 2013 5:31:31 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000209,0,TO_TIMESTAMP('2013-03-29 17:31:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Incomplete String','I',TO_TIMESTAMP('2013-03-29 17:31:31','YYYY-MM-DD HH24:MI:SS'),100,'IncompleteStr')
;

-- Mar 29, 2013 5:31:31 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 29, 2013 5:31:47 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Trama Incompleta',Updated=TO_TIMESTAMP('2013-03-29 17:31:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000209 AND AD_Language='es_MX'
;

