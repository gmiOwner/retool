<DrawerFrame
  id="askAIDrawer"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text id="drawerTitle1" value="### Ask AI" verticalAlign="center" />
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="42da2d77"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="askAIDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <AgentChat id="agentChat1" queryTargetId="rfpAgentChat" style={{}} />
  </Body>
</DrawerFrame>
