<Screen
  id="home"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="accd1c69-8cb8-4e4d-8ea6-9185110f9d1b"
>
  <SqlQueryUnified
    id="get_projects"
    query={include("../lib/get_projects.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="aebd75d3-d8bf-47c0-a412-b754418b3823"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="create_project"
    actionType="INSERT"
    changeset={
      '[{"key":"created_at","value":"{{ new Date() }}"},{"key":"stage_status","value":"in_progress"},{"key":"current_stage","value":"upload"},{"key":"description","value":"{{ textArea2.value }}"},{"key":"name","value":"{{ textInput1.value }}"},{"key":"archived","value":"false"},{"key":"last_activity_at","value":"{{ new Date() }}"},{"key":"updated_at","value":"{{ new Date() }}"},{"key":"facilitator_id","value":"{{ current_user.email || current_user.metadata.idToken.email }}"},{"key":"collaborator_count","value":"1"}]'
    }
    confirmationMessage="## Are you sure you want to create a new project?"
    editorMode="gui"
    enableTransformer={true}
    isMultiplayerEdited={false}
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="aebd75d3-d8bf-47c0-a412-b754418b3823"
    runWhenModelUpdates={false}
    tableName="ideation_project_list"
    transformer="return data.result[0].id"
  >
    <Event
      id="24c27482"
      event="success"
      method="trigger"
      params={{}}
      pluginId="create_folder"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="delete_project"
    actionType="DELETE_BY"
    confirmationMessage="## Are you sure you want to delete this project?"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ gridView1.instanceValues[i].primaryKey }}","operation":"="}]'
    }
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="aebd75d3-d8bf-47c0-a412-b754418b3823"
    runWhenModelUpdates={false}
    tableName="ideation_project_list"
  >
    <Event
      id="1b8cab34"
      event="success"
      method="trigger"
      params={{}}
      pluginId="get_projects"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RetoolStorageQuery
    id="create_folder"
    actionType="makeFolder"
    folderName="{{ create_project.rawData.result[0].id }}"
    notificationDuration={4.5}
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
  >
    <Event
      id="e9ea150d"
      event="success"
      method="openPage"
      params={{
        options: {
          passDataWith: "urlParams",
          queryParams: [
            { key: "id", value: "{{ create_project.rawData.result[0].id }}" },
          ],
        },
        pageName: "ideation",
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolStorageQuery>
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Spacer id="spacer3" />
    <Text id="text3" value="## Your Projects" verticalAlign="center" />
    <Text
      id="text4"
      value="Create and manage ideation sessions"
      verticalAlign="center"
    />
    <Button id="button17" text="Button" />
    <Button
      id="button1"
      hidden="{{ current_user.groups.includes('admin') }}"
      iconBefore="bold/interface-add-circle-alternate"
      text="New Project"
    >
      <Event
        id="88218f27"
        event="click"
        method="show"
        params={{}}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer4" />
    <ListViewBeta
      id="gridView1"
      _primaryKeys="{{ item.id }}"
      data="{{ get_projects.data }}"
      enableInstanceValues={true}
      itemWidth="200px"
      layoutType="grid"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./container1.rsx" />
    </ListViewBeta>
  </Frame>
</Screen>
