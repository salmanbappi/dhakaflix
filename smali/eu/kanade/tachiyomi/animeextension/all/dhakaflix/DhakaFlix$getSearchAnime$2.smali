.class final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DhakaFlix.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getSearchAnime(ILjava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

# instance fields
.field final synthetic $query:Ljava/lang/String;
.field private synthetic L$0:Ljava/lang/Object;
.field label:I
.field final synthetic this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    iput-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iput-object p2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    const/4 p1, 0x2
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V
    return-void
.end method

# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    new-instance v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;
    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    invoke-direct {v0, v1, v2, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    iput-object p1, v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->L$0:Ljava/lang/Object;
    check-cast v0, Lkotlin/coroutines/Continuation;
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;
    check-cast p2, Lkotlin/coroutines/Continuation;
    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    move-result-object p1
    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    invoke-virtual {p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;
    move-result-object v0
    iget v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->label:I
    const/4 v2, 0x1
    if-eqz v1, :cond_1
    if-ne v1, v2, :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    goto/16 :goto_await

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "call to \"resume\" before \"invoke\" with coroutine"
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    iget-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->L$0:Ljava/lang/Object;
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    iget-object v4, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    const/4 v8, 0x0

    # Server 14
    new-instance v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;
    const-string v6, "http://172.16.50.14"
    const-string v7, "DHAKA-FLIX-14"
    invoke-direct/range {v3 .. v8}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    move-object v6, v3
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x3
    const/4 v8, 0x0
    move-object v3, p1
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    move-result-object v3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Server 12
    iget-object v4, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    const/4 v8, 0x0
    new-instance v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;
    const-string v6, "http://172.16.50.12"
    const-string v7, "DHAKA-FLIX-12"
    invoke-direct/range {v3 .. v8}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    move-object v6, v3
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x3
    const/4 v8, 0x0
    move-object v3, p1
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    move-result-object v3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Server 9
    iget-object v4, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    const/4 v8, 0x0
    new-instance v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;
    const-string v6, "http://172.16.50.9"
    const-string v7, "DHAKA-FLIX-9"
    invoke-direct/range {v3 .. v8}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    move-object v6, v3
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x3
    const/4 v8, 0x0
    move-object v3, p1
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    move-result-object v3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Server 7
    iget-object v4, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    const/4 v8, 0x0
    new-instance v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;
    const-string v6, "http://172.16.50.7"
    const-string v7, "DHAKA-FLIX-7"
    invoke-direct/range {v3 .. v8}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    move-object v6, v3
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v7, 0x3
    const/4 v8, 0x0
    move-object v3, p1
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    move-result-object v3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v9
    check-cast p1, Ljava/util/Collection;
    move-object v1, p0
    check-cast v1, Lkotlin/coroutines/Continuation;
    iput v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->label:I
    invoke-static {p1, v1}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    move-result-object p1
    if-ne p1, v0, :cond_2
    return-object v0

    :cond_2
    :goto_await
    check-cast p1, Ljava/lang/Iterable;
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;
    move-result-object p1
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    invoke-static {v0, p1, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->access$sortByTitle(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    new-instance v0, Leu/kanade/tachiyomi/animesource/model/AnimesPage;
    const/4 v1, 0x0
    invoke-direct {v0, p1, v1}, Leu/kanade/tachiyomi/animesource/model/AnimesPage;-><init>(Ljava/util/List;Z)V
    return-object v0
.end method
