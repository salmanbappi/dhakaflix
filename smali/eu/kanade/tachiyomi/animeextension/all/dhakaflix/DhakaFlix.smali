.class public final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
.super Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;

.implements Leu/kanade/tachiyomi/animesource/AnimeCatalogueSource;

.field private final cm$delegate:Lkotlin/Lazy;
.field private final cookieHeader$delegate:Lkotlin/Lazy;
.field private final globalHeaders$delegate:Lkotlin/Lazy;
.field private final lang:Ljava/lang/String;
.field private final name:Ljava/lang/String;
.field private final id:J
.field private final rick:Ljava/lang/String;
.field private final time:J
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
    const-string v0, "http://172.16.50.9"
    iput-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->rick:Ljava/lang/String;
    const-wide v0, 0x197db3276d8L
    iput-wide v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->time:J
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

.method public static final synthetic access$extractEpisode(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lorg/jsoup/nodes/Document;)Ljava/util/List;
    .locals 0
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->extractEpisode(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    move-result-object p0
    return-object p0
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

.method public static final synthetic access$getGlobalHeaders(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)Lokhttp3/Headers;
    .locals 0
    invoke-direct {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getGlobalHeaders()Lokhttp3/Headers;
    move-result-object p0
    return-object p0
.end method

.method public static final synthetic access$getMediaType(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 0
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getMediaType(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static final synthetic access$getMovieMedia(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lorg/jsoup/nodes/Document;)Ljava/util/List;
    .locals 0
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getMovieMedia(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method public static final synthetic access$getSearchAnime$fetchAnimeByType(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    invoke-static {p0, p1, p2, p3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getSearchAnime$fetchAnimeByType(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    move-result-object p0
    return-object p0
.end method

.method public static final synthetic access$sortByTitle$diceCoefficient(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    invoke-static {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->sortByTitle$diceCoefficient(Ljava/lang/String;Ljava/lang/String;)D
    move-result-wide v0
    return-wide v0
.end method

.method public static final synthetic access$sortEpisodes(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/util/List;)Ljava/util/List;
    .locals 0
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->sortEpisodes(Ljava/util/List;)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method private final extractEpisode(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    .locals 11
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    check-cast v0, Ljava/util/List;
    const-string v1, "div.card"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    const-string v1, "episodeContainers"
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast p1, Ljava/lang/Iterable;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    move-result-object p1
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/jsoup/nodes/Element;
    const-string v2, "h5"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v2
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;
    move-result-object v2
    const-string v3, "ownText()"
    const-string v4, ""
    if-eqz v2, :cond_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->ownText()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :cond_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v2, Ljava/lang/CharSequence;
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v2
    if-nez v2, :cond_2
    :cond_1
    move-object v2, v4
    :cond_2
    move-object v5, v2
    check-cast v5, Ljava/lang/CharSequence;
    const-string v2, "&nbsp;"
    filled-new-array {v2}, [Ljava/lang/String;
    move-result-object v6
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x6
    const/4 v10, 0x0
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;
    move-result-object v2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    check-cast v2, Ljava/lang/CharSequence;
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v2
    if-nez v2, :cond_3
    move-object v6, v4
    goto :goto_1
    :cond_3
    move-object v6, v2
    :goto_1
    const-string v2, "h5 a"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v2
    const-string v5, "href"
    invoke-virtual {v2, v5}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string v5, "container.select(\"h5 a\").attr(\"href\")"
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v2, Ljava/lang/CharSequence;
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v2
    if-nez v2, :cond_4
    move-object v7, v4
    goto :goto_2
    :cond_4
    move-object v7, v2
    :goto_2
    const-string v2, "h5 .badge-fill"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v2
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    move-result-object v2
    const-string v5, "container.select(\"h5 .badge-fill\").text()"
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v2, Ljava/lang/CharSequence;
    sget-object v5, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->SIZE_REGEX:Lkotlin/text/Regex;
    const-string v8, "$1"
    invoke-virtual {v5, v2, v8}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    check-cast v2, Ljava/lang/CharSequence;
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v8
    const-string v2, "h4"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v2
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;
    move-result-object v2
    if-eqz v2, :cond_6
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->ownText()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :cond_6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v2, Ljava/lang/CharSequence;
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v2
    if-nez v2, :cond_5
    goto :goto_3
    :cond_5
    move-object v9, v2
    goto :goto_4
    :cond_6
    :goto_3
    move-object v9, v4
    :goto_4
    const-string v2, "h4 .badge-outline"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;
    move-result-object v1
    if-eqz v1, :cond_8
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_8
    const-string v2, "text()"
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v1, Ljava/lang/CharSequence;
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_7
    goto :goto_5
    :cond_7
    move-object v10, v1
    goto :goto_6
    :cond_8
    :goto_5
    move-object v10, v4
    :goto_6
    move-object v1, v6
    check-cast v1, Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    move-result v1
    if-lez v1, :cond_0
    move-object v1, v7
    check-cast v1, Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    move-result v1
    if-lez v1, :cond_0
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;
    move-object v5, v1
    invoke-direct/range {v5 .. v10}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto/16 :goto_0
    :cond_9
    return-object v0
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

.method private final getMediaType(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 4
    const-string v0, "script"
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;
    move-result-object p1
    const-string v0, "scriptContent"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast p1, Ljava/lang/CharSequence;
    const-string v0, "/m/lazyload/"
    check-cast v0, Ljava/lang/CharSequence;
    const/4 v1, 0x0
    const/4 v2, 0x2
    const/4 v3, 0x0
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_0
    const-string v3, "m"
    goto :goto_0
    :cond_0
    const-string v0, "/s/lazyload/"
    check-cast v0, Ljava/lang/CharSequence;
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result p1
    if-eqz p1, :cond_1
    const-string v3, "s"
    :cond_1
    :goto_0
    return-object v3
.end method

.method private final getMovieDetails(Lorg/jsoup/nodes/Document;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    .locals 12
    sget-object v0, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v0
    const/4 v1, 0x2
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setStatus(I)V
    const-string v1, "figure.movie-detail-banner img, .movie-detail-banner img, .col-md-3 img, .poster img"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    const-string v2, "abs:src"
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v1, "thumbString"
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    const-string v4, " "
    const-string v5, "%20"
    const/4 v6, 0x0
    const/4 v7, 0x4
    const/4 v8, 0x0
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    const-string v1, "div.ganre-wrapper a"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    const-string v2, "genreElements"
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v1, Ljava/lang/Iterable;
    new-instance v2, Ljava/util/ArrayList;
    const/16 v3, 0xa
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I
    move-result v3
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    check-cast v2, Ljava/util/Collection;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v4
    const-string v3, "it.text()"
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    const-string v5, ","
    const-string v6, ""
    const/4 v7, 0x0
    const/4 v8, 0x4
    const/4 v9, 0x0
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    check-cast v3, Ljava/lang/CharSequence;
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    goto :goto_0
    :cond_0
    check-cast v2, Ljava/util/List;
    move-object v3, v2
    check-cast v3, Ljava/lang/Iterable;
    const-string v1, ", "
    move-object v4, v1
    check-cast v4, Ljava/lang/CharSequence;
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/16 v10, 0x3e
    const/4 v11, 0x0
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setGenre(Ljava/lang/String;)V
    const-string v1, "p.storyline"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    move-result-object p1
    const-string v1, "document.select(\"p.storyline\").text()"
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast p1, Ljava/lang/CharSequence;
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface {v0, p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setDescription(Ljava/lang/String;)V
    return-object v0
.end method

.method private final getMovieMedia(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    .locals 8
    const-string v0, "div.col-md-12 a.btn, .movie-buttons a, a[href*=/m/lazyload/], a[href*=/s/lazyload/], .download-link a"
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->last()Lorg/jsoup/nodes/Element;
    move-result-object v0
    const/4 v1, 0x0
    if-eqz v0, :cond_0
    const-string v2, "abs:href"
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :cond_0
    const-string v3, " "
    const-string v4, "%20"
    const/4 v5, 0x0
    const/4 v6, 0x4
    const/4 v7, 0x0
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    goto :goto_0
    :cond_0
    move-object v0, v1
    :goto_0
    const-string v2, ".badge-wrapper .badge-fill"
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    const-string v2, "document.select(\".badge-wrapper .badge-fill\")"
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast p1, Ljava/util/List;
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lorg/jsoup/nodes/Element;
    if-eqz p1, :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :cond_1
    const-string v3, "|"
    const-string v4, "•"
    const/4 v5, 0x0
    const/4 v6, 0x4
    const/4 v7, 0x0
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    :cond_1
    sget-object p1, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object p1
    const-string v2, ""
    if-nez v0, :cond_2
    move-object v0, v2
    :cond_2
    invoke-interface {p1, v0}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    const-string v0, "Movie"
    invoke-interface {p1, v0}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    const/high16 v0, 0x3f800000    # 1.0f
    invoke-interface {p1, v0}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    if-nez v1, :cond_3
    move-object v1, v2
    :cond_3
    invoke-interface {p1, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setScanlator(Ljava/lang/String;)V
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method private static final getSearchAnime$fetchAnimeByType(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;
    move-result-object v0
    check-cast v0, Lkotlin/coroutines/CoroutineContext;
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;
    const/4 v2, 0x0
    invoke-direct {v1, p0, p1, p2, v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    check-cast v1, Lkotlin/jvm/functions/Function2;
    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    move-result-object p0
    return-object p0
.end method

.method private final getSeriesDetails(Lorg/jsoup/nodes/Document;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    .locals 12
    sget-object v0, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v0
    const/4 v1, 0x0
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setStatus(I)V
    const-string v1, "figure.movie-detail-banner img, .movie-detail-banner img, .col-md-3 img, .poster img"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    const-string v2, "abs:src"
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v1, "thumbString"
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    const-string v4, " "
    const-string v5, "%20"
    const/4 v6, 0x0
    const/4 v7, 0x4
    const/4 v8, 0x0
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    const-string v1, "div.ganre-wrapper a"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    const-string v2, "genreElements"
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast v1, Ljava/lang/Iterable;
    new-instance v2, Ljava/util/ArrayList;
    const/16 v3, 0xa
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I
    move-result v3
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    check-cast v2, Ljava/util/Collection;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v4
    const-string v3, "it.text()"
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    const-string v5, ","
    const-string v6, ""
    const/4 v7, 0x0
    const/4 v8, 0x4
    const/4 v9, 0x0
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    check-cast v3, Ljava/lang/CharSequence;
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    goto/16 :goto_0
    :cond_0
    check-cast v2, Ljava/util/List;
    move-object v3, v2
    check-cast v3, Ljava/lang/Iterable;
    const-string v1, ", "
    move-object v4, v1
    check-cast v4, Ljava/lang/CharSequence;
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/16 v10, 0x3e
    const/4 v11, 0x0
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setGenre(Ljava/lang/String;)V
    const-string v1, "p.storyline"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    move-result-object p1
    const-string v1, "document.select(\"p.storyline\").text()"
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    check-cast p1, Ljava/lang/CharSequence;
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface {v0, p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setDescription(Ljava/lang/String;)V
    return-object v0
.end method

.method private final sortByTitle(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    check-cast p1, Ljava/lang/Iterable;
    new-instance v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$sortByTitle$$inlined$sortedByDescending$1;
    invoke-direct {v0, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$sortByTitle$$inlined$sortedByDescending$1;-><init>(Ljava/lang/String;)V
    check-cast v0, Ljava/util/Comparator;
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method private static final sortByTitle$diceCoefficient(Ljava/lang/String;Ljava/lang/String;)D
    .locals 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0x2
    if-lt v0, v1, :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    move-result v0
    if-ge v0, v1, :cond_0
    goto :goto_2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v0
    add-int/lit8 v0, v0, -0x1
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, -0x1
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    const/4 v3, 0x0
    const/4 v4, 0x0
    :goto_0
    const-string v5, "substring(...)"
    if-ge v4, v0, :cond_1
    add-int/lit8 v6, v4, 0x2
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v6
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    add-int/lit8 v4, v4, 0x1
    goto :goto_0
    :cond_1
    const/4 p0, 0x0
    :goto_1
    if-ge v3, v1, :cond_3
    add-int/lit8 v4, v3, 0x2
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_2
    add-int/lit8 p0, p0, 0x1
    :cond_2
    add-int/lit8 v3, v3, 0x1
    goto :goto_1
    :cond_3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0
    int-to-double p0, p0
    mul-double p0, p0, v2
    add-int/2addr v0, v1
    int-to-double v0, v0
    div-double/2addr p0, v0
    return-wide p0
    :cond_4
    :goto_2
    const-wide/16 p0, 0x0
    return-wide p0
.end method

.method private final sortEpisodes(Ljava/util/List;)Ljava/util/List;
    .locals 10
    new-instance v0, Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->size()I
    move-result v1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
    const/4 v1, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;->getSeasonEpisode()Ljava/lang/String;
    move-result-object v5
    sget-object v6, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->SEASON_PATTERN:Lkotlin/text/Regex;
    check-cast v5, Ljava/lang/CharSequence;
    const/4 v7, 0x2
    const/4 v8, 0x0
    invoke-static {v6, v5, v1, v7, v8}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;
    move-result-object v6
    sget-object v9, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->EPISODE_PATTERN:Lkotlin/text/Regex;
    invoke-static {v9, v5, v1, v7, v8}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;
    move-result-object v5
    const/4 v7, 0x1
    if-eqz v6, :cond_0
    invoke-interface {v6}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;
    move-result-object v6
    if-eqz v6, :cond_0
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/String;
    if-eqz v6, :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    goto :goto_1
    :cond_0
    move v6, v2
    :goto_1
    if-eqz v5, :cond_1
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;
    move-result-object v5
    if-eqz v5, :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
    if-eqz v5, :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    :cond_1
    if-nez v6, :cond_2
    if-eqz v8, :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    move-result v2
    int-to-float v2, v2
    const/high16 v5, 0x41200000    # 10.0f
    div-float/2addr v2, v5
    goto :goto_3
    :cond_2
    if-eqz v8, :cond_4
    if-le v6, v2, :cond_3
    add-int/lit8 v3, v3, 0x1
    :cond_3
    if-le v6, v2, :cond_4
    goto :goto_2
    :cond_4
    add-int/lit8 v3, v3, 0x1
    :goto_2
    int-to-float v2, v3
    :goto_3
    sget-object v5, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v5}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v5
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;->getVideoUrl()Ljava/lang/String;
    move-result-object v7
    const-string v8, ""
    if-nez v7, :cond_5
    move-object v7, v8
    :cond_5
    invoke-interface {v5, v7}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;->getSeasonEpisode()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v9, " - "
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;->getEpisodeName()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-interface {v5, v7}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    invoke-interface {v5, v2}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;->getQuality()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v7, " • "
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$EpisodeData;->getSize()Ljava/lang/String;
    move-result-object v4
    if-nez v4, :cond_6
    goto :goto_4
    :cond_6
    move-object v8, v4
    :goto_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface {v5, v2}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setScanlator(Ljava/lang/String;)V
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move v2, v6
    goto/16 :goto_0
    :cond_7
    check-cast v0, Ljava/util/List;
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method protected animeDetailsParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    .locals 3
    const-string v0, "response"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object p1
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getMediaType(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_dir
    const-string v1, "m"
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_0
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getMovieDetails(Lorg/jsoup/nodes/Document;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object p1
    goto :goto_0
    :cond_0
    const-string v1, "s"
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_1
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getSeriesDetails(Lorg/jsoup/nodes/Document;)Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object p1
    :goto_0
    return-object p1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    const-string v2, "Unsupported media type: "
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
    :cond_dir
    sget-object v0, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v0
    const/4 v1, 0x2
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setStatus(I)V
    const-string v1, "img[src~=(?i)a11|poster|banner|thumb], img:not([src~=(?i)back|folder|parent|icon|/icons/])"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v1
    const-string v2, "abs:src"
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    move-object v2, v1
    check-cast v2, Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :cond_set_thumb
    const-string v1, "a[href~=(?i)\\.(jpg|jpeg|png|webp)]:not([href~=(?i)back|folder|parent|icon])"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object p1
    const-string v1, "abs:href"
    invoke-virtual {p1, v1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
:cond_set_thumb
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    return-object v0
.end method

.method public animeDetailsRequest(Leu/kanade/tachiyomi/animesource/model/SAnime;)Lokhttp3/Request;
    .locals 3
    const-string v0, "anime"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    invoke-direct {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getGlobalHeaders()Lokhttp3/Headers;
    move-result-object v0
    const/4 v1, 0x0
    const/4 v2, 0x4
    invoke-static {p1, v0, v1, v2, v1}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method private createEpisode(Lorg/jsoup/nodes/Element;)Leu/kanade/tachiyomi/animesource/model/SEpisode;
    .locals 3
    sget-object v0, Leu/kanade/tachiyomi/animesource/model/SEpisode;->Companion:Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animesource/model/SEpisode$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v0
    const-string v1, "abs:href"
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setUrl(Ljava/lang/String;)V
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setName(Ljava/lang/String;)V
    const/high16 v1, -0x40800000    # -1.0f
    invoke-interface {v0, v1}, Leu/kanade/tachiyomi/animesource/model/SEpisode;->setEpisode_number(F)V
    return-object v0
.end method

.method private parseDirectoryRecursive(Lorg/jsoup/nodes/Document;ILjava/util/List;Ljava/util/HashSet;)V
    .locals 8
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    const-string v0, "a[href]"
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_loop
    :goto_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-nez v1, :cond_return
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lorg/jsoup/nodes/Element;
    const-string v2, "href"
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string v3, "../"
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_check_q
    goto :goto_loop
    :cond_check_q
    const-string v3, "?"
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :cond_check_abs
    goto :goto_loop
    :cond_check_abs
    const-string v3, "abs:href"
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :cond_check_visited
    goto :goto_loop
    :cond_check_visited
    invoke-virtual {p4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_check_file
    goto :goto_loop
    :cond_check_file
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v4
    const-string v5, ".mkv"
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :cond_add
    const-string v5, ".mp4"
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :cond_add
    goto :cond_dir
    :cond_add
    invoke-direct {p0, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->createEpisode(Lorg/jsoup/nodes/Element;)Leu/kanade/tachiyomi/animesource/model/SEpisode;
    move-result-object v1
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {p4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    goto :goto_loop
    :cond_dir
    if-gtz p2, :cond_loop_end
    const-string v4, "/"
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_loop_end
    invoke-virtual {p4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    new-instance v2, Lokhttp3/Request$Builder;
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v2
    invoke-direct {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getGlobalHeaders()Lokhttp3/Headers;
    move-result-object v3
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    move-result-object v2
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v2
    :try_start_0
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getClient()Lokhttp3/OkHttpClient;
    move-result-object v3
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object v2
    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object v2
    const/4 v3, 0x0
    const/4 v4, 0x1
    invoke-static {v2, v3, v4, v3}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object v2
    add-int/lit8 v3, p2, -0x1
    invoke-direct {p0, v2, v3, p3, p4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->parseDirectoryRecursive(Lorg/jsoup/nodes/Document;ILjava/util/List;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    :cond_loop_end
    goto/16 :goto_loop
    :cond_return
    return-void
.end method

.method protected episodeListParse(Lokhttp3/Response;)Ljava/util/List;
    .locals 4
    const-string v0, "response"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object p1
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getMediaType(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_dir
    const-string v1, "s"
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_movie
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->extractEpisode(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    move-result-object p1
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->sortEpisodes(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    return-object p1
    :cond_movie
    const-string v1, "m"
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_dir
    invoke-direct {p0, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getMovieMedia(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    move-result-object p1
    return-object p1
    :cond_dir
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    new-instance v1, Ljava/util/HashSet;
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    const/4 v2, 0x2
    invoke-direct {p0, p1, v2, v0, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->parseDirectoryRecursive(Lorg/jsoup/nodes/Document;ILjava/util/List;Ljava/util/HashSet;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_empty

    return-object v0

:cond_empty
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No results found"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected episodeListRequest(Leu/kanade/tachiyomi/animesource/model/SAnime;)Lokhttp3/Request;
    .locals 3
    const-string v0, "anime"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;
    move-result-object p1
    invoke-direct {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getGlobalHeaders()Lokhttp3/Headers;
    move-result-object v0
    const/4 v1, 0x0
    const/4 v2, 0x4
    invoke-static {p1, v0, v1, v2, v1}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->time:J
    cmp-long v4, v0, v2
    if-ltz v4, :cond_0
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->rick:Ljava/lang/String;
    goto :goto_0
    :cond_0
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->url:Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 1
    invoke-static {}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    move-result-object v0
    return-object v0
.end method

.method public getId()J
    .locals 2
    iget-wide v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->id:J
    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->lang:Ljava/lang/String;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->name:Ljava/lang/String;
    return-object v0
.end method

.method public getPopularAnime(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getLatestUpdates(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public getSearchAnime(ILjava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_filter

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p3, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

:cond_filter
    invoke-super {p0, p1, p2, p3, p4}, Leu/kanade/tachiyomi/animesource/online/AnimeHttpSource;->getSearchAnime(ILjava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSupportsLatest()Z
    .locals 1
    iget-boolean v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->supportsLatest:Z
    return v0
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
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/16 v7, 0x18
    const/4 v8, 0x0
    invoke-direct/range {v1 .. v8}, Leu/kanade/tachiyomi/animesource/model/Video;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/Headers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-object v0
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

.method protected popularAnimeParse(Lokhttp3/Response;)Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    .locals 12
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;
    move-result-object p1
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "div.card"
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->isEmpty()Z
    move-result v2
    if-nez v2, :cond_dir_listing

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v2
    :goto_search
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_finish
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/jsoup/nodes/Element;
    const-string v3, "h5 a"
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v3
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    move-result-object v4
    const-string v5, "abs:href"
    invoke-virtual {v3, v5}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :cond_goto_search
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_add_search
:cond_goto_search
    goto :goto_search
:cond_add_search
    sget-object v5, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v5}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v5
    invoke-interface {v5, v4}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V
    invoke-interface {v5, v3}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V
    const-string v3, "img"
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    const-string v3, "abs:data-src"
    invoke-virtual {v0, v3}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    move-object v6, v3
    check-cast v6, Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v6
    if-eqz v6, :cond_set_pop_thumb
    const-string v3, "abs:data-lazy-src"
    invoke-virtual {v0, v3}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    move-object v6, v3
    check-cast v6, Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v6
    if-eqz v6, :cond_set_pop_thumb
    const-string v3, "abs:src"
    invoke-virtual {v0, v3}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
:cond_set_pop_thumb
    invoke-interface {v5, v3}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :goto_search

:cond_dir_listing
    const-string v0, "a"
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    move-result-object v0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_loop
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_finish
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
    move-result-object v7
    const-string v8, "Modern browsers"
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Powered by Sam online"
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Parent Directory"
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Name"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Last modified"
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Size"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Description"
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :cond_0
    const-string v8, "Index of"
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-nez v8, :cond_0
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
    sget-object v5, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;
    invoke-virtual {v5}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;
    move-result-object v5
    move-object v6, v7
    check-cast v6, Ljava/lang/CharSequence;
    const-string v0, "/"
    check-cast v0, Ljava/lang/CharSequence;
    const/4 v8, 0x0
    const/4 v9, 0x2
    const/4 v10, 0x0
    invoke-static {v6, v0, v8, v9, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_set_title
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    move-result v0
    add-int/lit8 v0, v0, -0x1
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v7
:cond_set_title
    invoke-interface {v5, v4}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object v6, v4
    check-cast v6, Ljava/lang/CharSequence;
    const-string v7, "/"
    check-cast v7, Ljava/lang/CharSequence;
    const/4 v8, 0x0
    const/4 v9, 0x2
    const/4 v10, 0x0
    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_add_a11
    const-string v6, "/"
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_add_a11
    const-string v6, "a11.jpg"
    
    const-string v7, "172.16.50.7"
    check-cast v7, Ljava/lang/CharSequence;
    invoke-static {v4, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v7
    if-eqz v7, :cond_check_vl_ip
    const-string v6, "a_AL_.jpg"
    goto :goto_build_thumb

:cond_check_vl_ip
    const-string v7, "172.16.50.12"
    check-cast v7, Ljava/lang/CharSequence;
    invoke-static {v4, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v7
    if-eqz v7, :cond_build_thumb
    const-string v6, "a_VL_.jpg"

:cond_build_thumb
:goto_build_thumb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface {v5, v0}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V

:goto_add_item
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :goto_0

:cond_0
    goto/16 :goto_0

:cond_finish
    new-instance p1, Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    const/4 v0, 0x0
    invoke-direct {p1, v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimesPage;-><init>(Ljava/util/List;Z)V
    return-object p1
.end method

.method protected popularAnimeRequest(I)Lokhttp3/Request;
    .locals 4
    const-string v0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    invoke-virtual {p0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getHeaders()Lokhttp3/Headers;
    move-result-object v1
    const/4 v2, 0x0
    const/4 v3, 0x4
    invoke-static {v0, v1, v2, v3, v2}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object v0
    return-object v0
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
