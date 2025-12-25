.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;
.super Ljava/lang/Object;

.method public static getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;
    const-string v2, "--- Category ---"
    invoke-direct {v1, v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Select Category"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Select Year / Folder"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    invoke-direct {v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;-><init>(Ljava/util/List;)V
    return-object v1
.end method

.method public static getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_search

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://172.16.50.9/search?term="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&types=movies"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

:cond_search
    if-nez p1, :cond_default
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0

:cond_default
    const/4 v0, 0x1
    invoke-virtual {p1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0

    const/4 v1, 0x2
    invoke-virtual {p1, v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    move-result p1

    const-string v1, ""
    packed-switch v0, :pswitch_data_cat
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0

    :pswitch_cat0 # Hindi Movies
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat1 # English Movies
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat2 # English Movies (1080p)
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/English%20Movies%20%281080p%29/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat3 # South Indian Movies
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat4 # South Hindi Dubbed
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/Hindi%20Dubbed/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat5 # Kolkata Bangla Movies
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/Kolkata%20Bangla%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat6 # Animation Movies
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat7 # Foreign Language Movies
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/Foreign%20Language%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat8 # TV Series
    const-string v2, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getSeriesPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat9 # Korean TV & Web Series
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/KOREAN%20TV%20%26%20WEB%20Series/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_catA # Anime-TV Series
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getAnimePath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_catB # Documentary
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/Documentary/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_catC # WWE & AEW Wrestling
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/WWE%20%26%20AEW%20Wrestling/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_catD # Awards & TV Shows
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/Awards%20%26%20TV%20Shows/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_catE # IMDb Top-250 Movies
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/IMDb%20Top-250%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_catF # 3D Movies
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/3D%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_cat10 # Trending Movies
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/Trending%20Movies/"
    invoke-static {v2, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0

    nop

    :pswitch_data_cat
    .packed-switch 0x0
        :pswitch_cat0
        :pswitch_cat1
        :pswitch_cat2
        :pswitch_cat3
        :pswitch_cat4
        :pswitch_cat5
        :pswitch_cat6
        :pswitch_cat7
        :pswitch_cat8
        :pswitch_cat9
        :pswitch_catA
        :pswitch_catB
        :pswitch_catC
        :pswitch_catD
        :pswitch_catE
        :pswitch_catF
        :pswitch_cat10
    .end packed-switch
.end method

.method private static getYearPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_year
    goto :goto_res

    :pswitch_y1
    const-string v0, "%282025%29/"
    goto :goto_res
    :pswitch_y2
    const-string v0, "%282024%29/"
    goto :goto_res
    :pswitch_y3
    const-string v0, "%282023%29/"
    goto :goto_res
    :pswitch_y4
    const-string v0, "%282022%29/"
    goto :goto_res
    :pswitch_y5
    const-string v0, "%282021%29/"
    goto :goto_res
    :pswitch_y6
    const-string v0, "%282020%29/"
    goto :goto_res
    :pswitch_y7
    const-string v0, "%282019%29/"
    goto :goto_res

:goto_res
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_data_year
    .packed-switch 0x1
        :pswitch_y1
        :pswitch_y2
        :pswitch_y3
        :pswitch_y4
        :pswitch_y5
        :pswitch_y6
        :pswitch_y7
    .end packed-switch
.end method

.method private static getSeriesPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_series
    goto :goto_res

    :pswitch_s8
    const-string v0, "TV%20Series%20%E2%99%A5%20A%20%E2%80%94%20L/"
    goto :goto_res
    :pswitch_s9
    const-string v0, "TV%20Series%20%E2%99%A6%20M%20%E2%80%94%20R/"
    goto :goto_res
    :pswitch_sa
    const-string v0, "TV%20Series%20%E2%99%A6%20S%20%E2%80%94%20Z/"
    goto :goto_res

:goto_res
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_data_series
    .packed-switch 0x8
        :pswitch_s8
        :pswitch_s9
        :pswitch_sa
    .end packed-switch
.end method

.method private static getAnimePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_anime
    goto :goto_res

    :pswitch_a8
    const-string v0, "Anime-TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20F/"
    goto :goto_res
    :pswitch_a9
    const-string v0, "Anime-TV%20Series%20%E2%99%A5%20%20G%20%20%E2%80%94%20%20M/"
    goto :goto_res
    :pswitch_aa
    const-string v0, "Anime-TV%20Series%20%E2%99%A6%20%20N%20%20%E2%80%94%20%20S/"
    goto :goto_res

:goto_res
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_data_anime
    .packed-switch 0x8
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
    .end packed-switch
.end method
    