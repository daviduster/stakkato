import QtQuick 2.10
import QtQuick.Window 2.10
import org.kde.kirigami 2.13 as Kirigami
import QtQuick.Controls 2.10 as QQC2
import com.github.HarmonyDevelopment.Staccato 1.0

Kirigami.OverlaySheet {
    id: rooty

    property var model: null

    Kirigami.FormLayout {
        QQC2.TextField {
            id: texty

            Kirigami.FormData.label: "Channel Name:"
        }
        QQC2.Button {
            text: "Create Channel"

            onClicked: {
                if (rooty.model.createChannel(texty.text)) {
                    root.showPassiveNotification("Created channel")
                } else {
                    root.showPassiveNotification("Failed to create channel")
                }
                rooty.close()
            }
        }
    }
}