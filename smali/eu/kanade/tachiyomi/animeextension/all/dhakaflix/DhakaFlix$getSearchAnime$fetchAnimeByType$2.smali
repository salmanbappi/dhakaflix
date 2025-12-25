.class final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DhakaFlix.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getSearchAnime$fetchAnimeByType(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Leu/kanade/tachiyomi/animesource/model/SAnime;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDhakaFlix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DhakaFlix.kt\neu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,364:1\n1557#2:365\n1628#2,3:366\n*S KotlinDebug\n*F\n+ 1 DhakaFlix.kt\neu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2\n*L\n103#1:365\n103#1:366,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Leu/kanade/tachiyomi/animesource/model/SAnime;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "eu.kanade.tachiyomi.animeextension.all.dhakaflix.DhakaFlix$getSearchAnime$fetchAnimeByType$2"
    f = "DhakaFlix.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $query:Ljava/lang/String;

.field final synthetic $type:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iput-object p2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$query:Ljava/lang/String;

    iput-object p3, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$type:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;

    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$query:Ljava/lang/String;

    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$type:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Leu/kanade/tachiyomi/animesource/model/SAnime;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->label:I

    if-nez v0, :cond_8

    .line 92
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    new-instance p1, Lokhttp3/FormBody$Builder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$query:Ljava/lang/String;

    iget-object v3, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$type:Ljava/lang/String;

    const-string v4, "term"

    .line 94
    invoke-virtual {p1, v4, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string v2, "types"

    .line 95
    invoke-virtual {p1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 96
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 98
        new-instance v2, Ljava/lang/StringBuilder;
        invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
        const-string v3, "http://172.16.50.14"
        invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
        const-string v3, "/search"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    invoke-static {v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->access$getGlobalHeaders(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)Lokhttp3/Headers;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lokhttp3/RequestBody;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Leu/kanade/tachiyomi/network/RequestsKt;->POST$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    .line 99
    invoke-virtual {v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 100
    invoke-static {p1, v0, v1, v0}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    const-string p1, "div.moviesearchiteam a"

    .line 103
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v2, "document.select(\"div.moviesearchiteam a\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iget-object v3, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$fetchAnimeByType$2;->$type:Ljava/lang/String;

    .line 365
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 366
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 367
    check-cast v5, Lorg/jsoup/nodes/Element;

    const-string v6, "div.p-1"

    .line 104
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    .line 105
    sget-object v7, Leu/kanade/tachiyomi/animesource/model/SAnime;->Companion:Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;

    invoke-virtual {v7}, Leu/kanade/tachiyomi/animesource/model/SAnime$Companion;->create()Leu/kanade/tachiyomi/animesource/model/SAnime;

    move-result-object v7

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "href"

    invoke-virtual {v5, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V

    const-string v8, "img"

    .line 107
    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, "src"

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "localhost"

    :cond_1
    invoke-interface {v7, v5}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    const-string v5, "div.searchtitle"

    .line 109
    invoke-virtual {v6, v5}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    if-nez v5, :cond_3

    const-string v5, "Unknown"

    goto :goto_2

    :cond_3
    const-string v8, "card?.selectFirst(\"div.s\u2026le\")?.text() ?: \"Unknown\""

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const-string v8, "m"

    .line 112
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v6, :cond_4

    const-string v8, "div.searchdetails"

    .line 113
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v0

    :goto_3
    if-nez v6, :cond_5

    const-string v6, ""

    goto :goto_4

    :cond_5
    const-string v8, "card?.selectFirst(\"div.s\u2026chdetails\")?.text() ?: \"\""

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :goto_4
    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "4K"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 4K"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    :cond_6
    invoke-interface {v7, v5}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V

    .line 367
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 368
    :cond_7
    check-cast v4, Ljava/util/List;

    return-object v4

    .line 92
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
