function mulberry32(a){
  return function(){
    var t = a += 0x6D2B79F5;
    t = Math.imul(t ^ t >>> 15, t | 1);
    t ^= t + Math.imul(t ^ t >>> 7, t | 61);
    return ((t ^ t >>> 14) >>> 0) / 4294967296;
  }
}

const rand = mulberry32(Number(url.searchParams.id || 1));
const d = get_ideas.data || {};

// ideas_array is columnar: [<value>]
let ideas = d.ideas_array?.[0] ?? [];
if (typeof ideas === "string") ideas = JSON.parse(ideas);

// cluster_json is columnar: [<value>]
let clusters = d.cluster_json?.[0] ?? [];
if (typeof clusters === "string") clusters = JSON.parse(clusters);

// slider controls tightness: higher slider => tighter clusters
const t = Number(slider1.value ?? 0.5);          // 0..1
const jitter = Math.max(0.1, 1.6 - (t * 1.4));   // 1.6 -> 0.2

// Create a centroid per cluster
const centroids = (clusters || []).map(() => ({
  cx: (rand() * 2 - 1) * 10,
  cy: (rand() * 2 - 1) * 10
}));

// Map idea index -> cluster label + centroid index
const idxToCluster = {};
(clusters || []).forEach((c, ci) => {
  (c.idea_indexes || []).forEach(i => {
    idxToCluster[i] = { label: c.cluster_label, ci };
  });
});

// Build scatter points
const points = (ideas || []).map((txt, i) => {
  const info = idxToCluster[i] || { label: "Unclustered", ci: 0 };
  const centroid = centroids[info.ci] || { cx: 0, cy: 0 };

  return {
    x: centroid.cx + (rand() * 2 - 1) * jitter,
    y: centroid.cy + (rand() * 2 - 1) * jitter,
    idea_index: i,
    idea_text: txt,
    cluster_label: info.label,
    jitter_used: jitter
  };
});

return points;
