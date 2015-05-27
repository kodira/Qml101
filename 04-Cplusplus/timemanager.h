#ifndef TIMEMANAGER_H
#define TIMEMANAGER_H

#include <QObject>
#include <QTimer>

class TimeManager : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString time READ time NOTIFY timeChanged)
    Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged)


public:
    explicit TimeManager(QObject *parent = 0);

    QString time();

    int interval();
    void setInterval(int interval);


signals:
    void timeChanged();
    void intervalChanged();


public slots:


private:
    QTimer m_timer;
    int m_interval;


};

#endif // TIMEMANAGER_H
