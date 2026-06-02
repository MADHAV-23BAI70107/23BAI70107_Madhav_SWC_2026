select f1.date, round( count(f2.action)/ cast( count(f1.action) as decimal),2)
from fb_friend_requests f1 left join fb_friend_requests f2
on f1.user_id_receiver= f2.user_id_receiver and f1.user_id_sender=f2.user_id_sender
and f1.action!=f2.action
where f1.action='sent'
group by f1.date;
