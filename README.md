# GramSure — Intelligent Bakery Management System

An AI-powered, closed-loop bakery management platform built for the Pakistani
bakery market. GramSure links raw material procurement, production yield,
sales, expenses, and staff activity into a single transparent system,
giving remote owners real-time visibility and automated fraud detection.


| Layer | Tech Stack |
|---|---|
| Frontend (Web) | React.js + Tailwind CSS + Vite |
| Frontend (Mobile) | React Native (Expo) |
| Backend API | Node.js + Express.js |
| AI/ML Service | Python + FastAPI (Isolation Forest, LSTM, Prophet, OpenCV) |
| Database | PostgreSQL (+ TimescaleDB) |
| Notifications | WhatsApp Business API (Twilio) |
| File Storage | Firebase Storage |
| Automation | Google Apps Script |



---

## Project Overview

**GramSure** is an AI-powered bakery management system that helps owners control production, stock, sales, and expenses, and detects fraud and wastage in real time, including remotely.

**Supervisor:** Mam Sara Mishal
**Team:** Muhammad Adnan Ali (233109), Sahil Khan (233110), Manahil Adnan (235126)

## Project Structure

- `ai-service/` - Python AI service (fraud detection, anomaly scoring, forecasting)
- `backend/` - Node.js backend (APIs, WhatsApp alerts)
- `frontend-web/` - Web dashboard
- `mobile-app/` - Mobile app (Expo)

## Modules

1. **Recipe & Standards Engine**: Single source of truth for ingredient formulas, tolerance bands, and cost per unit. Version-controlled recipe cards, expected yield calculation, and automatic deviation flagging.
2. **Raw Material Procurement & Supplier Module**: Validates delivered vs. ordered quantities before payment, records on-site measured weight, supplier scorecards, and payment schedules.
3. **Inventory & Stock Management**: Real-time ledger of raw materials, auto-updated on procurement and production, with remote owner visibility.
4. **Production & Batch Management**: Compares expected vs. actual output per batch. Variance beyond 2% triggers a fraud alert with batch details and staff ID, and an AI suspicion score is kept per employee.
5. **Sales & Revenue Tracking**: Records cash, credit, and digital sales, reconciles revenue with production, detects end-of-shift shortfalls, and scores cashier performance.
6. **Expense & Petty Cash Management**: Digitized expenses with photo receipts, owner approval queue, duplicate receipt detection, and monthly budget vs. actual reports.
7. **Staff Management & Attendance**: Employee records, shifts, PIN or selfie check-in with OpenCV face verification, automated salary slips, and live remote attendance.
8. **Financial Dashboard & P&L**: Real-time Profit & Loss with a daily midnight summary and product-wise margin analysis.
9. **AI Fraud Detection & Anomaly Engine**: Isolation Forest for real-time fraud risk, LSTM for sequential patterns such as yield deficits kept just under the threshold, and a staff suspicion index.
10. **Demand Forecasting & Wastage Reduction**: Facebook Prophet forecasting with day-of-week, holiday, and promotion factors, giving daily recommended production quantities.
11. **Remote Owner Control & Notification Center**: Fraud alerts via WhatsApp Business API within 60 seconds, one-tap owner actions, and a configurable business health score.
12. **Multi-Branch & Franchise Management**: Independent outlets, consolidated dashboard, cross-branch anomaly benchmarking, and tracked inter-branch stock transfers.

## Key Technologies

OpenCV, Isolation Forest, LSTM, Facebook Prophet, WhatsApp Business API
