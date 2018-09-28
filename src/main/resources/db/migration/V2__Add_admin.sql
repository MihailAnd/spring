 insert into usr (id, username, password, active)
    values (1, 'admin', '$2a$06$NxVE9/IQ5M3k7UJ5Hhwl4ueZall83apjxHjylhBX9bSs21AOIdPvm', true);

insert into user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');