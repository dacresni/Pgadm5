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
            id: viewstack
            anchors.fill: parent
            ListView {
                id: serverlist
                anchors.leftMargin: 0
                anchors.topMargin: 17
                anchors.rightMargin: -620
                anchors.bottomMargin: -442
                anchors.fill: parent
                model: hosts
                delegate: ItemDelegate {
                    text:  name
                    width: parent.width
                }
            }
        }

    }

    ListModel {
        id: hosts
        ListElement {
            name: "pg_prime"
        }
        ListElement {
            name: "pg_secondary"
        }
        ListElement {
            name: "backup"
        }
    }

}
