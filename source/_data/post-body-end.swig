<div>
    {% if not is_index %}
        <div style="text-align:center;color: #ccc;font-size:14px;">-------------本文结束<i class="fa fa-paw"></i>再接再厉-------------</div>
    {% endif %}
</div>
{% if page.copyright %}
<div class="my_post_copyright">
    <p><span>本文标题:</span><a href="{{ url_for(page.path) }}">{{ page.title }}</a></p>
    <p><span>文章作者:</span><a href="/" title="访问 {{ config.author }} 的个人博客">{{ config.author }}</a></p>
    <p><span>发布时间:</span>{{ page.date.format("YYYY年MM月DD日 - HH:MM") }}</p>
    <p><span>最后更新:</span>{{ page.updated.format("YYYY年MM月DD日 - HH:MM") }}</p>
    <p><span>原始链接:</span><a href="{{ url_for(page.path) }}" title="{{ page.title }}">{{ page.permalink }}</a></p>
    <p><span>许可协议:</span><i class="fab fa-creative-commons"></i>
        <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank"
            title="Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)">
            署名-非商业性使用-禁止演绎 4.0 国际</a>
        转载请保留原文链接及作者。
    </p>
</div>
{% endif %}
