<Screen
  id="rfpSearch"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="RFP Search"
  urlSlug=""
  uuid="a3308e58-2b0d-4a13-a38a-f4ba2031222a"
>
  <RetoolStorageQuery
    id="getDocuments"
    folderName="RFPs"
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
  />
  <RetoolStorageQuery
    id="getFileContents"
    actionType="read"
    dynamicFileId={true}
    fileId="{{ documentsTable.selectedRow.id }}"
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
    runWhenModelUpdates={false}
  />
  <RetoolStorageQuery
    id="createDocument"
    actionType="upload"
    dataSource={["fileDropzone1"]}
    folderName="RFPs"
    notificationDuration={4.5}
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
  >
    <Event
      id="f8543034"
      event="success"
      method="trigger"
      params={{}}
      pluginId="getDocuments"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolStorageQuery>
  <RetoolAIQuery
    id="convertFiletoText"
    action="documentParsing"
    fileSource="[{{ getFileContents.data }}]"
    fileUseDynamicSource={true}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <RetoolAIAgentInvokeQuery
    id="rfpAgentChat"
    action="agentInvoke"
    agentId="2492a61a-a519-4711-a2b1-8c5f2b362c0b"
    agentInputs={
      '{{{\n  ...agentChat1.agentInputs,\n  messages: [\n    {\n      role: "user",\n      content: `DocumentId: ${documentsTable.selectedRow.id}`\n    },\n    ...agentChat1.agentInputs.messages\n  ]\n}}}'
    }
    agentWorkflowRunMode="async"
    enableTransformer={true}
    isMultiplayerEdited={false}
    resourceName="RetoolAIAgentInvokeQuery"
    showSuccessToaster={false}
  />
  <Include src="./askAIDrawer.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text id="text1" value="### RFP Search" verticalAlign="center" />
    <Button id="button1" iconBefore="bold/interface-add-1" text="New Document">
      <Event
        id="9381435f"
        event="click"
        method="show"
        params={{}}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="documentsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getDocuments.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="4131a"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="4131a"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={334}
        summaryAggregationMode="none"
      />
      <Column
        id="76d49"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="name"
        label="Name"
        position="left"
        size={260}
        summaryAggregationMode="none"
      />
      <Column
        id="482d0"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="isPublic"
        label="Is public"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2693e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="35ba1"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="url"
        label="URL"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="331eb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="folderName"
        label="Folder name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6776a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="sizeBytes"
        label="Size bytes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="56ca2"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="34a44"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={183}
        summaryAggregationMode="none"
      />
      <Column
        id="fb796"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{ variant: "solid" }}
        groupAggregationMode="none"
        label="Actions"
        placeholder="Enter value"
        position="right"
        referenceId="actions"
        size={77}
        summaryAggregationMode="none"
        valueOverride="Ask AI"
      >
        <Event
          id="f2fdb27a"
          event="clickCell"
          method="show"
          pluginId="askAIDrawer"
          type="widget"
          waitMs={0}
          waitType="debounce"
        />
      </Column>
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
          id="bf5d4ba3"
          event="clickToolbar"
          method="exportData"
          pluginId="documentsTable"
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
          id="3320ad37"
          event="clickToolbar"
          method="refresh"
          pluginId="documentsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <PDFViewer
      id="pdfViewer"
      showTopBar={true}
      src="{{ documentsTable.selectedRow.url }}"
    />
  </Frame>
</Screen>
