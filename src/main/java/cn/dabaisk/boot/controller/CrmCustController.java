package cn.dabaisk.boot.controller;


import cn.dabaisk.boot.base.BaseController;
import cn.dabaisk.boot.model.CrmCust;
import cn.dabaisk.boot.service.CrmCustService;
import cn.dabaisk.boot.util.JSonUtils;
import cn.dabaisk.boot.util.PageView;
import cn.dabaisk.boot.util.ResultUtils;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;



/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Bean123
 * @since 2018-09-04
 */
@Controller
@RequestMapping("/crmCust")
public class CrmCustController extends BaseController {

    @Autowired
    CrmCustService CrmCustService;

    @RequestMapping(value = "/adminDataGrid")
    @ResponseBody
    public String dataGrid(CrmCust model) {
        logger.info("--------开始--------");
        ResultUtils result = new ResultUtils();

        logger.info("page:" + getParameter("page") + ",pageSize:" + getParameter("rows"));
        Long pageNum, pageSize;
        try {
            pageNum = Long.valueOf(getParameter("page"));
            pageSize = Long.valueOf(getParameter("rows"));
        } catch (NumberFormatException e) {
            result.setResult("FAIL");
            result.setMsg("请求的参数错误");
            logger.info("--------请求的参数错误--------");
            return JSonUtils.toJSon(result);
        }


        String order = null, sort = null;
        if (null != getParameter("order") && null != getParameter("sort")) {
            order = getParameter("order");
            sort = getParameter("sort");
        }
        PageView temp = new PageView(pageNum, pageSize, order, sort, model);
        Wrapper<CrmCust> wrapper=new QueryWrapper<CrmCust>(model);
        IPage<CrmCust> page =CrmCustService.page(toPage(temp),wrapper);
        logger.info("--------page--------"+page);
        logger.info("--------list--------"+page.getRecords().toString());
        if (page != null && page.getTotal() > 0) {
            temp.setPage(page.getTotal(),page.getRecords());
        }
        result.setData(temp);
        logger.info("-----end.PageView----"+temp);
        return result.toAdminJson();
    }

    @RequestMapping(value = "/adminDataGridTotal")
    @ResponseBody
    public String dataGridTotal(CrmCust model) {
        logger.info("--------开始--------");
        ResultUtils result = new ResultUtils();

        logger.info("page:" + getParameter("page") + ",pageSize:" + getParameter("rows"));
        Long pageNum, pageSize;
        try {
            pageNum = Long.valueOf(getParameter("page"));
            pageSize = Long.valueOf(getParameter("rows"));
        } catch (NumberFormatException e) {
            result.setResult("FAIL");
            result.setMsg("请求的参数错误");
            logger.info("--------请求的参数错误--------");
            return JSonUtils.toJSon(result);
        }
        String order = null, sort = null;
        if (null != getParameter("order") && null != getParameter("sort")) {
            order = getParameter("order");
            sort = getParameter("sort");
        }
        PageView temp = new PageView(pageNum, pageSize, order, sort, model);
        QueryWrapper<CrmCust> wrapper=new QueryWrapper<CrmCust>(model);
        temp.setPage(CrmCustService.totalField(model),CrmCustService.list(wrapper));
        result.setData(temp);
        logger.info("-----end.PageView----"+temp);
        return result.toAdminJson();
    }

    @RequestMapping(value = "/toPage")
    public String toPage(CrmCust model, ModelMap map) {
        String view = getParameter("view");
        logger.info("---------toPage开始--------model"+model);
        QueryWrapper<CrmCust> wrapper=new QueryWrapper<CrmCust>(model);
        model = CrmCustService.getOne(wrapper);
        logger.info("model:" + model);
        // 页面跳转:
        map.addAttribute("model", model);
        logger.info("---------toPage结束--------model"+model);
        return view;
    }

    @RequestMapping(value = "/toJson")
    @ResponseBody
    public Object toJson(CrmCust model, ModelMap map) {
        String view = getParameter("view");
        logger.info("---------toJson开始--------model"+model);
        QueryWrapper<CrmCust> wrapper=new QueryWrapper<CrmCust>(model);
        model = CrmCustService.getOne(wrapper);
        logger.info("model:" + model);
        // 页面跳转:
        logger.info("---------toJson结束--------model"+model);
        return model;
    }

    /**
     * 后台订单的审核
     */
    @RequestMapping(value = "/install")
    @ResponseBody
    public String install(CrmCust model) {
        logger.info("--------beng--------");
        ResultUtils result = new ResultUtils();
        if (model == null ) {
            return JSonUtils.toJSon(result);
        }
        boolean param = CrmCustService.save(model);
        if (!param) {
            result.setResult("FAIL");
            result.setMsg("FAIL");
            logger.info("FAIL:" + model.toString());
        }else{
            QueryWrapper<CrmCust> wrapper=new QueryWrapper<CrmCust>(model);
            model = CrmCustService.getOne(wrapper);
            result.setResult("SUCCESS");
            result.setData(model);
        }
        logger.info("FAIL:" + result.toString());
        logger.info("--------end--------");
        return JSonUtils.toJSon(result);
    }

    /**
     * 后台订单的审核
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public String update(CrmCust model) {
        logger.info("--------beng--------");
        ResultUtils result = new ResultUtils();
        if (model == null ) {
            return JSonUtils.toJSon(result);
        }
        CrmCust wrapperModel=new CrmCust();
        wrapperModel.setId(model.getId());
        wrapperModel.setName(model.getName());
        QueryWrapper<CrmCust> wrapper=new QueryWrapper<CrmCust>(wrapperModel);
        boolean param = CrmCustService.update(model,wrapper);
        if (!param) {
            result.setResult("FAIL");
            result.setMsg("FAIL");
            logger.info("FAIL:" + model.toString());
        }else{
            model = CrmCustService.getOne(wrapper);
            result.setResult("SUCCESS");
            result.setData(model);
        }
        logger.info("FAIL:" + result.toString());
        logger.info("--------end--------");
        return JSonUtils.toJSon(result);
    }
}

