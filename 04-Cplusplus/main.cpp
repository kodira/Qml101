#include "timemanager.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // NEW //
    TimeManager timeManager;
    engine.rootContext()->setContextProperty("timeManager", &timeManager);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
