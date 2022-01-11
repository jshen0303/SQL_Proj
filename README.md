# PROJECT LIGHTYEAR

## Project Background/Description

I currently own a business dealing with agricultural spare parts and I want to have my own inventory management system that works online/offline. Create a DB definition that allows me to track purchases (customer sales history and supplier purchase history), inventory and its location, and the ability to receive quotations from prospective customers that will show recent purchases (bought and sold).

## Project Scope

We need an architectural layout of the database with source code, documentation, a diagram, and a plan / writeup for a proof of concept to be used for interview purposes. The code should adhere to best practices and be scalable, the documentation should be informative and consistent while easy to read and navigate for reference, the diagram should be clear and helpful, and the writeup should explain the project in detail.

## Major Functional Requirements

> Business Requirements <br />
Must track inventory <br />
Must track and sell spare parts by part name and part number. <br />
Vendors must be tracked and associated with products. <br />
Must accept large volumes of data and be scalable to local and national web traffic. <br />
Must accept quotations from customer and return list of information regarding quoted spare parts (history of prices, location of part(s), suppliers/buyers, and dates) <br />

## Entities 

> Parts <br />
Supplier <br />
Buyers <br />
Location <br />
Sales <br />
User <br />
Quotation <br />

## Assumptions

> User logs in to make a quotation for parts but does not make purchase(s) through the application. <br />
Employee files invoices after receiving a quotation. <br />
Onsite managers have to manually monitor inventory in-flow/out-flow based on their respective locations. <br />
Inventory warehouse will have adequate storage capacity. <br />

## Architecture 

> Tables must be efficient, enforce data integrity, lack redundancy, and be sensible. <br />
Tables must be normalized to at least 3NF. <br />
Primary key and foreign key constraints and references should be created. <br />
Seed increment and identity must be planned. <br />
Smallest data type must be used. <br />
Data types, naming conventions, and schema design should adhere to best practice. <br />
Temporal tables for later analysis. <br />
Data types should be carefully planned. <br />
Nulls should be carefully planned. <br />
Schemas should be used to keep tables compartmentalized. <br />

## Deliverables

> Source Code <br />
>> MySQL file: Project_Lightyear.sql <br />
< ERD Diagram <br />
>> Using DBSchema trial software to generate documentation for Project Lightyear architecture: Project_Lightyear.pdf <br />
>> Architecture: ERD_PL.jpg


