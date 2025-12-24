.class public final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
.super Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;

.implements Leu/kanade/tachiyomi/animesource/AnimeCatalogueSource;

.field private final lang:Ljava/lang/String;
.field private final name:Ljava/lang/String;
.field private final supportsLatest:Z
.field private final url:Ljava/lang/String;

.method public constructor <init>()V
    .locals 1
    invoke-direct {p0}, Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;-><init>()V
    const-string v0, "DhakaFlix"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->name:Ljava/lang/String;
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

.method public getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 1
    invoke-static {}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    move-result-object v0
    return-object v0
.end method

.method protected popularAnimeRequest(I)Lokhttp3/Request;
    .locals 3
    const-string v0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    const/4 v1, 0x0
    const/4 v2, 0x4
    invoke-static {v0, v1, v1, v2, v1}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object v0
    return-object v0
.end method

.method protected popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 10
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object p1
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    const-string v3, "tr"
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v3
:loop_pop
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_pop_done
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lorg/jsoup/nodes/Element;
    const-string v5, "a"
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v5
    if-nez v5, :cond_pop_skip
    const-string v6, "href"
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string v7, ".."
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :cond_pop_skip
    sget-object v7, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v7}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v7
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v5
    invoke-interface {v7, v5}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V
    invoke-interface {v7, v6}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V
    const-string v5, "localhost"
    invoke-interface {v7, v5}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_pop_skip
    goto :loop_pop
:cond_pop_done
    new-instance p1, Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    const/4 v0, 0x0
    invoke-direct {p1, v2, v0}, Leu/kanade/tachiyomi/animesource/model/AnimesPage;-><init>(Ljava/util/List;Z)V
    return-object p1
.end method

.method protected latestUpdatesRequest(I)Lokhttp3/Request;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeRequest(I)Lokhttp3/Request;
    move-result-object v0
    return-object v0
.end method

.method protected latestUpdatesParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    move-result-object v0
    return-object v0
.end method

.method public getSearchAnime(ILjava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    invoke-static {p2, p3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0x0
    const/4 v1, 0x4
    invoke-static {p1, v0, v0, v1, v0}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getClient()Lokhttp3/OkHttpClient;
    move-result-object p2
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object p1
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object p1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->latestUpdatesParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    move-result-object p1
    return-object p1
.end method

.method public getEpisodeList(Leu/kanade/tachiyomi/animesource/model/SAnime;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0x0
    const/4 v1, 0x4
    invoke-static {p1, v0, v0, v1, v0}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getClient()Lokhttp3/OkHttpClient;
    move-result-object v1
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object p1
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object p1
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object p1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    const-string v1, "tr"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object p1
:loop_ep
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_ep_done
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/jsoup/nodes/Element;
    const-string v2, "a"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    move-result-object v2
    if-nez v2, :cond_ep_skip
    const-string v3, "href"
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, ".mkv"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :cond_ep_is_video
    const-string v4, ".mp4"
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :cond_ep_skip
:cond_ep_is_video
    sget-object v4, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v4
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v2
    invoke-interface {v4, v2}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    invoke-interface {v4, v3}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    const/high16 v2, 0x3f800000 # 1.0f
    invoke-interface {v4, v2}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ep_skip
    goto :loop_ep
:cond_ep_done
    return-object v0
.end method

.method public getVideoList(Leu/kanade/tachiyomi/animesource/model/SEpisode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->getUrl()Ljava/lang/String;
    move-result-object v1
    new-instance p1, Leu/kanade/tachiyomi/animesource/model/Video;
    const-string v3, "Video"
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/16 v6, 0x8
    const/4 v7, 0x0
    move-object v0, p1
    move-object v2, v3
    invoke-direct/range {v0 .. v7}, Leu/kanade/tachiyomi/animesource/model/Video;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/Headers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method public animeDetailsParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    .locals 2
    sget-object p1, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object p1
    const-string v0, "DhakaFlix Media"
    invoke-interface {p1, v0}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setDescription(Ljava/lang/String;)V
    const/4 v0, 0x2
    invoke-interface {p1, v0}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setStatus(I)V
    return-object p1
.end method

.method public animeDetailsRequest(Leu/kanade/tachiyomi/animesource/model/SAnime;)Lokhttp3/Request;
    .locals 3
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0x0
    const/4 v1, 0x4
    invoke-static {p1, v0, v0, v1, v0}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method protected episodeListParse(Lokhttp3/Response;)Ljava/util/List;
    .locals 1
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    return-object p1
.end method

.method protected episodeListRequest(Leu/kanade/tachiyomi/animesource/model/SAnime;)Lokhttp3/Request;
    .locals 3
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0x0
    const/4 v1, 0x4
    invoke-static {p1, v0, v0, v1, v0}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method protected searchAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    move-result-object v0
    return-object v0
.end method

.method protected searchAnimeRequest(ILjava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Lokhttp3/Request;
    .locals 3
    invoke-static {p2, p3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0x0
    const/4 v1, 0x4
    invoke-static {p1, v0, v0, v1, v0}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method