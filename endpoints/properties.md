properties.json
============

Endpoint path: `/customers/12345/api/v1/properties.json`

Input data: none

Output:

```json
{
  "success": true,
  "result": {
    "id": 12345,
    "properties": [
      {
        "created_at": "2009-04-01T14:29:07+13:00",
        "postal": {
          "address2": "261",
          "address3": "Test St",
          "district": "Christchurch",
          "suburb": "Haslwell",
          "postcode": "8025",
          "region": "Canterbury"
        },
        "vanity" {
          "address2": "261",
          "address3": "Test St",
          "district": "Christchurch",
          "suburb": "Haslwell",
          "postcode": "8025",
          "region": "Canterbury"
        },
        "postal_address": ["261 Test St", "Halswell", "Christchurch 8025", "Canterbury"],
        "vanity_address": ["261 Test St", "Halswell", "Christchurch 8025", "Canterbury"],
      }
    ]
  }
}
```
