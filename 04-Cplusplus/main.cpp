#include "timemanager.h"
#include "contact.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    TimeManager timeManager;
    engine.rootContext()->setContextProperty("timeManager", &timeManager);

    // NEW //
    qmlRegisterType<Contact>("de.kodira.models", 1, 0, "Contact");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
