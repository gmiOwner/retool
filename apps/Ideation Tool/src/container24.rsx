<Container
  id="container24"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ !get_ideas.data.prototyped_idea }}"
  loading="{{ generate_prototype.isFetching }}"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="containerTitle21" value="#### Artifacts" verticalAlign="center" />
  </Header>
  <View id="00030" viewKey="View 1">
    <ProgressBar
      id="progressBar2"
      label="Goal Match Score"
      value="{{get_ideas.data.prototyped_idea[0].goal_match_score}}"
    />
    <Text
      id="text67"
      value="{{get_ideas.data.prototyped_idea[0].goal_match_rationale}}"
      verticalAlign="center"
    />
    <KeyValue
      id="keyValue1"
      data="{{get_ideas.data.prototyped_idea[0].key_components}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="hero"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Hero"
        valueOverride="{{ item.headline }}"
      />
      <Property
        id="features"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Description"
        valueOverride="{{ item[0].description }}"
      />
      <Property
        id="sustainability_or_quality"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Sustainability or quality"
      />
      <Property
        id="trust_signals"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Trust signals"
      />
      <Property
        id="secondary_ctas"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="CTAs"
      />
      <Property
        id="faq"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Faq"
      />
    </KeyValue>
    <Divider id="divider4" />
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00030" viewKey="Artifact 1">
        <HTML
          id="html2"
          css="{{get_ideas.data.prototyped_idea[0].css}}"
          html="{{get_ideas.data.prototyped_idea[0].html}}"
        />
      </View>
      <View id="00031" viewKey="Artifact 2">
        <Image
          id="image2"
          fit="contain"
          heightType="fixed"
          horizontalAlign="center"
          retoolStorageDynamicInput={true}
          retoolStorageFileId="{{ upload_artifact.data.id }}"
          srcType="retoolStorageFileId"
        />
      </View>
    </Container>
  </View>
</Container>
