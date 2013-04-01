-- Apr 1, 2013 4:12:56 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3000220
;

-- Apr 1, 2013 4:12:57 PM VET
-- Get weight from scale
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3000218
;

-- Apr 1, 2013 4:13:11 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-01 16:13:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000220
;

-- Apr 1, 2013 4:13:15 PM VET
-- Get weight from scale
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-01 16:13:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000218
;

-- Apr 1, 2013 4:14:39 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000211,0,TO_TIMESTAMP('2013-04-01 16:14:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Position Start Cut Over Laps Position End Cut','E',TO_TIMESTAMP('2013-04-01 16:14:39','YYYY-MM-DD HH24:MI:SS'),100,'PosStartCutOverPosEndCut')
;

-- Apr 1, 2013 4:14:39 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 1, 2013 4:19:05 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Posición de Corte de Inicio no debe ser mayor a la Posición de Corte Final',Updated=TO_TIMESTAMP('2013-04-01 16:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000211 AND AD_Language='es_MX'
;

-- Apr 1, 2013 4:19:44 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='Start Cutting position should not be more than Final Cutting Position',Updated=TO_TIMESTAMP('2013-04-01 16:19:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000211
;

-- Apr 1, 2013 4:19:44 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000211
;

-- Apr 1, 2013 4:20:06 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000212,0,TO_TIMESTAMP('2013-04-01 16:20:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','PosStart_SCutOverPosEnd_SCut','I',TO_TIMESTAMP('2013-04-01 16:20:06','YYYY-MM-DD HH24:MI:SS'),100,'PosStart_SCutOverPosEnd_SCut')
;

-- Apr 1, 2013 4:20:06 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 1, 2013 4:20:27 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='Start Cutting position View should not be more than Final Cutting Position View',Updated=TO_TIMESTAMP('2013-04-01 16:20:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000212
;

-- Apr 1, 2013 4:20:27 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000212
;

-- Apr 1, 2013 4:21:01 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Posición de Corte de Inicio de Vista no debe ser mayor a la Posición de Corte Final de Vista',Updated=TO_TIMESTAMP('2013-04-01 16:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000212 AND AD_Language='es_MX'
;

-- Apr 1, 2013 4:21:19 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Posición de Corte de Inicio de Pantalla no debe ser mayor a la Posición de Corte Final de Pantalla',Updated=TO_TIMESTAMP('2013-04-01 16:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000212 AND AD_Language='es_MX'
;

-- Apr 1, 2013 4:21:37 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='Start Cutting position Screen should not be more than Final Cutting Position Screen',Updated=TO_TIMESTAMP('2013-04-01 16:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000212
;

-- Apr 1, 2013 4:21:37 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000212
;

-- Apr 1, 2013 4:21:55 PM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000213,0,TO_TIMESTAMP('2013-04-01 16:21:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','StrLengthUnderZero','E',TO_TIMESTAMP('2013-04-01 16:21:54','YYYY-MM-DD HH24:MI:SS'),100,'StrLengthUnderZero')
;

-- Apr 1, 2013 4:21:55 PM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Apr 1, 2013 4:22:02 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2013-04-01 16:22:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000212
;

-- Apr 1, 2013 4:22:26 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='String Length should no Under Zero',Updated=TO_TIMESTAMP('2013-04-01 16:22:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000213
;

-- Apr 1, 2013 4:22:26 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000213
;

-- Apr 1, 2013 4:22:43 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='String Length should no be Under Zero',Updated=TO_TIMESTAMP('2013-04-01 16:22:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000213
;

-- Apr 1, 2013 4:22:43 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000213
;

-- Apr 1, 2013 4:23:19 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Longitud de Cadena no debe ser menor o igual a Cero',Updated=TO_TIMESTAMP('2013-04-01 16:23:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000213 AND AD_Language='es_MX'
;

-- Apr 1, 2013 4:23:56 PM VET
-- Get weight from scale
UPDATE AD_Message SET MsgText='String Length should no be less or equal to Zero',Updated=TO_TIMESTAMP('2013-04-01 16:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000213
;

-- Apr 1, 2013 4:23:56 PM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=3000213
;
