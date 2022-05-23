SELECT * FROM 
(
	SELECT MAX(id) AS max_id, IF(receiver_id = 1, sender_id, receiver_id) AS user_id
	FROM messages
	WHERE receiver_id = 1
	GROUP BY user_id
) AS m1
LEFT JOIN messages m2 ON m2.id = m1.max_id





 






