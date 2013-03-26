-- Mar 26, 2013 2:00:02 AM VET
-- Get weight from scale
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,3000200,0,TO_TIMESTAMP('2013-03-26 02:00:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA03','Y','Port Not Configured for User','I',TO_TIMESTAMP('2013-03-26 02:00:00','YYYY-MM-DD HH24:MI:SS'),100,'PortNotConfigUser')
;

-- Mar 26, 2013 2:00:02 AM VET
-- Get weight from scale
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Mar 26, 2013 2:00:28 AM VET
-- Get weight from scale
UPDATE AD_Message_Trl SET MsgText='Puerto No configurado para el Usuario',Updated=TO_TIMESTAMP('2013-03-26 02:00:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=3000200 AND AD_Language='es_MX'
;

