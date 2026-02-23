<ExpandedRow id="table2ExpandedRow">
  <ListViewBeta
    id="listView1"
    data="{{ currentRow.epics.features }}"
    heightType="auto"
    itemWidth="200px"
    margin="0"
    numColumns={3}
    padding="0"
  >
    <Container
      id="collapsibleContainer1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
    >
      <Header>
        <ToggleButton
          id="collapsibleToggle1"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          style={{ map: { background: "rgba(6, 85, 162, 0)" } }}
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer1.showBody }}"
        >
          <Event
            id="59203843"
            event="change"
            method="setShowBody"
            params={{ map: { showBody: "{{ self.value }}" } }}
            pluginId="collapsibleContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
        <Text
          id="collapsibleTitle1"
          value="{{ item.title }}"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <ListViewBeta
          id="listView2"
          data="{{ item.userStories }}"
          heightType="auto"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="collapsibleContainer2"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="0"
            padding="0"
            showBody={true}
            showBorder={false}
            showHeader={true}
          >
            <Header>
              <ToggleButton
                id="collapsibleToggle2"
                horizontalAlign="right"
                iconForFalse="bold/interface-arrows-button-down"
                iconForTrue="bold/interface-arrows-button-up"
                iconPosition="replace"
                style={{ map: { background: "rgba(6, 85, 162, 0)" } }}
                text="{{ self.value ? 'Hide' : 'Show' }}"
                value="{{ collapsibleContainer2.showBody }}"
              >
                <Event
                  id="0af92ec8"
                  event="change"
                  method="setShowBody"
                  params={{ map: { showBody: "{{ self.value }}" } }}
                  pluginId="collapsibleContainer2"
                  type="widget"
                  waitMs="0"
                  waitType="debounce"
                />
              </ToggleButton>
              <Text
                id="collapsibleTitle2"
                value="{{ item.title }}"
                verticalAlign="center"
              />
            </Header>
            <View id="00030" viewKey="View 1">
              <Navigation
                id="navigation1"
                data="{{ item.tasks }}"
                highlightByIndex=""
                iconByIndex="bold/interface-arrows-button-right"
                labels="{{ item.title }}"
                orientation="vertical"
                retoolFileObject={{}}
                style={{
                  fontSize: "12px",
                  fontWeight: "400",
                  fontFamily: "Montserrat",
                  color: "rgb(39, 39, 40)",
                }}
              >
                <Option id="00030" icon="bold/interface-home-3" label="Home" />
                <Option
                  id="00031"
                  icon="bold/interface-user-multiple"
                  label="Customers"
                />
                <Option
                  id="00032"
                  icon="bold/interface-setting-cog"
                  label="Settings"
                />
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
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </ListViewBeta>
</ExpandedRow>
