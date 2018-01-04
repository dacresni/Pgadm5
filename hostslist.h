#ifndef DBHOST_H
#define DBHOST_H

#include <QObject>
#include <QString>

class DBHosts : public QObject {
  Q_OBJECT
  Q_PROPERTY(QString name READ name WRITE setName)
 public: 
    explicit DBHosts(QObject *parent = nullptr);
    QString name();
    void setName(const QString &n);

 private:
    QString db_name;
};

#endif //DBHOST_H
