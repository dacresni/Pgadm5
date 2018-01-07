import QtQuick 2.9
import QtQuick.Controls 2.2
import io.github.dacresni.dbhost 1.0
import Qt.labs.settings 1.0


ApplicationWindow {
    id: main
    visible: true
    width: 640
    height: 480
    title: qsTr("PostgreSQL")
    property var names: []
    Settings {
        category: "serverlist"
        property alias names: main.names
    }

    ScrollView {
        id: scrollView
        anchors.fill: parent

        StackView {
            id: viewStack
            anchors.fill: parent
            ListView {
                id: serverlist
                anchors.leftMargin: 0
                anchors.topMargin: 17
                anchors.rightMargin: -620
                anchors.bottomMargin: -442
                anchors.fill: parent
                model: hosts
                delegate: hostItemDelegate
            }
        }

    }

    Component {
        id: hostItemDelegate
        Column {
            width: parent.width
            spacing: 5
            Text { text: name }
            Text { text: url  }

        }
    }

    ListModel {
        id: hosts
        ListElement {
            name: "primary node"
            url:"psql://example.com:5432/postgres"
        }
    }

}
