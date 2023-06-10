INSERT INTO w21b.philosopher (name, bio, date_of_birth, date_of_death, image_url) values
('random1', 'some guy1', '1996-07-03', now(), 'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
('random2', 'some guy2', '1996-07-04', now(), 'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
('random3', 'some guy3', '1996-07-05', now(), 'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
('random4', 'some guy4', '1996-07-06', now(), 'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
('random5', 'some guy5', '1996-07-07', now(), 'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
('random6', 'some guy6', '1996-07-08', now(), 'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

INSERT INTO w21b.quote (philosopher_id, content) values
(1,"The unexamined life is not worth living"),
(2,"Whereof one cannot speak, thereof one must be silent"),
(3,"Entities should not be multiplied unnecessarily"),
(4,"The life of man (in a state of nature) is solitary, poor, nasty, brutish, and short"),
(5,"He who thinks great thoughts, often makes great errors"),
(6,"We live in the best of all possible worlds"),
(1,"What is rational is actual and what is actual is rational"),
(2,"God is dead! He remains dead! And we have killed him."),
(3,"One cannot step twice in the same river"),
(4,"The greatest happiness of the greatest number is the foundation of morals and legislation"),
(5,"Happiness is not an ideal of reason but of imagination"),
(5,"No man's knowledge here can go beyond his experience"),
(5,"Liberty consists in doing what one desires"),
(6,"There is only one good, knowledge, and one evil, ignorance"),
(4,"If God did not exist, it would be necessary to invent Him");


SELECT q.id, p.name, q.content FROM w21b.quote q inner join philosopher p where q.philosopher_id = p.id;

call get_philosophers(); 
call get_quotes(1);
call new_philospopher('random7', 'some guy7', '1997-07-09', now(),'https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); 
call new_quote(7,"blah blah blah");