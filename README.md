# ZAHYA KSA FLAG | علم المملكة السعودية

<img src="https://i.ibb.co/dJkDmdd3/ksapolice.png" alt="KSA Flag" width="400">
<img src="https://i.ibb.co/Df5w36YN/679.png" alt="Script Preview" width="400">

## 📝 Description | الوصف

A FiveM script that allows players to use the Saudi Arabia flag as a prop in-game. Players can carry and display the KSA flag with realistic animations and physics.

سكريبت فايف إم يسمح للاعبين باستخدام علم المملكة العربية السعودية كدعامة داخل اللعبة. يمكن للاعبين حمل وعرض علم المملكة مع الرسوم المتحركة والفيزياء الواقعية.

## ✨ Features | المميزات

- 🇸🇦 **Saudi Arabia Flag Prop** - Realistic flag with proper physics
- 🎭 **Custom Animation** - Special carrying animation for the flag
- 📦 **ESX Integration** - Works with ESX framework
- 🎮 **Easy to Use** - Simple item usage system
- 🔄 **Toggle System** - Can be equipped/unequipped easily
- 🏗️ **Optimized** - Lightweight and performance-friendly

- 🇸🇦 **دعامة علم المملكة العربية السعودية** - علم واقعي مع فيزياء مناسبة
- 🎭 **رسوم متحركة مخصصة** - حركة خاصة لحمل العلم
- 📦 **تكامل مع ESX** - يعمل مع إطار عمل ESX
- 🎮 **سهل الاستخدام** - نظام استخدام عناصر بسيط
- 🔄 **نظام التبديل** - يمكن ارتداؤه وإزالته بسهولة
- 🏗️ **محسن** - خفيف الوزن وصديق للأداء

## 📋 Requirements | المتطلبات

- **ESX Framework** - Latest version
- **oxmysql** - Database resource
- **rpemotes** - For animation support (optional)

- **إطار عمل ESX** - أحدث إصدار
- **oxmysql** - مورد قاعدة البيانات
- **rpemotes** - لدعم الرسوم المتحركة (اختياري)

## 🚀 Installation | التثبيت

### Step 1: Download | الخطوة 1: التحميل
1. Download the script from the repository
2. Extract the files to your `resources` folder
3. Rename the folder to `zahya_ksaFlag`

1. حمل السكريبت من المستودع
2. استخرج الملفات إلى مجلد `resources`
3. أعد تسمية المجلد إلى `zahya_ksaFlag`

### Step 2: Database Setup | الخطوة 2: إعداد قاعدة البيانات
1. Import the `item.sql` file into your database
2. Or run the SQL commands manually:

1. استورد ملف `item.sql` إلى قاعدة البيانات
2. أو قم بتشغيل أوامر SQL يدوياً:

```sql
INSERT INTO items (name, label, weight, rare, can_remove) VALUES ('ksa_flag', 'علم المملكة السعودية', 1, 0, 1) ON DUPLICATE KEY UPDATE label = 'علم المملكة السعودية';
INSERT INTO items (name, label, weight, rare, can_remove) VALUES ('ksa_flag_box', 'صندوق علم المملكة السعودية', 10, 0, 1) ON DUPLICATE KEY UPDATE label = 'صندوق علم المملكة السعودية';
```

### Step 3: Server Configuration | الخطوة 3: إعداد الخادم
1. Add the resource to your `server.cfg`:
2. Start the resource:

1. أضف المورد إلى `server.cfg`:
2. ابدأ المورد:

```cfg
ensure zahya_ksaFlag
```

### Step 4: Permissions | الخطوة 4: الأذونات
Make sure your server has the required dependencies:
- `es_extended`
- `oxmysql`

تأكد من أن خادمك يحتوي على التبعيات المطلوبة:
- `es_extended`
- `oxmysql`

## 🎮 Usage | الاستخدام

### For Players | للاعبين

1. **Get the Flag Item** | **احصل على عنصر العلم**
   - Use admin commands to give yourself the item
   - Or add it through your inventory system
   
   - استخدم أوامر الإدارة لإعطاء نفسك العنصر
   - أو أضفه من خلال نظام المخزون

2. **Use the Flag** | **استخدم العلم**
   - Use the `ksa_flag` item from your inventory
   - The flag will be equipped on your character
   - Use the item again to unequip the flag
   
   - استخدم عنصر `ksa_flag` من مخزونك
   - سيتم ارتداء العلم على شخصيتك
   - استخدم العنصر مرة أخرى لإزالة العلم

### For Administrators | للإداريين

**Give Flag to Player:**
```lua
/giveitem [player_id] ksa_flag 1
```

**Give Flag Box to Player:**
```lua
/giveitem [player_id] ksa_flag_box 1
```

**إعطاء العلم للاعب:**
```lua
/giveitem [player_id] ksa_flag 1
```

**إعطاء صندوق العلم للاعب:**
```lua
/giveitem [player_id] ksa_flag_box 1
```

## ⚙️ Configuration | التكوين

You can modify the flag configuration in `client.lua`:

يمكنك تعديل تكوين العلم في `client.lua`:

```lua
local flagConfig = {
    lib = 'rcmnigel1d',           -- Animation library
    anim = 'base_club_shoulder',  -- Animation name
    Prop = 'prideflag2',          -- Prop model
    PropBone = 18905,             -- Bone attachment
    PropPlacement = {          -- Position and rotation
        0.0800, -0.2090, 0.0900,
        -82.6677, -141.2988, 12.3308
    },
    onFootFlag = 51,              -- Animation flag
}
```

## 🐛 Troubleshooting | استكشاف الأخطاء وإصلاحها

### Common Issues | المشاكل الشائعة

1. **Flag not appearing** | **العلم لا يظهر**
   - Check if the prop model is loaded correctly
   - Verify the stream folder contains the required files
   
   - تحقق من تحميل نموذج الدعامة بشكل صحيح
   - تأكد من أن مجلد stream يحتوي على الملفات المطلوبة

2. **Animation not working** | **الرسوم المتحركة لا تعمل**
   - Ensure rpemotes is installed and running
   - Check if the animation library is available
   
   - تأكد من تثبيت وتشغيل rpemotes
   - تحقق من توفر مكتبة الرسوم المتحركة

3. **Database errors** | **أخطاء قاعدة البيانات**
   - Verify oxmysql is running
   - Check database connection
   - Ensure items table exists
   
   - تأكد من تشغيل oxmysql
   - تحقق من اتصال قاعدة البيانات
   - تأكد من وجود جدول items

## 📞 Support | الدعم

- **Author:** ZAHYA DEV | زاهية ديف
- **Version:** 1.0.0
- **Discord:** [Join ZAHYA DEV Discord](https://discord.gg/aFFMpFcKuZ)
- **GitHub:** [Repository Link](https://github.com/hamada65/zahya_ksaFlag)
- **Free for Community** | **مجاني للمجتمع**

## 📄 License | الترخيص

This script is free for the community. Feel free to use, modify, and distribute.

هذا السكريبت مجاني للمجتمع. لا تتردد في استخدامه وتعديله وتوزيعه.

## 🙏 Credits | الشكر

- **ZAHYA DEV** - Script Development
- **Community** - For support and feedback
- **FiveM** - For the amazing platform

- **زاهية ديف** - تطوير السكريبت
- **المجتمع** - للدعم والملاحظات
- **فايف إم** - للمنصة الرائعة

---

**Made with ❤️ by ZAHYA DEV | زاهية ديف**

**صُنع بـ ❤️ بواسطة زاهية ديف**
