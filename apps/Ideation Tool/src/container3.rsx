<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Icon
      id="icon3"
      horizontalAlign="center"
      icon="bold/mail-send-email-attachment-document"
    />
    <Text
      id="containerTitle3"
      value="**{{ item.name }}**"
      verticalAlign="center"
    />
    <Button id="button14" iconBefore="bold/interface-download-button-2">
      <Event
        id="66a20237"
        event="click"
        method="openUrl"
        params={{ map: { url: "{{ item.url }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button15"
      iconBefore="bold/interface-delete-bin-2"
      style={{ border: "danger", icon: "danger" }}
      styleVariant="outline"
    >
      <Event
        id="b6a870bb"
        event="click"
        method="trigger"
        params={{}}
        pluginId="delete_file"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text id="text13" value="{{ item.type }}" verticalAlign="center" />
  </View>
</Container>
