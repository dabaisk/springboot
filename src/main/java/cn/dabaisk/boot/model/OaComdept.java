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
public class OaComdept extends Model<OaComdept> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "ComId", type = IdType.AUTO)
    private Integer ComId;

    @TableField("DeptId")
    private Integer DeptId;


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

    @Override
    protected Serializable pkVal() {
        return this.ComId;
    }

    @Override
    public String toString() {
        return "OaComdept{" +
        "ComId=" + ComId +
        ", DeptId=" + DeptId +
        "}";
    }
}
