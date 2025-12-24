.class public final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
.super Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;

.implements Leu/kanade/tachiyomi/animesource/AnimeCatalogueSource;

.field private final cm$delegate:Lkotlin/Lazy;
.field private final cookieHeader$delegate:Lkotlin/Lazy;
.field private final globalHeaders$delegate:Lkotlin/Lazy;
.field private final lang:Ljava/lang/String;
.field private final name:Ljava/lang/String;
.field private final id:J
.field private final supportsLatest:Z
.field private final url:Ljava/lang/String;

.method public constructor <init>()V
    .locals 2
    invoke-direct {p0}, Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;-><init>()V
    const-string v0, "DhakaFlix"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->name:Ljava/lang/String;
    const-wide v0, 0x47e8ec0f95da2f03L
    iput-wide v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->id:J
    const-string v0, "http://172.16.50.9"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->url:Ljava/lang/String;
    const-string v0, "all"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->lang:Ljava/lang/String;
    const/4 v0, 0x1
    iput-boolean v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->supportsLatest:Z

    new-instance v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$cm$2;
    invoke-direct {v0, p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$cm$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)V
    check-cast v0, Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    move-result-object v0
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->cm$delegate:Lkotlin/Lazy;

    new-instance v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$cookieHeader$2;
    invoke-direct {v0, p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$cookieHeader$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)V
    check-cast v0, Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    move-result-object v0
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->cookieHeader$delegate:Lkotlin/Lazy;

    new-instance v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$globalHeaders$2;
    invoke-direct {v0, p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$globalHeaders$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)V
    check-cast v0, Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    move-result-object v0
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->globalHeaders$delegate:Lkotlin/Lazy;
    return-void
.end method

.method public static final synthetic access$getCm(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)Leu/kanade/tachiyomi/animeextension/all/dhakaflix/CookieManager;
    .locals 0
    invoke-direct {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getCm()Leu/kanade/tachiyomi/animeextension/all/dhakaflix/CookieManager;
    move-result-object p0
    return-object p0
.end method

.method public static final synthetic access$getCookieHeader(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)Ljava/lang/String;
    .locals 0
    invoke-direct {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getCookieHeader()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private final getCm()Leu/kanade/tachiyomi/animeextension/all/dhakaflix/CookieManager;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->cm$delegate:Lkotlin/Lazy;
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/CookieManager;
    return-object v0
.end method

.method private final getCookieHeader()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->cookieHeader$delegate:Lkotlin/Lazy;
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    return-object v0
.end method

.method private final getGlobalHeaders()Lokhttp3/Headers;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->globalHeaders$delegate:Lkotlin/Lazy;
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokhttp3/Headers;
    return-object v0
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
    .locals 12
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v0
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v2
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "://"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "a"
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/jsoup/nodes/Element;
    
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v7
    const-string v8, "Parent Directory"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cond_skip
    goto :goto_0
    :cond_skip
    const-string v8, "powered by"
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-eqz v8, :cond_skip2
    goto :goto_0
    :cond_skip2
    const-string v8, "Name"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cond_skip3
    goto :goto_0
    :cond_skip3
    const-string v8, "Last modified"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cond_skip4
    goto :goto_0
    :cond_skip4
    const-string v8, "Size"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cond_skip5
    goto :goto_0
    :cond_skip5
    const-string v8, "Description"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cond_process

    goto :goto_0

    :cond_process
    const-string v4, "abs:href"
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const-string v5, "../"
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :cond_0
    const-string v5, "?"
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :cond_0
    const-string v5, "http"
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :cond_0
    sget-object v5, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v5}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v5
    invoke-interface {v5, v7}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V
    invoke-interface {v5, v4}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v6, "a_AL_.jpg"
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v5, v4}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :goto_0
    :cond_1
    new-instance p1, Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    const/4 v0, 0x0
    invoke-direct {p1, v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimesPage;-><init>(Ljava/util/List;Z)V
    return-object p1
.end method

.method protected latestUpdatesParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    move-result-object v0
    return-object v0
.end method

.method protected latestUpdatesRequest(I)Lokhttp3/Request;
    .locals 1
    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->popularAnimeRequest(I)Lokhttp3/Request;
    move-result-object v0
    return-object v0
.end method

.method public animeDetailsParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    .locals 1
    sget-object v0, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v0
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
    .locals 12
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v0
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    
    const-string v3, "a"
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/jsoup/nodes/Element;
    const-string v4, "abs:href"
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v5
    
    const-string v6, ".mp4"
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :cond_is_video
    const-string v6, ".mkv"
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :cond_1
    :cond_is_video
    sget-object v6, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v6}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v6
    invoke-interface {v6, v5}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    invoke-interface {v6, v4}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    const/high16 v5, 0x3f800000    # 1.0f
    invoke-interface {v6, v5}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :goto_0

    :cond_1
    const-string v6, "/"
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :cond_0
    const-string v6, "Parent Directory"
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_0
    const-string v6, "Name"
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_0
    const-string v6, "Size"
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_0
    const-string v6, "Last modified"
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_0
    const-string v6, "Description"
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_0
    
    :try_start_0
    new-instance v6, Lokhttp3/Request$Builder;
    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V
    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v6
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v6
    iget-object v7, p0, Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;->client:Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object v6
    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object v6
    const/4 v7, 0x0
    const/4 v8, 0x1
    const/4 v9, 0x0
    invoke-static {v6, v7, v8, v9}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v6
    const-string v7, "a"
    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v6
    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v6
    :cond_inner_loop
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lorg/jsoup/nodes/Element;
    const-string v8, "abs:href"
    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    const-string v9, ".mp4"
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v9
    if-nez v9, :cond_inner_video
    const-string v9, ".mkv"
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v9
    if-eqz v9, :cond_inner_loop
    :cond_inner_video
    sget-object v9, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v9}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v9
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v7
    invoke-interface {v9, v7}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    invoke-interface {v9, v8}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    const/high16 v7, 0x3f800000    # 1.0f
    invoke-interface {v9, v7}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :cond_inner_loop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    
    :catch_0
    goto/16 :goto_0

    :cond_3
    return-object v1
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
    .locals 9
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/Video;
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->getUrl()Ljava/lang/String;
    move-result-object v2
    const-string v3, "Video"
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->getUrl()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v5
    const/4 v6, 0x0
    const/4 v7, 0x4
    const/16 v8, 0x18
    const/4 p1, 0x0
    move-object v0, v1
    move-object v1, v2
    move-object v2, v3
    move-object v3, v4
    move-object v4, v5
    move-object v5, v6
    move v6, v7
    move v7, v8
    move-object v8, p1
    invoke-direct/range {v0 .. v8}, Leu/kanade/tachiyomi/animesource/model/Video;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/Headers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
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
    move-result-object p1
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v0
    const/4 v1, 0x4
    const/4 v2, 0x0
    invoke-static {p1, v0, v2, v1, v2}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method
