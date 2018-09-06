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
public class OaEmployeeinfo extends Model<OaEmployeeinfo> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "EmpId", type = IdType.AUTO)
    private Integer EmpId;

    @TableField("School")
    private String School;

    @TableField("GradDate")
    private LocalDateTime GradDate;

    @TableField("Major")
    private String Major;

    @TableField("ForeignLang")
    private String ForeignLang;

    @TableField("FamilyAddress")
    private String FamilyAddress;

    @TableField("Education")
    private String Education;

    @TableField("JobHistory")
    private String JobHistory;

    @TableField("PicPath")
    private String PicPath;

    @TableField("SPicPath")
    private String SPicPath;

    @TableField("AttachFile")
    private String AttachFile;


    public Integer getEmpId() {
        return EmpId;
    }

    public void setEmpId(Integer EmpId) {
        this.EmpId = EmpId;
    }

    public String getSchool() {
        return School;
    }

    public void setSchool(String School) {
        this.School = School;
    }

    public LocalDateTime getGradDate() {
        return GradDate;
    }

    public void setGradDate(LocalDateTime GradDate) {
        this.GradDate = GradDate;
    }

    public String getMajor() {
        return Major;
    }

    public void setMajor(String Major) {
        this.Major = Major;
    }

    public String getForeignLang() {
        return ForeignLang;
    }

    public void setForeignLang(String ForeignLang) {
        this.ForeignLang = ForeignLang;
    }

    public String getFamilyAddress() {
        return FamilyAddress;
    }

    public void setFamilyAddress(String FamilyAddress) {
        this.FamilyAddress = FamilyAddress;
    }

    public String getEducation() {
        return Education;
    }

    public void setEducation(String Education) {
        this.Education = Education;
    }

    public String getJobHistory() {
        return JobHistory;
    }

    public void setJobHistory(String JobHistory) {
        this.JobHistory = JobHistory;
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

    public String getAttachFile() {
        return AttachFile;
    }

    public void setAttachFile(String AttachFile) {
        this.AttachFile = AttachFile;
    }

    @Override
    protected Serializable pkVal() {
        return this.EmpId;
    }

    @Override
    public String toString() {
        return "OaEmployeeinfo{" +
        "EmpId=" + EmpId +
        ", School=" + School +
        ", GradDate=" + GradDate +
        ", Major=" + Major +
        ", ForeignLang=" + ForeignLang +
        ", FamilyAddress=" + FamilyAddress +
        ", Education=" + Education +
        ", JobHistory=" + JobHistory +
        ", PicPath=" + PicPath +
        ", SPicPath=" + SPicPath +
        ", AttachFile=" + AttachFile +
        "}";
    }
}
