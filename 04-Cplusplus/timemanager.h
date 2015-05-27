#ifndef TIMEMANAGER_H
#define TIMEMANAGER_H

#include <QObject>
#include <QTimer>

class TimeManager : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString time READ time NOTIFY timeChanged)


public:
    explicit TimeManager(QObject *parent = 0);

    QString time();


signals:
    void timeChanged();


public slots:


private:
    QTimer m_timer;


};

#endif // TIMEMANAGER_H
