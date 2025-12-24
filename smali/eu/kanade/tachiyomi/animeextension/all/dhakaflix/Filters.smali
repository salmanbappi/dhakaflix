.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;
.super Ljava/lang/Object;
.source "Filters.smali"

.method public static getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 10
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;
    const-string v2, "Search Mode"
    invoke-direct {v1, v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Mode"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->MODES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Separator;
    invoke-direct {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Separator;-><init>()V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;
    const-string v2, "Filters (Apply based on Mode)"
    invoke-direct {v1, v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "4K Category"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Genre"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->GENRES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Type"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Year"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    invoke-direct {v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;-><init>(Ljava/util/List;)V
    return-object v1
.end method

.method public static getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_query_not_null

    const-string p0, ""

    :cond_query_not_null
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :cond_query
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "http://172.16.50.9/m/search?category=m&searchbox="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
:cond_query
    move-object v0, p1
    const/4 v1, 0x1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Select;
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter;->getState()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    packed-switch v1, :pswitch_data_0
    goto :default_mode
:pswitch_0
:default_mode
    const-string v0, "https://172.16.50.9/m/recent/1"
    return-object v0
:pswitch_1
    const/4 v1, 0x4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Select;
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter;->getState()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    sget-object v2, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
    aget-object v1, v2, v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "https://172.16.50.9/m/uhd/"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
:pswitch_2
    const/4 v1, 0x5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Select;
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter;->getState()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    sget-object v2, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->GENRES:[Ljava/lang/String;
    aget-object v1, v2, v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "https://172.16.50.9/m/genre/"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
:pswitch_3
    const/4 v1, 0x6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Select;
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter;->getState()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    sget-object v2, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
    aget-object v1, v2, v1
    const/4 v2, 0x7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Select;
    invoke-virtual {v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter;->getState()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;
    aget-object v2, v3, v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "https://172.16.50.9/m/type/"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "/"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
:pswitch_4
    const-string v0, "https://172.16.50.9/m/dual/Hindi"
    return-object v0
:pswitch_5
    const-string v0, "https://172.16.50.9/m/lan/English"
    return-object v0

:pswitch_data_0
.packed-switch 0x0
    :pswitch_0
    :pswitch_1
    :pswitch_2
    :pswitch_3
    :pswitch_4
    :pswitch_5
.end packed-switch
.end method
