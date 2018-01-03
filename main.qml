import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: main
    visible: true
    width: 640
    height: 480
    title: qsTr("PostgreSQL")

    ScrollView {
        id: scrollView
        anchors.fill: parent

        StackView {
            id: stackView
            anchors.fill: parent

            ListView {
                id: connections
                anchors.leftMargin: 0
                anchors.topMargin: 17
                anchors.rightMargin: -620
                anchors.bottomMargin: -442
                anchors.fill: parent
                model: 20
                delegate: ItemDelegate {
                    text: "Item " + (index + 1)
                    width: parent.width
                }
            }
        }

    }

    Connections {
        target: connections
        onClicked: print("clicked")
    }
}
