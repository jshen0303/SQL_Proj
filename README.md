## PROJECT LIGHTYEAR
<p><span style="text-decoration: underline;">Project Background/Description</span></p>
<p>I currently own a business dealing with agricultural spare parts and I want to have my own inventory management system that works online/offline. Create a DB definition that allows me to track purchases (customer sales history and supplier purchase history), inventory and its location, and the ability to receive quotations from prospective customers that will show recent purchases (bought and sold).</p>
<p><span style="text-decoration: underline;">Project Scope</span></p>
<p>We need an architectural layout of the database with source code, documentation, a diagram, and a plan / writeup for a proof of concept to be used for interview purposes. The code should adhere to best practices and be scalable, the documentation should be informative and consistent while easy to read and navigate for reference, the diagram should be clear and helpful, and the writeup should explain the project in detail.</p>
<p><span style="text-decoration: underline;">Major Functional Requirements</span></p>
<ul>
<li>Business Requirements</li>
<li>Must track inventory.</li>
<li>Must track and sell spare parts by part name and part number.</li>
<li>Vendors must be tracked and associated with products.</li>
<li>Must accept large volumes of data and be scalable to local and national web traffic.</li>
<li>Must accept quotations from customer and return list of information regarding quoted spare parts (history of prices, location of part(s), suppliers/buyers, and dates)</li>
</ul>
<p><span style="text-decoration: underline;">Entities&nbsp;</span></p>
<ul>
<li>Parts</li>
<li>Supplier</li>
<li>Buyers&nbsp;</li>
<li>Location</li>
<li>Sales</li>
<li>User</li>
<li>Quotation</li>
</ul>
<p><span style="text-decoration: underline;">Assumptions</span></p>
<ul>
<li>User logs in to make a quotation for parts but does not make purchase(s) through the application.</li>
<li>Employee files invoices after receiving a quotation.</li>
<li>Onsite managers have to manually monitor inventory in-flow/out-flow based on their respective locations.</li>
<li>Inventory warehouse will have adequate storage capacity.</li>
</ul>
<p><span style="text-decoration: underline;">Architecture&nbsp;</span></p>
<ul>
<li>Tables must be efficient, enforce data integrity, lack redundancy, and be sensible.</li>
<li>Tables must be normalized to at least 3NF</li>
<li>Primary key and foreign key constraints and references should be created.</li>
<li>Seed increment and identity must be planned.</li>
<li>Smallest data type must be used.</li>
<li>Data types, naming conventions, and schema design should adhere to best practice.</li>
<li>Temporal tables for later analysis.</li>
<li>Data types should be carefully planned.</li>
<li>Nulls should be carefully planned.</li>
<li>Schemas should be used to keep tables compartmentalized.</li>
</ul>
<p><span style="text-decoration: underline;">Deliverables</span></p>
<ul>
<li><strong>Source Code</strong></li>
<ul>
<li>MySQL file: Project_Lightyear.sql</li>
</ul>
<li><strong>ERD Diagram</strong></li>
<ul>
<li>Using DBSchema trial software to generate documentation for Project Lightyear architecture: Project_Lightyear.pdf</li>
<li>Architecture: ERD_PL.jpg</li>
</ul>
</ul>
