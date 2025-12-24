.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;
.super Ljava/lang/Object;

.field public static final GENRES:[Ljava/lang/String;
.field public static final CATEGORIES:[Ljava/lang/String;
.field public static final YEARS:[Ljava/lang/String;
.field public static final MODES:[Ljava/lang/String;

.method static constructor <clinit>()V
    .locals 3

    # Genres
    const/16 v0, 0x12
    new-array v0, v0, [Ljava/lang/String;
    const/16 v1, 0x0
    const-string v2, "Action"
    aput-object v2, v0, v1
    const/16 v1, 0x1
    const-string v2, "Adventure"
    aput-object v2, v0, v1
    const/16 v1, 0x2
    const-string v2, "Comedy"
    aput-object v2, v0, v1
    const/16 v1, 0x3
    const-string v2, "Crime"
    aput-object v2, v0, v1
    const/16 v1, 0x4
    const-string v2, "Documentary"
    aput-object v2, v0, v1
    const/16 v1, 0x5
    const-string v2, "Drama"
    aput-object v2, v0, v1
    const/16 v1, 0x6
    const-string v2, "Family"
    aput-object v2, v0, v1
    const/16 v1, 0x7
    const-string v2, "Fantasy"
    aput-object v2, v0, v1
    const/16 v1, 0x8
    const-string v2, "History"
    aput-object v2, v0, v1
    const/16 v1, 0x9
    const-string v2, "Horror"
    aput-object v2, v0, v1
    const/16 v1, 0xa
    const-string v2, "Musical"
    aput-object v2, v0, v1
    const/16 v1, 0xb
    const-string v2, "Mystery"
    aput-object v2, v0, v1
    const/16 v1, 0xc
    const-string v2, "Romance"
    aput-object v2, v0, v1
    const/16 v1, 0xd
    const-string v2, "Sci-Fi"
    aput-object v2, v0, v1
    const/16 v1, 0xe
    const-string v2, "Thriller"
    aput-object v2, v0, v1
    const/16 v1, 0xf
    const-string v2, "Tv Movie"
    aput-object v2, v0, v1
    const/16 v1, 0x10
    const-string v2, "War"
    aput-object v2, v0, v1
    const/16 v1, 0x11
    const-string v2, "Western"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->GENRES:[Ljava/lang/String;

    # Categories (Animation, Bangla, etc.)
    const/16 v0, 0x6
    new-array v0, v0, [Ljava/lang/String;
    const/16 v1, 0x0
    const-string v2, "Animation"
    aput-object v2, v0, v1
    const/16 v1, 0x1
    const-string v2, "Bangla"
    aput-object v2, v0, v1
    const/16 v1, 0x2
    const-string v2, "English"
    aput-object v2, v0, v1
    const/16 v1, 0x3
    const-string v2, "Hindi"
    aput-object v2, v0, v1
    const/16 v1, 0x4
    const-string v2, "Others"
    aput-object v2, v0, v1
    const/16 v1, 0x5
    const-string v2, "Tamil"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;

    # Years (2025 down to 2000)
    const/16 v0, 0x1a
    new-array v0, v0, [Ljava/lang/String;
    const/16 v1, 0x0
    const-string v2, "2025"
    aput-object v2, v0, v1
    const/16 v1, 0x1
    const-string v2, "2024"
    aput-object v2, v0, v1
    const/16 v1, 0x2
    const-string v2, "2023"
    aput-object v2, v0, v1
    const/16 v1, 0x3
    const-string v2, "2022"
    aput-object v2, v0, v1
    const/16 v1, 0x4
    const-string v2, "2021"
    aput-object v2, v0, v1
    const/16 v1, 0x5
    const-string v2, "2020"
    aput-object v2, v0, v1
    const/16 v1, 0x6
    const-string v2, "2019"
    aput-object v2, v0, v1
    const/16 v1, 0x7
    const-string v2, "2018"
    aput-object v2, v0, v1
    const/16 v1, 0x8
    const-string v2, "2017"
    aput-object v2, v0, v1
    const/16 v1, 0x9
    const-string v2, "2016"
    aput-object v2, v0, v1
    const/16 v1, 0xa
    const-string v2, "2015"
    aput-object v2, v0, v1
    const/16 v1, 0xb
    const-string v2, "2014"
    aput-object v2, v0, v1
    const/16 v1, 0xc
    const-string v2, "2013"
    aput-object v2, v0, v1
    const/16 v1, 0xd
    const-string v2, "2012"
    aput-object v2, v0, v1
    const/16 v1, 0xe
    const-string v2, "2011"
    aput-object v2, v0, v1
    const/16 v1, 0xf
    const-string v2, "2010"
    aput-object v2, v0, v1
    const/16 v1, 0x10
    const-string v2, "2009"
    aput-object v2, v0, v1
    const/16 v1, 0x11
    const-string v2, "2008"
    aput-object v2, v0, v1
    const/16 v1, 0x12
    const-string v2, "2007"
    aput-object v2, v0, v1
    const/16 v1, 0x13
    const-string v2, "2006"
    aput-object v2, v0, v1
    const/16 v1, 0x14
    const-string v2, "2005"
    aput-object v2, v0, v1
    const/16 v1, 0x15
    const-string v2, "2004"
    aput-object v2, v0, v1
    const/16 v1, 0x16
    const-string v2, "2003"
    aput-object v2, v0, v1
    const/16 v1, 0x17
    const-string v2, "2002"
    aput-object v2, v0, v1
    const/16 v1, 0x18
    const-string v2, "2001"
    aput-object v2, v0, v1
    const/16 v1, 0x19
    const-string v2, "2000"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->YEARS:[Ljava/lang/String;

    # Modes
    const/16 v0, 0x6
    new-array v0, v0, [Ljava/lang/String;
    const/16 v1, 0x0
    const-string v2, "Select Mode..."
    aput-object v2, v0, v1
    const/16 v1, 0x1
    const-string v2, "4K"
    aput-object v2, v0, v1
    const/16 v1, 0x2
    const-string v2, "Genre"
    aput-object v2, v0, v1
    const/16 v1, 0x3
    const-string v2, "Type & Year"
    aput-object v2, v0, v1
    const/16 v1, 0x4
    const-string v2, "Dual Audio"
    aput-object v2, v0, v1
    const/16 v1, 0x5
    const-string v2, "Language"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->MODES:[Ljava/lang/String;

    return-void
.end method
