Image created to backup mongodb, files and minio on S3 compatible

To backup one or more volumes, folders, files, map them in `/backupVolume` folder 

Docker environment:

Destination S3:
  - S3_DST_HOST 
  - S3_DST_BUCKET
  - S3_DST_KEY_ID
  - S3_DST_KEY_SECRET

Database mongo
  - DB_HOST
  - DB_POST default 27017
  - DB_NAME
  - DB_USER
  - DB_PASS
  - DB_EXTRA_OPTS additional options to add in the connection string for mongodump

Minio
  - MINIO_SRC_HOST
  - MINIO_SRC_BUCKET
  - MINIO_SRC_KEY_ID
  - MINIO_SRC_KEY_SECRET

Additional params
  - DB_DUMP_FREQ in minutes, frequency of backup, default 1440 (1 day)
  - DB_DUMP_BEGIN format is hh:mm default is -1 that means immediately

Notifications on google chat
  - GOOGLE_CHAT_IDENTIFIER text title to identify the server
  - GOOGLE_CHAT_EDNPOINT google chat incoming webhook