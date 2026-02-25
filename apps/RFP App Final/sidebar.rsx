<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  style={{ map: { background: "primary" } }}
  width="medium"
>
  <Header>
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      margin="0"
      src="https://datassential.com/wp-content/uploads/2022/10/GM-logo-white-copy-1-750x500.png"
    />
  </Header>
  <Body>
    <Navigation
      id="navigation1"
      data="{{ retoolContext.pages }}"
      highlightByIndex="{{ retoolContext.currentPage === item.id }}"
      labels="{{ item.title || item.id }}"
      orientation="vertical"
      src={null}
      srcType={null}
    >
      <Option id="00030" icon="bold/interface-home-3" label="Home" />
      <Option
        id="00031"
        icon="bold/interface-user-multiple"
        label="Customers"
      />
      <Option id="00032" icon="bold/interface-setting-cog" label="Settings" />
      <Event
        id="mockEventHandlerId1"
        event="click"
        method="openPage"
        params={{ map: { pageName: "{{ item.id }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
