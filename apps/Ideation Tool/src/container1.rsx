<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### {{ item.name }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text5" value="{{item.description}}" verticalAlign="center" />
    <Divider id="divider1" />
    <Icon
      id="icon1"
      horizontalAlign="center"
      icon="bold/interface-calendar-check"
      margin="5px 4px"
    />
    <Text
      id="text6"
      value="Created {{ new Date(item.created_at).toLocaleString() }}"
      verticalAlign="center"
    />
    <Icon
      id="icon2"
      horizontalAlign="center"
      icon="bold/interface-user-multiple"
      margin="5px 4px"
    />
    <Text
      id="text7"
      value="{{ item.collaborator_count }} Collaborator(s)"
      verticalAlign="center"
    />
    <Divider id="divider3" />
    <Text id="text8" value="Current Stage:" verticalAlign="center" />
    <Text
      id="text9"
      horizontalAlign="center"
      style={{ map: { color: "tokens/9447f65c" } }}
      value="**{{ item.current_stage.toUpperCase() }}**"
      verticalAlign="center"
    />
    <Spacer id="spacer5" />
    <Button
      id="button2"
      iconBefore="bold/entertainment-control-button-play-alternate"
      text="Continue"
    >
      <Event
        id="0c73c273"
        event="click"
        method="openPage"
        params={{
          options: {
            passDataWith: "urlParams",
            queryParams: [{ key: "id", value: "{{ item.id }}" }],
          },
          pageName: "ideation",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button3"
      iconBefore="bold/interface-delete-bin-1"
      style={{ border: "danger", background: "surfacePrimary", icon: "danger" }}
    >
      <Event
        id="5a120144"
        event="click"
        method="trigger"
        params={{}}
        pluginId="delete_project"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
