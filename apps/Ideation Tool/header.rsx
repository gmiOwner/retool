<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Container
    id="group1"
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
      <Image
        id="image1"
        fit="contain"
        heightType="fixed"
        horizontalAlign="center"
        retoolStorageFileId="3728c4dc-bcbf-44a5-be9d-c6f4e6152deb"
        src="https://picsum.photos/id/1025/800/600"
        srcType="retoolStorageFileId"
      />
      <Text
        id="text1"
        value="### General Mills
###### Ideation Tool"
        verticalAlign="center"
      />
    </View>
  </Container>
  <Navigation
    id="navigation1"
    appTargetByIndex=""
    captionByIndex=""
    data=""
    disabledByIndex=""
    hiddenByIndex=""
    highlightByIndex=""
    iconByIndex=""
    iconPositionByIndex=""
    itemMode="static"
    itemTypeByIndex=""
    keyByIndex=""
    labels=""
    parentKeyByIndex=""
    persistUrlParamsByIndex=""
    retoolFileObject={{}}
    screenTargetByIndex=""
    screenTargetIdByIndex=""
    tooltipByIndex=""
  >
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
  <Spacer id="spacer1" />
  <Avatar
    id="avatar1"
    fallback="{{ current_user.fullName }}"
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelCaption="{{ current_user.email }}"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ map: { background: "automatic" } }}
  />
  <Spacer id="spacer2" />
</Frame>
