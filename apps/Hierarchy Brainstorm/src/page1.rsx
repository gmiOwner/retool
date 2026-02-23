<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="7690b69d-4f15-4a79-9157-8471c6f1de60"
>
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ transformer1.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      groupByColumns={[
        { map: { columnId: "4881c" } },
        { map: { columnId: "ca276" } },
      ]}
      groupedColumnConfig={{ expandByDefault: true, size: 451 }}
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="2305c"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="title"
        label="Title"
        placeholder="Enter value"
        position="center"
        size={157}
      />
      <Column
        id="9ebe2"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="8de26"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="traceability"
        label="Traceability"
        placeholder="Select options"
        position="center"
        size={100}
      />
      <Column
        id="82082"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="key"
        label="Key"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="de491"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="level"
        label="Level"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="233dd"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4881c"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="epic"
        label="Epic"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="ca276"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="feature"
        label="Feature"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="5e20c"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="story"
        label="Story"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="27129"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="task"
        label="Task"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="c0672"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="acceptanceCriteria"
        label="Acceptance criteria"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="66bdda28"
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="c38a78bc"
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ selectedBacklog.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicColumnsEnabled={true}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./table2ExpandedRow.rsx" />
      <Column
        id="86dbf"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="epics"
        label="Epics"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4154d"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="epics"
        label="Title"
        placeholder="Enter value"
        position="center"
        referenceId="title"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item.title }}"
      />
      <Column
        id="a9549"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="epics"
        label="Description"
        placeholder="Enter value"
        position="center"
        referenceId="description"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item.description }}"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="5f8517b9"
          event="clickToolbar"
          method="exportData"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="6a62b54d"
          event="clickToolbar"
          method="refresh"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
