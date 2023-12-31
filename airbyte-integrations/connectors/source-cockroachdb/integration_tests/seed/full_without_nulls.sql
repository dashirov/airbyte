CREATE
    SCHEMA COCKROACHDB_FULL_NN;

CREATE
    TYPE mood AS ENUM(
        'sad',
        'ok',
        'happy'
    );

CREATE
    TABLE
        COCKROACHDB_FULL_NN.TEST_DATASET(
            id INTEGER PRIMARY KEY,
            test_column_1 STRING [],
            test_column_10 BLOB,
            test_column_11 CHARACTER,
            test_column_12 CHARACTER(8),
            test_column_13 VARCHAR,
            test_column_14 CHARACTER(12),
            test_column_15 DATE,
            test_column_16 float8,
            test_column_17 FLOAT,
            test_column_18 inet,
            test_column_19 INT,
            test_column_2 BIT(3),
            test_column_20 INTERVAL,
            test_column_21 json,
            test_column_22 jsonb,
            test_column_23 NUMERIC,
            test_column_24 DECIMAL,
            test_column_25 SMALLINT,
            test_column_26 text,
            test_column_27 TIME,
            test_column_28 timetz,
            test_column_29 TIMESTAMP,
            test_column_3 BIGINT,
            test_column_30 uuid,
            test_column_31 mood,
            test_column_32 text [],
            test_column_33 INT [],
            test_column_4 bigserial,
            test_column_5 serial,
            test_column_6 smallserial,
            test_column_7 BIT VARYING(5),
            test_column_8 BOOLEAN,
            test_column_9 bytea []
        );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        1,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        'a',
        '{asb123}',
        'a',
        'a',
        '1999-01-08',
        '123',
        '123',
        '198.24.10.0/24',
        - 2147483648,
        B'101',
        'P1Y2M3DT4H5M6S',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        '+inf',
        - 32768,
        'a',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54',
        - 9223372036854775808,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        1,
        1,
        1,
        B'101',
        TRUE,
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        2,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        'abc',
        'abc',
        '1999-01-08',
        '1234567890.1234567',
        '1234567890.1234567',
        '198.24.10.0',
        2147483647,
        B'101',
        '-178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        999,
        32767,
        'abc',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        9223372036854775807,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        9223372036854775807,
        2147483647,
        32767,
        B'101',
        'yes',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        3,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        'Миші йдуть на південь, не питай чому;',
        'Миші йдуть;',
        '1999-01-08',
        'infinity',
        'infinity',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        '-inf',
        32767,
        'Миші йдуть;',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        0,
        0,
        0,
        B'101',
        '1',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        4,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '櫻花分店',
        '櫻花分店',
        '1999-01-08',
        '+infinity',
        '+infinity',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        '+infinity',
        32767,
        '櫻花分店',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        FALSE,
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        5,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '',
        '',
        '1999-01-08',
        '+inf',
        '+inf',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        '-infinity',
        32767,
        '',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        'no',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        6,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '\xF0\x9F\x9A\x80',
        '',
        '1999-01-08',
        'inf',
        'inf',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        'nan',
        32767,
        '\xF0\x9F\x9A\x80',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        '0',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        7,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '\xF0\x9F\x9A\x80',
        '',
        '1999-01-08',
        '-inf',
        '-inf',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        'nan',
        32767,
        '\xF0\x9F\x9A\x80',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        '0',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        8,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '\xF0\x9F\x9A\x80',
        '',
        '1999-01-08',
        '-infinity',
        '-infinity',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        'nan',
        32767,
        '\xF0\x9F\x9A\x80',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        '0',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        9,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '\xF0\x9F\x9A\x80',
        '',
        '1999-01-08',
        'nan',
        'nan',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        'nan',
        32767,
        '\xF0\x9F\x9A\x80',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        '0',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );

INSERT
    INTO
        COCKROACHDB_FULL_NN.TEST_DATASET
    VALUES(
        10,
        ARRAY [ 'sky',
        'road',
        'car' ],
        decode(
            '1234',
            'hex'
        ),
        '*',
        '{asb12}',
        '\xF0\x9F\x9A\x80',
        '',
        '1999-01-08',
        'nan',
        'nan',
        '198.10/8',
        2147483647,
        B'101',
        '178000000',
        '{"a": 10, "b": 15}',
        '[1, 2, 3]'::jsonb,
        '99999',
        'nan',
        32767,
        '\xF0\x9F\x9A\x80',
        '04:05:06',
        '04:05:06Z',
        TIMESTAMP '2004-10-19 10:23:54.123456',
        0,
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'happy',
        '{10000, 10000, 10000, 10000}',
        '{10000, 10000, 10000, 10000}',
        - 9223372036854775808,
        - 2147483647,
        - 32767,
        B'101',
        '0',
        ARRAY [ '☃'::bytes,
        'ї'::bytes ]
    );
