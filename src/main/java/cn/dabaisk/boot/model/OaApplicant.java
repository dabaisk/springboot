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
public class OaApplicant extends Model<OaApplicant> {

    private static final long serialVersionUID = 1L;

    /**
     * 应聘者Id
     */
    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    /**
     * 应聘职位
     */
    @TableField("ApJob")
    private String ApJob;

    @TableField("ComId")
    private Integer ComId;

    @TableField("DeptId")
    private Integer DeptId;

    @TableField("Sex")
    private Integer Sex;

    @TableField("Birthdate")
    private LocalDateTime Birthdate;

    /**
     * 婚否
     */
    @TableField("Married")
    private Integer Married;

    @TableField("Phone")
    private String Phone;

    @TableField("Email")
    private String Email;

    private String qq;

    /**
     * 状态，(可以试用=1，不予考虑=0，录用=2)
     */
    @TableField("Status")
    private Integer Status;

    @TableField("Address")
    private String Address;

    @TableField("HomeAddress")
    private String HomeAddress;

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

    /**
     * 最后面试日期
     */
    @TableField("ApDate")
    private LocalDateTime ApDate;

    /**
     * 面试者
     */
    @TableField("ApEmp")
    private String ApEmp;

    @TableField("Descn")
    private String Descn;


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

    public String getApJob() {
        return ApJob;
    }

    public void setApJob(String ApJob) {
        this.ApJob = ApJob;
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

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
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

    public String getHomeAddress() {
        return HomeAddress;
    }

    public void setHomeAddress(String HomeAddress) {
        this.HomeAddress = HomeAddress;
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

    public LocalDateTime getApDate() {
        return ApDate;
    }

    public void setApDate(LocalDateTime ApDate) {
        this.ApDate = ApDate;
    }

    public String getApEmp() {
        return ApEmp;
    }

    public void setApEmp(String ApEmp) {
        this.ApEmp = ApEmp;
    }

    public String getDescn() {
        return Descn;
    }

    public void setDescn(String Descn) {
        this.Descn = Descn;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "OaApplicant{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", ApJob=" + ApJob +
        ", ComId=" + ComId +
        ", DeptId=" + DeptId +
        ", Sex=" + Sex +
        ", Birthdate=" + Birthdate +
        ", Married=" + Married +
        ", Phone=" + Phone +
        ", Email=" + Email +
        ", qq=" + qq +
        ", Status=" + Status +
        ", Address=" + Address +
        ", HomeAddress=" + HomeAddress +
        ", Nation=" + Nation +
        ", Homeland=" + Homeland +
        ", Politics=" + Politics +
        ", Degree=" + Degree +
        ", ApDate=" + ApDate +
        ", ApEmp=" + ApEmp +
        ", Descn=" + Descn +
        "}";
    }
}
