# JobRecruitmentDemo(招商网站)
## 1.引入EntityFrameworkCore 的相关nuget包
![引入nuget包](https://github.com/RanGuMo/JobRecruitmentDemo/blob/master/JobRecruitmentDemo/Images/1657807948311.jpg)

## 2.DBFirst 生成Entities
```bash
Scaffold-DbContext "Data Source=127.0.0.1;database=JobRecruitment;uid=sa;pwd=123456" "Microsoft.EntityFrameworkCore.SqlServer" -OutputDir Entities
```
![生成Entities](https://github.com/RanGuMo/JobRecruitmentDemo/blob/master/JobRecruitmentDemo/Images/1657807902444.jpg)
