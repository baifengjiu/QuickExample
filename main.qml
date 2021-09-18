import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

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
    ListTab{
        id:listItem
        height: 50
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
    }

    // 画图矩形
    Rectangle {
        id: painterRect
        width: parent.width
        height: parent.height-listItem.height-helloBtn.height
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: listItem.bottom
        border.color: "black"
        border.width: 5
        radius: 10
    }

    Button{
        id:helloBtn
        text:  qsTr("Hello World")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: painterRect.bottom
    }
}


