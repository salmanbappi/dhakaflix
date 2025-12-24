.class public final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
.super Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;

.implements Leu/kanade/tachiyomi/animesource/AnimeCatalogueSource;

.field private final lang:Ljava/lang/String;
.field private final name:Ljava/lang/String;
.field private final id:J
.field private final supportsLatest:Z
.field private final url:Ljava/lang/String;

.method public constructor <init>()V
    .locals 2
    invoke-direct {p0}, Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;-><init>()V
    const-string v0, "Aniyomi: dhakaflix"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->name:Ljava/lang/String;
    const-wide v0, 0x47e8ec0f95da2f03L
    iput-wide v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->id:J
    const-string v0, "http://172.16.50.9"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->url:Ljava/lang/String;
    const-string v0, "all"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->lang:Ljava/lang/String;
    const/4 v0, 0x1
    iput-boolean v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->supportsLatest:Z
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->url:Ljava/lang/String;
    return-object v0
.end method

.method public getId()J
    .locals 2
    iget-wide v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->id:J
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->name:Ljava/lang/String;
    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->lang:Ljava/lang/String;
    return-object v0
.end method

.method public getSupportsLatest()Z
    .locals 1
    iget-boolean v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->supportsLatest:Z
    return v0
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 3
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V
    const-string v1, "User-Agent"
    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    move-result-object v0
    const-string v1, "Referer"
    const-string v2, "http://172.16.50.9/"
    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v0
    return-object v0
.end method

.method public getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 1
    invoke-static {}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    move-result-object v0
    return-object v0
.end method

.method protected popularAnimeRequest(I)Lokhttp3/Request;
    .locals 4
    const-string v0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v1
    const/4 v2, 0x4
    const/4 v3, 0x0
    invoke-static {v0, v1, v3, v2, v3}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object v0
    return-object v0
.end method

