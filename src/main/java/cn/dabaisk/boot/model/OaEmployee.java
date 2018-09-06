package cn.dabaisk.boot.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Bean
 * @since 2018-09-06
 */
public class OaEmployee extends Model<OaEmployee> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    /**
     * 登录系统名称
     */
    @TableField("LoginName")
    private String LoginName;

    @TableField("No")
    private String No;

    @TableField("Pinyin")
    private String Pinyin;

    @TableField("Sex")
    private Integer Sex;

    @TableField("Birthdate")
    private LocalDateTime Birthdate;

    /**
     * 婚否
     */
    @TableField("Married")
    private Integer Married;

    @TableField("ComId")
    private Integer ComId;

    @TableField("DeptId")
    private Integer DeptId;

    /**
     * 职位
     */
    @TableField("Job")
    private String Job;

    @TableField("IdCard")
    private String IdCard;

    /**
     * 状态，(试用，在职，辞职，离职)
     */
    @TableField("Status")
    private Integer Status;

    @TableField("Address")
    private String Address;

    /**
     * 民族
     */
    @TableField("Nation")
    private String Nation;

    /**
     * 籍贯
     */
    @TableField("Homeland")
    private String Homeland;

    /**
     * 政治面貌
     */
    @TableField("Politics")
    private String Politics;

    /**
     * 最高学历
     */
    @TableField("Degree")
    private String Degree;

    @TableField("Email")
    private String Email;

    @TableField("OfficePhone")
    private String OfficePhone;

    @TableField("MobilePhone")
    private String MobilePhone;

    @TableField("FamilyPhone")
    private String FamilyPhone;

    @TableField("WeiXin")
    private String WeiXin;

    private String qq;

    @TableField("Zip")
    private String Zip;

    @TableField("IntoDate")
    private LocalDateTime IntoDate;

    @TableField("EnterDate")
    private LocalDateTime EnterDate;

    @TableField("AddDate")
    private LocalDateTime AddDate;

    @TableField("AddUser")
    private String AddUser;

    /**
     * 附件
     */
    @TableField("AttFile")
    private String AttFile;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getLoginName() {
        return LoginName;
    }

    public void setLoginName(String LoginName) {
        this.LoginName = LoginName;
    }

    public String getNo() {
        return No;
    }

    public void setNo(String No) {
        this.No = No;
    }

    public String getPinyin() {
        return Pinyin;
    }

    public void setPinyin(String Pinyin) {
        this.Pinyin = Pinyin;
    }

    public Integer getSex() {
        return Sex;
    }

    public void setSex(Integer Sex) {
        this.Sex = Sex;
    }

    public LocalDateTime getBirthdate() {
        return Birthdate;
    }

    public void setBirthdate(LocalDateTime Birthdate) {
        this.Birthdate = Birthdate;
    }

    public Integer getMarried() {
        return Married;
    }

    public void setMarried(Integer Married) {
        this.Married = Married;
    }

    public Integer getComId() {
        return ComId;
    }

    public void setComId(Integer ComId) {
        this.ComId = ComId;
    }

    public Integer getDeptId() {
        return DeptId;
    }

    public void setDeptId(Integer DeptId) {
        this.DeptId = DeptId;
    }

    public String getJob() {
        return Job;
    }

    public void setJob(String Job) {
        this.Job = Job;
    }

    public String getIdCard() {
        return IdCard;
    }

    public void setIdCard(String IdCard) {
        this.IdCard = IdCard;
    }

    public Integer getStatus() {
        return Status;
    }

    public void setStatus(Integer Status) {
        this.Status = Status;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getNation() {
        return Nation;
    }

    public void setNation(String Nation) {
        this.Nation = Nation;
    }

    public String getHomeland() {
        return Homeland;
    }

    public void setHomeland(String Homeland) {
        this.Homeland = Homeland;
    }

    public String getPolitics() {
        return Politics;
    }

    public void setPolitics(String Politics) {
        this.Politics = Politics;
    }

    public String getDegree() {
        return Degree;
    }

    public void setDegree(String Degree) {
        this.Degree = Degree;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getOfficePhone() {
        return OfficePhone;
    }

    public void setOfficePhone(String OfficePhone) {
        this.OfficePhone = OfficePhone;
    }

    public String getMobilePhone() {
        return MobilePhone;
    }

    public void setMobilePhone(String MobilePhone) {
        this.MobilePhone = MobilePhone;
    }

    public String getFamilyPhone() {
        return FamilyPhone;
    }

    public void setFamilyPhone(String FamilyPhone) {
        this.FamilyPhone = FamilyPhone;
    }

    public String getWeiXin() {
        return WeiXin;
    }

    public void setWeiXin(String WeiXin) {
        this.WeiXin = WeiXin;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getZip() {
        return Zip;
    }

    public void setZip(String Zip) {
        this.Zip = Zip;
    }

    public LocalDateTime getIntoDate() {
        return IntoDate;
    }

    public void setIntoDate(LocalDateTime IntoDate) {
        this.IntoDate = IntoDate;
    }

    public LocalDateTime getEnterDate() {
        return EnterDate;
    }

    public void setEnterDate(LocalDateTime EnterDate) {
        this.EnterDate = EnterDate;
    }

    public LocalDateTime getAddDate() {
        return AddDate;
    }

    public void setAddDate(LocalDateTime AddDate) {
        this.AddDate = AddDate;
    }

    public String getAddUser() {
        return AddUser;
    }

    public void setAddUser(String AddUser) {
        this.AddUser = AddUser;
    }

    public String getAttFile() {
        return AttFile;
    }

    public void setAttFile(String AttFile) {
        this.AttFile = AttFile;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "OaEmployee{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", LoginName=" + LoginName +
        ", No=" + No +
        ", Pinyin=" + Pinyin +
        ", Sex=" + Sex +
        ", Birthdate=" + Birthdate +
        ", Married=" + Married +
        ", ComId=" + ComId +
        ", DeptId=" + DeptId +
        ", Job=" + Job +
        ", IdCard=" + IdCard +
        ", Status=" + Status +
        ", Address=" + Address +
        ", Nation=" + Nation +
        ", Homeland=" + Homeland +
        ", Politics=" + Politics +
        ", Degree=" + Degree +
        ", Email=" + Email +
        ", OfficePhone=" + OfficePhone +
        ", MobilePhone=" + MobilePhone +
        ", FamilyPhone=" + FamilyPhone +
        ", WeiXin=" + WeiXin +
        ", qq=" + qq +
        ", Zip=" + Zip +
        ", IntoDate=" + IntoDate +
        ", EnterDate=" + EnterDate +
        ", AddDate=" + AddDate +
        ", AddUser=" + AddUser +
        ", AttFile=" + AttFile +
        "}";
    }
}
