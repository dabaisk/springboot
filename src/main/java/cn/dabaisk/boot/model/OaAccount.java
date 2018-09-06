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
public class OaAccount extends Model<OaAccount> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    @TableField("LoginName")
    private String LoginName;

    @TableField("Password")
    private String Password;

    @TableField("Url")
    private String Url;

    @TableField("TypeName")
    private String TypeName;

    @TableField("ComId")
    private Integer ComId;

    @TableField("DeptId")
    private Integer DeptId;

    @TableField("Descn")
    private String Descn;

    @TableField("EmpId")
    private Integer EmpId;

    @TableField("AddDate")
    private LocalDateTime AddDate;


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

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String Url) {
        this.Url = Url;
    }

    public String getTypeName() {
        return TypeName;
    }

    public void setTypeName(String TypeName) {
        this.TypeName = TypeName;
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

    public String getDescn() {
        return Descn;
    }

    public void setDescn(String Descn) {
        this.Descn = Descn;
    }

    public Integer getEmpId() {
        return EmpId;
    }

    public void setEmpId(Integer EmpId) {
        this.EmpId = EmpId;
    }

    public LocalDateTime getAddDate() {
        return AddDate;
    }

    public void setAddDate(LocalDateTime AddDate) {
        this.AddDate = AddDate;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "OaAccount{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", LoginName=" + LoginName +
        ", Password=" + Password +
        ", Url=" + Url +
        ", TypeName=" + TypeName +
        ", ComId=" + ComId +
        ", DeptId=" + DeptId +
        ", Descn=" + Descn +
        ", EmpId=" + EmpId +
        ", AddDate=" + AddDate +
        "}";
    }
}
