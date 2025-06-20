# 📞 Call Centre Database Demo

This repository provides a simple schema and sample data for simulating a **Call Centre System**. It includes:

- 📄 DDL scripts to define the schema
- 🧪 Fake data for development and testing
- 📊 Analytical queries to extract insights

---

## 📁 Project Structure

```plaintext
.
├── ddl/           # SQL DDL scripts for creating tables: agents, customers, calls
├── data/          # Insert statements with fake data (e.g., 1000 calls, 100 customers, 10 agents)
└── queries/       # Analytical and statistical SQL queries (e.g., average call duration, status stats)
```

---

## 📊 Query Results (Visualization)

### 1. ✅ Percentage of Completed Calls by Hour of the Day

![Completed Calls by Hour](https://github.com/user-attachments/assets/a08bd3db-e1f2-4a5b-8aa7-676e49a5ddb7)

---

### 2. 📅 Percentage of Completed Calls by Day of the Week

![Completed Calls by Day](https://github.com/user-attachments/assets/b4b22a4e-69df-4a84-b92b-cf6b1dd5a108)

---

### 3. ☎️ Percentage by Call Type

![Call Type Distribution](https://github.com/user-attachments/assets/a3a636d0-a9f9-4d38-b762-a55d4a4ab1ba)

---

### 4. ⏱️ Average Call Time (All)

![Average Call Time](https://github.com/user-attachments/assets/93e804f6-ba72-4b30-80a2-2496d17fc82d)

---

### 5. 📤 Average Call Time for Outbound Calls

![Outbound Call Time](https://github.com/user-attachments/assets/b182b51f-464b-4fbd-a994-d1238bdac3dd)

---

### 6. 👥 Average Call Time by Agent

![Call Time by Agent](https://github.com/user-attachments/assets/8095d7db-7e6d-4311-9bdc-9a38f4066a2e)

---

## 🚀 How to Use

1. Create a database (PostgreSQL or MySQL).
2. Run the DDL files from the `/ddl` folder to create tables.
3. Insert fake data from the `/data` folder.
4. Run the queries from the `/queries` folder to generate insights and visuals.

---

## 🛠 Requirements

- A SQL database engine (PostgreSQL recommended)
- A client tool like DBeaver, pgAdmin, or DataGrip
- Optional: A BI tool (e.g., Metabase, Grafana, Superset) to visualize the queries

---

## 📌 License

This project is intended for learning, testing, and demonstration purposes.
