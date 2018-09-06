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
public class CrmCust extends Model<CrmCust> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    /**
     * 简称
     */
    @TableField("SName")
    private String SName;

    @TableField("Pinyin")
    private String Pinyin;

    @TableField("EName")
    private String EName;

    @TableField("TypeId")
    private Integer TypeId;

    @TableField("ParentId")
    private Integer ParentId;

    /**
     * 联系人
     */
    @TableField("Contact")
    private String Contact;

    /**
     * 称呼
     */
    @TableField("Nickname")
    private String Nickname;

    @TableField("CateId")
    private Integer CateId;

    @TableField("Status")
    private Integer Status;

    @TableField("TradeId")
    private Integer TradeId;

    /**
     * 客户来源
     */
    @TableField("SourceId")
    private Integer SourceId;

    @TableField("AreaId")
    private Integer AreaId;

    @TableField("Address")
    private String Address;

    /**
     * 手机号码
     */
    @TableField("Phone")
    private String Phone;

    /**
     * 电话
     */
    @TableField("Tel")
    private String Tel;

    @TableField("Email")
    private String Email;

    @TableField("WeiXin")
    private String WeiXin;

    private String qq;

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

    public String getPinyin() {
        return Pinyin;
    }

    public void setPinyin(String Pinyin) {
        this.Pinyin = Pinyin;
    }

    public String getEName() {
        return EName;
    }

    public void setEName(String EName) {
        this.EName = EName;
    }

    public Integer getTypeId() {
        return TypeId;
    }

    public void setTypeId(Integer TypeId) {
        this.TypeId = TypeId;
    }

    public Integer getParentId() {
        return ParentId;
    }

    public void setParentId(Integer ParentId) {
        this.ParentId = ParentId;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    public String getNickname() {
        return Nickname;
    }

    public void setNickname(String Nickname) {
        this.Nickname = Nickname;
    }

    public Integer getCateId() {
        return CateId;
    }

    public void setCateId(Integer CateId) {
        this.CateId = CateId;
    }

    public Integer getStatus() {
        return Status;
    }

    public void setStatus(Integer Status) {
        this.Status = Status;
    }

    public Integer getTradeId() {
        return TradeId;
    }

    public void setTradeId(Integer TradeId) {
        this.TradeId = TradeId;
    }

    public Integer getSourceId() {
        return SourceId;
    }

    public void setSourceId(Integer SourceId) {
        this.SourceId = SourceId;
    }

    public Integer getAreaId() {
        return AreaId;
    }

    public void setAreaId(Integer AreaId) {
        this.AreaId = AreaId;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getTel() {
        return Tel;
    }

    public void setTel(String Tel) {
        this.Tel = Tel;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
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
        return "CrmCust{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", SName=" + SName +
        ", Pinyin=" + Pinyin +
        ", EName=" + EName +
        ", TypeId=" + TypeId +
        ", ParentId=" + ParentId +
        ", Contact=" + Contact +
        ", Nickname=" + Nickname +
        ", CateId=" + CateId +
        ", Status=" + Status +
        ", TradeId=" + TradeId +
        ", SourceId=" + SourceId +
        ", AreaId=" + AreaId +
        ", Address=" + Address +
        ", Phone=" + Phone +
        ", Tel=" + Tel +
        ", Email=" + Email +
        ", WeiXin=" + WeiXin +
        ", qq=" + qq +
        ", Descn=" + Descn +
        "}";
    }
}
