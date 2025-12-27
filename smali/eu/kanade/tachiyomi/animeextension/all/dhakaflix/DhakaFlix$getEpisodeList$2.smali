.class final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DhakaFlix.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getEpisodeList(Leu/kanade/tachiyomi/animesource/model/SAnime;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Leu/kanade/tachiyomi/animesource/model/SEpisode;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDhakaFlix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DhakaFlix.kt\neu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,364:1\n1557#2:365\n1628#2,3:366\n*S KotlinDebug\n*F\n+ 1 DhakaFlix.kt\neu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2\n*L\n209#1:365\n209#1:366,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Leu/kanade/tachiyomi/animesource/model/SEpisode;",
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
    c = "eu.kanade.tachiyomi.animeextension.all.dhakaflix.DhakaFlix$getEpisodeList$2"
    f = "DhakaFlix.kt"
    i = {}
    l = {
        0xd7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $anime:Leu/kanade/tachiyomi/animesource/model/SAnime;

.field label:I

.field final synthetic this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/animesource/model/SAnime;Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/animesource/model/SAnime;",
            "Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->$anime:Leu/kanade/tachiyomi/animesource/model/SAnime;

    iput-object p2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;

    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->$anime:Leu/kanade/tachiyomi/animesource/model/SAnime;

    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    invoke-direct {p1, v0, v1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;-><init>(Leu/kanade/tachiyomi/animesource/model/SAnime;Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Leu/kanade/tachiyomi/animesource/model/SEpisode;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 197
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->$anime:Leu/kanade/tachiyomi/animesource/model/SAnime;

    .line 198
    invoke-interface {p1}, Leu/kanade/tachiyomi/animesource/model/SAnime;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    invoke-static {v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->access$getGlobalHeaders(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)Lokhttp3/Headers;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3, v4}, Leu/kanade/tachiyomi/network/RequestsKt;->GET$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    .line 199
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 200
    invoke-static {p1, v4, v2, v4}, Leu/kanade/tachiyomi/util/JsoupExtensionsKt;->asJsoup$default(Lokhttp3/Response;Ljava/lang/String;ILjava/lang/Object;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 201
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    iget-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    .line 203
    invoke-static {p1, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->access$getMediaType(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v3, "m"

    .line 205
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    .line 206
    invoke-static {p1, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->access$getMovieMedia(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lorg/jsoup/nodes/Document;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "tbody tr th.card a[href^=\'/s/view/\']"

    .line 208
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v1, "document.select(\"tbody t\u2026ard a[href^=\'/s/view/\']\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 366
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 367
    check-cast v3, Lorg/jsoup/nodes/Element;

    const-string v5, "href"

    .line 209
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 365
    check-cast v1, Ljava/lang/Iterable;

    .line 210
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/16 v5, 0x19

    invoke-static {v5, v1, v3, v4}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object v1

    .line 215
    new-instance v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2$1;

    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    invoke-direct {v3, p1, v5, v1, v4}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2$1;-><init>(Ljava/util/List;Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Lkotlinx/coroutines/sync/Semaphore;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getEpisodeList$2;->label:I

    invoke-static {v3, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 205
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    :goto_2
    return-object p1

    .line 203
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown media type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
