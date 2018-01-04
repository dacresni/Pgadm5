#ifndef DBHOST_H
#define DBHOST_H

#include <QObject>
#include <QString>

class DBHost : public QObject {
  Q_OBJECT
  Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
 public: 
    DBHost(QObject *parent = nullptr);
    QString name();
    void setName(const QString &);

 private:
    QString db_name;
};

#endif //DBHOST_H
