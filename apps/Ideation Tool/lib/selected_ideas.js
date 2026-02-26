const instances = listView2.instanceValues || [];
const rows = listView2.data || [];

// collect indexes of checked rows
const selectedIndexes = instances
  .map((iv, i) => iv?.checkbox1 ? i : null)
  .filter(i => i !== null);

// return matching rows from listView2.data
return selectedIndexes.map(i => rows[i]);