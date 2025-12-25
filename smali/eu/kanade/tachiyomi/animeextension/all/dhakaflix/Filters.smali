.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/Filters;
.super Ljava/lang/Object;

.method public static getFilterList()Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;
    .locals 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    new-instance v1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    const-string v2, "Category"
    sget-object v3, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;
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
    const/4 v0, 0x0
    invoke-virtual {p1, v0}, Leu/kanade/tachiyomi/animesource/model/AnimeFilterList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;
    invoke-virtual {p1}, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlixSelect;->getState()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    move-result p1

    packed-switch p1, :pswitch_data_0
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0

    :pswitch_0
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282025%29/"
    return-object p0
    :pswitch_1
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282024%29/"
    return-object p0
    :pswitch_2
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/%282023%29/"
    return-object p0
    :pswitch_3
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/%282025%29/"
    return-object p0
    :pswitch_4
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/%282024%29/"
    return-object p0
    :pswitch_5
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/%282023%29/"
    return-object p0
    :pswitch_6
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/English%20Movies%20%281080p%29/"
    return-object p0
    :pswitch_7
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/"
    return-object p0
    :pswitch_8
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/Hindi%20Dubbed/"
    return-object p0
    :pswitch_9
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/Kolkata%20Bangla%20Movies/"
    return-object p0
    :pswitch_a
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies/"
    return-object p0
    :pswitch_b
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies%20%281080p%29/"
    return-object p0
    :pswitch_c
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/Foreign%20Language%20Movies/"
    return-object p0
    :pswitch_d
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/IMDb%20Top-250%20Movies/"
    return-object p0
    :pswitch_e
    const-string p0, "http://172.16.50.7/DHAKA-FLIX-7/3D%20Movies/"
    return-object p0
    :pswitch_f
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20L/"
    return-object p0
    :pswitch_10
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%99%A6%20%20M%20%20%E2%80%94%20%20R/"
    return-object p0
    :pswitch_11
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%99%A6%20%20S%20%20%E2%80%94%20%20Z/"
    return-object p0
    :pswitch_12
    const-string p0, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/TV%20Series%20%E2%98%85%20%200%20%20%E2%80%94%20%209/"
    return-object p0
    :pswitch_13
    const-string p0, "http://172.16.50.14/DHAKA-FLIX-14/KOREAN%20TV%20%26%20WEB%20Series/"
    return-object p0
    :pswitch_14
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A5%20%20A%20%20%E2%80%94%20%20F/"
    return-object p0
    :pswitch_15
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A5%20%20G%20%20%E2%80%94%20%20M/"
    return-object p0
    :pswitch_16
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A6%20%20N%20%20%E2%80%94%20%20S/"
    return-object p0
    :pswitch_17
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%99%A6%20%20T%20%20%E2%80%94%20%20Z/"
    return-object p0
    :pswitch_18
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/Anime-TV%20Series%20%E2%98%85%20%200%20%20%E2%80%94%20%209/"
    return-object p0
    :pswitch_19
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Documentary/"
    return-object p0
    :pswitch_1a
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/WWE%20%26%20AEW%20Wrestling/"
    return-object p0
    :pswitch_1b
    const-string p0, "http://172.16.50.9/DHAKA-FLIX-9/Awards%20%26%20TV%20Shows/"
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method