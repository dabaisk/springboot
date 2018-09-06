package cn.dabaisk.boot.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
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
public class OaCompany extends Model<OaCompany> {

    private static final long serialVersionUID = 1L;

    /**
     * 系统使用公司
     */
    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    /**
     * 简称
     */
    @TableField("SName")
    private String SName;

    @TableField("EName")
    private String EName;

    @TableField("OrderId")
    private Integer OrderId;

    /**
     * 父公司
     */
    @TableField("ParentId")
    private Integer ParentId;

    @TableField("TypeId")
    private Integer TypeId;

    @TableField("Address")
    private String Address;

    /**
     * 联系人
     */
    @TableField("Contacts")
    private String Contacts;

    @TableField("OfficePhone")
    private String OfficePhone;

    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 数据状态
     */
    @TableField("Status")
    private Integer Status;

    @TableField("Email")
    private String Email;

    @TableField("Zip")
    private String Zip;

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

    public String getSName() {
        return SName;
    }

    public void setSName(String SName) {
        this.SName = SName;
    }

    public String getEName() {
        return EName;
    }

    public void setEName(String EName) {
        this.EName = EName;
    }

    public Integer getOrderId() {
        return OrderId;
    }

    public void setOrderId(Integer OrderId) {
        this.OrderId = OrderId;
    }

    public Integer getParentId() {
        return ParentId;
    }

    public void setParentId(Integer ParentId) {
        this.ParentId = ParentId;
    }

    public Integer getTypeId() {
        return TypeId;
    }

    public void setTypeId(Integer TypeId) {
        this.TypeId = TypeId;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getContacts() {
        return Contacts;
    }

    public void setContacts(String Contacts) {
        this.Contacts = Contacts;
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

    public Integer getStatus() {
        return Status;
    }

    public void setStatus(Integer Status) {
        this.Status = Status;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getZip() {
        return Zip;
    }

    public void setZip(String Zip) {
        this.Zip = Zip;
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
        return "OaCompany{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", SName=" + SName +
        ", EName=" + EName +
        ", OrderId=" + OrderId +
        ", ParentId=" + ParentId +
        ", TypeId=" + TypeId +
        ", Address=" + Address +
        ", Contacts=" + Contacts +
        ", OfficePhone=" + OfficePhone +
        ", MobilePhone=" + MobilePhone +
        ", Status=" + Status +
        ", Email=" + Email +
        ", Zip=" + Zip +
        ", Descn=" + Descn +
        "}";
    }
}
