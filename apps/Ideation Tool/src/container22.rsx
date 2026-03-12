<Container
  id="container22"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  padding="12px"
  showHeader={true}
  style={{
    map: {
      border:
        '{{ selected_reframe.value.problem_statement === item.problem_statement ? "#0173C5" : "#D0D4DB" }}',
    },
  }}
>
  <Header>
    <Button id="button16" iconBefore="bold/interface-add-square-alternate">
      <Event
        id="fde3ec59"
        event="click"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "success",
              title: "Successfully Selected Problem Statement",
              description: "",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ba4eefb7"
        event="click"
        method="setValue"
        params={{ map: { value: "{{ item.problem_statement }}" } }}
        pluginId="selected_reframe"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="21612203"
        event="click"
        method="setCurrentViewIndex"
        params={{ map: { viewIndex: "2" } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextArea
      id="textArea3"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="1"
      placeholder="Enter value"
      value="{{ item.problem_statement }}"
    />
    <Container
      id="group2"
      _direction="vertical"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <Icon
          id="icon4"
          hidden="{{ container22.showBody === true }}"
          horizontalAlign="center"
          icon="bold/interface-arrows-button-down"
        >
          <Event
            id="469e5921"
            event="click"
            method="setShowBody"
            params={{ map: { showBody: true } }}
            pluginId="container22"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
        <Icon
          id="icon5"
          hidden="{{ container22.showBody === false }}"
          horizontalAlign="center"
          icon="bold/interface-arrows-button-up"
          style={{}}
        >
          <Event
            id="c2261807"
            event="click"
            method="setShowBody"
            params={{ map: { showBody: false } }}
            pluginId="container22"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="text59"
      value="**Who is affected:** {{ item.who_is_affected || item.who_affected }}"
      verticalAlign="center"
    />
    <Text
      id="text60"
      value="**Opportunity Unlocked:** {{ item.new_opportunity_unlocked }}"
      verticalAlign="center"
    />
    <Text
      id="text61"
      value="**Success Criteria:** {{ item.success_criteria }}"
      verticalAlign="center"
    />
  </View>
  <Event
    id="fd53b622"
    event="click"
    method="setValue"
    params={{ map: { value: "{{ item }}" } }}
    pluginId="selected_reframe"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</Container>
