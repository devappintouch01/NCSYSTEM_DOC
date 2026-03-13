## คำขอรับใบอนุญาต คำขอต่อออายุใบอนุญาต และคำขอรับใบแทนใบอนุญาต**ผลิต ผลิตเพื่อส่งออก นำเข้า หรือส่งออก**ยาเสพติดให้โทษในประเภท 2 หรือวัตถุออกฤทธิ์ในประเภท 2 [ผนส. ยส.2/วจ.2]
---

## (dbo.MasterRequisitionType Id = 3)
### Links

- [Figma Group Doc](https://www.figma.com/design/0YEqdcSpC2hZKulzEl54LH/-FDA68--Group-Doc)
- [Data Dic - Master Data real](https://docs.google.com/spreadsheets/d/1WpRC41tmqyOc8zVaxTVuwLxGgmi7inZATo8_LcCTXgE)

- [Figma ผนส. ยส.2/วจ.2](https://www.figma.com/board/z40hQv1fTsb9ll44MkkUnx/%E0%B8%9C%E0%B8%99%E0%B8%AA.-%E0%B8%A2%E0%B8%AA2---%E0%B8%A7%E0%B8%882)

### [เงื่อนไข ผนส. ยส.2/วจ.2]
## ผู้ขออนุญาต

| ผู้ขออนุญาต | Remark |
|---|---|
| ผู้ขอรับอนุญาตเป็นหน่วยงานรัฐหรือสภากาชาดไทย | เอามาจากเอกสารแนบ |

## วัตถุประสงค์ในการขออนุญาต + การดำเนินการ

![Narcotic2_Condition_1](/Narcotic2_Condition_1.png)
<img src="Narcotic2_Condition_2.png" style="border: 1px solid black;" width="100%">

| วัตถุประสงค์ (Objective)/การดำเนินการ(Operation) | 1. ผลิต (Manufacture) | 2. ผลิตเพื่อส่งออก (Manufacture for Export) | 3. นำเข้า (Import) | 4. ส่งออก (Export) |
|---|---|---|---|---|
| 1. การบริหารยาเสพติดให้โทษในประเภท 2 <br> หรือ วัตถุออกฤทธิ์ในประเภท 2 ที่ใช้ในทางการแพทย์ของประเทศ | ✅ | ✅ | ✅ | ✅ |
| 2. การวิเคราะห์ทางการแพทย์หรือวิทยาศาสตร์ | ✅ | ✅ | ✅ | ✅ |
| 3. การศึกษาหรือวิจัยทางการแพทย์หรือวิทยาศาสตร์ | ✅ | ✅ | ✅ | ✅ |
| 4. การป้องกันและปราบปามการกระทำความผิดเกี่ยวกับยาเสพติด | ✅ | ✅ | ✅ | ✅ |
| 5. การผลิตเพื่อส่งออก | ✅ | ✅ | ✅ | ✅ |

## ใบอนุญาต + วัตถุประสงค์ในการขออนุญาต, การดำเนินการ for section 1.2 and 1.3

<img src="Narcotic2_Condition_3.png" style="border: 1px solid black;" width="100%">

| วัตถุประสงค์, การดำเนินการ/ใบอนุญาต | ผย.1 | นย.1 | ผลิต <br> ผยส.2 / ผวจ.2 | ผลิตเพื่อส่งออก <br> ผส.ยส.2-2 / ผส.วจ. 2-2 | นยส.2-2 / นวจ.2-2 |
|---|---|---|---|---|---|
| (วัตถุประสงค์ Objective) 1.2 การบริหารยาเสพติดให้โทษในประเภท 2 <br> หรือ วัตถุออกฤทธิ์ในประเภท 2 ที่ใช้ในทางการแพทย์ของประเทศ | ✅ | ✅ |  |  |  |
| (วัตถุประสงค์ Objective) 1.2 การผลิตเพื่อส่งออก | ✅ | ✅ |  |  |  |
| (การดำเนินการ Operation) 1.3 ขอส่งออก |  |  | ✅ | ✅ | ✅ |

| วัตถุประสงค์, การดำเนินการ/ใบอนุญาต | Operation, Objective |
|---|---|
| (วัตถุประสงค์ Objective) 1.2 การบริหารยาเสพติดให้โทษในประเภท 2 <br> หรือ วัตถุออกฤทธิ์ในประเภท 2 ที่ใช้ในทางการแพทย์ของประเทศ | - Show on Operation **1. 2. 3.** (1. ผลิต, 2. ผลิตเพื่อส่งออก, 3. นำเข้า) <br> - Show only **1. 5.** Objective |
| (วัตถุประสงค์ Objective) 1.2 การผลิตเพื่อส่งออก | - Show on Operation **1. 2. 3.** (1. ผลิต, 2. ผลิตเพื่อส่งออก, 3. นำเข้า) <br> - Show only Objective **1. 5.** |
| (การดำเนินการ Operation) 1.3 ขอส่งออก | - Show only Operation **4. ส่งออก (Export)** <br> - Show on **every** Objective |

*update 13-03-2026*
*1.2 แสดงที่ทุก Operation ไม่ได้ เพราะจะเลือกส่งออก จะขึ้นมาด้วย*

## วัตถุประสงค์ + เงื่อนไขสาร
**for section 2.1 ข้อมูลยาเสพติดให้โทษในประเภท 2 ที่ขอรับอนุญาต**

| วัตถุประสงค์ (Objective) / <br> สาร | ประเภทสาร (NarcoticTypeId) | เงื่อนไขสาร <br> ([dbo].[MasterNarcoticEster]) | เงื่อนไขหน่วย (MasterNarcoticUnit) |
|---|---|---|---|
| **ทุกวัตถุประสงค์**  | 2 | ยส.2 | IsNCUnit |

**ยาเสพติดให้โทษในประเภท 2 ทุกชนิด**

<img src="Narcotic2_Condition_5.png" style="border: 1px solid black;" width="75%">

| วัตถุประสงค์ (Objective) / <br> สาร | ประเภทสาร (NarcoticTypeId) | เงื่อนไขสาร <br> ([dbo].[MasterNarcoticEster]) | เงื่อนไขหน่วย (MasterNarcoticUnit) |
|---|---|---|---|
| x. [วัตถุประสงค์ xxxx] | 2 | ยาเสพติดให้โทษในประเภท 2 ทุกชนิด | IsNCUnit |
 
## for section 2.1.1

<img src="Narcotic2_Condition_6.jpg" style="border: 1px solid black;" width="75%">

| วัตถุประสงค์, การดำเนินการ | Operation, Objective |
|---|---|
| วัตถุประสงค์ (Objective) / การดำเนินการ (Operation) | - Show only Operation **2. ผลิตเพื่อส่งออก (Manufacture for Export)** <br> - Show only Objective **5. การผลิตเพื่อส่งออก** |

*update 13-03-2026*

## for section 2.4

<img src="Narcotic2_Condition_7.png" style="border: 1px solid black;" width="75%">

*สรุปเงื่อนไขอีกที but same as 1.2*

## Field Condition
## 1.2 and 1.3

<img src="Narcotic2_Condition_3.png" style="border: 1px solid black;" width="50%">
<!-- <img src="Narcotic2_Field_Condition_1.png" style="border: 1px solid black;" width="60%"> -->

| Lable | Condition | Remark |
|---|---|
| เป็นผู้รับอนุญาต... | Checkbox |  |
| ใบอนุญาตเลขที่ | Dropdown | LicenseNo. save to  ??? |

## 2.4 ข้อมูลเภสัชกร

For objective
*- 1. การบริหารยาเสพติดให้โทษในประเภท 2 หรือ วัตถุออกฤทธิ์ในประเภท 2 ที่ใช้ในทางการแพทย์ของประเทศ*
*- 5. การผลิตเพื่อส่งออก*

<img src="Narcotic2_Condition_4.png" style="border: 1px solid black;" width="75%">