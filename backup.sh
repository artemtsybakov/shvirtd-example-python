docker run \
    --network=opt_backend \
    --rm --env-file /opt/env.list \
    -v `pwd`/backup:/backup \
    --link="opt-db-1:alias" \
    schnitzler/mysqldump \
    mysqldump --opt -h alias -u ${MYSQL_USER} -p${MYSQL_PASSWORD} "--result-file=/backup/dumps.sql" ${MYSQL_DATABASE}