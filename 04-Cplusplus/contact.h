#ifndef CONTACT_H
#define CONTACT_H

#include <QObject>

class Contact : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString firstName READ firstName WRITE setFirstName NOTIFY firstNameChanged)
    Q_PROPERTY(QString lastName READ lastName WRITE setLastName NOTIFY lastNameChanged)
    Q_PROPERTY(int age READ age WRITE setAge NOTIFY ageChanged)


public:
    explicit Contact(QObject *parent = 0);

    QString firstName();
    void setFirstName(QString firstName);

    QString lastName();
    void setLastName(QString lastName);

    int age();
    void setAge(int age);


signals:
    void firstNameChanged();
    void lastNameChanged();
    void ageChanged();


public slots:
    void reset();


private:
    QString m_firstName;
    QString m_lastName;
    int m_age;

};

#endif // CONTACT_H
