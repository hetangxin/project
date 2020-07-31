package com.htx.model;

/**
 * @Description TODO
 * @ClassName: Page
 * @Author: htx
 * @Date: Created in 23:49 2020/6/21
 * @Version 1.0
 */
public class Page {

    private int pageNow;
    private int pageMax;
    private int limit;

    public Page() {
    }

    public Page(int pageNow, int pageMax, int limit) {
        this.pageNow = pageNow;
        this.pageMax = pageMax;
        this.limit = limit;
    }

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public int getPageMax() {
        return pageMax;
    }

    public void setPageMax(int pageMax) {
        this.pageMax = pageMax;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "Page{" +
                "pageNow=" + pageNow +
                ", pageMax=" + pageMax +
                ", limit=" + limit +
                '}';
    }
}
