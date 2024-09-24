CREATE TABLE char_data_types (
	char_column char(10),
	varchar_column varchar(10),
	text_column text
);

INSERT INTO char_data_types
VALUES
	('abc', 'abc', 'abc'),
	('defghij', 'defghij', 'defghij');

	SELECT * FROM char_data_types;


	CREATE TABLE num_data_types (
			numeric_column numeric(20,5),
			real_column real,
			double_clumn double precision
		
	);

	INSERT INTO num_data_types
	VALUES
		(.7, .7, .7),
		(2.13579, 2.13579),
		(2.1357987654321, 2.1357987654321, 2.1357987654321);

	SELECT * FROM num_data_types;

		timestamps_column,
		interval_column,
		timesatamp_column - interval_column AS new_date
	FROM date_time_types;