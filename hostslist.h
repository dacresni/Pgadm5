#ifndef DBHOST_H
#define DBHOST_H

#include <QObject>

class DBHost: public QObject
{
 Q_OBJECT
 Q_PROPERTY(QString name REAAD name WRITE setName)
 Q_PROPERTY(QString db_version REAAD version )  
 public: 
    DBHost(QObject *parent = 0);
    QString name() const;
    void setName(const QString &);
    int version();
 private:
    QString name;
    int db_version; 
};
