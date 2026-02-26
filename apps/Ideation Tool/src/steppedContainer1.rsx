<Container
  id="steppedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Button
      id="button4"
      iconBefore="bold/interface-arrows-left"
      style={{}}
      styleVariant="outline"
    >
      <Event
        id="7a865f3a"
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "home",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Steps
      id="steps1"
      horizontalAlign="center"
      itemMode="static"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Step 1" />
      <Option id="00031" value="Step 2" />
      <Option id="00032" value="Step 3" />
    </Steps>
  </Header>
  <View id="00030" label="Upload" viewKey="upload">
    <Spacer id="spacer25" />
    <Text id="text10" value="# Upload Documents" verticalAlign="center" />
    <Text
      id="text11"
      value="Upload relevant documents such as research reports, market insights, customer feedback, or reference materials. These files will provide context and background information to help generate more informed and relevant ideas during the ideation process."
      verticalAlign="center"
    />
    <Spacer id="spacer8" />
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text12"
          value="Supported Formats: PDF, DOC, DOCX, TXT, CSV (Optional)"
          verticalAlign="center"
        />
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
        >
          <Event
            id="b69a91b2"
            event="parse"
            method="trigger"
            params={{}}
            pluginId="upload_file"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </FileDropzone>
        <ListViewBeta
          id="listView1"
          data="{{ fileDropzone1.value }}"
          enableInstanceValues={true}
          formDataKey="{{ self.data[i].id }}"
          heightType="auto"
          hidden="{{ get_files.data.length === 0 }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Include src="./container3.rsx" />
        </ListViewBeta>
      </View>
    </Container>
    <Spacer id="spacer26" />
  </View>
  <View id="00031" label="Reframe" viewKey="reframe">
    <Text
      id="text14"
      value="# Reframe Problem Statement"
      verticalAlign="center"
    />
    <Text
      id="text15"
      value="Define and refine your problem statement to guide the ideation process"
      verticalAlign="center"
    />
    <Spacer id="spacer6" />
    <Include src="./container4.rsx" />
    <Spacer id="spacer7" />
    <Container
      id="container5"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ JSON.parse(get_reframe.data.reframed_text_array[0]) == null }}"
      padding="12px"
      showBody={true}
      style={{}}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text18"
          value="**Reframed Problem Statement**"
          verticalAlign="center"
        />
        <Text
          id="text19"
          value="Select the framing that best captures your ideation goal"
          verticalAlign="center"
        />
        <Listbox
          id="listbox1"
          captionByIndex="{{ item.created_by }}"
          colorByIndex=""
          data="{{ JSON.parse(get_reframe.data.reframed_text_array[0]) }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex="{{ item.original_text }}"
          hidden="true"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label=""
          labelPosition="top"
          labels=""
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ self.values[0] }}"
          values="{{ item }}"
        />
        <ListViewBeta
          id="listView7"
          _primaryKeys=""
          data="{{ problem_statements.value }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Include src="./container22.rsx" />
        </ListViewBeta>
      </View>
    </Container>
  </View>
  <View id="00032" label="Generate" viewKey="generate">
    <Text id="text20" value="# Idea Generator" verticalAlign="center" />
    <Text
      id="text21"
      value="Generate a diverse set of ideas using AI-powered brainstorming"
      verticalAlign="center"
    />
    <Spacer id="spacer9" />
    <Container
      id="container6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{}}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text22"
          value="**Problem Statement**"
          verticalAlign="center"
        />
        <Text
          id="text23"
          value="{{ selected_reframe.value }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Spacer id="spacer10" />
    <Include src="./container7.rsx" />
    <Spacer id="spacer13" />
    <Container
      id="container8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ get_ideas.data.ideas_generated[0] == null }}"
      padding="12px"
      showBody={true}
      style={{}}
    >
      <Header>
        <Text
          id="containerTitle7"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text id="text28" value="**Generated Ideas**" verticalAlign="center" />
        <Text
          id="text29"
          value="A batch of AI-powered ideas"
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView6"
          _primaryKeys=""
          data="{{ JSON.parse(get_ideas.data.ideas_array) }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container21"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
          >
            <Header>
              <Text
                id="containerTitle19"
                value="#### {{ item }}"
                verticalAlign="center"
              />
            </Header>
            <View id="00030" viewKey="View 1">
              <Text id="text55" value="{{ item }}" verticalAlign="center" />
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </View>
  <View
    id="a3cf1"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Cluster"
    viewKey="cluster"
  >
    <Text id="text30" value="# Cluster Ideas" verticalAlign="center" />
    <Text
      id="text31"
      value="Group similar ideas and select the most promising ones"
      verticalAlign="center"
    />
    <Spacer id="spacer14" />
    <Include src="./container10.rsx" />
    <Spacer id="spacer15" />
    <Container
      id="container9"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ toggleButton1.value == true }}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle8"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text id="text32" value="**UMAP Projection**" verticalAlign="center" />
        <Text
          id="text33"
          value="2D visualization of idea similarity"
          verticalAlign="center"
        />
        <Chart
          id="scatterChart1"
          barMode="group"
          barOrientation=""
          chartType="scatter"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ UMAP.data }}"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{ array: [] }}
            groupBy={{ array: ["cluster_label"] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="%{{ item.idea_text }}"
            hoverTemplateArray="{{ UMAP.data.map(p => p.idea_text) }}"
            hoverTemplateMode="array"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#000000"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#000000"
            markerSize={6}
            markerSymbol="circle"
            name="Clusters"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="scatter"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(UMAP.data).x }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(UMAP.data).y }}"
            yDataMode="source"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
    <ListViewBeta
      id="listView2"
      _primaryKeys="{{ item.index }}"
      data="{{ join_ideas2.data }}"
      enableInstanceValues={true}
      hidden="{{ toggleButton1.value == false }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="container11"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
      >
        <Header>
          <Text
            id="containerTitle10"
            value="#### {{ item.cluster_label }}"
            verticalAlign="center"
          />
        </Header>
        <View id="00030" viewKey="View 1">
          <Text
            id="text56"
            value="{{ item.cluster_label }}"
            verticalAlign="center"
          />
          <Checkbox id="checkbox1" label="" labelWidth="100" />
          <Text
            id="text57"
            value="###### {{ item.text }}"
            verticalAlign="center"
          />
        </View>
      </Container>
    </ListViewBeta>
  </View>
  <View
    id="2e292"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Push"
    viewKey="push"
  >
    <Text id="text36" value="# Push Ideas" verticalAlign="center" />
    <Text
      id="text37"
      value="Apply creative strategies to generate variants of your selected ideas"
      verticalAlign="center"
    />
    <Spacer id="spacer18" />
    <Container
      id="container13"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text38"
          value="**Select a Push Strategy**"
          verticalAlign="center"
        />
        <Text
          id="text39"
          value="Choose a creative lens to generate idea variants"
          verticalAlign="center"
        />
        <Listbox
          id="listbox2"
          emptyMessage="No options"
          itemMode="static"
          label=""
          labelPosition="top"
          showSelectionIndicator={true}
          value="{{ self.values[0] }}"
        >
          <Option
            id="00030"
            icon="bold/interface-lock"
            label="Add Constraints"
            value="add_constraints"
          />
          <Option
            id="00031"
            icon="bold/interface-unlock"
            label="Remove Constraints"
            value="remove_constraints"
          />
          <Option
            id="00032"
            icon="bold/interface-id-thumb-mark"
            label="Persona-Based"
            value="persona_based"
          />
          <Option
            id="5794d"
            disabled={false}
            hidden={false}
            icon="bold/image-flash-1-alternate"
            label="Focus on Goals"
            value="focus_on_goals"
          />
        </Listbox>
      </View>
    </Container>
    <Spacer id="spacer19" />
    <Include src="./container14.rsx" />
    <Spacer id="spacer20" />
    <Container
      id="container15"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{listView4.data.length <1 }}"
      loading="{{ generate_pushed.isFetching }}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle13"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text42"
          value="**Pushed Idea Variants**"
          verticalAlign="center"
        />
        <Text
          id="text43"
          value="New perspectives on your original ideas"
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView4"
          _primaryKeys=""
          data="{{get_ideas.data.pushed_ideas[0]}}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container16"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
          >
            <Header>
              <Text
                id="containerTitle14"
                value="#### {{ item.variants. }}"
                verticalAlign="center"
              />
            </Header>
            <View id="00030" viewKey="View 1">
              <Text
                id="text63"
                value="**{{ item.variants.variant_text }}**"
                verticalAlign="center"
              />
              <Text
                id="text64"
                value="{{ item.variants.push_rationale }}"
                verticalAlign="center"
              />
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </View>
  <View
    id="f13ce"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Prototype"
    viewKey="prototype"
  >
    <Text id="text44" value="# Generate Prototypes" verticalAlign="center" />
    <Text
      id="text45"
      value="Transform selected ideas into visual prototypes with goal-match scoring"
      verticalAlign="center"
    />
    <Spacer id="spacer21" />
    <Container
      id="container17"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="true"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle15"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic4"
          align="center"
          currency="USD"
          formattingStyle="percent"
          label="Avg. Goal Match"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value=".82"
        />
        <Statistic
          id="statistic2"
          align="center"
          currency="USD"
          label="Pushed Ideas"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ get_ideas.data.pushed_ideas[0].variants.length }}"
        />
        <Statistic
          id="statistic5"
          align="center"
          currency="USD"
          label="Prototypes Created"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="2"
        />
      </View>
    </Container>
    <Spacer id="spacer22" hidden="true" />
    <Listbox
      id="listbox4"
      captionByIndex="{{ item.variants.push_rationalese }}"
      data="{{ get_ideas.data.pushed_ideas[0] }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels=""
      showSelectionIndicator={true}
      value="{{ self.values[0] }}"
      values="{{ item.variants.variant_text }}"
    />
    <Container
      id="container23"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle20"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text65"
          value="#### {{ listbox4.selectedItem.variants.variant_text }}"
          verticalAlign="center"
        />
        <Text
          id="text66"
          value="{{ listbox4.selectedItem.variants.push_rationale }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Spacer id="spacer28" />
    <Button
      id="button9"
      iconBefore="bold/interface-edit-magic-wand"
      loading="{{ generate_prototype.isFetching }}"
      submitTargetId=""
      text="Generate Prototype"
    >
      <Event
        id="8db2eff3"
        event="click"
        method="trigger"
        params={{}}
        pluginId="generate_prototype"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="5b69d4ef"
        event="click"
        method="trigger"
        params={{}}
        pluginId="generate_image"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="51ba2"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Artifact"
    viewKey="artifact"
  >
    <Include src="./container24.rsx" />
  </View>
  <Footer>
    <Button
      id="prevButton1"
      disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        id="66ca16c7"
        event="click"
        method="showPreviousVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next"
    >
      <Event
        id="95d21f1a"
        event="click"
        method="showNextVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="5ec3df2b"
        event="click"
        method="trigger"
        params={{}}
        pluginId="extract_text"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="aca09507"
        enabled="{{ steppedContainer1.currentViewIndex == 3 }}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="selected_ideas"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="71e47677"
        enabled="{{ steppedContainer1.currentViewIndex == 0 }}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="get_reframe"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    id="97861eb9"
    event="change"
    method="trigger"
    params={{}}
    pluginId="set_stage"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    id="7808aea5"
    event="change"
    method="trigger"
    params={{}}
    pluginId="create_reframe"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    id="f35819b8"
    event="change"
    method="trigger"
    params={{}}
    pluginId="create_ideas"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>
