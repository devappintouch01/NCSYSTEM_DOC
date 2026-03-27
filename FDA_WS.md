### WS_GATEWAY_FDA

#### Service : GetToken

**Endpoint:**
```http
POST https://regis.fda.moph.go.th/WS_GATEWAY/api/GET_TOKEN
```

**Headers:**

| Key | Value |
| :--- | :--- |
| `API_KEY` | `a2c58b210ef0cc72b22a992226c74caf` |
| `ORG` | `SOFTSUITE` |
| `CTZNO` | `0000000000000` |

**Response:**
```json
[Token]
```

<hr>

#### Service : DRUG-DGA-L [ใบอนุญาตด้านยา]

DOC: 11. คู่มือการเชื่อม WEB SERVICE GATEWAY-DGA 010768 (ใบอนุญาตสถานที่ด้านยา).pdf

**Endpoint:**
```http
POST https://regis.fda.moph.go.th/WS_GATEWAY/api/FDA_GATEWAY_DATA
```

**Headers:**

| Key | Value |
| :--- | :--- |
| `Content-Type` | `application/json` |
| `APIKEY` | `a2c58b210ef0cc72b22a992226c74caf` |
| `ORG` | `SOFTSUITE` |
| `FUNC_CODE` | `DRUG-DGA-L` |
| `TOKEN` | `cqP/L+MOugDwcXOnHE8qQA==` |

**Body:**

#### XML ก่อนแปลง base64

```xml
{
  "REGISTER_LICENSE" : "เลขที่ใบอนุญาตสถานที่" 
}
```

##### 1. กท 198/2542 

**XML:**
```json
{
  "REGISTER_LICENSE" : "กท 198/2542 " 
}
```

**Base64:**

```
ewogICJSRUdJU1RFUl9MSUNFTlNFIiA6ICLguIHguJcgMTk4LzI1NDIgIiAKfQ==
```

**Request Body:**

```json
{
  "CTZNO_REQ": "0000000000000",
  "XML_DATAS": "ewogICJSRUdJU1RFUl9MSUNFTlNFIiA6ICLguIHguJcgMTk4LzI1NDIgIiAKfQ=="
}
```

**Response:**

```json
{
  "Info": {
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-101-2559-118",
    "UPDATE_DATE": "19/9/2568",
    "STATUS": "8",
    "ENTREPRENEUR_NAME": "บู๊ทส์ - สยามสแควร์ 2",
    "NEWCODE": "U1Dขย1104200198C",
    "LOCATION_LICENSE": "ขย1 กท 198/2542",
    "LOCATION_NAME": "บู๊ทส์ - สยามสแควร์ 2",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 414,414/1,414/2      ถนน พระราม 1   แขวง ปทุมวัน เขต ปทุมวัน จังหวัด กรุงเทพมหานคร 10330โทร. 0 2252 5101",
    "LOCATION_ADDR": "414,414/1,414/2",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "ปทุมวัน",
    "LOCATION_SUBDISTRICT_NAME": "ปทุมวัน",
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": null,
    "LATITUDE": "13.74524717",
    "LONGTITUDE": "100.5355611",
    "TEL": null,
    "EMAIL": "",
    "HCODE": null,
    "LOCATION_JOB_TIME": "12.00 - 21.00 น.",
    "APPROVE_DATE": "1/1/2566",
    "LOCATION_ROAD": null,
    "LOCATION_FLOOR": null,
    "LOCATION_BUIDLING": "",
    "LOCATION_MOO": null,
    "LOCATION_VILLAGE": null,
    "LOCATION_SOI": null,
    "ZIPCODE": null,
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "31/12/2568",
    "TR_REAL": ""
  },
  "Operators": [
    {
      "LOCATION_OPERATOR_IDA": 20,
      "OPERATOR_NAME": "นางสาวศุภิสรารัตน์ พงศ์ชวิศกร",
      "CREATE_DATE": "18/5/2568",
      "UPDATE_DATE": "18/5/2568"
    }
  ],
  "PersonControls": [
    {
      "LOCATION_PERSON_CONTROL": 6,
      "PERSON_CONTROL_PREFIX": "นางสาว",
      "PERSON_CONTROL_NAME": "ศุภิสรารัตน์",
      "PERSON_CONTROL_SURNAME": "พงศ์ชวิศกร",
      "PERSON_CONTROL_MIDDLE_NAME": "",
      "PERSON_CONTROL_LICENSE": "ภ.38530",
      "PERSON_CONTROL_EXPIRE_DATE": "",
      "PERSON_CONTROL_ROLE": "เภสัชกรชั้นหนึ่ง",
      "PERSON_CONTROL_JOB": "12.00 - 21.00 น."
    }
  ],
  "ProductLocations": []
}
```

<hr>

#### Service : PROFILE-LOCATION-CENTER

**Endpoint:**
```http
POST https://regis.fda.moph.go.th/WS_GATEWAY/api/FDA_GATEWAY_DATA
```

**Headers:**

| Key | Value |
| :--- | :--- |
| `Content-Type` | `application/json` |
| `APIKEY` | `a2c58b210ef0cc72b22a992226c74caf` |
| `ORG` | `SOFTSUITE` |
| `FUNC_CODE` | `PROFILE-LOCATION-CENTER` |
| `TOKEN` | `cqP/L+MOugDwcXOnHE8qQA==` |

**Body:**

#### XML ก่อนแปลง base64

```xml
{
  "ENTREPRENEUR_IDENTIFY" : "เลขที่บัตรประชาชนผู้ประกอบการ",
  "LOCATION_LICENSE" : "เลขที่ใบอนุญาตสถานที่",
  "TYPE" : "DRUG"
}
```

##### 1. กท 198/2542 

**XML:**
```json
{
  "ENTREPRENEUR_IDENTIFY": "0105462000013",
  "LOCATION_LICENSE": "",
  "TYPE" : "DRUG"
}
```

**Base64 บริษัท เยาวราช จำกัด:**

```
ewogICJFTlRSRVBSRU5FVVJfSURFTlRJRlkiOiAiMDEwNTQ2MjAwMDAxMyIsCiAgIkxPQ0FUSU9OX0xJQ0VOU0UiOiAiIiwKICAiVFlQRSIgOiAiRFJVRyIKfQ==
```

**Response บริษัท เยาวราช จำกัด:**

```json
[
  {
    "LOCATION_INFO_IDA": 4,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-106-2559-5",
    "UPDATE_DATE": "2025-04-09T11:32:39.49",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105462000013",
    "ENTREPRENEUR_NAME": "บริษัทเยาวราช จำกัด ",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผย1102600157C",
    "LOCATION_LICENSE": "ผย1 กท 157/2526",
    "LOCATION_NAME": "บริษัท เยาวราช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 1055/4      ถนน สุขุมวิท 71   แขวง คลองเตยเหนือ เขต วัฒนา จังหวัด กรุงเทพมหานคร 10110โทร. 0 2391 5411",
    "LOCATION_ADDR": "1055/4",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "วัฒนา",
    "LOCATION_SUBDISTRICT_NAME": "คลองเตยเหนือ",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 39,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผย1",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1996-12-31T00:00:00",
    "LOCATION_ROAD": "สุขุมวิท 71",
    "LOCATION_MOO": "-",
    "LOCATION_SOI": "",
    "ZIPCODE": "10110",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2025-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 8597,
        "LOCATION_NAME": "บริษัท เยาวราช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 1055/4      ถนน สุขุมวิท 71   แขวง คลองเตยเหนือ เขต วัฒนา จังหวัด กรุงเทพมหานคร 10110โทร. 0 2391 5411",
        "LOCATION_ADDR": "1055/4",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 39,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "ผลิต",
        "LOCATION_TYPE_CODE": "ผย1",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ผย1 กท 157/2526",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-04-09T11:32:39.49",
        "NEWCODE": "U1Dผย1102600157C",
        "LOCATION_ROAD": "สุขุมวิท 71",
        "LOCATION_FLOOR": "",
        "LOCATION_BUIDLING": "",
        "LOCATION_MOO": "-",
        "LOCATION_SOI": "",
        "ZIPCODE": "10110",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "วัฒนา",
        "LOCATION_SUBDISTRICT_NAME": "คลองเตยเหนือ",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [
      {
        "LOCATION_HIS_IDA": 424,
        "RCVNO": "6600063",
        "TR_ID": "DA-10-11106-66-660000295",
        "START_DATE": "2023-11-29T00:00:00",
        "RCV_DATE": "2023-11-29T00:00:00",
        "APP_DATE": "2024-01-16T06:05:19.897",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600157C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 5993,
        "RCVNO": "6800048",
        "TR_ID": "DA-10-11106-68-680000112",
        "START_DATE": "2025-04-03T00:00:00",
        "RCV_DATE": "2025-04-03T00:00:00",
        "APP_DATE": "2025-04-09T11:20:20",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600157C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 5994,
        "RCVNO": "6800049",
        "TR_ID": "DA-10-11106-68-680000113",
        "START_DATE": "2025-04-03T00:00:00",
        "RCV_DATE": "2025-04-03T00:00:00",
        "APP_DATE": "2025-04-09T11:33:15.01",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600157C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      }
    ],
    "LOCATION_MANUFAC_PROCESS": [
      {
        "LOCATION_MANUFACTURING_IDA": 904,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600157C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1043,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600157C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1465,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600157C"
      }
    ],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 5,
        "NEWCODE": "U1Dผย1102600157C",
        "CTZNO_OPERATOR_CTZNO": "3101300059137",
        "OPERATOR_NAME": "นายพงษ์ศักดิ์ ตัณฑ์ไพโรจน์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 37749,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3410102304441",
        "PERSON_CONTROL_NAME": "โชคชัย",
        "PERSON_CONTROL_SURNAME": "นวการุณย์",
        "PERSON_CONTROL_LICENSE": "ภ.15949",
        "NEWCODE": "U1Dผย1102600157C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37750,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1929900299655",
        "PERSON_CONTROL_NAME": "อคิราภ์",
        "PERSON_CONTROL_SURNAME": "สามห้วย",
        "PERSON_CONTROL_LICENSE": "ภ.35443",
        "NEWCODE": "U1Dผย1102600157C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  }
]
```

