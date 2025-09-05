\c test

\echo '--- 1. Checking Default Timezone ---'
-- This shows the timezone inherited from the server configuration (e.g., postgresql.conf or TZ env var in Docker).
SHOW TIMEZONE;
SELECT NOW() as server_time;

\echo '--- 2. Setting Timezone for the Current Session (Temporary) ---'
-- This setting only lasts for the duration of the current connection. The change is immediate.
SET TIMEZONE = 'America/New_York';
SHOW TIMEZONE;
SELECT NOW() as new_york_time;

\echo '--- Resetting Session Timezone to Default ---'
RESET TIMEZONE;
SHOW TIMEZONE;
SELECT NOW() as reset_time;

\echo '--- 3. Setting a Persistent Timezone for a User ---'
-- This setting will apply every time this user connects.
-- IMPORTANT: This change requires a NEW connection to take effect. It does NOT affect the current session.
ALTER USER postgres SET TimeZone = 'Europe/Rome';
\echo 'User "postgres" default timezone set to Europe/Rome. Reconnect to see the change.'
-- To check the setting after reconnecting: SHOW TIMEZONE;
-- To remove the setting: ALTER USER postgres RESET TimeZone;

\echo '--- After reconnecting, run this to see the new default time: ---'
\echo 'SELECT NOW();'

\echo '--- 4. Setting a Persistent Timezone for a Database ---'
-- This setting applies to any user connecting to this database (unless they have a user-specific setting).
-- IMPORTANT: This also requires a new connection to take effect.
ALTER DATABASE test SET TimeZone = 'Australia/Sydney';
\echo 'Database "test" default timezone set to Australia/Sydney. Reconnect to see the change.'
-- To remove: ALTER DATABASE test RESET TimeZone;
