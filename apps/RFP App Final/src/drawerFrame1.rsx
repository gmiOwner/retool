<DrawerFrame
  id="drawerFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text id="drawerTitle2" value="### Review Task" verticalAlign="center" />
    <Button
      id="drawerCloseButton2"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="09f2d1b6"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <KeyValue
      id="keyValue1"
      data="{{ table1.selectedRow }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="ID"
      />
      <Property
        id="run_type"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Run type"
      />
      <Property
        id="triggered_by"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        hidden="false"
        label="Triggered by"
      />
      <Property
        id="started_at"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Started at"
      />
      <Property
        id="ai_summary"
        editable="false"
        editableOptions={{}}
        format="json"
        formatOptions={{}}
        hidden="false"
        label="Ai summary"
      />
      <Property
        id="risk_score"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Risk score"
      />
      <Property
        id="risk_flags"
        editable="false"
        editableOptions={{}}
        format="json"
        formatOptions={{}}
        hidden="false"
        label="Risk flags"
      />
      <Property
        id="recommended_questions"
        editable="false"
        editableOptions={{}}
        format="json"
        formatOptions={{}}
        hidden="false"
        label="Recommended questions"
      />
      <Property
        id="model_version"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Model version"
      />
      <Property
        id="review_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Review ID"
      />
      <Property
        id="status"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Status"
      />
      <Property
        id="assigned_to"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Assigned to"
      />
      <Property
        id="assigned_date"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Assigned date"
      />
      <Property
        id="document_id"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Document ID"
      />
      <Property
        id="column18"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Column 18"
      />
    </KeyValue>
  </Body>
  <Footer>
    <Button
      id="button4"
      style={{ map: { background: "danger" } }}
      text="Reject"
    >
      <Event
        id="663b8951"
        event="click"
        method="trigger"
        params={{}}
        pluginId="rejectRequest"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button3"
      style={{ map: { background: "success" } }}
      text="Approve"
    >
      <Event
        id="a95cad91"
        event="click"
        method="trigger"
        params={{}}
        pluginId="approveRequest"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</DrawerFrame>
