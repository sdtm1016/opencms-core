CREATE OR REPLACE
PACKAGE opencmsConstants IS

  C_DATABASE_PREFIX VARCHAR2(4) := 'CMS_';
  C_TEMP_PREFIX VARCHAR2(1) := '~';
  C_ROOT VARCHAR2(1) := '/';

  C_TABLE_SYSTEMPROPERTIES NUMBER := 0;
  C_TABLE_GROUPS NUMBER := 1;
  C_TABLE_GROUPUSERS NUMBER := 2;
  C_TABLE_USERS NUMBER := 3;
  C_TABLE_PROJECTS NUMBER := 4;
  C_TABLE_RESOURCES NUMBER := 5;
  C_TABLE_FILES NUMBER := 6;
  C_TABLE_PROPERTYDEF NUMBER := 7;
  C_TABLE_PROPERTIES NUMBER := 8;
  C_TABLE_TASK NUMBER := 9;
  C_TABLE_TASKTYPE NUMBER := 10;
  C_TABLE_TASKPAR NUMBER := 11;
  C_TABLE_TASKLOG NUMBER := 12;

  C_PROJECT_ONLINE VARCHAR2(6) := 'Online';
  C_PROJECT_ONLINE_ID NUMBER := 1;
  C_PROJECT_TYPE_NORMAL NUMBER := 0;
  C_PROJECT_STATE_UNLOCKED NUMBER := 0;
  C_PROJECT_STATE_LOCKED NUMBER := 1;
  C_PROJECT_STATE_ARCHIVE NUMBER := 2;

  C_UNKNOWN_ID NUMBER := -1;
  C_UNKNOWN_LAUNCHER_ID NUMBER := -1;
  C_UNKNOWN_LAUNCHER VARCHAR2(7) := 'UNKNOWN';

  C_TYPE_FOLDER NUMBER := 0;
  C_STATE_UNCHANGED	NUMBER := 0;
  C_STATE_CHANGED NUMBER := 1;
  C_STATE_NEW NUMBER := 2;
  C_STATE_DELETED NUMBER := 3;

  C_GROUP_GUEST VARCHAR2(6) := 'Guests';
  C_GROUP_ADMIN VARCHAR2(14) := 'Administrators';
  C_GROUP_PROJECTLEADER VARCHAR2(14) := 'Projectmanager';
  C_GROUP_USERS VARCHAR2(5) := 'Users';

  C_USER_GUEST VARCHAR2(6) := 'Guest';
  C_USER_ADMIN VARCHAR2(5) := 'Admin';
  C_USER_TYPE_SYSTEMUSER NUMBER := 0;
  C_USER_TYPE_WEBUSER NUMBER := 1;

  C_ACCESS_OWNER_READ NUMBER := 1;
  C_ACCESS_OWNER_WRITE NUMBER := 2;
  C_ACCESS_OWNER_VISIBLE NUMBER := 4;
  C_ACCESS_GROUP_READ NUMBER := 8;
  C_ACCESS_GROUP_WRITE NUMBER := 16;
  C_ACCESS_GROUP_VISIBLE NUMBER := 32;
  C_ACCESS_PUBLIC_READ NUMBER := 64;
  C_ACCESS_PUBLIC_WRITE NUMBER := 128;
  C_ACCESS_PUBLIC_VISIBLE NUMBER := 256;

  C_ACCESS_INTERNAL_READ NUMBER := 512;
  C_ACCESS_READ NUMBER := C_ACCESS_OWNER_READ + C_ACCESS_GROUP_READ + C_ACCESS_PUBLIC_READ;
  C_ACCESS_WRITE NUMBER := C_ACCESS_OWNER_WRITE + C_ACCESS_GROUP_WRITE + C_ACCESS_PUBLIC_WRITE;
  C_ACCESS_VISIBLE NUMBER := C_ACCESS_OWNER_VISIBLE + C_ACCESS_GROUP_VISIBLE + C_ACCESS_PUBLIC_VISIBLE;
  C_ACCESS_OWNER NUMBER := C_ACCESS_OWNER_READ + C_ACCESS_OWNER_WRITE + C_ACCESS_OWNER_VISIBLE;
  C_ACCESS_GROUP NUMBER := C_ACCESS_GROUP_READ + C_ACCESS_GROUP_WRITE + C_ACCESS_GROUP_VISIBLE;
  C_ACCESS_PUBLIC NUMBER := C_ACCESS_PUBLIC_READ + C_ACCESS_PUBLIC_WRITE + C_ACCESS_PUBLIC_VISIBLE;
  C_ACCESS_DEFAULT_FLAGS NUMBER := C_ACCESS_OWNER_READ + C_ACCESS_OWNER_WRITE + C_ACCESS_OWNER_VISIBLE + C_ACCESS_GROUP_READ + C_ACCESS_GROUP_WRITE + C_ACCESS_GROUP_VISIBLE + C_ACCESS_PUBLIC_READ + C_ACCESS_PUBLIC_VISIBLE;

END;
/
