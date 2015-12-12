package com.fukang.slms.utility;

public class Pager {

    private Integer pageNo;
    private Integer pageSize;
    private Integer totalRows;

    public Pager() {
    }

    public Pager(Integer pageNo, Integer pageSize, Integer totalRows) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
        this.totalRows = totalRows;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(Integer totalRows) {
        this.totalRows = totalRows;
    }
}
