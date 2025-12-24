.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;
.super Ljava/lang/Object;

.method public static getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 10
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;
    const-string v2, "Categories"
    invoke-direct {v1, v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Choose Category"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    invoke-direct {v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;-><init>(Ljava/util/List;)V
    return-object v1
.end method

.method public static getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    .locals 6
    if-nez p0, :cond_q_not_null
    const-string p0, ""
:cond_q_not_null
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :cond_query
    const-string v0, "http://172.16.50.9/search/" # Placeholder if search exists
    return-object v0
:cond_query
    const/4 v1, 0x1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Select;
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter;->getState()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    sget-object v2, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORY_URLS:[Ljava/lang/String;
    aget-object v0, v2, v1
    return-object v0
.end method
