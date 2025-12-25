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
    const-string v2, "Select Year"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Select Alphabet / Number"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->ALPHABET:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Select Language"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->LANGUAGES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    invoke-direct {v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;-><init>(Ljava/util/List;)V
    return-object v1
.end method

.method public static getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_search

    return-object p0

:cond_search
    if-nez p1, :cond_default
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi Movies/(2025)/"
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
    move-result-object v1
    check-cast v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1

    const/4 v2, 0x3
    invoke-virtual {p1, v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2

    const/4 v3, 0x4
    invoke-virtual {p1, v3}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    move-result p1

    packed-switch v0, :pswitch_data_cat
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0

    :pswitch_cat0 # Hindi Movies
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/"
    goto :goto_path
    :pswitch_cat1 # English Movies
    const-string v3, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/"
    goto :goto_path
    :pswitch_cat2 # English Movies (1080p)
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/English%20Movies%20%281080p%29/"
    invoke-static {v3, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPathSimple(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
    :pswitch_cat3 # South Indian Movies
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/"
    invoke-static {v3, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPathSimple(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
    :pswitch_cat4 # South Hindi Dubbed
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/Hindi%20Dubbed/"
    invoke-static {v3, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPathSimple(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
    :pswitch_cat5 # Kolkata Bangla Movies
    const-string v3, "http://172.16.50.7/DHAKA-FLIX-7/Kolkata%20Bangla%20Movies/"
    goto :goto_path
    :pswitch_cat6 # Animation Movies
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies/"
    goto :goto_path
    :pswitch_cat7 # Foreign Language Movies
    const-string v3, "http://172.16.50.7/DHAKA-FLIX-7/Foreign%20Language%20Movies/"
    if-lez p1, :cond_goto_lang
    invoke-static {v3, p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getLanguagePath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
:cond_goto_lang
    goto :goto_path
    :pswitch_cat8 # TV Series
    const-string v3, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/"
    if-lez v2, :cond_goto_tv_alpha
    invoke-static {v3, v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getSeriesPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
:cond_goto_tv_alpha
    goto :goto_path
    :pswitch_cat9 # Korean TV & Web Series
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/KOREAN%20TV%20%26%20WEB%20Series/"
    goto :goto_path
    :pswitch_catA # Anime-TV Series
    const-string v3, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/"
    if-lez v2, :cond_goto_anime_alpha
    invoke-static {v3, v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getAnimePath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
:cond_goto_anime_alpha
    goto :goto_path
    :pswitch_catB # Documentary
    const-string v3, "http://172.16.50.9/DHAKA-FLIX-9/Documentary/"
    goto :goto_path
    :pswitch_catC # WWE & AEW Wrestling
    const-string v3, "http://172.16.50.9/DHAKA-FLIX-9/WWE%20%26%20AEW%20Wrestling/"
    goto :goto_path
    :pswitch_catD # Awards & TV Shows
    const-string v3, "http://172.16.50.9/DHAKA-FLIX-9/Awards%20%26%20TV%20Shows/"
    goto :goto_path
    :pswitch_catE # IMDb Top-250 Movies
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/IMDb%20Top-250%20Movies/"
    goto :goto_path
    :pswitch_catF # 3D Movies
    const-string v3, "http://172.16.50.7/DHAKA-FLIX-7/3D%20Movies/"
    goto :goto_path
    :pswitch_cat10 # Trending Movies
    const-string v3, "http://172.16.50.14/DHAKA-FLIX-14/Trending%20Movies/"
    goto :goto_path

:goto_path
    if-lez v2, :cond_use_year
    invoke-static {v3, v2}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getAlphabetPath(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
:cond_use_year
    invoke-static {v3, v1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;->getYearPath(Ljava/lang/String;I)Ljava/lang/String;
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
    if-nez p1, :cond_start
    return-object p0
:cond_start
    packed-switch p1, :pswitch_data_year
    goto :goto_res
    :pswitch_y1
    const-string v0, "(2025)/"
    goto :goto_res
    :pswitch_y2
    const-string v0, "(2024)/"
    goto :goto_res
    :pswitch_y3
    const-string v0, "(2023)/"
    goto :goto_res
    :pswitch_y4
    const-string v0, "(2022)/"
    goto :goto_res
    :pswitch_y5
    const-string v0, "(2021)/"
    goto :goto_res
    :pswitch_y6
    const-string v0, "(2020)/"
    goto :goto_res
    :pswitch_y7
    const-string v0, "(2019)/"
    goto :goto_res
    :pswitch_y8
    const-string v0, "(2018)/"
    goto :goto_res
    :pswitch_y9
    const-string v0, "(2017)/"
    goto :goto_res
    :pswitch_y10
    const-string v0, "(2016)/"
    goto :goto_res
    :pswitch_y11
    const-string v0, "(2015)/"
    goto :goto_res
    :pswitch_y12
    const-string v0, "(2014)/"
    goto :goto_res
    :pswitch_y13
    const-string v0, "(2013)/"
    goto :goto_res
    :pswitch_y14
    const-string v0, "(2012)/"
    goto :goto_res
    :pswitch_y15
    const-string v0, "(2011)/"
    goto :goto_res
    :pswitch_y16
    const-string v0, "(2010)/"
    goto :goto_res
    :pswitch_y17
    const-string v0, "(2009) & Before/"
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
        :pswitch_y8
        :pswitch_y9
        :pswitch_y10
        :pswitch_y11
        :pswitch_y12
        :pswitch_y13
        :pswitch_y14
        :pswitch_y15
        :pswitch_y16
        :pswitch_y17
    .end packed-switch
.end method

.method private static getAlphabetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_alpha
    goto :goto_res
    :pswitch_a1
    const-string v0, "0-9/"
    goto :goto_res
    :pswitch_a2
    const-string v0, "A-F/"
    goto :goto_res
    :pswitch_a3
    const-string v0, "G-M/"
    goto :goto_res
    :pswitch_a4
    const-string v0, "N-S/"
    goto :goto_res
    :pswitch_a5
    const-string v0, "T-Z/"
    goto :goto_res

:goto_res
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_data_alpha
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
    .end packed-switch
.end method

.method private static getSeriesPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_series
    goto :goto_res
    :pswitch_s1
    const-string v0, "TV%20Series%20%E2%98%85%20%200%20%20%E2%80%94%20%209/"
    goto :goto_res
    :pswitch_s2
    const-string v0, "TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20L/"
    goto :goto_res
    :pswitch_s3
    const-string v0, "TV%20Series%20%E2%99%A6%20%20M%20%20%E2%80%94%20%20R/"
    goto :goto_res
    :pswitch_s4
    const-string v0, "TV%20Series%20%E2%99%A6%20%20S%20%20%E2%80%94%20%20Z/"
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
    .packed-switch 0x1
        :pswitch_s1
        :pswitch_s2
        :pswitch_s3
        :pswitch_s4
    .end packed-switch
.end method

.method private static getAnimePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_anime
    goto :goto_res
    :pswitch_a1
    const-string v0, "Anime-TV%20Series%20%E2%98%85%20%200%20%20%E2%80%94%20%209/"
    goto :goto_res
    :pswitch_a2
    const-string v0, "Anime-TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20F/"
    goto :goto_res
    :pswitch_a3
    const-string v0, "Anime-TV%20Series%20%E2%99%A5%20%20G%20%20%E2%80%94%20%20M/"
    goto :goto_res
    :pswitch_a4
    const-string v0, "Anime-TV%20Series%20%E2%99%A6%20%20N%20%20%E2%80%94%20%20S/"
    goto :goto_res
    :pswitch_a5
    const-string v0, "Anime-TV%20Series%20%E2%99%A6%20%20T%20%20%E2%80%94%20%20Z/"
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
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
    .end packed-switch
.end method

.method private static getLanguagePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    packed-switch p1, :pswitch_data_lang
    goto :goto_res
    :pswitch_l1
    const-string v0, "Korean/"
    goto :goto_res
    :pswitch_l2
    const-string v0, "Chinese/"
    goto :goto_res
    :pswitch_l3
    const-string v0, "Japanese/"
    goto :goto_res
    :pswitch_l4
    const-string v0, "Spanish/"
    goto :goto_res
    :pswitch_l5
    const-string v0, "French/"
    goto :goto_res
    :pswitch_l6
    const-string v0, "Italian/"
    goto :goto_res
    :pswitch_l7
    const-string v0, "German/"
    goto :goto_res
    :pswitch_l8
    const-string v0, "Portuguese/"
    goto :goto_res
    :pswitch_l9
    const-string v0, "Russian/"
    goto :goto_res
    :pswitch_l10
    const-string v0, "Thai/"
    goto :goto_res
    :pswitch_l11
    const-string v0, "Other/"
    goto :goto_res

:goto_res
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_data_lang
    .packed-switch 0x1
        :pswitch_l1
        :pswitch_l2
        :pswitch_l3
        :pswitch_l4
        :pswitch_l5
        :pswitch_l6
        :pswitch_l7
        :pswitch_l8
        :pswitch_l9
        :pswitch_l10
        :pswitch_l11
    .end packed-switch
.end method

.method private static getYearPathSimple(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    const-string v0, ""
    if-nez p1, :cond_start
    return-object p0
:cond_start
    packed-switch p1, :pswitch_data_year_simple
    goto :goto_res
    :pswitch_y1
    const-string v0, "2025/"
    goto :goto_res
    :pswitch_y2
    const-string v0, "2024/"
    goto :goto_res
    :pswitch_y3
    const-string v0, "2023/"
    goto :goto_res
    :pswitch_y4
    const-string v0, "2022/"
    goto :goto_res
    :pswitch_y5
    const-string v0, "2021/"
    goto :goto_res
    :pswitch_y6
    const-string v0, "2020/"
    goto :goto_res
    :pswitch_y7
    const-string v0, "2019/"
    goto :goto_res
    :pswitch_y8
    const-string v0, "2018/"
    goto :goto_res
    :pswitch_y9
    const-string v0, "2017/"
    goto :goto_res
    :pswitch_y10
    const-string v0, "2016/"
    goto :goto_res
    :pswitch_y11
    const-string v0, "2015/"
    goto :goto_res
    :pswitch_y12
    const-string v0, "2014/"
    goto :goto_res
    :pswitch_y13
    const-string v0, "2013/"
    goto :goto_res
    :pswitch_y14
    const-string v0, "2012/"
    goto :goto_res
    :pswitch_y15
    const-string v0, "2011/"
    goto :goto_res
    :pswitch_y16
    const-string v0, "2010/"
    goto :goto_res
    :pswitch_y17
    const-string v0, "2009 & Before/"
    goto :goto_res

:goto_res
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0

    :pswitch_data_year_simple
    .packed-switch 0x1
        :pswitch_y1
        :pswitch_y2
        :pswitch_y3
        :pswitch_y4
        :pswitch_y5
        :pswitch_y6
        :pswitch_y7
        :pswitch_y8
        :pswitch_y9
        :pswitch_y10
        :pswitch_y11
        :pswitch_y12
        :pswitch_y13
        :pswitch_y14
        :pswitch_y15
        :pswitch_y16
        :pswitch_y17
    .end packed-switch
.end method