import requests
import json

response = requests.post(
    "http://localhost:8000/api/forecast/predict",
    json={
        "branch_id": "11111111-1111-1111-1111-111111111111",
        "sales_history": [
            {"product_name": "Kara Biscuit", "sale_date": f"2026-07-{str(d).zfill(2)}", "units": 150 + d}
            for d in range(1, 31)
        ] + [
            {"product_name": "Naan", "sale_date": f"2026-07-{str(d).zfill(2)}", "units": 60 + d}
            for d in range(1, 31)
        ]
    }
)

print("Status:", response.status_code)
print(json.dumps(response.json(), indent=2))