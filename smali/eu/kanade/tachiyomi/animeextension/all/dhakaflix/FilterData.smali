.class public Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;
.super Ljava/lang/Object;

.field public static final CATEGORIES:[Ljava/lang/String;
.field public static final CATEGORY_URLS:[Ljava/lang/String;

.method static constructor <clinit>()V
    .locals 3

    # Categories
    const/16 v0, 0x10
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "English Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "English Movies (1080p)"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "Hindi Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "South Indian Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x4
    const-string v2, "South-Movie Hindi Dubbed"
    aput-object v2, v0, v1
    const/4 v1, 0x5
    const-string v2, "Kolkata Bangla Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x6
    const-string v2, "Animation Movies"
    aput-object v2, v0, v1
    const/4 v1, 0x7
    const-string v2, "Animation Movies (1080p)"
    aput-object v2, v0, v1
    const/16 v1, 0x8
    const-string v2, "Foreign Language Movies"
    aput-object v2, v0, v1
    const/16 v1, 0x9
    const-string v2, "IMDb Top-250 Movies"
    aput-object v2, v0, v1
    const/16 v1, 0xa
    const-string v2, "3D Movies"
    aput-object v2, v0, v1
    const/16 v1, 0xb
    const-string v2, "TV & WEB Series"
    aput-object v2, v0, v1
    const/16 v1, 0xc
    const-string v2, "KOREAN TV & WEB Series"
    aput-object v2, v0, v1
    const/16 v1, 0xd
    const-string v2, "Cartoon TV Series"
    aput-object v2, v0, v1
    const/16 v1, 0xe
    const-string v2, "Documentary"
    aput-object v2, v0, v1
    const/16 v1, 0xf
    const-string v2, "WWE & AEW Wrestling"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORIES:[Ljava/lang/String;

    # Category URLs
    const/16 v0, 0x10
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/English%20Movies/"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/English%20Movies%20%281080p%29/"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/Hindi%20Movies/"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/South%20Movies/"
    aput-object v2, v0, v1
    const/4 v1, 0x4
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/SOUTH%20INDIAN%20MOVIES/Hindi%20Dubbed/"
    aput-object v2, v0, v1
    const/4 v1, 0x5
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/Kolkata%20Bangla%20Movies/"
    aput-object v2, v0, v1
    const/4 v1, 0x6
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies/"
    aput-object v2, v0, v1
    const/4 v1, 0x7
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/Animation%20Movies%20%281080p%29/"
    aput-object v2, v0, v1
    const/16 v1, 0x8
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/Foreign%20Language%20Movies/"
    aput-object v2, v0, v1
    const/16 v1, 0x9
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/IMDb%20Top-250%20Movies/"
    aput-object v2, v0, v1
    const/16 v1, 0xa
    const-string v2, "http://172.16.50.7/DHAKA-FLIX-7/3D%20Movies/"
    aput-object v2, v0, v1
    const/16 v1, 0xb
    const-string v2, "http://172.16.50.12/DHAKA-FLIX-12/TV-WEB-Series/"
    aput-object v2, v0, v1
    const/16 v1, 0xc
    const-string v2, "http://172.16.50.14/DHAKA-FLIX-14/KOREAN%20TV%20%26%20WEB%20Series/"
    aput-object v2, v0, v1
    const/16 v1, 0xd
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/Anime%20%26%20Cartoon%20TV%20Series/"
    aput-object v2, v0, v1
    const/16 v1, 0xe
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/Documentary/"
    aput-object v2, v0, v1
    const/16 v1, 0xf
    const-string v2, "http://172.16.50.9/DHAKA-FLIX-9/WWE%20%26%20AEW%20Wrestling/"
    aput-object v2, v0, v1
    sput-object v0, Leu/kanade/tachiyomi/animeextension/all/dhakaflix/FilterData;->CATEGORY_URLS:[Ljava/lang/String;

    return-void
.end method
