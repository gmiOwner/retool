<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={1}
  _searchParams={[]}
  browserTitle={null}
  title="Document Review"
  urlSlug={null}
  uuid="e921465e-10d3-479c-a098-95291620781f"
>
  <SqlQueryUnified
    id="getPendingReviews"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="getPendingReviews"
    playgroundQueryUuid="37f2a0b5-33ff-41b8-b12b-43358ff447c8"
    query={include("../lib/getPendingReviews.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="aebd75d3-d8bf-47c0-a412-b754418b3823"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="approveRequest"
    isMultiplayerEdited={false}
    query={include("../lib/approveRequest.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="aebd75d3-d8bf-47c0-a412-b754418b3823"
    runWhenModelUpdates={false}
    warningCodes={[]}
  >
    <Event
      id="7d3d6b40"
      event="success"
      method="trigger"
      params={{}}
      pluginId="getPendingReviews"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="ef6ea92e"
      event="success"
      method="hide"
      params={{}}
      pluginId="drawerFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="rejectRequest"
    query={include("../lib/rejectRequest.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="aebd75d3-d8bf-47c0-a412-b754418b3823"
    runWhenModelUpdates={false}
    warningCodes={[]}
  >
    <Event
      id="442c070c"
      event="success"
      method="trigger"
      params={{}}
      pluginId="getPendingReviews"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Include src="./drawerFrame1.rsx" />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text2"
      value="#### Review RFPs and Contracts"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getPendingReviews.data }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="83d63"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="83d63"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b3069"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="rfp_name"
        label="Rfp name"
        placeholder="Enter value"
        position="center"
        size={271}
        summaryAggregationMode="none"
      />
      <Column
        id="d4f7f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="run_type"
        label="Run type"
        placeholder="Select option"
        position="center"
        size={89}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="004b5"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="triggered_by"
        label="Triggered by"
        position="center"
        size={166}
        summaryAggregationMode="none"
      >
        <Event
          id="d7585375"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="dd497"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="started_at"
        label="Started at"
        placeholder="Enter value"
        position="center"
        size={145}
        summaryAggregationMode="none"
      />
      <Column
        id="7a80c"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ai_summary"
        label="Ai summary"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bb1f2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="risk_score"
        label="Risk score"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ac8d6"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="risk_flags"
        label="Risk flags"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c46f4"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        key="recommended_questions"
        label="Recommended questions"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d9035"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="model_version"
        label="Model version"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e9134"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="review_id"
        label="Review ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5a074"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6c09e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="assigned_to"
        label="Assigned to"
        placeholder="Select option"
        position="center"
        size={128}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="34d5c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="assigned_date"
        label="Assigned date"
        placeholder="Enter value"
        position="center"
        size={156}
        summaryAggregationMode="none"
      />
      <Column
        id="8077d"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="document_id"
        label="Document ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
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
          id="2c6fe58d"
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
          id="9b429dd6"
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        id="4c677b61"
        event="selectRow"
        method="show"
        params={{}}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</Screen>
