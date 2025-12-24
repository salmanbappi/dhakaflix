.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;
.super Ljava/lang/Object;

.method public static getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;
    const-string v2, "--- Movies by Year ---"
    invoke-direct {v1, v2}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Header;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Select Genre"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->GENRES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Select Year"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Separator;
    invoke-direct {v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilter$Separator;-><init>()V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "TV Series"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->TV_SERIES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Anime Series"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->ANIME_SERIES:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Other Categories"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->OTHERS:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    
    new-instance v1, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    invoke-direct {v1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;-><init>(Ljava/util/List;)V
    return-object v1
.end method

.method public static getUrl(Ljava/lang/String;Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_default
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0

:cond_default
    # Check Other Categories first (idx 5)
    const/4 v0, 0x5
    invoke-virtual {p1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    if-lez v0, :cond_check_anime
    packed-switch v0, :pswitch_data_others
    :cond_check_anime
    
    const/4 v0, 0x4
    invoke-virtual {p1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    if-lez v0, :cond_check_tv
    packed-switch v0, :pswitch_data_anime
    :cond_check_tv

    const/4 v0, 0x3
    invoke-virtual {p1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    if-lez v0, :cond_check_movies
    packed-switch v0, :pswitch_data_tv
    :cond_check_movies

    # Movies by Year (idx 1 and 2)
    const/4 v0, 0x1
    invoke-virtual {p1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {v0}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0 # genre
    
    const/4 v1, 0x2
    invoke-virtual {p1, v1}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    move-result p1 # year
    
    # Logic for Movies: Genre + Year
    if-nez v0, :cond_hindi
    if-nez p1, :cond_hindi_2025
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0
    :cond_hindi_2025
    const/4 v1, 0x1
    if-ne p1, v1, :cond_hindi_2024
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282024%29/"
    return-object p0
    :cond_hindi_2024
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282023%29/"
    return-object p0
    
    :cond_hindi
    const/4 v1, 0x1
    if-ne v0, v1, :cond_south
    if-nez p1, :cond_eng_2025
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/%282025%29/"
    return-object p0
    :cond_eng_2025
    const/4 v1, 0x1
    if-ne p1, v1, :cond_eng_2024
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/%282024%29/"
    return-object p0
    :cond_eng_2024
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/%282023%29/"
    return-object p0
    
    :cond_south
    if-nez p1, :cond_south_2025
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/2025/"
    return-object p0
    :cond_south_2025
    const/4 v1, 0x1
    if-ne p1, v1, :cond_south_2024
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/2024/"
    return-object p0
    :cond_south_2024
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/2023/"
    return-object p0

:pswitch_others_0
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/KOREAN%20TV%20%26%20WEB%20Series/"
    return-object p0
:pswitch_others_1
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies/"
    return-object p0
:pswitch_others_2
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/Foreign%20Language%20Movies/"
    return-object p0
:pswitch_others_3
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/3D%20Movies/"
    return-object p0
:pswitch_others_4
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Documentary/"
    return-object p0
:pswitch_others_5
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/WWE%20%26%20AEW%20Wrestling/"
    return-object p0
:pswitch_others_6
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Awards%20%26%20TV%20Shows/"
    return-object p0
:pswitch_others_7
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0

:pswitch_anime_0
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%98%85%20%200%20%20%E2%80%94%20%209/"
    return-object p0
:pswitch_anime_1
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20F/"
    return-object p0
:pswitch_anime_2
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A5%20%20G%20%20%E2%80%94%20%20M/"
    return-object p0
:pswitch_anime_3
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A6%20%20N%20%20%E2%80%94%20%20S/"
    return-object p0
:pswitch_anime_4
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A6%20%20T%20%20%E2%80%94%20%20Z/"
    return-object p0

:pswitch_tv_0
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%98%85%20%200%20%20%E2%80%94%20%209/"
    return-object p0
:pswitch_tv_1
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20L/"
    return-object p0
:pswitch_tv_2
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%99%A6%20%20M%20%20%E2%80%94%20%20R/"
    return-object p0
:pswitch_tv_3
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%99%A6%20%20S%20%20%E2%80%94%20%20Z/"
    return-object p0

.line 300
:pswitch_data_others
.packed-switch 0x0
    :pswitch_others_0
    :pswitch_others_1
    :pswitch_others_2
    :pswitch_others_3
    :pswitch_others_4
    :pswitch_others_5
    :pswitch_others_6
    :pswitch_others_7
.end packed-switch

:pswitch_data_anime
.packed-switch 0x0
    :pswitch_anime_0
    :pswitch_anime_1
    :pswitch_anime_2
    :pswitch_anime_3
    :pswitch_anime_4
.end packed-switch

:pswitch_data_tv
.packed-switch 0x0
    :pswitch_tv_0
    :pswitch_tv_1
    :pswitch_tv_2
    :pswitch_tv_3
.end packed-switch
.end method