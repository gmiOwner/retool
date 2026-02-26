<Container
  id="container10"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle9"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text34" value="**Clustering Controls**" verticalAlign="center" />
    <Text
      id="text35"
      value="Adjust clustering parameters and view options"
      verticalAlign="center"
    />
    <Spacer id="spacer16" />
    <Slider
      id="slider1"
      label="Similarity Threshold"
      labelPosition="top"
      max="1"
      step="0.01"
      value="0.5"
    >
      <Event
        id="95efeecb"
        event="change"
        method="trigger"
        params={{}}
        pluginId="UMAP"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Slider>
    <ToggleButton
      id="toggleButton1"
      horizontalAlign="stretch"
      iconForFalse="bold/interface-layout-border-full"
      iconForTrue="bold/interface-setting-slider-horizontal"
      iconPosition="right"
      styleVariant="outline"
      text="{{ self.value ? 'Visual' : 'Cards' }}"
    />
  </View>
</Container>
