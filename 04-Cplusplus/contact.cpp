#include "contact.h"

Contact::Contact(QObject *parent) : QObject(parent)
{
}

QString Contact::firstName()
{
    return m_firstName;
}

void Contact::setFirstName(QString firstName)
{
    if (m_firstName != firstName) {
        m_firstName = firstName;
        emit firstNameChanged();
    }
}

QString Contact::lastName()
{
    return m_lastName;
}

void Contact::setLastName(QString lastName)
{
    if (m_lastName != lastName) {
        m_lastName = lastName;
        emit lastNameChanged();
    }
}

int Contact::age()
{
    return m_age;
}

void Contact::setAge(int age)
{
    if (m_age != age) {
        m_age = age;
        emit ageChanged();
    }
}

void Contact::reset()
{
    setFirstName("");
    setLastName("");
    setAge(0);
}
