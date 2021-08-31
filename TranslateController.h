#ifndef TRANSLATECONTROLLER_H
#define TRANSLATECONTROLLER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QTranslator>

class TranslateController : public QObject
{
    Q_OBJECT
public:
    explicit TranslateController(QQmlApplicationEngine *engine,QObject *parent = nullptr);
    Q_INVOKABLE void setLanguage(int lang);

private:
    QQmlApplicationEngine  *m_engine;
};

#endif // TRANSLATECONTROLLER_H
