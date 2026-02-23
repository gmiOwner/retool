const data = {{ selectedBacklog.value }}; 

const rows = [];

(data.epics ?? []).forEach((epic, epicIdx) => {
  const epicKey = `E${epicIdx + 1}`;
  const epicTitle = epic.title;

  (epic.features ?? []).forEach((feature, featIdx) => {
    const featKey = `${epicKey}.F${featIdx + 1}`;
    const featureTitle = feature.title;

    (feature.userStories ?? []).forEach((story, storyIdx) => {
      const storyKey = `${featKey}.US${storyIdx + 1}`;
      const storyTitle = story.title;

      // A row for the story itself (optional but usually helpful)
      rows.push({
        key: storyKey,
        level: 2,
        type: "User Story",

        epic: epicTitle,
        feature: featureTitle,
        story: storyTitle,
        task: null,

        title: story.title,
        description: story.description,
        acceptanceCriteria: (story.acceptanceCriteria ?? []).join("\n"), // newline-separated
        traceability: (story.traceability ?? [])
          .map(t => `${t.sourceDocumentId}: ${t.evidenceSnippet}`)
          .join("\n"),
      });

      // Rows for tasks under the story
      (story.tasks ?? []).forEach((task, taskIdx) => {
        rows.push({
          key: `${storyKey}.T${taskIdx + 1}`,
          level: 3,
          type: "Task",

          epic: epicTitle,
          feature: featureTitle,
          story: storyTitle,
          task: task.title,

          title: task.title,
          description: task.description,
          acceptanceCriteria: null,
          traceability: null,
        });
      });
    });
  });
});

return rows;