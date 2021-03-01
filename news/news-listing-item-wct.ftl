<#assign date =  .vars['reserved-article-display-date'].data>
<#assign originalLocale = .locale>
<#setting locale = localeUtil.getDefault()>
<#assign date = date?datetime("EEE, d MMM yyyy HH:mm:ss Z")>
<#assign locale = originalLocale>

<article class="blog_item bg-light shadow-sm">
                            <div class="blog_item_img">
                                <#if (ArticleImage.getData())?? && ArticleImage.getData() != "">
                                    <a href="${friendlyURLs[themeDisplay.getLanguageId()]!""}" title="${ArticleTitle.getData()}"
                            	        <img class="card-img rounded-0"  alt="${ArticleImage.getAttribute("alt")}" data-fileentryid="${ArticleImage.getAttribute("fileEntryId")}" src="${ArticleImage.getData()}" />
                            	    </a>
                            	</#if>
                                <a href="${friendlyURLs[themeDisplay.getLanguageId()]!""}" title="${ArticleTitle.getData()}" class="blog_item_date">
                                    <h3>${date?string["dd"]}</h3>
                                    <p>${date?string["MMM"]}</p>
                                </a>
                            </div>

                            <div class="blog_details bg-white">
                                <a class="d-inline-block" title="${ArticleTitle.getData()}" href="${friendlyURLs[themeDisplay.getLanguageId()]!""}">
                                    <h2>
                                        ${ArticleTitle.getData()}
                                    </h2>
                                </a>
                                <p>
                                    <#if ArticleBrief.getData()?length &gt; 200>
                                        ${ArticleBrief.getData()?substring(0,200)} ...
                                    <#else>
                                        ${ArticleBrief.getData()}
                                    </#if>
                                </p>
                            </div>
</article>
