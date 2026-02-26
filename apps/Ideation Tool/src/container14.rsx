<Container
  id="container14"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle12"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="text40"
      value="**Selected Original Ideas**"
      verticalAlign="center"
    />
    <Text
      id="text41"
      value="These ideas will be transformed using the selected strategy"
      verticalAlign="center"
    />
    <MultiselectListbox
      id="multiselectListbox1"
      data="{{ selected_ideas.data }}"
      emptyMessage="No options"
      fallbackTextByIndex="{{ item.text }}"
      iconByIndex=""
      imageByIndex="https://brandsitesplatform-res.cloudinary.com/image/fetch/w_800,c_scale,q_auto:eco,f_auto,fl_lossy,dpr_1.0,e_sharpen:85/https://assets.brandplatform.generalmills.com%2F-%2Fmedia%2Fproject%2Fgmi%2Fcorporate%2Fcorporate-master%2Fimages%2Fnews-stories%2F2017%2F12%2Fnewglogo%2Fnew-g-logo-1.jpg%3Fw%3D568%26rev%3D3bae96f78e044e7e8d87cee2650b533f"
      label=""
      labelPosition="top"
      labels="{{ item.text }}"
      showSelectionIndicator={true}
      value="{{ [self.values[0]] }}"
      values="{{ item.index }}"
    />
    <Button
      id="button8"
      iconBefore="bold/interface-edit-magic-wand"
      loading="{{ generate_pushed.isFetching }}"
      text="Generate Pushed Variants"
    >
      <Event
        id="698c4978"
        event="click"
        method="trigger"
        params={{}}
        pluginId="generate_pushed"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