**Base64 0105516006065 สยามเภสัช:**

```
ewogICJFTlRSRVBSRU5FVVJfSURFTlRJRlkiOiAiMDEwNTUxNjAwNjA2NSIsCiAgIkxPQ0FUSU9OX0xJQ0VOU0UiOiAiIiwKICAiVFlQRSIgOiAiRFJVRyIKfQ==
```
**Response 0105516006065 สยามเภสัช:**

```json
[
  {
    "LOCATION_INFO_IDA": 10207,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-105-2559-20209",
    "UPDATE_DATE": "2025-10-21T15:07:31.943",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาง ขนิษฐา บุญล้อม",
    "ORG": "DRUG",
    "NEWCODE": "U1Dนย1105500021C",
    "LOCATION_LICENSE": "นย1 กท 21/2555",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "นำเข้า/สั่ง",
    "LOCATION_TYPE_CODE": "นย1",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2019-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": null,
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "2025-10-21T15:07:31.943",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2026-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 6328,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร3 ถนนวิภาวดี-รังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "นย1 กท 21/2555",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dนย1105500021C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      },
      {
        "LOCATION_OTHER_IDA": 18800,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "นำเข้า/สั่ง",
        "LOCATION_TYPE_CODE": "นย1",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "นย1 กท 21/2555",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-03-10T13:41:44.543",
        "NEWCODE": "U1Dนย1105500021C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 19723,
        "NEWCODE": "U1Dนย1105500021C",
        "CTZNO_OPERATOR_CTZNO": "4100100007025",
        "OPERATOR_NAME": "นาง ขนิษฐา บุญล้อม",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 36300,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "4100100007025",
        "PERSON_CONTROL_NAME": "ขนิษฐา",
        "PERSON_CONTROL_SURNAME": "บุญล้อม",
        "PERSON_CONTROL_LICENSE": "ภ.8529",
        "NEWCODE": "U1Dนย1105500021C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 56594,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-127-2563-182760",
    "UPDATE_DATE": "2024-10-07T16:39:58.573",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผวจ3106300007C",
    "LOCATION_LICENSE": "ผวจ3 กท 7/2563",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผวจ3",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2020-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "2024-10-07T16:39:58.573",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "2022-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 51781,
        "NEWCODE": "U1Dผวจ3106300007C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51766,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51767,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ.7693",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51768,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51769,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51770,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51771,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51772,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51773,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51774,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51775,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51776,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51777,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51778,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51779,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51780,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51781,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51782,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51783,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51784,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51785,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51786,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51787,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51788,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51789,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51790,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51791,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51792,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51793,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51794,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3340100666142",
        "PERSON_CONTROL_NAME": "ขวัญจิต",
        "PERSON_CONTROL_SURNAME": "อุ่นใจ",
        "PERSON_CONTROL_LICENSE": "ภ.20514",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51795,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51796,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51797,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51798,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51799,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51800,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51801,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102000663706",
        "PERSON_CONTROL_NAME": "พีรชา",
        "PERSON_CONTROL_SURNAME": "ธนวัฒนาวนิช",
        "PERSON_CONTROL_LICENSE": "ภ.9499",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51802,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1560100320094",
        "PERSON_CONTROL_NAME": "ชาลิสา",
        "PERSON_CONTROL_SURNAME": "วรินทร์รักษ์",
        "PERSON_CONTROL_LICENSE": "ภ.41232",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51803,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101402046861",
        "PERSON_CONTROL_NAME": "ยศิตา",
        "PERSON_CONTROL_SURNAME": "โตสุจริตธรรม",
        "PERSON_CONTROL_LICENSE": "ภ.41164",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51804,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100801051441",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "ทิชากรสกุล",
        "PERSON_CONTROL_LICENSE": "ภ.43596",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51805,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900801753",
        "PERSON_CONTROL_NAME": "ภาวิกา",
        "PERSON_CONTROL_SURNAME": "กิจจาวิทย",
        "PERSON_CONTROL_LICENSE": "ภ.43390",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51806,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103702514390",
        "PERSON_CONTROL_NAME": "ธัญลักษณ์",
        "PERSON_CONTROL_SURNAME": "ชินวงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.48530",
        "NEWCODE": "U1Dผวจ3106300007C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51807,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1709901101940",
        "PERSON_CONTROL_NAME": "ณัฏฐนิช",
        "PERSON_CONTROL_SURNAME": "พ่วงทรัพย์สิน",
        "PERSON_CONTROL_LICENSE": "ภ.45372",
        "NEWCODE": "U1Dผวจ3106300007C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 11145,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-101-2559-27143",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาง ขนิษฐา บุญล้อม",
    "ORG": "DRUG",
    "NEWCODE": "U1Dขย1105600451C",
    "LOCATION_LICENSE": "ขย1 กท 451/2556",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขย1",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2013-11-04T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "หมดอายุ",
    "EXP_DATE": "2016-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 6327,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร3 ถนนวิภาวดี-รังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ขย1 กท 451/2556",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dขย1105600451C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      },
      {
        "LOCATION_OTHER_IDA": 19738,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ขาย",
        "LOCATION_TYPE_CODE": "ขย1",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "ขย1 กท 451/2556",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-08-15T11:28:32.61",
        "NEWCODE": "U1Dขย1105600451C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 25810,
        "NEWCODE": "U1Dขย1105600451C",
        "CTZNO_OPERATOR_CTZNO": "4100100007025",
        "OPERATOR_NAME": "นาง ขนิษฐา บุญล้อม",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 9718,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "4100100007025",
        "PERSON_CONTROL_NAME": "ขนิษฐา",
        "PERSON_CONTROL_SURNAME": "บุญล้อม",
        "PERSON_CONTROL_LICENSE": "ภ.8529",
        "NEWCODE": "U1Dขย1105600451C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 56595,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-128-2563-182769",
    "UPDATE_DATE": "2024-10-07T16:14:10.883",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผวจ4106300021C",
    "LOCATION_LICENSE": "ผวจ4 กท 21/2563",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผวจ4",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2020-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "2024-10-07T16:14:10.883",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "2022-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 51782,
        "NEWCODE": "U1Dผวจ4106300021C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 52034,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103702514390",
        "PERSON_CONTROL_NAME": "ธัญลักษณ์",
        "PERSON_CONTROL_SURNAME": "ชินวงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.48530",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52035,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1709901101940",
        "PERSON_CONTROL_NAME": "ณัฏฐนิช",
        "PERSON_CONTROL_SURNAME": "พ่วงทรัพย์สิน",
        "PERSON_CONTROL_LICENSE": "ภ.45372",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52036,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101402046861",
        "PERSON_CONTROL_NAME": "ยศิตา",
        "PERSON_CONTROL_SURNAME": "โตสุจริตธรรม",
        "PERSON_CONTROL_LICENSE": "ภ.41164",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52037,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100801051441",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "ทิชากรสกุล",
        "PERSON_CONTROL_LICENSE": "ภ.43596",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52038,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900801753",
        "PERSON_CONTROL_NAME": "ภาวิกา",
        "PERSON_CONTROL_SURNAME": "กิจจาวิทย",
        "PERSON_CONTROL_LICENSE": "ภ.43390",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52039,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102000663706",
        "PERSON_CONTROL_NAME": "พีรชา",
        "PERSON_CONTROL_SURNAME": "ธนวัฒนาวนิช",
        "PERSON_CONTROL_LICENSE": "ภ.9499",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52040,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1560100320094",
        "PERSON_CONTROL_NAME": "ชาลิสา",
        "PERSON_CONTROL_SURNAME": "วรินทร์รักษ์",
        "PERSON_CONTROL_LICENSE": "ภ.41232",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52041,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52042,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52043,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52044,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52045,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52046,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52047,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52048,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52049,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52050,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52051,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52052,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52053,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52054,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3340100666142",
        "PERSON_CONTROL_NAME": "ขวัญจิต",
        "PERSON_CONTROL_SURNAME": "อุ่นใจ",
        "PERSON_CONTROL_LICENSE": "ภ.20514",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52055,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52056,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52057,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52058,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52059,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52060,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52061,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52062,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52063,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52064,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52065,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52066,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52067,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52068,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52069,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52070,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52071,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ7693",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52072,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52073,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52074,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dผวจ4106300021C"
      },
      {
        "LOCATION_PERSON_CONTROL": 52075,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dผวจ4106300021C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 7468,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-112-2542-104200053",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "จันทร์เพ็ญ วิศิษฏ์พงศ์",
    "ORG": "DRUG",
    "NEWCODE": "U1D04104200053C",
    "LOCATION_LICENSE": "ขนจ กท 53/2542",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขนจ",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1999-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "หมดอายุ",
    "EXP_DATE": "2016-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 16061,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ขาย",
        "LOCATION_TYPE_CODE": "ขนจ",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "ขนจ กท 53/2542",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-08-15T11:28:32.61",
        "NEWCODE": "U1D04104200053C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 11139,
        "NEWCODE": "U1D04104200053C",
        "CTZNO_OPERATOR_CTZNO": "3100503092341",
        "OPERATOR_NAME": "จันทร์เพ็ญ วิศิษฏ์พงศ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 54061,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-110-2535-103500010",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
    "ORG": "DRUG",
    "NEWCODE": "U1D02103500010C",
    "LOCATION_LICENSE": "ผจ กท 10/2535",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผจ",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1996-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "หมดอายุ",
    "EXP_DATE": "1997-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 8987,
        "NEWCODE": "U1D02103500010C",
        "CTZNO_OPERATOR_CTZNO": "3120101384851",
        "OPERATOR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 57773,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-126-2568-106800043",
    "UPDATE_DATE": "2025-08-14T14:51:22.69",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dขตวจ4106800043C",
    "LOCATION_LICENSE": "ขตวจ4 กท 43/2568",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9    ซอย โชคชัยร่วมมิตร 3 ถนน วิภาวดีรังสิต   แขวง ดินแดง เขต ดินแดง จังหวัด กรุงเทพมหานคร 10400โทร. 0 2625 9999",
    "LOCATION_ADDR": "123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "ดินแดง",
    "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขตวจ4",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2025-07-02T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร 3",
    "ZIPCODE": "10400",
    "CREATE_DATE": "2025-08-14T14:51:22.69",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2025-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 8379,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่123    ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต  ตำบลจอมพล อำเภอจตุจักร จังหวัดกรุงเทพมหานคร 10900",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": "0.0000000000",
        "LONGTITUDE": "0.0000000000",
        "LOCATION_LICENSE": "ขตวจ4 กท 43/2568",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dขตวจ4106800043C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 68133,
        "NEWCODE": "U1Dขตวจ4106800043C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51487,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dขตวจ4106800043C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 4620,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-106-2559-4992",
    "UPDATE_DATE": "2025-10-30T13:09:52.6",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผย1102600123C",
    "LOCATION_LICENSE": "ผย1 กท 123/2526",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผย1",
    "HOUSE_NO": null,
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1996-12-31T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": null,
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "2025-10-30T13:09:52.6",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2026-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 7678,
        "LOCATION_NAME": "ขอขยายสถานที่ผลิตยาแผนปัจจุบันอีก 1 แห่ง คือ",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร 3 ถนนวิภาวดีรังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ผย1 กท 123/2526",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dผย1102600123C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      },
      {
        "LOCATION_OTHER_IDA": 7816,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่101/1      หมู่2 ตำบลบางพลับ อำเภอปากเกร็ด จังหวัดนนทบุรี 11120",
        "LOCATION_ADDR": "101/1",
        "LOCATION_PROVINCE_CODE": 12,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 11,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ผย1 กท 123/2526",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dผย1102600123C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "นนทบุรี",
        "LOCATION_DISTRICT_NAME": "ปากเกร็ด",
        "LOCATION_SUBDISTRICT_NAME": "บางพลับ",
        "HOUSE_NO": null
      },
      {
        "LOCATION_OTHER_IDA": 13213,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ผลิต",
        "LOCATION_TYPE_CODE": "ผย1",
        "LATITUDE": "13.7982800000",
        "LONGTITUDE": "100.5660900000",
        "LOCATION_LICENSE": "ผย1 กท 123/2526",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-07-14T16:29:50.37",
        "NEWCODE": "U1Dผย1102600123C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": null
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [
      {
        "LOCATION_HIS_IDA": 157,
        "RCVNO": "6600020",
        "TR_ID": "DA-10-11106-66-660000124",
        "START_DATE": "2023-07-27T11:16:58.253",
        "RCV_DATE": "2023-07-27T11:16:58.253",
        "APP_DATE": "2023-08-18T06:54:03.213",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 345,
        "RCVNO": "6600045",
        "TR_ID": "DA-10-11106-66-660000240",
        "START_DATE": "2023-10-25T00:00:00",
        "RCV_DATE": "2023-10-25T00:00:00",
        "APP_DATE": "2023-11-09T07:16:23.757",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2135,
        "RCVNO": "6700047",
        "TR_ID": "DA-10-11106-67-670000104",
        "START_DATE": "2024-05-08T00:00:00",
        "RCV_DATE": "2024-05-08T00:00:00",
        "APP_DATE": "2024-05-20T19:54:16.163",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2285,
        "RCVNO": "6700080",
        "TR_ID": "DA-10-11106-67-670000187",
        "START_DATE": "2024-08-09T00:00:00",
        "RCV_DATE": "2024-08-09T00:00:00",
        "APP_DATE": "2024-09-19T07:02:38.617",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2373,
        "RCVNO": "6700092",
        "TR_ID": "DA-10-11106-67-670000235",
        "START_DATE": "2024-09-20T00:00:00",
        "RCV_DATE": "2024-09-20T00:00:00",
        "APP_DATE": "2024-10-09T13:52:20.903",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2470,
        "RCVNO": "6700116",
        "TR_ID": "DA-10-11106-67-670000287",
        "START_DATE": "2024-10-31T00:00:00",
        "RCV_DATE": "2024-10-31T00:00:00",
        "APP_DATE": "2024-11-07T12:20:28.973",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 5898,
        "RCVNO": "6800029",
        "TR_ID": "DA-10-11106-68-680000062",
        "START_DATE": "2025-02-25T00:00:00",
        "RCV_DATE": "2025-02-25T00:00:00",
        "APP_DATE": "2025-03-03T12:40:36.817",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 5989,
        "RCVNO": "6800050",
        "TR_ID": "DA-10-11106-68-680000110",
        "START_DATE": "2025-04-04T00:00:00",
        "RCV_DATE": "2025-04-04T00:00:00",
        "APP_DATE": "2025-04-11T13:31:58.97",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 9207,
        "RCVNO": "6800132",
        "TR_ID": "DA-10-11106-68-680000344",
        "START_DATE": "2025-10-17T00:00:00",
        "RCV_DATE": "2025-10-17T00:00:00",
        "APP_DATE": "0001-01-01T00:00:00",
        "STAFF_NAME": "นางสาวภัทราวดี ภู่มณี",
        "STATUS_ID": 3,
        "STATUS_NAME": "ชำระเงินแล้ว รอใบอนุญาตฉบับจริงส่งมาพิจารณา",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1102600123C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      }
    ],
    "LOCATION_MANUFAC_PROCESS": [
      {
        "LOCATION_MANUFACTURING_IDA": 184,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยเทคนิคปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 339,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยเทคนิคปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 482,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยเทคนิคปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 547,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยวิธีทำให้ปราศจากเชื้อในนขั้นตอนสุดท้าย",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 611,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยวิธีทำให้ปราศจากเชื้อในนขั้นตอนสุดท้าย",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 639,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยวิธีทำให้ปราศจากเชื้อในนขั้นตอนสุดท้าย",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 740,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ผลิตโดยวิธีทำให้ปราศจากเชื้อในนขั้นตอนสุดท้าย",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 896,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1035,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1172,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1307,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1457,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1102600123C"
      }
    ],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 809,
        "NEWCODE": "U1Dผย1102600123C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 37828,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37829,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37830,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37831,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37832,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37833,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ.7693",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37834,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37835,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37836,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37837,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37838,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37839,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37840,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37841,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37842,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37843,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37844,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37845,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37846,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37847,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37848,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37849,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37850,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37851,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37852,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37853,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37854,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37855,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37856,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37857,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37858,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37859,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37860,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1709901101940",
        "PERSON_CONTROL_NAME": "ณัฏฐนิช",
        "PERSON_CONTROL_SURNAME": "พ่วงทรัพย์สิน",
        "PERSON_CONTROL_LICENSE": "ภ.45372",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37861,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103702514390",
        "PERSON_CONTROL_NAME": "ธัญลักษณ์",
        "PERSON_CONTROL_SURNAME": "ชินวงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.48530",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37862,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101402046861",
        "PERSON_CONTROL_NAME": "ยศิตา",
        "PERSON_CONTROL_SURNAME": "โตสุจริตธรรม",
        "PERSON_CONTROL_LICENSE": "ภ.41164",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37863,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100801051441",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "ทิชากรสกุล",
        "PERSON_CONTROL_LICENSE": "ภ.43596",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37864,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900801753",
        "PERSON_CONTROL_NAME": "ภาวิกา",
        "PERSON_CONTROL_SURNAME": "กิจจาวิทย",
        "PERSON_CONTROL_LICENSE": "ภ.43390",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37865,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102000663706",
        "PERSON_CONTROL_NAME": "พีรชา",
        "PERSON_CONTROL_SURNAME": "ธนวัฒนาวนิช",
        "PERSON_CONTROL_LICENSE": "ภ.9499",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37866,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1560100320094",
        "PERSON_CONTROL_NAME": "ชาลิสา",
        "PERSON_CONTROL_SURNAME": "วรินทร์รักษ์",
        "PERSON_CONTROL_LICENSE": "ภ.41232",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37867,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37868,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37869,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100400662482",
        "PERSON_CONTROL_NAME": "นภัสส์พร",
        "PERSON_CONTROL_SURNAME": "ฉวีวรศักดิ์",
        "PERSON_CONTROL_LICENSE": "ภ.39531",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37870,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100801153597",
        "PERSON_CONTROL_NAME": "สาธิต",
        "PERSON_CONTROL_SURNAME": "ล้อกิจไพบูลย์",
        "PERSON_CONTROL_LICENSE": "ภ.44793",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37871,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1969900265351",
        "PERSON_CONTROL_NAME": "ปราญชลี",
        "PERSON_CONTROL_SURNAME": "ศิลปวาทกุล",
        "PERSON_CONTROL_LICENSE": "ภ.46312",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37872,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1559900320801",
        "PERSON_CONTROL_NAME": "สุพิชญา",
        "PERSON_CONTROL_SURNAME": "สายโสภา",
        "PERSON_CONTROL_LICENSE": "ภ.45432",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37873,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1909802254282",
        "PERSON_CONTROL_NAME": "สาริศา",
        "PERSON_CONTROL_SURNAME": "มั่นคงพิทักษ์กุล",
        "PERSON_CONTROL_LICENSE": "ภ.46951",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37874,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1103702086860",
        "PERSON_CONTROL_NAME": "นวดล",
        "PERSON_CONTROL_SURNAME": "ตติยวัฒนชัย",
        "PERSON_CONTROL_LICENSE": "ภ.46074",
        "NEWCODE": "U1Dผย1102600123C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37875,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1209700667801",
        "PERSON_CONTROL_NAME": "ภัทรภร",
        "PERSON_CONTROL_SURNAME": "เตชะผกาพงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.43529 ",
        "NEWCODE": "U1Dผย1102600123C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 12667,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-112-2016-50075",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1D04105900012C",
    "LOCATION_LICENSE": "ขนจ กท 12/2559",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขนจ",
    "HOUSE_NO": null,
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2019-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "2019-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 21260,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ขาย",
        "LOCATION_TYPE_CODE": "ขนจ",
        "LATITUDE": "13.7982800000",
        "LONGTITUDE": "100.5660900000",
        "LOCATION_LICENSE": "ขนจ กท 12/2559",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-08-15T11:28:32.61",
        "NEWCODE": "U1D04105900012C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": null
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 36466,
        "NEWCODE": "U1D04105900012C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 56809,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-125-2563-189750",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dขตวจ3106300006C",
    "LOCATION_LICENSE": "ขตวจ3 กท 6/2563",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขตวจ3",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2021-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "2022-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 7107,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร 3 ถนนวิภาวดีรังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 0,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ขตวจ3 กท 6/2563",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dขตวจ3106300006C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 52275,
        "NEWCODE": "U1Dขตวจ3106300006C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51297,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51298,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ.7693",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51299,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51300,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3140600394585",
        "PERSON_CONTROL_NAME": "จิรารัตน์",
        "PERSON_CONTROL_SURNAME": "กิตติคุณาดุลย์",
        "PERSON_CONTROL_LICENSE": "ภ.8539",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51301,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100101120421",
        "PERSON_CONTROL_NAME": "แก้วนภา",
        "PERSON_CONTROL_SURNAME": "วงศ์เสริมสิน",
        "PERSON_CONTROL_LICENSE": "ภ.9344",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51302,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51303,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51304,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51305,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51306,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51307,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51308,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51309,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51310,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51311,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51312,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51313,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51314,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51315,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51316,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51317,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3340100666142",
        "PERSON_CONTROL_NAME": "ขวัญจิต",
        "PERSON_CONTROL_SURNAME": "อุ่นใจ",
        "PERSON_CONTROL_LICENSE": "ภ.20514",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51318,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51319,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51320,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51321,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51322,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900029759",
        "PERSON_CONTROL_NAME": "สิรินดา",
        "PERSON_CONTROL_SURNAME": "ลาวัลย์วดีกุล",
        "PERSON_CONTROL_LICENSE": "ภ.21991",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51323,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51324,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51325,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101400689772",
        "PERSON_CONTROL_NAME": "ธิติพงษ์",
        "PERSON_CONTROL_SURNAME": "เนียมบุญนำ",
        "PERSON_CONTROL_LICENSE": "ภ.24429",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51326,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51327,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51328,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1200900079611",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "คำมณีย์",
        "PERSON_CONTROL_LICENSE": "ภ.29953",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51329,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51330,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51331,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51332,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103700744975",
        "PERSON_CONTROL_NAME": "อนัญญา",
        "PERSON_CONTROL_SURNAME": "อุบลรัตน์",
        "PERSON_CONTROL_LICENSE": "ภ.36315",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51333,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51334,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1103000052353",
        "PERSON_CONTROL_NAME": "ชลพรรษ",
        "PERSON_CONTROL_SURNAME": "อัชรีวงศ์ไพศาล",
        "PERSON_CONTROL_LICENSE": "ภ.37453",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51335,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51336,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51337,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dขตวจ3106300006C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51338,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dขตวจ3106300006C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 6085,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-112-2541-104100015",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
    "ORG": "DRUG",
    "NEWCODE": "U1D04104100015C",
    "LOCATION_LICENSE": "ขนจ กท 15/2541",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขนจ",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1998-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "หมดอายุ",
    "EXP_DATE": "1998-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 14678,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ขาย",
        "LOCATION_TYPE_CODE": "ขนจ",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "ขนจ กท 15/2541",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-08-15T11:28:32.61",
        "NEWCODE": "U1D04104100015C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 8226,
        "NEWCODE": "U1D04104100015C",
        "CTZNO_OPERATOR_CTZNO": "3120101384851",
        "OPERATOR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 16772,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-106-2568-106800004",
    "UPDATE_DATE": "2025-10-22T14:58:54.137",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผย1106800004C",
    "LOCATION_LICENSE": "ผย1 กท 4/2568",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 101, 101/1-101/5        หมู่ 2 ตำบล บางพลับ อำเภอ ปากเกร็ด จังหวัด นนทบุรี 11120โทร. 0 2625 9999",
    "LOCATION_ADDR": "101, 101/1-101/5",
    "LOCATION_PROVINCE_NAME": "นนทบุรี",
    "LOCATION_DISTRICT_NAME": "ปากเกร็ด",
    "LOCATION_SUBDISTRICT_NAME": "บางพลับ",
    "LOCATION_PROVINCE_CODE": 12,
    "LOCATION_DISTRICT_CODE": 6,
    "LOCATION_SUBDISTRICT_CODE": 11,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผย1",
    "HOUSE_NO": "12870003889",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2025-06-20T00:00:00",
    "LOCATION_ROAD": "",
    "LOCATION_MOO": "2",
    "LOCATION_SOI": "",
    "ZIPCODE": "11120",
    "CREATE_DATE": "2025-10-22T14:58:54.137",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2026-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 8561,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่101, 101/1-101/5      หมู่2 ตำบลบางพลับ อำเภอปากเกร็ด จังหวัดนนทบุรี 11120",
        "LOCATION_ADDR": "101, 101/1-101/5",
        "LOCATION_PROVINCE_CODE": 12,
        "LOCATION_DISTRICT_CODE": 6,
        "LOCATION_SUBDISTRICT_CODE": 11,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": "13.9212270000",
        "LONGTITUDE": "100.4388290000",
        "LOCATION_LICENSE": "ผย1 กท 4/2568",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dผย1106800004C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "นนทบุรี",
        "LOCATION_DISTRICT_NAME": "ปากเกร็ด",
        "LOCATION_SUBDISTRICT_NAME": "บางพลับ",
        "HOUSE_NO": "12870003889"
      },
      {
        "LOCATION_OTHER_IDA": 25365,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 101, 101/1-101/5        หมู่ 2 ตำบล บางพลับ อำเภอ ปากเกร็ด จังหวัด นนทบุรี 11120โทร. 0 2625 9999",
        "LOCATION_ADDR": "101, 101/1-101/5",
        "LOCATION_PROVINCE_CODE": 12,
        "LOCATION_DISTRICT_CODE": 6,
        "LOCATION_SUBDISTRICT_CODE": 11,
        "LOCATION_TYPE": "ผลิต",
        "LOCATION_TYPE_CODE": "ผย1",
        "LATITUDE": "13.9212270000",
        "LONGTITUDE": "100.4388290000",
        "LOCATION_LICENSE": "ผย1 กท 4/2568",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-06-23T16:14:38.913",
        "NEWCODE": "U1Dผย1106800004C",
        "LOCATION_ROAD": "",
        "LOCATION_FLOOR": "",
        "LOCATION_BUIDLING": "",
        "LOCATION_MOO": "2",
        "LOCATION_SOI": "",
        "ZIPCODE": "11120",
        "LOCATION_PROVINCE_NAME": "นนทบุรี",
        "LOCATION_DISTRICT_NAME": "ปากเกร็ด",
        "LOCATION_SUBDISTRICT_NAME": "บางพลับ",
        "HOUSE_NO": "12870003889"
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [
      {
        "LOCATION_HIS_IDA": 8650,
        "RCVNO": "6800016",
        "TR_ID": "DA-10-11106-68-680000245",
        "START_DATE": "2025-09-08T00:00:00",
        "RCV_DATE": "2025-09-08T00:00:00",
        "APP_DATE": "2025-09-15T16:47:52.65",
        "STAFF_NAME": "นางสาวภัทราวดี ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11106",
        "NEWCODE": "U1Dผย1106800004C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      }
    ],
    "LOCATION_MANUFAC_PROCESS": [
      {
        "LOCATION_MANUFACTURING_IDA": 944,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1106800004C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1080,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1106800004C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1357,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "METHOD": "ยาที่ไม่ใช่ยาปราศจากเชื้อ",
        "NEWCODE": "U1Dผย1106800004C"
      },
      {
        "LOCATION_MANUFACTURING_IDA": 1655,
        "SCOPE": "ยาแผนปัจจุบันสำหรับมนุษย์",
        "TYPE": "แบ่งบรรจุผลิตภัณฑ์เท่านั้น",
        "METHOD": "แบ่งบรรจุแบบทุติยภูมิ",
        "NEWCODE": "U1Dผย1106800004C"
      }
    ],
    "LOCATION_OPERATOR": [],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 37537,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3340100666142",
        "PERSON_CONTROL_NAME": "ขวัญจิต",
        "PERSON_CONTROL_SURNAME": "อุ่นใจ",
        "PERSON_CONTROL_LICENSE": "20514",
        "NEWCODE": "U1Dผย1106800004C"
      },
      {
        "LOCATION_PERSON_CONTROL": 37538,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1639900323842",
        "PERSON_CONTROL_NAME": "นนทวัฒน์",
        "PERSON_CONTROL_SURNAME": "ดีดทอง",
        "PERSON_CONTROL_LICENSE": "ภ.52038",
        "NEWCODE": "U1Dผย1106800004C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 57493,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-127-2568-106800003",
    "UPDATE_DATE": "2025-10-30T13:14:14.817",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผวจ3106800003C",
    "LOCATION_LICENSE": "ผวจ3 กท 3/2568",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9    ซอย โชคชัยร่วมมิตร 3 ถนน วิภาวดีรังสิต   แขวง ดินแดง เขต ดินแดง จังหวัด กรุงเทพมหานคร 10400โทร. 0 2625 9999",
    "LOCATION_ADDR": "123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "ดินแดง",
    "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผวจ3",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2025-07-02T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร 3",
    "ZIPCODE": "10400",
    "CREATE_DATE": "2025-10-30T13:14:14.817",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2025-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 8376,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่123    ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต  ตำบลจอมพล อำเภอจตุจักร จังหวัดกรุงเทพมหานคร 10900",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": "0.0000000000",
        "LONGTITUDE": "0.0000000000",
        "LOCATION_LICENSE": "ผวจ3 กท 3/2568",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dผวจ3106800003C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 67222,
        "NEWCODE": "U1Dผวจ3106800003C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51816,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51817,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ.7693",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51818,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51819,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51820,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51821,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102000663706",
        "PERSON_CONTROL_NAME": "พีรชา",
        "PERSON_CONTROL_SURNAME": "ธนวัฒนาวนิช",
        "PERSON_CONTROL_LICENSE": "ภ.9499",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51822,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51823,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1559900320801",
        "PERSON_CONTROL_NAME": "สุพิชญา",
        "PERSON_CONTROL_SURNAME": "สายโสภา",
        "PERSON_CONTROL_LICENSE": "ภ.45432",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51824,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1103702086860",
        "PERSON_CONTROL_NAME": "นวดล",
        "PERSON_CONTROL_SURNAME": "ตติยวัฒนชัย",
        "PERSON_CONTROL_LICENSE": "ภ.46074",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51825,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1969900265351",
        "PERSON_CONTROL_NAME": "ปราญชลี",
        "PERSON_CONTROL_SURNAME": "ศิลปวาทกุล",
        "PERSON_CONTROL_LICENSE": "ภ.46312",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51826,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1909802254282",
        "PERSON_CONTROL_NAME": "สาริศา",
        "PERSON_CONTROL_SURNAME": "มั่นคงพิทักษ์กุล",
        "PERSON_CONTROL_LICENSE": "ภ.46951",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51827,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103702514390",
        "PERSON_CONTROL_NAME": "ธัญลักษณ์",
        "PERSON_CONTROL_SURNAME": "ชินวงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.48530",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51828,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51829,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51830,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51831,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51832,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51833,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51834,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51835,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51836,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51837,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51838,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51839,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187 ",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51840,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51841,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51842,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51843,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51844,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51845,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51846,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51847,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51848,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770 ",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51849,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51850,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51851,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51852,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51853,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51854,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51855,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100400662482",
        "PERSON_CONTROL_NAME": "นภัสส์พร",
        "PERSON_CONTROL_SURNAME": "ฉวีวรศักดิ์",
        "PERSON_CONTROL_LICENSE": "ภ.39531",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51856,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51857,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101402046861",
        "PERSON_CONTROL_NAME": "ยศิตา",
        "PERSON_CONTROL_SURNAME": "โตสุจริตธรรม",
        "PERSON_CONTROL_LICENSE": "ภ.41164",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51858,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1560100320094",
        "PERSON_CONTROL_NAME": "ชาลิสา",
        "PERSON_CONTROL_SURNAME": "วรินทร์รักษ์",
        "PERSON_CONTROL_LICENSE": "ภ.41232",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51859,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900801753",
        "PERSON_CONTROL_NAME": "ภาวิกา",
        "PERSON_CONTROL_SURNAME": "กิจจาวิทย",
        "PERSON_CONTROL_LICENSE": "ภ.43390",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51860,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1209700667801",
        "PERSON_CONTROL_NAME": "ภัทรภร",
        "PERSON_CONTROL_SURNAME": "เตชะผกาพงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.43529",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51861,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100801051441",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "ทิชากรสกุล",
        "PERSON_CONTROL_LICENSE": "ภ.43596",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51862,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100801153597",
        "PERSON_CONTROL_NAME": "สาธิต",
        "PERSON_CONTROL_SURNAME": "ล้อกิจไพบูลย์",
        "PERSON_CONTROL_LICENSE": "ภ.44793",
        "NEWCODE": "U1Dผวจ3106800003C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51863,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1709901101940",
        "PERSON_CONTROL_NAME": "ณัฏฐนิช",
        "PERSON_CONTROL_SURNAME": "พ่วงทรัพย์สิน",
        "PERSON_CONTROL_LICENSE": "ภ.45372",
        "NEWCODE": "U1Dผวจ3106800003C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 6343,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-112-2539-103900015",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
    "ORG": "DRUG",
    "NEWCODE": "U1D04103900015C",
    "LOCATION_LICENSE": "ขนจ กท 15/2539",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขนจ",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1996-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "หมดอายุ",
    "EXP_DATE": "1998-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 14936,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ขาย",
        "LOCATION_TYPE_CODE": "ขนจ",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "ขนจ กท 15/2539",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-08-15T11:28:32.61",
        "NEWCODE": "U1D04103900015C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 9624,
        "NEWCODE": "U1D04103900015C",
        "CTZNO_OPERATOR_CTZNO": "3101300365084",
        "OPERATOR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 53335,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-110-2540-104000010",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
    "ORG": "DRUG",
    "NEWCODE": "U1D02104000010C",
    "LOCATION_LICENSE": "ผจ กท 10/2540",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผจ",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1997-09-05T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "หมดอายุ",
    "EXP_DATE": "1998-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 7127,
        "NEWCODE": "U1D02104000010C",
        "CTZNO_OPERATOR_CTZNO": "3101300365084",
        "OPERATOR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 57574,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-128-2568-106800017",
    "UPDATE_DATE": "2025-10-30T13:18:14.997",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dผวจ4106800017C",
    "LOCATION_LICENSE": "ผวจ4 กท 17/2568",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9    ซอย โชคชัยร่วมมิตร 3 ถนน วิภาวดีรังสิต   แขวง ดินแดง เขต ดินแดง จังหวัด กรุงเทพมหานคร 10400โทร. 0 2625 9999",
    "LOCATION_ADDR": "123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "ดินแดง",
    "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผวจ4",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2025-07-02T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร 3",
    "ZIPCODE": "10400",
    "CREATE_DATE": "2025-10-30T13:18:14.997",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2025-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 8377,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่123    ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต  ตำบลจอมพล อำเภอจตุจักร จังหวัดกรุงเทพมหานคร 10900",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": "0.0000000000",
        "LONGTITUDE": "0.0000000000",
        "LOCATION_LICENSE": "ผวจ4 กท 17/2568",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dผวจ4106800017C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 67223,
        "NEWCODE": "U1Dผวจ4106800017C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51924,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51925,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51926,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ.7693",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51927,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51928,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51929,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51930,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51931,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51932,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51933,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51934,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51935,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51936,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51937,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51938,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51939,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51940,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51941,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100400662482",
        "PERSON_CONTROL_NAME": "นภัสส์พร",
        "PERSON_CONTROL_SURNAME": "ฉวีวรศักดิ์",
        "PERSON_CONTROL_LICENSE": "ภ.39531",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51942,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51943,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101402046861",
        "PERSON_CONTROL_NAME": "ยศิตา",
        "PERSON_CONTROL_SURNAME": "โตสุจริตธรรม",
        "PERSON_CONTROL_LICENSE": "ภ.41164",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51944,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1560100320094",
        "PERSON_CONTROL_NAME": "ชาลิสา",
        "PERSON_CONTROL_SURNAME": "วรินทร์รักษ์",
        "PERSON_CONTROL_LICENSE": "ภ.41232",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51945,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900801753",
        "PERSON_CONTROL_NAME": "ภาวิกา",
        "PERSON_CONTROL_SURNAME": "กิจจาวิทย",
        "PERSON_CONTROL_LICENSE": "ภ.43390",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51946,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1209700667801",
        "PERSON_CONTROL_NAME": "ภัทรภร",
        "PERSON_CONTROL_SURNAME": "เตชะผกาพงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.43529",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51947,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100801051441",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "ทิชากรสกุล",
        "PERSON_CONTROL_LICENSE": "ภ.43596",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51948,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100801153597",
        "PERSON_CONTROL_NAME": "สาธิต",
        "PERSON_CONTROL_SURNAME": "ล้อกิจไพบูลย์",
        "PERSON_CONTROL_LICENSE": "ภ.44793",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51949,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1709901101940",
        "PERSON_CONTROL_NAME": "ณัฏฐนิช",
        "PERSON_CONTROL_SURNAME": "พ่วงทรัพย์สิน",
        "PERSON_CONTROL_LICENSE": "ภ.45372",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51950,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1559900320801",
        "PERSON_CONTROL_NAME": "สุพิชญา",
        "PERSON_CONTROL_SURNAME": "สายโสภา",
        "PERSON_CONTROL_LICENSE": "ภ.45432",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51951,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1103702086860",
        "PERSON_CONTROL_NAME": "นวดล",
        "PERSON_CONTROL_SURNAME": "ตติยวัฒนชัย",
        "PERSON_CONTROL_LICENSE": "ภ.46074",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51952,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1969900265351",
        "PERSON_CONTROL_NAME": "ปราญชลี",
        "PERSON_CONTROL_SURNAME": "ศิลปวาทกุล",
        "PERSON_CONTROL_LICENSE": "ภ.46312",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51953,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1909802254282",
        "PERSON_CONTROL_NAME": "สาริศา",
        "PERSON_CONTROL_SURNAME": "มั่นคงพิทักษ์กุล",
        "PERSON_CONTROL_LICENSE": "ภ.46951",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51954,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103702514390",
        "PERSON_CONTROL_NAME": "ธัญลักษณ์",
        "PERSON_CONTROL_SURNAME": "ชินวงษ์",
        "PERSON_CONTROL_LICENSE": "ภ.48530",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51955,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51956,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51957,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51958,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102000663706",
        "PERSON_CONTROL_NAME": "พีรชา",
        "PERSON_CONTROL_SURNAME": "ธนวัฒนาวนิช",
        "PERSON_CONTROL_LICENSE": "ภ.9499",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51959,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51960,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51961,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51962,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51963,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51964,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51965,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51966,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51967,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51968,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51969,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51970,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dผวจ4106800017C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51971,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dผวจ4106800017C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 5554,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-114-2542-104200012",
    "UPDATE_DATE": "2025-04-17T14:26:35.58",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "บริษัทสยามเภสัช จำกัด ",
    "ORG": "DRUG",
    "NEWCODE": "U1D12104200012C",
    "LOCATION_LICENSE": "ผยส กท 12/2542",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผยส",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1999-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2022-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 6330,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร3 ถนนวิภาวดี-รังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ผยส กท 12/2542",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1D12104200012C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      },
      {
        "LOCATION_OTHER_IDA": 14147,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ผลิต",
        "LOCATION_TYPE_CODE": "ผยส",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "ผยส กท 12/2542",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-04-17T14:26:35.58",
        "NEWCODE": "U1D12104200012C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [
      {
        "LOCATION_HIS_IDA": 9,
        "RCVNO": "6600004",
        "TR_ID": "DA-10-11109-66-660000008",
        "START_DATE": "2023-07-27T10:22:11.36",
        "RCV_DATE": "2023-07-27T10:22:11.36",
        "APP_DATE": "2023-08-18T06:55:07.65",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": "แก้วประสิทธิ์",
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 27,
        "RCVNO": "6600016",
        "TR_ID": "DA-10-11109-66-660000027",
        "START_DATE": "2023-10-25T00:00:00",
        "RCV_DATE": "2023-10-25T00:00:00",
        "APP_DATE": "2023-11-09T07:22:56.21",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 1958,
        "RCVNO": "6700015",
        "TR_ID": "DA-10-11109-67-670000027",
        "START_DATE": "2024-05-08T00:00:00",
        "RCV_DATE": "2024-05-08T00:00:00",
        "APP_DATE": "2024-05-20T19:53:18.083",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2005,
        "RCVNO": "6700029",
        "TR_ID": "DA-10-11109-67-670000043",
        "START_DATE": "2024-08-09T00:00:00",
        "RCV_DATE": "2024-08-09T00:00:00",
        "APP_DATE": "2024-09-19T06:57:19.737",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2031,
        "RCVNO": "6700033",
        "TR_ID": "DA-10-11109-67-670000054",
        "START_DATE": "2024-09-20T00:00:00",
        "RCV_DATE": "2024-09-20T00:00:00",
        "APP_DATE": "2024-10-09T14:03:38.923",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 2069,
        "RCVNO": "6700038",
        "TR_ID": "DA-10-11109-67-670000071",
        "START_DATE": "2024-10-31T00:00:00",
        "RCV_DATE": "2024-10-31T00:00:00",
        "APP_DATE": "2024-11-07T12:26:37.86",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 5785,
        "RCVNO": "6800008",
        "TR_ID": "DA-10-11109-68-680000011",
        "START_DATE": "2025-04-04T00:00:00",
        "RCV_DATE": "2025-04-04T00:00:00",
        "APP_DATE": "2025-04-17T14:22:20.49",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 5791,
        "RCVNO": "6800009",
        "TR_ID": "DA-10-11109-68-680000013",
        "START_DATE": "2025-04-10T00:00:00",
        "RCV_DATE": "2025-04-10T00:00:00",
        "APP_DATE": "2025-04-17T14:30:27.457",
        "STAFF_NAME": "นางสาวนภัสวรรณ ภู่มณี",
        "STATUS_ID": 8,
        "STATUS_NAME": "อนุมัติ",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      },
      {
        "LOCATION_HIS_IDA": 9249,
        "RCVNO": "6800026",
        "TR_ID": "DA-10-11109-68-680000044",
        "START_DATE": "2025-10-17T00:00:00",
        "RCV_DATE": "2025-10-17T00:00:00",
        "APP_DATE": "0001-01-01T00:00:00",
        "STAFF_NAME": "นางสาวภัทราวดี ภู่มณี",
        "STATUS_ID": 3,
        "STATUS_NAME": "ชำระเงินแล้ว รอใบอนุญาตฉบับจริงส่งมาพิจารณา",
        "REQUEST_TYPE": "แก้ไข",
        "PROCESS_ID": "11109",
        "NEWCODE": "U1D12104200012C",
        "EDIT_FROM": null,
        "EDIT_TO": null
      }
    ],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 7988,
        "NEWCODE": "U1D12104200012C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 13546,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-104-2561-99072",
    "UPDATE_DATE": "2025-10-21T15:07:45.307",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาง ขนิษฐา บุญล้อม",
    "ORG": "DRUG",
    "NEWCODE": "U1Dขย4106200271C",
    "LOCATION_LICENSE": "ขย4 กท 271/2562",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขย4",
    "HOUSE_NO": null,
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2023-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": null,
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "2025-10-21T15:07:45.307",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2026-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 6331,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร3 ถนนวิภาวดี-รังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ขย4 กท 271/2562",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dขย4106200271C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      },
      {
        "LOCATION_OTHER_IDA": 22139,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ขาย",
        "LOCATION_TYPE_CODE": "ขย4",
        "LATITUDE": "13.7982800000",
        "LONGTITUDE": "100.5660900000",
        "LOCATION_LICENSE": "ขย4 กท 271/2562",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-01-21T14:35:22.413",
        "NEWCODE": "U1Dขย4106200271C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": null
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 42274,
        "NEWCODE": "U1Dขย4106200271C",
        "CTZNO_OPERATOR_CTZNO": "4100100007025",
        "OPERATOR_NAME": "นาง ขนิษฐา บุญล้อม",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 35867,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "4100100007025",
        "PERSON_CONTROL_NAME": "ขนิษฐา",
        "PERSON_CONTROL_SURNAME": "บุญล้อม",
        "PERSON_CONTROL_LICENSE": " ภ.8529",
        "NEWCODE": "U1Dขย4106200271C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 56810,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-126-2563-189752",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dขตวจ4106300024C",
    "LOCATION_LICENSE": "ขตวจ4 กท 24/2563",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขตวจ4",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2021-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "2022-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 6332,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร 3 ถนนวิภาวดีรังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 0,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ขตวจ4 กท 24/2563",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dขตวจ4106300024C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 52276,
        "NEWCODE": "U1Dขตวจ4106300024C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51712,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100503092341",
        "PERSON_CONTROL_NAME": "จันทร์เพ็ญ",
        "PERSON_CONTROL_SURNAME": "วิศิษฏ์พงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.7430",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51713,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3101800422095",
        "PERSON_CONTROL_NAME": "วิไล",
        "PERSON_CONTROL_SURNAME": "กวีวงศ์วรนันท",
        "PERSON_CONTROL_LICENSE": "ภ7693",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51714,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101300088528",
        "PERSON_CONTROL_NAME": "วิเชียร",
        "PERSON_CONTROL_SURNAME": "ธนกิจสุนทร",
        "PERSON_CONTROL_LICENSE": "ภ.7703",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51715,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3140600394585",
        "PERSON_CONTROL_NAME": "จิรารัตน์",
        "PERSON_CONTROL_SURNAME": "กิตติคุณาดุลย์",
        "PERSON_CONTROL_LICENSE": "ภ.8539",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51716,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100101120421",
        "PERSON_CONTROL_NAME": "แก้วนภา",
        "PERSON_CONTROL_SURNAME": "วงศ์เสริมสิน",
        "PERSON_CONTROL_LICENSE": "ภ.9344",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51717,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3649800067719",
        "PERSON_CONTROL_NAME": "จันทร",
        "PERSON_CONTROL_SURNAME": "ลิมปนารมณ์",
        "PERSON_CONTROL_LICENSE": "ภ.9453",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51718,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100100464151",
        "PERSON_CONTROL_NAME": "เจียวฮั้ว",
        "PERSON_CONTROL_SURNAME": "แซ่ลิ้ม",
        "PERSON_CONTROL_LICENSE": "ภ.9457",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51719,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "4100500070921",
        "PERSON_CONTROL_NAME": "นภาสินี",
        "PERSON_CONTROL_SURNAME": "อักษรแก้ว",
        "PERSON_CONTROL_LICENSE": "ภ.11474",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51720,
        "PERSON_CONTROL_PREFIX": "นาง",
        "CTZNO_PERSON_CONTROL": "3100602167985",
        "PERSON_CONTROL_NAME": "ชนิกา",
        "PERSON_CONTROL_SURNAME": "รัชตังกูร",
        "PERSON_CONTROL_LICENSE": "ภ.11596",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51721,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100503163931",
        "PERSON_CONTROL_NAME": "กฤษณิน",
        "PERSON_CONTROL_SURNAME": "จันทร์แสนโรจน์",
        "PERSON_CONTROL_LICENSE": "ภ.12340",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51722,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3102400468421",
        "PERSON_CONTROL_NAME": "ศักดิ์ชัย",
        "PERSON_CONTROL_SURNAME": "อวยชัยพรเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.12407",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51723,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3102201544691",
        "PERSON_CONTROL_NAME": "นภาพร",
        "PERSON_CONTROL_SURNAME": "จูฑะโกสิทธิ์กานนท์",
        "PERSON_CONTROL_LICENSE": "ภ.13567",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51724,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3101202453515",
        "PERSON_CONTROL_NAME": "วิสูจน์",
        "PERSON_CONTROL_SURNAME": "วิจิตรนิเทศ",
        "PERSON_CONTROL_LICENSE": "ภ.13626",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51725,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3800100811351",
        "PERSON_CONTROL_NAME": "เบญจรักษ์",
        "PERSON_CONTROL_SURNAME": "สุขขาว",
        "PERSON_CONTROL_LICENSE": "ภ.13993",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51726,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100902063522",
        "PERSON_CONTROL_NAME": "พัชรินทร์",
        "PERSON_CONTROL_SURNAME": "บรรยงวิมลณัฐ",
        "PERSON_CONTROL_LICENSE": "ภ.14541",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51727,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3939900160556",
        "PERSON_CONTROL_NAME": "บัวทิพย์",
        "PERSON_CONTROL_SURNAME": "ธรรมพานิชวงค์",
        "PERSON_CONTROL_LICENSE": "ภ.15558",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51728,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3810400258100",
        "PERSON_CONTROL_NAME": "วรมล",
        "PERSON_CONTROL_SURNAME": "นวลวิไลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.15608",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51729,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3540400060922",
        "PERSON_CONTROL_NAME": "ชญาณิศา",
        "PERSON_CONTROL_SURNAME": "สกุลหาญ",
        "PERSON_CONTROL_LICENSE": "ภ.17187",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51730,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51731,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3629900049925",
        "PERSON_CONTROL_NAME": "นิชธิมา",
        "PERSON_CONTROL_SURNAME": "ด้วงน้อย",
        "PERSON_CONTROL_LICENSE": "ภ.19604",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51732,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3340100666142",
        "PERSON_CONTROL_NAME": "ขวัญจิต",
        "PERSON_CONTROL_SURNAME": "อุ่นใจ",
        "PERSON_CONTROL_LICENSE": "ภ.20514",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51733,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3810500128569",
        "PERSON_CONTROL_NAME": "วีระชัย",
        "PERSON_CONTROL_SURNAME": "หลิมพานิชย์",
        "PERSON_CONTROL_LICENSE": "ภ.20604",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51734,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3100901879987",
        "PERSON_CONTROL_NAME": "อรุณกมล",
        "PERSON_CONTROL_SURNAME": "ประดิษฐบงกช",
        "PERSON_CONTROL_LICENSE": "ภ.20766",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51735,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100599001388",
        "PERSON_CONTROL_NAME": "ธงทอง",
        "PERSON_CONTROL_SURNAME": "มหวงศ์วิริยะ",
        "PERSON_CONTROL_LICENSE": "ภ.21387",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51736,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "3609900203886",
        "PERSON_CONTROL_NAME": "รัษฎาพร",
        "PERSON_CONTROL_SURNAME": "พฤกษปิยะพร",
        "PERSON_CONTROL_LICENSE": "ภ.21971",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51737,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1529900029759",
        "PERSON_CONTROL_NAME": "สิรินดา",
        "PERSON_CONTROL_SURNAME": "ลาวัลย์วดีกุล",
        "PERSON_CONTROL_LICENSE": "ภ.21991",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51738,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100400067185",
        "PERSON_CONTROL_NAME": "ณรงค์ฤทธิ์",
        "PERSON_CONTROL_SURNAME": "จงสุขกิจพานิช",
        "PERSON_CONTROL_LICENSE": "ภ.23113",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51739,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1100800164315",
        "PERSON_CONTROL_NAME": "อธิพงศ์",
        "PERSON_CONTROL_SURNAME": "วงศ์สุทธิเลิศ",
        "PERSON_CONTROL_LICENSE": "ภ.23151",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51740,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101400689772",
        "PERSON_CONTROL_NAME": "ธิติพงษ์",
        "PERSON_CONTROL_SURNAME": "เนียมบุญนำ",
        "PERSON_CONTROL_LICENSE": "ภ.24429",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51741,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101400915632",
        "PERSON_CONTROL_NAME": "ชลธิชา",
        "PERSON_CONTROL_SURNAME": "บุญมา",
        "PERSON_CONTROL_LICENSE": "ภ.25253",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51742,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1100700725625",
        "PERSON_CONTROL_NAME": "กุลวดี",
        "PERSON_CONTROL_SURNAME": "เปล่งสุริยการ",
        "PERSON_CONTROL_LICENSE": "ภ.27770",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51743,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1200900079611",
        "PERSON_CONTROL_NAME": "สุทธิดา",
        "PERSON_CONTROL_SURNAME": "คำมณีย์",
        "PERSON_CONTROL_LICENSE": "ภ.29953",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51744,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101500476967",
        "PERSON_CONTROL_NAME": "ลลิตา",
        "PERSON_CONTROL_SURNAME": "ผึ้งด้วง",
        "PERSON_CONTROL_LICENSE": "ภ.33984",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51745,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1409900778914",
        "PERSON_CONTROL_NAME": "พิรุณ",
        "PERSON_CONTROL_SURNAME": "ชัยประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.35479",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51746,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1739900323116",
        "PERSON_CONTROL_NAME": "ภัทราภรณ์",
        "PERSON_CONTROL_SURNAME": "เปี่ยมเจริญสุข",
        "PERSON_CONTROL_LICENSE": "ภ.36173",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51747,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103700744975",
        "PERSON_CONTROL_NAME": "อนัญญา",
        "PERSON_CONTROL_SURNAME": "อุบลรัตน์",
        "PERSON_CONTROL_LICENSE": "ภ.36315",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51748,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1102700214312",
        "PERSON_CONTROL_NAME": "ปารีณา",
        "PERSON_CONTROL_SURNAME": "วงศ์ละคร",
        "PERSON_CONTROL_LICENSE": "ภ.37745",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51749,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1103000052353",
        "PERSON_CONTROL_NAME": "ชลพรรษ",
        "PERSON_CONTROL_SURNAME": "อัชรีวงศ์ไพศาล",
        "PERSON_CONTROL_LICENSE": "ภ.37453",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51750,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1101401960569",
        "PERSON_CONTROL_NAME": "อชิรญา",
        "PERSON_CONTROL_SURNAME": "อัตถโกวิทย์วงศ์",
        "PERSON_CONTROL_LICENSE": "ภ.37982",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51751,
        "PERSON_CONTROL_PREFIX": "นางสาว",
        "CTZNO_PERSON_CONTROL": "1103701257911",
        "PERSON_CONTROL_NAME": "วิริญญา",
        "PERSON_CONTROL_SURNAME": "ตันเสนา",
        "PERSON_CONTROL_LICENSE": "ภ.39974",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51752,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1909800730133",
        "PERSON_CONTROL_NAME": "วสุพล",
        "PERSON_CONTROL_SURNAME": "วงศ์ภาคิน",
        "PERSON_CONTROL_LICENSE": "ภ.38908",
        "NEWCODE": "U1Dขตวจ4106300024C"
      },
      {
        "LOCATION_PERSON_CONTROL": 51753,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "1101402030867",
        "PERSON_CONTROL_NAME": "ชัชนนท์",
        "PERSON_CONTROL_SURNAME": "สุดประเสริฐ",
        "PERSON_CONTROL_LICENSE": "ภ.40627",
        "NEWCODE": "U1Dขตวจ4106300024C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 6344,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-114-2536-103600003",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
    "ORG": "DRUG",
    "NEWCODE": "U1D12103600003C",
    "LOCATION_LICENSE": "ผยส กท 3/2536",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผยส",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1996-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "1998-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 14937,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 30,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "ผลิต",
        "LOCATION_TYPE_CODE": "ผยส",
        "LATITUDE": "13.7986000000",
        "LONGTITUDE": "100.5675400000",
        "LOCATION_LICENSE": "ผยส กท 3/2536",
        "CREATE_DATE": "0001-01-01T00:00:00",
        "UPDATE_DATE": "2025-08-15T11:28:32.61",
        "NEWCODE": "U1D12103600003C",
        "LOCATION_ROAD": "วิภาวดีรังสิต",
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": "-  ",
        "LOCATION_SOI": "โชคชัยร่วมมิตร",
        "ZIPCODE": "10900",
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 8719,
        "NEWCODE": "U1D12103600003C",
        "CTZNO_OPERATOR_CTZNO": "3101300365084",
        "OPERATOR_NAME": "ทรงเกียรติ มหาวุฒิวนิช",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 53748,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-110-2542-104200026",
    "UPDATE_DATE": "2025-11-04T02:00:02.147",
    "STATUS": "7",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1D02104200026C",
    "LOCATION_LICENSE": "ผจ กท 26/2542",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123    ซอย โชคชัยร่วมมิตร ถนน วิภาวดีรังสิต   แขวง จอมพล เขต จตุจักร จังหวัด กรุงเทพมหานคร 10900โทร. 0 2625 9999",
    "LOCATION_ADDR": "123",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "จตุจักร",
    "LOCATION_SUBDISTRICT_NAME": "จอมพล",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 30,
    "LOCATION_SUBDISTRICT_CODE": 4,
    "LOCATION_TYPE": "ผลิต",
    "LOCATION_TYPE_CODE": "ผจ",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "1999-01-01T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "-  ",
    "LOCATION_SOI": "โชคชัยร่วมมิตร",
    "ZIPCODE": "10900",
    "CREATE_DATE": "0001-01-01T00:00:00",
    "STATUS_NAME": "ยกเลิก",
    "EXP_DATE": "2019-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 6329,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่9    ซอยโชคชัยร่วมมิตร3 ถนนวิภาวดี-รังสิต  ตำบลดินแดง อำเภอดินแดง จังหวัดกรุงเทพมหานคร 10400",
        "LOCATION_ADDR": "9",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 1,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": null,
        "LONGTITUDE": null,
        "LOCATION_LICENSE": "ผจ กท 26/2542",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1D02104200026C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "ดินแดง",
        "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
        "HOUSE_NO": null
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 6540,
        "NEWCODE": "U1D02104200026C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์ วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [],
    "LOCATION_PRODUCT_OCCUPY": []
  },
  {
    "LOCATION_INFO_IDA": 57722,
    "PV_CODE": "10",
    "PV_NAME": "กรุงเทพมหานคร",
    "TR_ID": "DA-125-2568-106800015",
    "UPDATE_DATE": "2025-08-14T14:53:31.4",
    "STATUS": "8",
    "ENTREPRENEUR_IDENTIFY": "0105516006065",
    "ENTREPRENEUR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
    "ORG": "DRUG",
    "NEWCODE": "U1Dขตวจ3106800015C",
    "LOCATION_LICENSE": "ขตวจ3 กท 15/2568",
    "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
    "LOCATION_FULL_ADDR": "บ้านเลขที่ 123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9    ซอย โชคชัยร่วมมิตร 3 ถนน วิภาวดีรังสิต   แขวง ดินแดง เขต ดินแดง จังหวัด กรุงเทพมหานคร 10400โทร. 0 2625 9999",
    "LOCATION_ADDR": "123 ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร จังหวัดกรุงเทพมหานคร 10900 และ เลขที่ 9",
    "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
    "LOCATION_DISTRICT_NAME": "ดินแดง",
    "LOCATION_SUBDISTRICT_NAME": "ดินแดง",
    "LOCATION_PROVINCE_CODE": 10,
    "LOCATION_DISTRICT_CODE": 26,
    "LOCATION_SUBDISTRICT_CODE": 1,
    "LOCATION_TYPE": "ขาย",
    "LOCATION_TYPE_CODE": "ขตวจ3",
    "HOUSE_NO": "",
    "IS_FACTORY": false,
    "LOCATION_BUSINESS_CATEGORY": "",
    "APPROVE_DATE": "2025-07-02T00:00:00",
    "LOCATION_ROAD": "วิภาวดีรังสิต",
    "LOCATION_MOO": "",
    "LOCATION_SOI": "โชคชัยร่วมมิตร 3",
    "ZIPCODE": "10400",
    "CREATE_DATE": "2025-08-14T14:53:31.4",
    "STATUS_NAME": "คงอยู่",
    "EXP_DATE": "2025-12-31",
    "MACHINE": null,
    "LABER": null,
    "LOCATION_ADDR_OTHER": [
      {
        "LOCATION_OTHER_IDA": 8378,
        "LOCATION_NAME": "บริษัท สยามเภสัช จำกัด",
        "LOCATION_FULL_ADDR": "บ้านเลขที่123    ซอยโชคชัยร่วมมิตร ถนนวิภาวดีรังสิต  ตำบลจอมพล อำเภอจตุจักร จังหวัดกรุงเทพมหานคร 10900",
        "LOCATION_ADDR": "123",
        "LOCATION_PROVINCE_CODE": 10,
        "LOCATION_DISTRICT_CODE": 0,
        "LOCATION_SUBDISTRICT_CODE": 4,
        "LOCATION_TYPE": "สถานที่เก็บ",
        "LOCATION_TYPE_CODE": "",
        "LATITUDE": "0.0000000000",
        "LONGTITUDE": "0.0000000000",
        "LOCATION_LICENSE": "ขตวจ3 กท 15/2568",
        "CREATE_DATE": "2025-06-21T15:44:35.84",
        "UPDATE_DATE": "2025-06-21T15:44:35.84",
        "NEWCODE": "U1Dขตวจ3106800015C",
        "LOCATION_ROAD": null,
        "LOCATION_FLOOR": null,
        "LOCATION_BUIDLING": null,
        "LOCATION_MOO": null,
        "LOCATION_SOI": null,
        "ZIPCODE": null,
        "LOCATION_PROVINCE_NAME": "กรุงเทพมหานคร",
        "LOCATION_DISTRICT_NAME": "จตุจักร",
        "LOCATION_SUBDISTRICT_NAME": "จอมพล",
        "HOUSE_NO": ""
      }
    ],
    "LOCATION_CERTIFICATE": [],
    "LOCATION_HISTORY": [],
    "LOCATION_MANUFAC_PROCESS": [],
    "LOCATION_OPERATOR": [
      {
        "LOCATION_OPERATOR_IDA": 68132,
        "NEWCODE": "U1Dขตวจ3106800015C",
        "CTZNO_OPERATOR_CTZNO": "3609700318426",
        "OPERATOR_NAME": "นาย สุพจน์  วิทยานุกูลลักษณ์",
        "UPDATE_DATE": "2025-05-18T13:03:37.78"
      }
    ],
    "LOCATION_PERSON_CONTROL": [
      {
        "LOCATION_PERSON_CONTROL": 51405,
        "PERSON_CONTROL_PREFIX": "นาย",
        "CTZNO_PERSON_CONTROL": "3609700318426",
        "PERSON_CONTROL_NAME": "สุพจน์",
        "PERSON_CONTROL_SURNAME": "วิทยานุกูลลักษณ์",
        "PERSON_CONTROL_LICENSE": "ภ.17617",
        "NEWCODE": "U1Dขตวจ3106800015C"
      }
    ],
    "LOCATION_PRODUCT_OCCUPY": []
  }
]
```