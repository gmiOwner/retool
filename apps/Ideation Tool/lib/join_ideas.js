const d = get_ideas.data || {};

// ideas_array is columnar: [<value>]
let ideas = d.ideas_array?.[0] ?? [];
if (typeof ideas === "string") {
  ideas = JSON.parse(ideas);
}

// cluster_json is columnar: [<value>]
let clusters = d.cluster_json?.[0] ?? [];
if (typeof clusters === "string") {
  clusters = JSON.parse(clusters);
}

// clusters should now be an array of {cluster_label, idea_indexes}
return (clusters || []).map(c => ({
  cluster_label: c.cluster_label ?? "(unnamed cluster)",
  idea_count: (c.idea_indexes || []).length,
  ideas: (c.idea_indexes || []).map(i => ({
    index: i,
    text: ideas?.[i] ?? "(missing idea)"
  }))
}));
