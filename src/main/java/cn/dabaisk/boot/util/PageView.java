package cn.dabaisk.boot.util;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class PageView {
    private Long pageNum; // 当前页数
    private Long pageSize; // 每页显示的记录数
    private Object searchBean;
    private String order;
    private String sort;
    private Long recordCount; // 总记录数
    private List recordList; // 每页显示数据的集合.
    private Long pageCount; // 总页数
    private String startDate;
    private String endDate;
    /**
     * footer 用于显示统计平均等信息，
     */
    private List<Map> footer = new ArrayList();

    public PageView() {
    }

    public PageView(Long pageNum, Long pageSize, String order, String sort, Object searchBean) {
        super();
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.order = order;
        this.sort = isAcronym(sort);
        this.searchBean = searchBean;
    }

    public PageView(Long pageNum, Long pageSize, String order, String sort, Object searchBean, String startDate, String endDate) {
        this(pageNum,pageSize,order,sort,searchBean);
        this.startDate = startDate;
        this.endDate = endDate;
    }
    /**
     * 分页
     */
    public PageView(Page<?> page) {
        this.recordList = page.getRecords();
        this.recordCount = page.getTotal();
        this.pageSize = page.getSize();
        this.pageNum = page.getCurrent();
        this.pageCount = page.getPages();
    }

    public PageView(Long recordCount, List recordList) {
        this.recordCount = recordCount;
        this.recordList = recordList;
    }

    /**
     * 构建PageView对象<br>
     * 并设置合计，总次数
     *
     * @param map
     * @param recordList
     */
    public PageView(Map map, List recordList) {
        this.recordCount = Long.parseLong(map.get("total").toString());
        map.remove("total");
        Map<String, String> totalMap = new HashMap();
        totalMap.put("productid", "Total");
        addMapItem(map, totalMap, "sum");
        footer.add(totalMap);
        // totalMap = new HashMap: ();
        // totalMap.put("productid", "Average");// 平均数
        // footer.add(map);
        this.recordList = recordList;
    }
    public PageView setPage(Long total, List recordList) {
        this.recordCount = total;
        this.recordList = recordList;
        // totalMap = new HashMap: ();
        // totalMap.put("productid", "Average");// 平均数
        // footer.add(map);
        return this;
    }
    public PageView setPage(Map map, List recordList) {
        System.out.println(map);
        this.recordCount = Long.parseLong(map.get("total").toString());
        this.recordList = recordList;
        map.remove("total");
        Map<String, String> totalMap = new HashMap();
        totalMap.put("productid", "Total");
        addMapItem( map, totalMap, "sum");
        footer.add(totalMap);
        // totalMap = new HashMap: ();
        // totalMap.put("productid", "Average");// 平均数
        // footer.add(map);
        return this;
    }
    /**
     * 构建包含合计，总和，平均数的map
     *
     * @param map
     * @param totalMap
     * @param type
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
    private void addMapItem( Map map, Map totalMap, String type) {
        Set<String> set = map.keySet();
        for (String string : set) {
            totalMap.put(string.replace(type, ""), map.get(string));
        }
//		Class cls = clazz.getClass();
//		Field[] fields = cls.getDeclaredFields();
//		for (Field field : fields) {
//			Object res = map.get(type + field.getName());
//			if (res != null) {
//				totalMap.put(field.getName(), res);
//			}
//		}
    }

    public String isAcronym(String word) {
        String sort = null;
        if (word != null) {
            sort = "";
            for (int i = 0; i < word.length(); i++) {
                char c = word.charAt(i);
                if (!Character.isLowerCase(c)) {
                    sort = sort + "_" + new StringBuilder(String.valueOf(c)).toString().toLowerCase();
                } else
                    sort = sort + c;
            }
        }

        return sort;
    }

    public List getFooter() {
        return footer;
    }

    public void setFooter(List footer) {
        this.footer = footer;
    }

    public Object getSearchBean() {
        return this.searchBean;
    }

    public void setSearchBean(Object searchBean) {
        this.searchBean = searchBean;
    }

    public Long getPageNum() {
        return this.pageNum;
    }

    public void setPageNum(Long pageNum) {
        this.pageNum = pageNum;
    }

    public Long getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(Long pageSize) {
        this.pageSize = pageSize;
    }

    public Long getRecordCount() {
        return this.recordCount;
    }

    public void setRecordCount(Long recordCount) {
        this.recordCount = recordCount;
    }

    public List getRecordList() {
        return this.recordList;
    }

    public void setRecordList(List recordList) {
        this.recordList = recordList;
    }

    public Long getPageCount() {
        return this.pageCount;
    }

    public void setPageCount(Long pageCount) {
        this.pageCount = pageCount;
    }

    public String getOrder() {
        return this.order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getSort() {
        return this.sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "PageView{" +
                "pageNum=" + pageNum +
                ", pageSize=" + pageSize +
                ", searchBean=" + searchBean +
                ", order='" + order + '\'' +
                ", sort='" + sort + '\'' +
                ", recordCount=" + recordCount +
                ", recordList=" + recordList +
                ", pageCount=" + pageCount +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", footer=" + footer +
                '}';
    }
}