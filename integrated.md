### เชื่อมโยงใบอนุญาต ยา อาหาร สมุนไพร เครื่องสำอาง กัญชา กัญชง

<style scoped>
table {
  font-size: 13px;
}
/* li {
  font-size: 13px;
} */
</style>

<img src="int_2.png" style="border: 1px solid black;" width="100%">


| ลำดับ | ใบอนุญาต | Endpoint | กองยา<br>(ยส.3 วจ.3/4) | ยส.1-1 | วจ.1-1 | ผนส ยส.2/วจ.2 | ยส.5 | กาเฟอีน<br>รร.1 | แต่ละครั้ง กัญชา<br>(NAR.5) | แต่ละครั้ง กัญชง<br>(NAR.5 (HEMP)) |
| :---: | :---: | --- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | ใบอนุญาตยา <br> (ผย.1 นย.1 ขย.1 ขย.4) | | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | | |
| 2 | ใบอนุญาตอาหาร | | | | ✅ | | | ✅ | | |
| 3 | ใบอนุญาตเครื่องสำอาง | | | | ✅ | | | | | |
| 4 | ใบอนุญาตสมุนไพร | | | | ✅ | | | | | |
| 5 | ใบอนุญาตกัญชา (Mrjn) | /FdaNctAPI/GetList_Mrjn <br> /FdaNctAPI/GetData_Mrjn | | | | | | | ✅ | |
| 6 | ใบอนุญาตกัญชง (Hemp) | /FdaNctAPI/GetList_Hemp <br> /FdaNctAPI/GetData_Hemp | | | | | | | | ✅ |

---

#### วจ.1-1 (ใบอนุญาตอาหาร ใบอนุญาตเครื่องสำอาง ใบอนุญาตสมุนไพร)
<img src="int_1.png" style="border: 1px solid black;" width="80%"> 

#### รร.1 กาเฟอีน (ใบอนุญาตอาหาร ใบอนุญาตยา)
<img src="int_8.png" style="border: 1px solid black;" width="80%">

ใบอนุญาตนำเข้าหรือสั่งอาหาร (ใบอนุญาตอาหาร)
- การดึงข้อมูลเลขที่ใบอนุญาตอาหาร
- การดึงข้อมูล เลขสารบบอาหาร หรือเลขเสมือน (ทราบได้อย่างไรว่า เลขไหนมีกาเฟอีน)

ใบอนุญาตนำเข้ายา (นย.1)
- การดึงข้อมูลเลขที่ใบอนุญาตนำเข้ายา (นย.1) <span style="color: green;">(ดึงได้แล้ว)</span>
- การดึงข้อมูล เลขจดแจ้งเภสัชเคมีภัณฑ์ (ทราบอย่างไรว่า เลขไหนมีกาเฟอีน)

<!-- - ถ้า Provide เลขจดแจ้งเภสัชเคมีภัณฑ์ มาทั้งหมด จะกรองเลขจดแจ้งที่มีกาเฟอีน อย่างไร หรือ Provide เฉพาะที่มีกาเฟอีน -->

---

#### ยส.1-1 (ใบอนุญาตยา <span style="color: green;">ได้รับแล้ว</span>)
<img src="int_3.png" style="border: 1px solid black;" width="80%"> 

#### ยส.5 (ใบอนุญาตยา <span style="color: green;">ได้รับแล้ว</span>)
<img src="int_4.png" style="border: 1px solid black;" width="80%"> 

#### ผนส ยส.2 (ใบอนุญาตยา <span style="color: green;">ได้รับแล้ว</span>)
<img src="int_5.png" style="border: 1px solid black;" width="80%"> 

#### นำเข้า ส่งออก ในแต่ละครั้ง กัญชา (NAR.5) (ใบอนุญาตกัญชา/กัญชง <span style="color: green;">ได้รับแล้ว</span>)
<img src="int_9.png" style="border: 1px solid black;" width="80%"> 

#### นำเข้า ส่งออก ในแต่ละครั้ง กัญชง (NAR.5 (HEMP)) (ใบอนุญาตกัญชา/กัญชง <span style="color: green;">ได้รับแล้ว</span>)
<img src="int_6.png" style="border: 1px solid black;" width="80%"> 

