<Container
  id="container7"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  style={{}}
>
  <Header>
    <Text
      id="containerTitle6"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text24" value="**Problem Statement**" verticalAlign="center" />
    <Text
      id="text25"
      value="Chao1-style estimate - showing how exhausted the space is"
      verticalAlign="center"
    />
    <Spacer id="spacer11" />
    <ProgressBar
      id="progressBar1"
      indeterminate="{{ generate_ideas.isFetching || Chao1.isFetching}}"
      label="Exploration Progress"
      value="{{ get_ideas.data.exploration_progress_percent }}"
    />
    <Spacer id="spacer12" />
    <Statistic
      id="statistic1"
      currency="USD"
      label="Ideas Generated"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{ map: { valueFontSize: "33px" } }}
      value="{{ get_ideas.data.ideas_generated }}"
    />
    <Text id="text26" value="**Idea Space Status**" verticalAlign="center" />
    <Text
      id="text27"
      value="### {{ get_ideas.data.idea_space_status }}"
      verticalAlign="center"
    />
    <Spacer id="spacer27" />
    <Text id="text62" value="**Temperature**" verticalAlign="center" />
    <Slider
      id="slider2"
      hideOutput={true}
      label=""
      labelPosition="top"
      max="100"
      step="1"
      value="50"
    />
    <Button
      id="button6"
      iconBefore="bold/interface-edit-magic-wand"
      text="Generate Ideas"
    >
      <Event
        id="50f0c403"
        event="click"
        method="trigger"
        params={{}}
        pluginId="generate_ideas"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
