<Container
  id="container4"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle4"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="text16"
      value="**Original Problem Statement**"
      verticalAlign="center"
    />
    <Text
      id="text17"
      value="Enter the challenge or opportunity you want to explore"
      verticalAlign="center"
    />
    <TextArea
      id="textArea1"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
      value="{{ get_reframe.data.original_text[0] }}"
    />
    <Button
      id="button5"
      hidden="{{ generate_reframe2.isFetching }}"
      iconBefore="bold/interface-edit-magic-wand"
      text="Generate AI Reframes"
    >
      <Event
        id="29f09b8a"
        event="click"
        method="trigger"
        params={{}}
        pluginId="generate_reframe2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <ProgressCircle
      id="progressCircle1"
      hidden="{{ !generate_reframe2.isFetching }}"
      horizontalAlign="center"
      indeterminate={true}
      value={60}
    />
  </View>
</Container>
