<!DOCTYPE html>
    <html>
    <head>
        <title>Bootstrap Table Examples</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/index.css">
                <script src="assets/jquery.min.js"></script>
                <script src="assets/bootstrap/js/bootstrap.min.js"></script>
                <script src="assets/index.js"></script>
                <script src="ga.js"></script>
            </head>
            <body>


            <!-- Fixed navbar -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html">Bootstrap Table Examples</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="https://github.com/wenzhixin/bootstrap-table" target="_blank">Bootstrap
                                Table</a></li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false">Options <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="options/boolean-options.html">Boolean options</a></li>
                                    <li><a href="options/from-html.html">From html</a></li>
                                    <li><a href="options/from-data.html">From data</a></li>
                                    <li><a href="options/modal-table.html">Modal Table</a></li>
                                    <li><a href="options/table-style.html">Table Style</a></li>
                                    <li><a href="options/no-bordered.html">No bordered</a></li>
                                    <li><a href="options/aligning-columns.html">Aligning Columns</a></li>
                                    <li><a href="options/basic-sort.html">Basic Sort</a></li>
                                    <li><a href="options/custom-sort.html">Custom Sort</a></li>
                                    <li><a href="options/format.html">Format</a></li>
                                    <li><a href="options/basic-columns.html">Basic Columns</a></li>
                                    <li><a href="options/large-columns.html">Large Columns</a></li>
                                    <li><a href="options/group-columns.html">Group Columns</a></li>
                                    <li><a href="options/disabled-checkbox.html">Disabled Checkbox</a></li>
                                    <li><a href="options/custom-toolbar.html">Custom Toolbar</a></li>
                                    <li><a href="options/detail-view.html">Detail View</a></li>
                                    <li><a href="options/sub-table.html">Sub Table</a></li>
                                    <li><a href="options/multiple-table.html">Multiple Table</a></li>
                                    <li><a href="options/client-side-pagination.html">Client Side Pagination</a></li>
                                    <li><a href="options/server-side-pagination.html">Server Side Pagination</a></li>
                                    <li><a href="options/pagination-custom-text.html">Pagination Custom Text</a></li>
                                    <li><a href="options/custom-ajax.html">Custom Ajax</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false">Methods <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="methods/getOptions.html">getOptions</a></li>
                                    <li><a href="methods/getSelections.html">getSelections</a></li>
                                    <li><a href="methods/getAllSelections.html">getAllSelections</a></li>
                                    <li><a href="methods/getData.html">getData</a></li>
                                    <li><a href="methods/getRowByUniqueId.html">getRowByUniqueId</a></li>
                                    <li><a href="methods/load.html">load</a></li>
                                    <li><a href="methods/append.html">append</a></li>
                                    <li><a href="methods/prepend.html">prepend</a></li>
                                    <li><a href="methods/remove.html">remove</a></li>
                                    <li><a href="methods/removeAll.html">removeAll</a></li>
                                    <li><a href="methods/removeByUniqueId.html">removeByUniqueId</a></li>
                                    <li><a href="methods/insertRow.html">insertRow</a></li>
                                    <li><a href="methods/updateRow.html">updateRow</a></li>
                                    <li><a href="methods/showRow-hideRow.html">showRow/hideRow</a></li>
                                    <li><a href="methods/mergeCells.html">mergeCells</a></li>
                                    <li><a href="methods/checkAll-uncheckAll.html">checkAll/uncheckAll</a></li>
                                    <li><a href="methods/check-uncheck.html">check/uncheck</a></li>
                                    <li><a href="methods/checkBy-uncheckBy.html">checkBy/uncheckBy</a></li>
                                    <li><a href="methods/refresh.html">refresh</a></li>
                                    <li><a href="methods/resetView.html">resetView</a></li>
                                    <li><a href="methods/destroy.html">destroy</a></li>
                                    <li><a href="methods/showLoading-hideLoading.html">showLoading/hideLoading</a></li>
                                    <li><a href="methods/showColumn-hideCoulumn.html">showColumn/hideCoulumn</a></li>
                                    <li><a href="methods/scrollTo.html">scrollTo</a></li>
                                    <li><a
                                        href="methods/selectPage-prevPage-nextPage.html">selectPage/prevPage/nextPage</a>
                                    </li>
                                    <li><a href="methods/togglePagination.html">togglePagination</a></li>
                                    <li><a href="methods/toggleView.html">toggleView</a></li>
                                    <li><a href="methods/refreshOptions.html">refreshOptions</a></li>
                                    <li><a href="methods/resetSearch.html">resetSearch</a></li>
                                    <li><a href="methods/expandRow-collapseRow.html">expandRow/collapseRow</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false">Extensions <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="extensions/editable.html">Editable</a></li>
                                    <li><a href="extensions/export.html">Export</a></li>
                                    <li><a href="extensions/flat-json.html">Flat Json</a></li>
                                    <li><a href="extensions/cookie.html">Cookie</a></li>
                                    <li><a href="extensions/resizable.html">Resizable</a></li>
                                    <li><a href="extensions/key-events.html">Key Events</a></li>
                                    <li><a href="extensions/mobile.html">Mobile</a></li>
                                    <li><a href="extensions/filter-control.html">Filter Control</a></li>
                                    <li><a href="extensions/toolbar.html">Advanced toolbar</a></li>
                                    <li><a href="extensions/reorder-columns.html">Reorder Columns</a></li>
                                    <li><a href="extensions/reorder-rows.html">Reorder Rows</a></li>
                                    <li><a href="extensions/multiple-sort.html">Multiple Sort</a></li>
                                    <li><a href="extensions/fixed-columns.html">Fixed Columns</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false">Integrate <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="integrate/angular">Angular</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false">Issues <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    @@list@@
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>

            <div class="navigation">
                <div class="container">
                    <a class="previous" href="#">
                        <i class="glyphicon glyphicon-arrow-left"></i>
                        PREVIOUS: <span></span>
                    </a>
                    <a class="next" href="#">
                        NEXT: <span></span>
                        <i class="glyphicon glyphicon-arrow-right"></i>
                    </a>
                </div>
            </div>

            <div class="ribbon">
                <a href="#" target="_blank">View Source on GitHub</a>
            </div>

            <div class="content">
                <iframe width="100%" height="100%"></iframe>
            </div>
            </body>
        </html>

