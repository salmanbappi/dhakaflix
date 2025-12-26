.class final Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DhakaFlix.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

# instance fields
.field label:I
.field final synthetic this$1:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;

# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    iput-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->this$1:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;
    const/4 p1, 0x2
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V
    return-void
.end method

# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    new-instance p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;
    iget-object v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->this$1:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;
    invoke-direct {p1, v0, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;Lkotlin/coroutines/Continuation;)V
    check-cast p1, Lkotlin/coroutines/Continuation;
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;
    check-cast p2, Lkotlin/coroutines/Continuation;
    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    move-result-object p1
    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    invoke-virtual {p1, p2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;
    iget v0, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->label:I
    if-nez v0, :cond_err
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    iget-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$2;->this$1:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;
    const-string v0, "http://172.16.50.12"
    const-string v1, "DHAKA-FLIX-12"
    invoke-static {p1, v0, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->access$searchOnServer(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    return-object p1
:cond_err
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "call to 'resume' before 'invoke' with coroutine"
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
