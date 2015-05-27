#include "timemanager.h"

#include <QTime>

TimeManager::TimeManager(QObject *parent) : QObject(parent)
{
    m_interval = 500;
    m_timer.setInterval(m_interval);
    m_timer.start();

    connect(&m_timer, SIGNAL(timeout()), this, SIGNAL(timeChanged()));
}

QString TimeManager::time()
{
    return QTime::currentTime().toString("HH:mm:ss");
}

int TimeManager::interval()
{
    return m_interval;
}

void TimeManager::setInterval(int interval)
{
    if (m_interval != interval) {
        m_interval = interval;
        // Could also be done with signals & slots
        m_timer.setInterval(interval);
        emit intervalChanged();
    }
}
