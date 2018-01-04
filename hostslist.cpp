#include "hostslist.h"

DBHosts::DBHosts(QObject *parent) :QObject(parent)
{
}

QString DBHosts::name( )
{
    return db_name;
}

void DBHosts::setName(const QString &n )
{
  if (n == db_name)
      return;
  db_name = n;
}
