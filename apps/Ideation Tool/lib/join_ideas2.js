const clusters = join_ideas.data || [];

return clusters.flatMap(c =>
  (c.ideas || []).map(idea => ({
    index: idea.index,
    text: idea.text,
    cluster_label: c.cluster_label
  }))
);