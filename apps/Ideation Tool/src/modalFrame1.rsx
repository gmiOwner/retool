<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle1" value="### Create Project" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="97b29635"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="textInput1"
      label="Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextArea
      id="textArea2"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
  </Body>
  <Footer>
    <Button
      id="button13"
      disabled={'{{ textInput1.value == "" || textArea2.value == ""}}'}
      iconBefore="bold/interface-add-circle-alternate"
      text="Create"
    >
      <Event
        id="dcfdcc82"
        event="click"
        method="trigger"
        params={{}}
        pluginId="create_project"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
