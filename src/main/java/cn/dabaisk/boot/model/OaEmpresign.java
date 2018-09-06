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
public class OaEmpresign extends Model<OaEmpresign> {

    private static final long serialVersionUID = 1L;

    /**
     * 员工辞职表
     */
    @TableId(value = "EmpId", type = IdType.AUTO)
    private Integer EmpId;

    /**
     * 辞职日期
     */
    @TableField("ResignDate")
    private LocalDateTime ResignDate;

    /**
     * 辞职原因
     */
    @TableField("ResignReason")
    private String ResignReason;

    /**
     * 离开日期
     */
    @TableField("LeaveDate")
    private LocalDateTime LeaveDate;


    public Integer getEmpId() {
        return EmpId;
    }

    public void setEmpId(Integer EmpId) {
        this.EmpId = EmpId;
    }

    public LocalDateTime getResignDate() {
        return ResignDate;
    }

    public void setResignDate(LocalDateTime ResignDate) {
        this.ResignDate = ResignDate;
    }

    public String getResignReason() {
        return ResignReason;
    }

    public void setResignReason(String ResignReason) {
        this.ResignReason = ResignReason;
    }

    public LocalDateTime getLeaveDate() {
        return LeaveDate;
    }

    public void setLeaveDate(LocalDateTime LeaveDate) {
        this.LeaveDate = LeaveDate;
    }

    @Override
    protected Serializable pkVal() {
        return this.EmpId;
    }

    @Override
    public String toString() {
        return "OaEmpresign{" +
        "EmpId=" + EmpId +
        ", ResignDate=" + ResignDate +
        ", ResignReason=" + ResignReason +
        ", LeaveDate=" + LeaveDate +
        "}";
    }
}
