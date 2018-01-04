#include "hostslist.h"

DBHost::DBHost(QObject *parent) :QObject(parent)
{
}

QString DBHost::name(QString) const
{
    return db_name;
}

void DBHost::setName(const QString &n )
{
  if (n == db_name)
      return;
  db_name = n
}
