<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle1" value="### Upload New File" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="5737b7c5"
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
    <FileDropzone
      id="fileDropzone1"
      _isUpgraded={true}
      appendNewSelection={true}
      iconBefore="bold/programming-browser-search"
      label=""
      labelPosition="top"
      maxCount={20}
      maxSize="250mb"
      placeholder="Select or drag and drop"
      selectionType="multiple"
    />
    <Button id="button2" text="Submit" />
  </Body>
</ModalFrame>
