
INSERT INTO ideation_ideas
(project_id, created_by, created_at)
SELECT
  {{ url.searchParams.id }},
  {{ current_user.email }},
  NOW()
WHERE NOT EXISTS (
  SELECT 1
  FROM ideation_ideas
  WHERE project_id = {{ url.searchParams.id }}
);