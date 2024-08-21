-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Supplier" (
    "supplier_id" int   NOT NULL,
    "supplier" varchar(50)   NULL,
    CONSTRAINT "pk_Supplier" PRIMARY KEY (
        "supplier_id"
     )
);

CREATE TABLE "Item" (
    "item_code" int   NOT NULL,
    "item_description" varchar(100)   NULL,
    CONSTRAINT "pk_Item" PRIMARY KEY (
        "item_code"
     )
);

CREATE TABLE "Type" (
    "type_id" int   NOT NULL,
    "item_type" varchar(15)   NULL,
    CONSTRAINT "pk_Type" PRIMARY KEY (
        "type_id"
     )
);

CREATE TABLE "Sales" (
    "sale_id" int   NOT NULL,
    "year" int   NOT NULL,
    "month" int   NOT NULL,
    "supplier_id" int   NULL,
    "item_id" int   NOT NULL,
    "type_id" int   NOT NULL,
    "retail_sales" float   NULL,
    "retail_transfers" float   NULL,
    "warehouse_sales" float   NULL,
    CONSTRAINT "pk_Sales" PRIMARY KEY (
        "sale_id"
     )
);

ALTER TABLE "Sales" ADD CONSTRAINT "fk_Sales_supplier_id" FOREIGN KEY("supplier_id")
REFERENCES "Supplier" ("supplier_id");

ALTER TABLE "Sales" ADD CONSTRAINT "fk_Sales_item_id" FOREIGN KEY("item_id")
REFERENCES "Item" ("item_code");

ALTER TABLE "Sales" ADD CONSTRAINT "fk_Sales_type_id" FOREIGN KEY("type_id")
REFERENCES "Type" ("type_id");
