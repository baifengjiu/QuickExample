import QtQuick 2.14

ListView {
    id:listTab
    clip: true

    orientation: ListView.Horizontal

//    property int lastCurrentIndex: currentIndex

    model: ListModel {
        id: listModel
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

//    highlight: highlightComponent
    focus: true

//    Component {
//        id: highlightComponent

//        Item {
//            width: ListView.view.currentItem.width
//            height: ListView.view.currentItem.height
//            x: ListView.view.currentItem.x

//            Behavior on x {
//                SequentialAnimation {
//                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 0; duration: 200 }
//                    NumberAnimation { duration: 1 }
//                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 1; duration: 200 }
//                }
//            }

//            Rectangle {
//                id: highlightRectangle
//                anchors.fill: parent
//                color: "#000000"
//            }
//        }
//    }

    Component {
        id:textDelegate

        Rectangle{
            id: itemRect
            anchors.verticalCenter: parent.verticalCenter
            width: 60
            height: 40
            color: currentIndex == index ? "#FFFFFF":surfaceColor

            Text {
                anchors.centerIn: parent
                font.pixelSize: 10
                text:name
            }
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onPressed: {
//                    currentIndex 改变后会自动将计算 color: currentIndex == index ? "#FFFFFF":surfaceColor 属性的颜色代码
//                    这里是手动计算的方式
//                    if(lastCurrentIndex != -1){
//                       var item= listTab.itemAtIndex(lastCurrentIndex)
//                        if(item)
//                        {
//                            console.log(listModel.get(lastCurrentIndex).surfaceColor)
//                            for(var i=0;i<listModel.count;i++)
//                            {
//                                var item1 =listModel.get(i)
//                                console.log(item1.name)
//                            }
//                            item.color =  listModel.get(lastCurrentIndex).surfaceColor
//                        }
//                    }
//                    color = "#FFFFFF"
//                    lastCurrentIndex = index

                    currentIndex = index
                }
            }
        }
    }
}

