.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;
.super Ljava/lang/Object;

.field public static final YEARS:[Ljava/lang/String;
.field public static final GENRES:[Ljava/lang/String;
.field public static final TV_SERIES:[Ljava/lang/String;
.field public static final ANIME_SERIES:[Ljava/lang/String;
.field public static final OTHERS:[Ljava/lang/String;

.method static constructor <clinit>()V
    .locals 3

    # YEARS
    const/4 v0, 0x3
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "2025"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "2024"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "2023"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;

    # GENRES
    const/4 v0, 0x3
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "Hindi Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "English Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "South Movies"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->GENRES:[Ljava/lang/String;

    # TV_SERIES
    const/4 v0, 0x4
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "TV Series (0-9)"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "TV Series (A-L)"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "TV Series (M-R)"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "TV Series (S-Z)"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->TV_SERIES:[Ljava/lang/String;

    # ANIME_SERIES
    const/4 v0, 0x5
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "Anime (0-9)"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "Anime (A-F)"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "Anime (G-M)"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "Anime (N-S)"
    aput-object v2, v0, v1
    const/4 v1, 0x4
    const-string v2, "Anime (T-Z)"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->ANIME_SERIES:[Ljava/lang/String;

    # OTHERS
    const/16 v0, 0x8
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "Korean TV Series"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "Animation Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "Foreign Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "3D Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x4
    const-string v2, "Documentary"
    aput-object v2, v0, v1
    const/4 v1, 0x5
    const-string v2, "Wrestling"
    aput-object v2, v0, v1
    const/4 v1, 0x6
    const-string v2, "Awards & Shows"
    aput-object v2, v0, v1
    const/4 v1, 0x7
    const-string v2, "All Recent"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->OTHERS:[Ljava/lang/String;

    return-void
.end method