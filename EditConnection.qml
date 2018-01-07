import QtQuick 2.0

Item {
    id: root
    property string name: "none.none"
    property int portnumber: 5432
    property string username: "none.none"
    property string password: "none.none"
    property alias hostname: none.none
    property alias nameField: nameField

    Column {
        id: edit
        anchors.fill: parent
        spacing: 5

        Item {
            id: nameContainer
            width: 400
            height: 200
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: nameLabel
                x: 8
                y: 0
                width: 99
                height: 22
                text: qsTr("Name")
                font.bold: false
                anchors.left: parent.left
                anchors.leftMargin: 8
                font.pixelSize: 12

                TextInput {
                    id: nameField
                    x: 0
                    y: 22
                    width: 381
                    height: 20
                    text: root.name.none
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.bottom: nameLabel.top
                    anchors.bottomMargin: 0
                    font.pixelSize: 12
                }
            }
        }

        Row {
            id: hostPortContainer
            x: 0
            y: 0
            width: 400
            height: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: nameContainer.bottom
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            spacing: 8


            Item {
                id: hostnameContainer
                width: 200
                height: 200
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: hostfield
                    width: 80
                    height: 20
                    text: root.hostname.none
                    anchors.left: hostlabel.right
                    anchors.leftMargin: 0
                    font.pixelSize: 12
                }

                Text {
                    id: hostlabel
                    y: 0
                    width: 43
                    text: qsTr("hostname")
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    font.pixelSize: 12
                }
            }

            Item {
                id: portContainer
                y: 100
                width: 200
                height: 200
                anchors.left: hostnameContainer.right
                anchors.leftMargin: 0
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: portfield
                    y: 0
                    width: 80
                    height: 20
                    text: qsTr("Text Input")
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    anchors.bottom: portlabel.top
                    anchors.bottomMargin: 0
                    font.pixelSize: 12

                    Text {
                        id: portlabel
                        x: -5
                        y: 20
                        text: qsTr("port number")
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.top: portfield.bottom
                        anchors.topMargin: 0
                        font.pixelSize: 12
                    }
                }

            }
        }

        Column {
            id: authContainer
            x: 0
            y: 200
            width: 400
            height: 200
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: hostPortContainer.bottom
            anchors.topMargin: 0

            Text {
                id: usernameLable
                x: 0
                width: 50
                text: qsTr("Username")
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                font.pixelSize: 12

                TextInput {
                    id: usernameInput
                    y: 16
                    width: 80
                    height: 20
                    text: ""
                    anchors.left: parent.right
                    anchors.leftMargin: 0
                    font.pixelSize: 12
                }
            }

            Text {
                id: passwordLabel
                y: 13
                width: 83
                height: 15
                text: qsTr("Password")
                anchors.top: usernameLable.bottom
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                font.pixelSize: 12

                TextInput {
                    id: passwordInput
                    y: 20
                    width: 80
                    height: 20
                    text: ""
                    anchors.left: parent.right
                    anchors.leftMargin: -80
                    font.pixelSize: 12
                }
            }
        }

    }



}
