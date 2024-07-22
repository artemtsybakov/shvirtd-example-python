docker run \
    --rm --env-file env.list \
    -v `pwd`/backup:/backup \
    --link="mysql:alias" \
    schnitzler/mysqldump \
    mysqldump --opt -h alias -u ${MYSQL_USER} -p${MYSQL_PASSWORD} "--result-file=/backup/dumps.sql" ${MYSQL_DATABASE}
