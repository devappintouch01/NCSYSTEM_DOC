```
ConnectionStrings:
"NCDBContext": "Data Source=dev.softsuite.co.th; Initial Catalog=NCDB; User Id=ncadmin; Password=!nc@dmin2025!; TrustServerCertificate=True;"

Problem
1. จากไฟล์ D:\GIT\NCSystem\brain_NCSYSTEM\Documents\ICOC\DRUGLIST\MasterNarcoticDrugForTraveler_NEW_rev1.2.xlsx
ต้องการให้เอาข้อมูลไปใส่ในตาราง MasterNarcoticDrugForTraveler ใน Database NCDB
โดยให้ลำดับในชีทคงเดิม แต่ในฐานข้อมูล เริ่มต้นที่ 182 ส่วน Column อื่นให้เอาข้อมูลจากชีทมาใส่ คงเดิมไว้ทุก column
2. ในฐานข้อมูลมี 181 รายการ ใน excel มี 419 รายการ หลังใส่ไป ข้อมูลจะมีรวมทั้งสิ้น 419 + 181 = 600 รายการ ให้ validate จำนวนด้วย
3. ให้เช็คก่อนว่า column Id เป็น autoincrement ไหม

ให้ เช็คข้อมูลให้หน่อยว่า อันไหนที่ซ้ำกันบ้าง ถ้าเจอซ้ำ ให้ set is_active = 0 ไว้
ให้ is_active = 0 ตัวที่ id range 1-181 ถ้าเจอซ้ำจากชีทใหม่ 
```
