package com.htx.util;

import com.htx.model.Page;

/**
 * @Description TODO
 * @ClassName: PageInit
 * @Author: htx
 * @Date: Created in 0:45 2020/6/22
 * @Version 1.0
 */
public class PageInit {

    public Page pageInit(int orderLen) {
        Page page = new Page();
        page.setPageNow(1);
        page.setLimit(3);
        int pageMax = orderLen / page.getLimit();

        if(orderLen % page.getLimit() != 0)  {
            pageMax += 1;
        }

        page.setPageMax(pageMax);
        return page;
    }

}
