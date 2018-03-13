package org.throwable.blog.model.dto

/**
 * @author throwable
 * @version v1.0
 * @description
 * @since 2018/3/13 14:37
 */
data class ArticleDTO(
        var id: Long? = null,
        var title: String? = null,
        var description: String? = null,
        var categoryId: Long? = null,
        var categoryName: String? = null,
        var createTime: String? = null,
        var updateTime: String? = null,
        var views: Int? = null,
        var replies: Int? = null
)