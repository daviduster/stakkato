import QtQuick 2.10
import QtQuick.Window 2.10
import org.kde.kirigami 2.13 as Kirigami

Kirigami.RouterWindow {
    id: root

    initialRoute: "login"

    pageStack.globalToolBar.showNavigationButtons: 0

    globalDrawer: StaccatoDrawer { wideScreen: root.wideScreen }
    contextDrawer: RightDrawer { wideScreen: root.wideScreen }

    property var guildSheet: GuildSheet {
        id: guildSheet
    }

    LoginRoute {}
    NoGuildRoute {}
    ChannelRoute {}
    MessagesRoute {}
}