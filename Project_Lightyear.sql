CREATE SCHEMA IF NOT EXISTS lightyear;

CREATE  TABLE lightyear."Part" ( 
	part_id              varchar(50)  NOT NULL  ,
	part_name            varchar(100)  NOT NULL  ,
	part_brand           varchar(100)    ,
	discontinued         boolean  NOT NULL  ,
	CONSTRAINT "Pk_Parts_part_id" PRIMARY KEY ( part_id )
 );

CREATE  TABLE lightyear."Sales" ( 
	sales_id             int  NOT NULL  ,
	sales_date           date  NOT NULL  ,
	CONSTRAINT "Pk_Sales_sales_id" PRIMARY KEY ( sales_id )
 );

CREATE  TABLE lightyear.entity ( 
 );

CREATE  TABLE lightyear."Location" ( 
	location_id          int  NOT NULL  ,
	location_name        varchar(250)  NOT NULL  ,
	location_address     varchar(500)  NOT NULL  ,
	location_city        varchar(250)  NOT NULL  ,
	location_state       varchar(100)  NOT NULL  ,
	location_country     char(2)  NOT NULL  ,
	location_zipcode     int  NOT NULL  ,
	CONSTRAINT pk_location_location_id PRIMARY KEY ( location_id )
 );

CREATE  TABLE lightyear."PartStored" ( 
	location_id          int  NOT NULL  ,
	part_id              varchar(100)  NOT NULL  ,
	quantity             int  NOT NULL  ,
	CONSTRAINT fk_partsstored_location FOREIGN KEY ( location_id ) REFERENCES lightyear."location"( location_id )   ,
	CONSTRAINT fk_partsstored_partid FOREIGN KEY ( part_id ) REFERENCES lightyear."Part"( part_id )   
 );

CREATE  TABLE lightyear."Quotation" ( 
	quotation_id         int  NOT NULL  ,
	part_id              int  NOT NULL  ,
	"date"               date  NOT NULL  ,
	quantity             int  NOT NULL  ,
	price                real  NOT NULL  ,
	"comment"            varchar(500)  NOT NULL  ,
	CONSTRAINT pk_quotation_quotation_id PRIMARY KEY ( quotation_id ),
	CONSTRAINT fk_quotation_partid FOREIGN KEY ( part_id ) REFERENCES lightyear."Part"( part_id )   
 );

CREATE  TABLE lightyear."Supplier" ( 
	supplier_id          int  NOT NULL  ,
	supplier_name        varchar(100)  NOT NULL  ,
	supplier_email       varchar(250)  NOT NULL  ,
	supplier_phone       int  NOT NULL  ,
	CONSTRAINT pk_supplier_supplier_id PRIMARY KEY ( supplier_id )
 );

CREATE  TABLE lightyear."PartSupplied" ( 
	part_id              varchar(50)  NOT NULL  ,
	supplier_id          int  NOT NULL  ,
	quantity             int  NOT NULL  ,
	price                real  NOT NULL  ,
	purchase_date        date  NOT NULL  ,
	CONSTRAINT fk_partssupplied_part_id FOREIGN KEY ( part_id ) REFERENCES lightyear."Part"( part_id )   ,
	CONSTRAINT fk_partssupplied_supplier_id FOREIGN KEY ( supplier_id ) REFERENCES lightyear.supplier( supplier_id )   
 );

CREATE  TABLE lightyear."Buyer" ( 
	buyer_id             int  NOT NULL  ,
	buyer_name           varchar(100)  NOT NULL  ,
	buyer_email          varchar(250)  NOT NULL  ,
	buyer_phone          int  NOT NULL  ,
	quotation_id         int  NOT NULL  ,
	CONSTRAINT pk_buyer_buyer_id PRIMARY KEY ( buyer_id ),
	CONSTRAINT fk_buyer_quotationid FOREIGN KEY ( quotation_id ) REFERENCES lightyear.quotation( quotation_id )   
 );

CREATE  TABLE lightyear."Invoice" ( 
	invoice_id           int  NOT NULL  ,
	part_id              int  NOT NULL  ,
	quantity             int  NOT NULL  ,
	price                real  NOT NULL  ,
	"date"               date  NOT NULL  ,
	"comment"            varchar(500)    ,
	buyer_id             int  NOT NULL  ,
	sales_id             int    ,
	CONSTRAINT "Pk_Invoice_invoice_id" PRIMARY KEY ( invoice_id ),
	CONSTRAINT "Fk_Invoice_partid" FOREIGN KEY ( part_id ) REFERENCES lightyear."Part"( part_id )   ,
	CONSTRAINT "Fk_Invoice_buyerid" FOREIGN KEY ( buyer_id ) REFERENCES lightyear.buyer( buyer_id )   ,
	CONSTRAINT "Fk_Invoice_salesid" FOREIGN KEY ( sales_id ) REFERENCES lightyear."Sales"( sales_id )   
 );

CREATE  TABLE lightyear."Employee" ( 
	employee_id          int  NOT NULL  ,
	employee_firstname   varchar(100)  NOT NULL  ,
	employee_lastname    varchar(100)  NOT NULL  ,
	invoice_id           int    ,
	CONSTRAINT "Pk_employee_employee_id" PRIMARY KEY ( employee_id ),
	CONSTRAINT "Fk_employee_invoiceid" FOREIGN KEY ( invoice_id ) REFERENCES lightyear."Invoice"( invoice_id )   
 );

