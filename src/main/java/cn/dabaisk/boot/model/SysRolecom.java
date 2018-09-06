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
public class SysRolecom extends Model<SysRolecom> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "RoleId", type = IdType.AUTO)
    private Integer RoleId;

    @TableField("ComId")
    private Integer ComId;


    public Integer getRoleId() {
        return RoleId;
    }

    public void setRoleId(Integer RoleId) {
        this.RoleId = RoleId;
    }

    public Integer getComId() {
        return ComId;
    }

    public void setComId(Integer ComId) {
        this.ComId = ComId;
    }

    @Override
    protected Serializable pkVal() {
        return this.RoleId;
    }

    @Override
    public String toString() {
        return "SysRolecom{" +
        "RoleId=" + RoleId +
        ", ComId=" + ComId +
        "}";
    }
}
