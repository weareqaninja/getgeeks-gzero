*Settings*
Documentation           Database Helpers

Library     DatabaseLibrary
Library     factories/Users.py

*Keywords*
Connect To Postgres

    Connect To Database     psycopg2
    ...                     hacfvybp
    ...                     hacfvybp
    ...                     G4QVI9vGGGxXP6MXmjom8B-BPKXfOnNo
    ...                     chunee.db.elephantsql.com
    ...                     5432

Reset Env

    Execute SQL String      DELETE from public.geeks;
    Execute SQL String      DELETE from public.users;

Insert User
    [Arguments]     ${u}

    ${hashed_pass}     Get Hashed Pass     ${u}[password]

    ${q}    Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false)

    Execute SQL String      ${q}

Users Seed

    ${user}         Factory User    login
    Insert User     ${user}

    ${user2}        Factory User    be_geek
    Insert User     ${user2}

    ${user3}        Factory User    be_geek_short_desc
    Insert User     ${user3}