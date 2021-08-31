import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    title: qsTr("Title")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar{
        Menu{
            title: qsTr("File")
            MenuItem{
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem{
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
        Menu{
            title: qsTr("Translate")
            MenuItem{
                text: "En"
                onTriggered: qmlLanguage.setLanguage(0);
            }
            MenuItem{
                text: "Zh"
                onTriggered: qmlLanguage.setLanguage(1);
            }
        }
    }
    // Content Area

    Button{
        text:  qsTr("Hello World")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

}


