package cn.dabaisk.boot.mapper;

import cn.dabaisk.boot.model.CrmCust;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Bean
 * @since 2018-09-06
 */
public interface CrmCustMapper extends BaseMapper<CrmCust> {
    Map totalField(CrmCust crmCust);
}
