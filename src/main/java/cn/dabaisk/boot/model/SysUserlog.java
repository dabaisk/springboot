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
public class SysUserlog extends Model<SysUserlog> {

    private static final long serialVersionUID = 1L;

    /**
     * 用户操作日志
     */
    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("EmpName")
    private String EmpName;

    @TableField("UserId")
    private Integer UserId;

    @TableField("ActId")
    private Integer ActId;

    @TableField("TableName")
    private String TableName;

    @TableField("PKId")
    private String PKId;

    /**
     * 操作时间
     */
    @TableField("ActTime")
    private LocalDateTime ActTime;

    @TableField("ComId")
    private Integer ComId;

    /**
     * 操作描述
     */
    @TableField("Descn")
    private String Descn;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public String getEmpName() {
        return EmpName;
    }

    public void setEmpName(String EmpName) {
        this.EmpName = EmpName;
    }

    public Integer getUserId() {
        return UserId;
    }

    public void setUserId(Integer UserId) {
        this.UserId = UserId;
    }

    public Integer getActId() {
        return ActId;
    }

    public void setActId(Integer ActId) {
        this.ActId = ActId;
    }

    public String getTableName() {
        return TableName;
    }

    public void setTableName(String TableName) {
        this.TableName = TableName;
    }

    public String getPKId() {
        return PKId;
    }

    public void setPKId(String PKId) {
        this.PKId = PKId;
    }

    public LocalDateTime getActTime() {
        return ActTime;
    }

    public void setActTime(LocalDateTime ActTime) {
        this.ActTime = ActTime;
    }

    public Integer getComId() {
        return ComId;
    }

    public void setComId(Integer ComId) {
        this.ComId = ComId;
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
        return "SysUserlog{" +
        "Id=" + Id +
        ", EmpName=" + EmpName +
        ", UserId=" + UserId +
        ", ActId=" + ActId +
        ", TableName=" + TableName +
        ", PKId=" + PKId +
        ", ActTime=" + ActTime +
        ", ComId=" + ComId +
        ", Descn=" + Descn +
        "}";
    }
}
