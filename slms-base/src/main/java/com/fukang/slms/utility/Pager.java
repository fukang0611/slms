package com.fukang.slms.utility;

public class Pager {

    private String search;
    private String sort;
    private String order;
    private Integer limit;
    private Integer offset;
    private Long totalRows;

    public Pager() {
    }

    public Pager(String search, String sort, String order, Integer limit, Integer offset, Long totalRows) {
        this.search = search;
        this.sort = sort;
        this.order = order;
        this.limit = limit;
        this.offset = offset;
        this.totalRows = totalRows;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Long getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(Long totalRows) {
        this.totalRows = totalRows;
    }
}