.method protected popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 10
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object v9
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v8
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    const-string v0, "a"
    invoke-virtual {v8, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v0
:cond_pop_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_pop_done
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/jsoup/nodes/Element;
    const-string v3, "href"
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, "../"
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :cond_pop_loop
    const-string v4, "?"
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :cond_pop_loop
    const-string v4, "http"
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :cond_pop_loop
    sget-object v4, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v4
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v4, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v4, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "poster.jpg"
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v4, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :cond_pop_loop
:cond_pop_done
    new-instance v0, Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    const/4 v1, 0x0
    invoke-direct {v0, v2, v1}, Leu/kanade/tachiyomi/animesource/model/AnimesPage;-><init>(Ljava/util/List;Z)V
    return-object v0
.end method

.method protected latestUpdatesParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    move-result-object v0
    return-object v0
.end method

.method protected latestUpdatesRequest(I)Lokhttp3/Request;
    .locals 4
    const-string v0, "http://172.16.50.9/s"
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v1
    const/4 v2, 0x4
    const/4 v3, 0x0
    invoke-static {v0, v1, v3, v2, v3}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object v0
    return-object v0
.end method

.method public animeDetailsParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    .locals 5
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v3
    sget-object v0, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v0
    const-string v1, "div.movie-detail-content h3"
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v1
    if-nez v1, :cond_movie_title
    const-string v1, "div.movie-detail-content-test h3"
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v1
:cond_movie_title
    if-eqz v1, :cond_title_set
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V
:cond_title_set
    const-string v1, "p.storyline"
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v1
    if-eqz v1, :cond_desc_set
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setDescription(Ljava/lang/String;)V
:cond_desc_set
    const-string v1, "div.ganre-wrapper a"
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setGenre(Ljava/lang/String;)V
    const-string v1, "figure.movie-detail-banner img"
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v1
    if-eqz v1, :cond_thumb_set
    const-string v2, "src"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "http"
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :cond_det_thumb_abs
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
:cond_det_thumb_abs
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
:cond_thumb_set
    return-object v0
.end method

.method public animeDetailsRequest(Leu/kanade/tachiyomi/animesource/model/SAnime;)Lokhttp3/Request;
    .locals 3
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v0
    const/4 v1, 0x4
    const/4 v2, 0x0
    invoke-static {p1, v0, v2, v1, v2}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method public episodeListParse(Lokhttp3/Response;)Ljava/util/List;
    .locals 10
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object v9
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v8
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    const-string v0, "div.card"
    invoke-virtual {v8, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->isEmpty()Z
    move-result v1
    if-nez v1, :cond_ep_series
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v0
:cond_ep_card_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_ep_done
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/jsoup/nodes/Element;
    const-string v3, "h5 a"
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v3
    if-nez v3, :cond_ep_card_valid
    goto :cond_ep_card_loop
:cond_ep_card_valid
    sget-object v4, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v4
    const-string v5, "href"
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface {v4, v3}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    const-string v3, "h4"
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v3
    if-eqz v3, :cond_ep_card_title
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v3
    invoke-interface {v4, v3}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
:cond_ep_card_title
    const-string v3, "div.badge-outline"
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v1
    if-eqz v1, :cond_ep_card_scan
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v4, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setScanlator(Ljava/lang/String;)V
:cond_ep_card_scan
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, 0x1
    int-to-float v1, v1
    invoke-interface {v4, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :cond_ep_card_loop
:cond_ep_series
    const-string v0, "a[title$=.mkv], a[title$=.mp4]"
    invoke-virtual {v8, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v0
:cond_ep_movie_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_ep_done
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/jsoup/nodes/Element;
    sget-object v3, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v3}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v3
    const-string v4, "href"
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v3, v4}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    const-string v4, "title"
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-interface {v3, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    const/high16 v1, 0x3f800000    # 1.0f
    invoke-interface {v3, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :cond_ep_movie_loop
:cond_ep_done
    return-object v2
.end method

.method public episodeListRequest(Leu/kanade/tachiyomi/animesource/model/SAnime;)Lokhttp3/Request;
    .locals 3
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v0
    const/4 v1, 0x4
    const/4 v2, 0x0
    invoke-static {p1, v0, v2, v1, v2}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method public videoListParse(Lokhttp3/Response;)Ljava/util/List;
    .locals 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public videoListRequest(Leu/kanade/tachiyomi/animesource/model/SEpisode;)Lokhttp3/Request;
    .locals 3
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->getUrl()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v0
    const/4 v1, 0x4
    const/4 v2, 0x0
    invoke-static {p1, v0, v2, v1, v2}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method public getVideoList(Leu/kanade/tachiyomi/animesource/model/SEpisode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->getUrl()Ljava/lang/String;
    move-result-object v1
    const-string v0, "http"
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :cond_video_abs
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "http://172.16.50.9"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
:cond_video_abs
    new-instance p2, Leu/kanade/tachiyomi/animesource/model/Video;
    const-string v3, "Video"
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v4
    const/4 v5, 0x0
    const/4 v6, 0x4
    const/4 v7, 0x0
    move-object v0, p2
    move-object v2, v1
    invoke-direct/range {v0 .. v7}, Leu/kanade/tachiyomi/animesource/model/Video;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/Headers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-object p1
.end method

.method protected searchAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    move-result-object v0
    return-object v0
.end method

.method protected searchAnimeRequest(ILjava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Lokhttp3/Request;
    .locals 4
    invoke-static {p2, p3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    move-result-object v0
    if-eqz p2, :cond_filter_req
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :cond_filter_req
    new-instance v1, Lokhttp3/FormBody$Builder;
    const/4 v3, 0x0
    const/4 v4, 0x1
    invoke-direct {v1, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    const-string v2, "category"
    const-string v3, "m"
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    move-result-object v1
    const-string v2, "searchbox"
    invoke-virtual {v1, v2, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    move-result-object v1
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;
    move-result-object v2
    new-instance v1, Lokhttp3/Request$Builder;
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V
    const-string v3, "http://172.16.50.9/m/search"
    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v3
    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    move-result-object v1
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object v1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object p1
    return-object p1
:cond_filter_req
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v1
    const/4 v2, 0x4
    const/4 v3, 0x0
    invoke-static {v0, v1, v3, v2, v3}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method