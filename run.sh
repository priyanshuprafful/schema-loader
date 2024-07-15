case $1 in
  mongo)
    ;;
  mysql)
    ;;
  *)
    echo Schema loaded supported only for mongo and mysql
    exit 1
    ;;
esac