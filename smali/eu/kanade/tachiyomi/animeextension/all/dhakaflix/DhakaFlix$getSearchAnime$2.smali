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

.method private final searchOnServer(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0 # Request URL

    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "{\"action\":\"get\",\"search\":{\"href\":\"/"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "/\",\"pattern\":\""
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\",\"ignorecase\":true}}"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1 # JSON Body string

    const-string v2, "application/json; charset=utf-8"
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v2
    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;
    move-result-object v2 # RequestBody

    iget-object v1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    invoke-static {v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->access$getGlobalHeaders(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;)Lokhttp3/Headers;
    move-result-object v1 # Headers

    const/4 v3, 0x0
    const/16 v4, 0x8
    const/4 v5, 0x0
    # POST$default(url, headers, body, cache, flags, extra)
    # v0:url, v1:headers, v2:body, v3:cache, v4:flags, v5:extra
    invoke-static/range {v0 .. v5}, Leu/kanade/tachiyomi/network/RequestsKt;->POST$default(Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Lokhttp3/CacheControl;ILjava/lang/Object;)Lokhttp3/Request;
    move-result-object v1

    iget-object v2, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;
    invoke-virtual {v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;->getClient()Lokhttp3/OkHttpClient;
    move-result-object v2
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object v1
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v2
    if-eqz v2, :cond_close
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    move-result-object v2 # Response JSON string

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p1
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "://"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1 # Base URL (schema://host)

    const-string v3, "\"href\":\"([^\"]+)\"[^}]*\"size\":null"
    const/4 v4, 0x2
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    move-result-object v3
    check-cast v2, Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object v2

    :cond_loop
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    move-result v3
    if-eqz v3, :cond_close
    const/4 v3, 0x1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v3 # href

    new-instance v4, Leu/kanade/tachiyomi/animesource/model/SAnimeImpl;
    invoke-direct {v4}, Leu/kanade/tachiyomi/animesource/model/SAnimeImpl;-><init>()V

    move-object v5, v3
    const-string v6, "/"
    check-cast v6, Ljava/lang/CharSequence;
    const/4 v7, 0x0
    const/4 v8, 0x2
    const/4 v9, 0x0
    invoke-static {v5, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v6
    if-eqz v6, :cond_trim_slash
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    add-int/lit8 v6, v6, -0x1
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    :cond_trim_slash
    const-string v6, "/"
    invoke-static {v5, v6, v5}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "UTF-8"
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    check-cast v4, Leu/kanade/tachiyomi/animesource/model/SAnime;
    invoke-interface {v4, v5}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setTitle(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object v6, v3
    check-cast v6, Ljava/lang/CharSequence;
    const-string v7, "/"
    check-cast v7, Ljava/lang/CharSequence;
    const/4 v8, 0x0
    const/4 v9, 0x2
    const/4 v10, 0x0
    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_res_slash
    const-string v6, "/"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_res_slash
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface {v4, v3}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setUrl(Ljava/lang/String;)V

    # Thumbnail guessing
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object v6, v3
    check-cast v6, Ljava/lang/CharSequence;
    const-string v7, "/"
    check-cast v7, Ljava/lang/CharSequence;
    const/4 v8, 0x0
    const/4 v9, 0x2
    const/4 v10, 0x0
    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_add_slash
    const-string v6, "/"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_add_slash
    const-string v6, "9"
    check-cast v6, Ljava/lang/CharSequence;
    invoke-static {p2, v6, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    move-result v6
    if-eqz v6, :cond_use_al
    const-string v6, "a11.jpg"
    goto :goto_thumb
:cond_use_al
    const-string v6, "a_AL_.jpg"
:goto_thumb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6 # raw thumb url
    const-string v7, " "
    const-string v8, "%20"
    const/4 v9, 0x0
    const/4 v10, 0x4
    const/4 v11, 0x0
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-interface {v4, v5}, Leu/kanade/tachiyomi/animesource/model/SAnime;->setThumbnail_url(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :cond_loop

:cond_close
    invoke-virtual {v1}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

:catch_0
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

    const-string v0, "call to 'resume' before 'invoke' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    # Server 14
    new-instance v4, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;

    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iget-object v6, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;

    const-string v7, "http://172.16.50.14"

    const-string v8, "DHAKA-FLIX-14"

    const/4 v10, 0x0

    move-object v3, v4

    move-object v11, v10

    invoke-direct/range {v3 .. v11}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Server 12
    new-instance v4, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;

    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iget-object v6, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;

    const-string v7, "http://172.16.50.12"

    const-string v8, "DHAKA-FLIX-12"

    const/4 v10, 0x0

    move-object v3, v4

    move-object v11, v10

    invoke-direct/range {v3 .. v11}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Server 9
    new-instance v4, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;

    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iget-object v6, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;

    const-string v7, "http://172.16.50.9"

    const-string v8, "DHAKA-FLIX-9"

    const/4 v10, 0x0

    move-object v3, v4

    move-object v11, v10

    invoke-direct/range {v3 .. v11}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Server 7
    new-instance v4, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;

    iget-object v5, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->this$0:Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;

    iget-object v6, p0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2;->$query:Ljava/lang/String;

    const-string v7, "http://172.16.50.7"

    const-string v8, "DHAKA-FLIX-7"

    const/4 v10, 0x0

    move-object v3, v4

    move-object v11, v10

    invoke-direct/range {v3 .. v11}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix$getSearchAnime$2$SearchTask;-><init>(Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

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
