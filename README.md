# PROJECT LIGHTYEAR

## Project Background/Description

I currently own a business dealing with agricultural spare parts and I want to have my own inventory management system that works online/offline. Create a DB definition that allows me to track purchases (customer sales history and supplier purchase history), inventory and its location, and the ability to receive quotations from prospective customers that will show recent purchases (bought and sold).

## Project Scope

We need an architectural layout of the database with source code, documentation, a diagram, and a plan / writeup for a proof of concept to be used for interview purposes. The code should adhere to best practices and be scalable, the documentation should be informative and consistent while easy to read and navigate for reference, the diagram should be clear and helpful, and the writeup should explain the project in detail.

## Major Functional Requirements

> 1. Business Requirements <br />
> 2. Must track inventory <br />
> 3. Must track and sell spare parts by part name and part number. <br />
> 4. Vendors must be tracked and associated with products. <br />
> 5. Must accept large volumes of data and be scalable to local and national web traffic. <br />
> 6. Must accept quotations from customer and return list regarding quoted spare parts. <br />

## Entities 

> 1. Parts <br />
> 2. Supplier <br />
> 3. Buyers <br />
> 4. Location <br />
> 5. Sales <br />
> 6. User <br />
> 7. Quotation <br />

## Assumptions

> 1. User logs in to make a quotation for parts but does not make purchase(s) through the application. <br />
> 2. Employee files invoices after receiving a quotation. <br />
> 3. Onsite managers have to manually monitor inventory in-flow/out-flow based on their respective locations. <br />
> 4. Inventory warehouse will have adequate storage capacity. <br />

## Architecture 

> 1. Tables must be efficient, enforce data integrity, lack redundancy, and be sensible. <br />
> 2. Tables must be normalized to at least 3NF. <br />
> 3. Primary key and foreign key constraints and references should be created. <br />
> 4. Seed increment and identity must be planned. <br />
> 5. Smallest data type must be used. <br />
> 6. Data types, naming conventions, and schema design should adhere to best practice. <br />
> 7. Temporal tables for later analysis. <br />
> 8. Data types should be carefully planned. <br />
> 9. Nulls should be carefully planned. <br />
> 10. Schemas should be used to keep tables compartmentalized. <br />

## Deliverables

Source Code <br />
> 
> 1. MySQL file: Project_Lightyear.sql <br />
>
ERD Diagram <br />
> 1. Use DBSchema trial software to generate documentation for Project Lightyear architecture: Project_Lightyear.pdf <br />
> 2. Architecture: ERD_PL.jpg


