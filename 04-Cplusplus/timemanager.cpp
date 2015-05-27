#include "timemanager.h"

#include <QTime>

TimeManager::TimeManager(QObject *parent) : QObject(parent)
{
    m_timer.setInterval(500);
    m_timer.start();

    connect(&m_timer, SIGNAL(timeout()), this, SIGNAL(timeChanged()));
}

QString TimeManager::time()
{
    return QTime::currentTime().toString("HH:mm:ss");
}
