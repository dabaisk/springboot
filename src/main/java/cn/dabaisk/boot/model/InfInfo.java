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
public class InfInfo extends Model<InfInfo> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Title")
    private String Title;

    @TableField("SubTitle")
    private String SubTitle;

    @TableField("Summary")
    private String Summary;

    @TableField("ComId")
    private Integer ComId;

    @TableField("LinkUrl")
    private String LinkUrl;

    @TableField("ClickCount")
    private Integer ClickCount;

    @TableField("TypeId")
    private Integer TypeId;

    @TableField("PicPath")
    private String PicPath;

    @TableField("SPicPath")
    private String SPicPath;

    @TableField("IsTop")
    private Integer IsTop;

    @TableField("IsColor")
    private Integer IsColor;

    @TableField("Status")
    private Integer Status;

    @TableField("FilePath")
    private String FilePath;

    @TableField("AddEmp")
    private String AddEmp;

    @TableField("AddDate")
    private LocalDateTime AddDate;

    @TableField("Content")
    private String Content;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getSubTitle() {
        return SubTitle;
    }

    public void setSubTitle(String SubTitle) {
        this.SubTitle = SubTitle;
    }

    public String getSummary() {
        return Summary;
    }

    public void setSummary(String Summary) {
        this.Summary = Summary;
    }

    public Integer getComId() {
        return ComId;
    }

    public void setComId(Integer ComId) {
        this.ComId = ComId;
    }

    public String getLinkUrl() {
        return LinkUrl;
    }

    public void setLinkUrl(String LinkUrl) {
        this.LinkUrl = LinkUrl;
    }

    public Integer getClickCount() {
        return ClickCount;
    }

    public void setClickCount(Integer ClickCount) {
        this.ClickCount = ClickCount;
    }

    public Integer getTypeId() {
        return TypeId;
    }

    public void setTypeId(Integer TypeId) {
        this.TypeId = TypeId;
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

    public Integer getIsTop() {
        return IsTop;
    }

    public void setIsTop(Integer IsTop) {
        this.IsTop = IsTop;
    }

    public Integer getIsColor() {
        return IsColor;
    }

    public void setIsColor(Integer IsColor) {
        this.IsColor = IsColor;
    }

    public Integer getStatus() {
        return Status;
    }

    public void setStatus(Integer Status) {
        this.Status = Status;
    }

    public String getFilePath() {
        return FilePath;
    }

    public void setFilePath(String FilePath) {
        this.FilePath = FilePath;
    }

    public String getAddEmp() {
        return AddEmp;
    }

    public void setAddEmp(String AddEmp) {
        this.AddEmp = AddEmp;
    }

    public LocalDateTime getAddDate() {
        return AddDate;
    }

    public void setAddDate(LocalDateTime AddDate) {
        this.AddDate = AddDate;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "InfInfo{" +
        "Id=" + Id +
        ", Title=" + Title +
        ", SubTitle=" + SubTitle +
        ", Summary=" + Summary +
        ", ComId=" + ComId +
        ", LinkUrl=" + LinkUrl +
        ", ClickCount=" + ClickCount +
        ", TypeId=" + TypeId +
        ", PicPath=" + PicPath +
        ", SPicPath=" + SPicPath +
        ", IsTop=" + IsTop +
        ", IsColor=" + IsColor +
        ", Status=" + Status +
        ", FilePath=" + FilePath +
        ", AddEmp=" + AddEmp +
        ", AddDate=" + AddDate +
        ", Content=" + Content +
        "}";
    }
}
