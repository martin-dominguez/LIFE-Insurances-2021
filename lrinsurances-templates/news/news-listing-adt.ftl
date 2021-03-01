<style>
    .blog_item {
        transition: box-shadow .5s ease-in-out;
    }
    .blog_item:hover {
        box-shadow: var(--box-shadow-lg) !important;
    }
    .blog_item_date {
        background-color: var(--primary) !important;
    }
    .blog_details {
        min-height: 365px;
    }
</style>
<div class="row ">
<#if entries?has_content>
	<#list entries as curEntry>
		<#assign 
       assetRenderer = curEntry.getAssetRenderer()
       journalArticle = assetRenderer.getAssetObject()      
   />
    <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, curEntry) />

<div class="col-lg-6 col-md-12 col-sm-12">

   <#assign isActive = "" />
   <#if curEntry?index == 0 >
   <#assign isActive = "active" />
   </#if>
    <@liferay_journal["journal-article"]
                    articleId=journalArticle.getArticleId()
                    ddmTemplateKey="37890"
                    groupId=journalArticle.getGroupId()
    />
    </div>
	</#list>
</#if>
    </div>
