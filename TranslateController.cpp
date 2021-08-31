#include "TranslateController.h"
#include <QCoreApplication>

TranslateController::TranslateController(QQmlApplicationEngine *engine,QObject *parent)
    : QObject(parent)
    , m_engine(engine)
{

}

void TranslateController::setLanguage(int lan)
{
  QTranslator translator;
  switch (lan) {
    case 1:
        translator.load(":/i18n/qmlTest_zh_CN.qm");
        break;
    case 0:
        translator.load("");
        break;
    }
    QCoreApplication::installTranslator(&translator);
    m_engine->retranslate();
}
