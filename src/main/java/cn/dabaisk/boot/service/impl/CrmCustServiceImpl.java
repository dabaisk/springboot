package cn.dabaisk.boot.service.impl;

import cn.dabaisk.boot.model.CrmCust;
import cn.dabaisk.boot.mapper.CrmCustMapper;
import cn.dabaisk.boot.service.CrmCustService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Bean
 * @since 2018-09-05
 */
@Service
public class CrmCustServiceImpl extends ServiceImpl<CrmCustMapper, CrmCust> implements CrmCustService {
    public Map total(CrmCust crmCust){
        List<Map> list=this.baseMapper.selectMaps(new QueryWrapper(crmCust));
        return list.get(0);
    }

}
