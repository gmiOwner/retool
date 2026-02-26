select
  *
from
  "ideation_project_list"
where
  facilitator_id = {{ current_user.email || current_user.metadata.idToken.email }}