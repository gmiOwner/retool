SELECT
  rr.id,
  rr.run_type,
  rr.triggered_by,
  rr.started_at,

  -- ai_summary as a readable string
  (
    SELECT string_agg(x, ' ')
    FROM jsonb_array_elements_text(rr.ai_summary::jsonb) AS x
  ) AS ai_summary,

  rr.risk_score,

  -- risk_flags as a readable string (bulleted, multiline)
  (
    SELECT string_agg(x, E'\n• ')
    FROM jsonb_array_elements_text(rr.risk_flags::jsonb) AS x
  ) AS risk_flags,

  -- recommended_questions as a readable string (bulleted, multiline)
  (
    SELECT string_agg(x, E'\n• ')
    FROM jsonb_array_elements_text(rr.recommended_questions::jsonb) AS x
  ) AS recommended_questions,

  rr.model_version,
  rr.review_id,
  rr.status,
  rr.assigned_to,
  rr.assigned_date,
  rr.document_id,

  -- RFP fields
  r.rfp_name AS rfp_name

FROM rfp_reviews rr
LEFT JOIN rfps r
  ON r.storage_file_id = rr.document_id
WHERE rr.status = 'pending';
