-- Apr 1, 2013 8:12:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET Name='Port Configuration by Role',Updated=TO_DATE('2013-04-01 20:12:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000205
;

-- Apr 1, 2013 8:12:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=3000205
;

-- Apr 1, 2013 8:12:29 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET Name='Perfiles Asignados',Updated=TO_DATE('2013-04-01 20:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000205 AND AD_Language='es_MX'
;

-- Apr 1, 2013 8:12:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=123, ColumnName='AD_Role_ID', Description='Responsibility Role', Help='The Role determines security and access a user who has this Role will have in the System.', IsUpdateable='N', Name='Role',Updated=TO_DATE('2013-04-01 20:12:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000224
;

-- Apr 1, 2013 8:12:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=3000224
;

-- Apr 1, 2013 8:12:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Role', Description='Responsibility Role', Help='The Role determines security and access a user who has this Role will have in the System.' WHERE AD_Column_ID=3000224 AND IsCentrallyMaintained='Y'
;

-- Apr 1, 2013 8:13:29 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET Name='Perfil',Updated=TO_DATE('2013-04-01 20:13:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000215 AND AD_Language='es_MX'
;

