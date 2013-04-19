-- Apr 18, 2013 7:34:05 PM VET
-- Get Weight from Scale
Alter Table CUST_PortConfig_Role 
Add Constraint FK_CUST_PortConfig_Role_CUST_PortConfig FOREIGN KEY (CUST_SerialPortConfig_ID)
REFERENCES CUST_SerialPortConfig (CUST_SerialPortConfig_ID) On Update Cascade On Delete Cascade
;

-- Apr 18, 2013 7:34:05 PM VET
-- Get Weight from Scale
Alter Table CUST_PortConfig_Role 
Add Constraint FK_CUST_PortConfig_Role_AD_Role FOREIGN KEY (AD_Role_ID)
REFERENCES AD_Role (AD_Role_ID) On Update Cascade On Delete Cascade
;