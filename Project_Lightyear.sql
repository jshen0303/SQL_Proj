CREATE SCHEMA IF NOT EXISTS project_lightyear;

CREATE  TABLE project_lightyear.part (
	part_id              bigint  NOT NULL  ,
	name                 varchar(250)  NOT NULL  ,
	part_location        varchar(250)  NOT NULL  ,
	part_brand           varchar(250)  NOT NULL  ,
	CONSTRAINT unq_part_part_id UNIQUE ( part_id )
 );

CREATE  TABLE project_lightyear.supplier (
	supplier_id          bigint  NOT NULL  ,
	name                 varchar(100)  NOT NULL  ,
	address              varchar(250)    ,
	CONSTRAINT pk_suppliers_supplier_id PRIMARY KEY ( supplier_id )
 );

CREATE  TABLE project_lightyear.supplier_part (
	supplier_id          bigint  NOT NULL  ,
	part_id              bigint  NOT NULL  ,
	quantity             bigint  NOT NULL  ,
	price                bigint  NOT NULL  ,
	purchase_date        date    ,
	CONSTRAINT supplier_id FOREIGN KEY ( supplier_id ) REFERENCES project_lightyear.supplier( supplier_id )   ,
	CONSTRAINT part_id FOREIGN KEY ( part_id ) REFERENCES project_lightyear.part( part_id )
 );

CREATE  TABLE project_lightyear."user" (
	user_id              bigint  NOT NULL  ,
	name                 varchar(250)  NOT NULL  ,
	address              varchar(250)  NOT NULL  ,
	username             varchar(100)  NOT NULL  ,
	"password"           varchar(100)  NOT NULL  ,
	CONSTRAINT pk_tbl_user_id PRIMARY KEY ( user_id )
 );

CREATE  TABLE project_lightyear.buyer (
	buyer_id             bigint  NOT NULL  ,
	user_id              bigint  NOT NULL  ,
	name                 varchar(250)  NOT NULL  ,
	address              varchar(250)  NOT NULL  ,
	CONSTRAINT pk_buyer_buyer_id PRIMARY KEY ( buyer_id ),
	CONSTRAINT user_id FOREIGN KEY ( user_id ) REFERENCES project_lightyear."user"( user_id )
 );

CREATE  TABLE project_lightyear."order" (
	order_id             bigint  NOT NULL  ,
	buyer_id             bigint  NOT NULL  ,
	CONSTRAINT pk_tbl_order_id PRIMARY KEY ( order_id ),
	CONSTRAINT buyer_id FOREIGN KEY ( buyer_id ) REFERENCES project_lightyear.buyer( buyer_id )
 );

CREATE  TABLE project_lightyear.order_line (
	order_id             bigint  NOT NULL  ,
	part_id              bigint  NOT NULL  ,
	quantity             bigint  NOT NULL  ,
	price                bigint  NOT NULL  ,
	buy_date             date  NOT NULL  ,
	CONSTRAINT part_id FOREIGN KEY ( part_id ) REFERENCES project_lightyear.part( part_id )   ,
	CONSTRAINT order_id FOREIGN KEY ( order_id ) REFERENCES project_lightyear."order"( order_id )
 );

CREATE  TABLE project_lightyear.quotation (
	quotation_id         bigint  NOT NULL  ,
	user_id              bigint  NOT NULL  ,
	part_id              bigint  NOT NULL  ,
	"date"               date  NOT NULL  ,
	quantity             bigint  NOT NULL  ,
	CONSTRAINT pk_quotation_quotation_id PRIMARY KEY ( quotation_id ),
	CONSTRAINT user_id FOREIGN KEY ( user_id ) REFERENCES project_lightyear."user"( user_id )   ,
	CONSTRAINT part_id FOREIGN KEY ( part_id ) REFERENCES project_lightyear.part( part_id )
 );
