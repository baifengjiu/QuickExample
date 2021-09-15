import QtQuick 2.14

ListView {
    id: listTab
    anchors.fill: parent
    anchors.margins: 20
    clip: true

    orientation: ListView.Horizontal

    model: ListModel {
        ListElement { name: "Mercury"; surfaceColor: "gray" }
        ListElement { name: "Venus"; surfaceColor: "yellow" }
        ListElement { name: "Earth"; surfaceColor: "blue" }
        ListElement { name: "Mars"; surfaceColor: "orange" }
        ListElement { name: "Jupiter"; surfaceColor: "orange" }
        ListElement { name: "Saturn"; surfaceColor: "yellow" }
        ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
        ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
    }

    delegate: textDelegate
    spacing: 5

    highlight: highlightComponent
    focus: true



    Component {
        id: highlightComponent

        Item {
            width: ListView.view.currentItem.width
            height: ListView.view.currentItem.height

            x: ListView.view.currentItem.x

            Behavior on x {
                SequentialAnimation {
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 0; duration: 200 }
                    NumberAnimation { duration: 1 }
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 1; duration: 200 }
                }
            }

            Rectangle {
                id: highlightRectangle
                anchors.fill: parent
                color: "yellow"

            }
        }
    }

    Component {
        id:textDelegate

        Rectangle{
            width: 60
            height: 40
            color: "red"

            Text {
                anchors.centerIn: parent

                font.pixelSize: 10

                text:name
            }

        }
    }


}

