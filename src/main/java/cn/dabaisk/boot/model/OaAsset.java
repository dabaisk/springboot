package cn.dabaisk.boot.model;

import java.math.BigDecimal;
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
public class OaAsset extends Model<OaAsset> {

    private static final long serialVersionUID = 1L;

    /**
     * 固定资产表
     */
    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    @TableField("No")
    private String No;

    @TableField("Type")
    private String Type;

    @TableField("ComId")
    private Integer ComId;

    @TableField("DeptId")
    private Integer DeptId;

    @TableField("Emp")
    private String Emp;

    @TableField("Unit")
    private String Unit;

    @TableField("Quantity")
    private Integer Quantity;

    @TableField("Price")
    private BigDecimal Price;

    @TableField("Cost")
    private BigDecimal Cost;

    @TableField("Status")
    private Integer Status;

    @TableField("BuyDate")
    private LocalDateTime BuyDate;

    @TableField("PicPath")
    private String PicPath;

    @TableField("SPicPath")
    private String SPicPath;

    @TableField("AddDate")
    private LocalDateTime AddDate;

    @TableField("AddEmp")
    private String AddEmp;

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

    public String getNo() {
        return No;
    }

    public void setNo(String No) {
        this.No = No;
    }

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
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

    public String getEmp() {
        return Emp;
    }

    public void setEmp(String Emp) {
        this.Emp = Emp;
    }

    public String getUnit() {
        return Unit;
    }

    public void setUnit(String Unit) {
        this.Unit = Unit;
    }

    public Integer getQuantity() {
        return Quantity;
    }

    public void setQuantity(Integer Quantity) {
        this.Quantity = Quantity;
    }

    public BigDecimal getPrice() {
        return Price;
    }

    public void setPrice(BigDecimal Price) {
        this.Price = Price;
    }

    public BigDecimal getCost() {
        return Cost;
    }

    public void setCost(BigDecimal Cost) {
        this.Cost = Cost;
    }

    public Integer getStatus() {
        return Status;
    }

    public void setStatus(Integer Status) {
        this.Status = Status;
    }

    public LocalDateTime getBuyDate() {
        return BuyDate;
    }

    public void setBuyDate(LocalDateTime BuyDate) {
        this.BuyDate = BuyDate;
    }

    public String getPicPath() {
        return PicPath;
    }

    public void setPicPath(String PicPath) {
        this.PicPath = PicPath;
    }

    public String getSPicPath() {
        return SPicPath;
    }

    public void setSPicPath(String SPicPath) {
        this.SPicPath = SPicPath;
    }

    public LocalDateTime getAddDate() {
        return AddDate;
    }

    public void setAddDate(LocalDateTime AddDate) {
        this.AddDate = AddDate;
    }

    public String getAddEmp() {
        return AddEmp;
    }

    public void setAddEmp(String AddEmp) {
        this.AddEmp = AddEmp;
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
        return "OaAsset{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", No=" + No +
        ", Type=" + Type +
        ", ComId=" + ComId +
        ", DeptId=" + DeptId +
        ", Emp=" + Emp +
        ", Unit=" + Unit +
        ", Quantity=" + Quantity +
        ", Price=" + Price +
        ", Cost=" + Cost +
        ", Status=" + Status +
        ", BuyDate=" + BuyDate +
        ", PicPath=" + PicPath +
        ", SPicPath=" + SPicPath +
        ", AddDate=" + AddDate +
        ", AddEmp=" + AddEmp +
        ", Descn=" + Descn +
        "}";
    }
}
