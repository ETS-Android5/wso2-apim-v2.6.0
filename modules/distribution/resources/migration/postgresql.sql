ALTER TABLE AM_SUBSCRIBER ALTER COLUMN USER_ID TYPE VARCHAR(255);
ALTER TABLE AM_APPLICATION ADD COLUMN GROUP_ID VARCHAR(100);
ALTER TABLE AM_API ADD COLUMN CONTEXT_TEMPLATE VARCHAR(256);
ALTER TABLE AM_APPLICATION_KEY_MAPPING ADD COLUMN CREATE_MODE VARCHAR(30) DEFAULT 'CREATED';
ALTER TABLE AM_APPLICATION_REGISTRATION ADD COLUMN TOKEN_SCOPE VARCHAR(256) DEFAULT 'default';
ALTER TABLE AM_APPLICATION_REGISTRATION ADD COLUMN INPUTS VARCHAR(256);
ALTER TABLE AM_API_LC_EVENT ALTER COLUMN USER_ID TYPE VARCHAR(255);
ALTER TABLE AM_API_LC_EVENT ALTER COLUMN USER_ID SET NOT NULL;
UPDATE AM_API SET CONTEXT_TEMPLATE = CONTEXT WHERE CONTEXT_TEMPLATE IS NULL;
ALTER TABLE AM_API ADD CREATED_BY VARCHAR(100), ADD CREATED_TIME DATE, ADD UPDATED_BY VARCHAR(100), ADD UPDATED_TIME DATE;
ALTER TABLE AM_SUBSCRIBER ADD CREATED_BY VARCHAR(100), ADD CREATED_TIME DATE, ADD UPDATED_BY VARCHAR(100), ADD UPDATED_TIME DATE;
ALTER TABLE AM_SUBSCRIPTION ADD CREATED_BY VARCHAR(100), ADD CREATED_TIME DATE, ADD UPDATED_BY VARCHAR(100), ADD UPDATED_TIME DATE;
ALTER TABLE AM_APPLICATION ADD CREATED_BY VARCHAR(100), ADD CREATED_TIME DATE, ADD UPDATED_BY VARCHAR(100), ADD UPDATED_TIME DATE;