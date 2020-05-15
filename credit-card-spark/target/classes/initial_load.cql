CREATE KEYSPACE IF NOT EXISTS credit-card
WITH replication = {
	'class': 'SimpleStrategy', 
	'replication_factor': 1
};

USE credit-card;

CREATE TABLE IF NOT EXISTS tbl_customer(
	  cc_num text,
	  first text,
	  last text,
	  gender text,
	  dob timestamp,
	  city text,
  	  PRIMARY KEY(cc_num)
);

CREATE TABLE IF NOT EXISTS tbl_fraud_txn (
	  cc_num text,
	  first text,
	  last text,
	  gender text,
	  age int,
  	  PRIMARY KEY(cc_num)

);

CREATE TABLE IF NOT EXISTS tbl_non_fraud_txn (

      cc_num text,
	  first text,
	  last text,
	  gender text,
	  age int,
  	  PRIMARY KEY(cc_num)

);


CREATE TABLE IF NOT EXISTS tbl_kafka_offset (
  partition int,
  offset bigint,
  PRIMARY KEY(partition)
);