UPDATE rfp_reviews
SET
  status = 'approved',
  completed_date = NOW(),
  completed_by = {{ current_user.email }}
WHERE id = {{ table1.selectedRow.id }};
