.class public final Lcom/google/ads/interactivemedia/v3/internal/zzgh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->isDebugMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzav;->zzb:Landroid/net/Uri;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzav;->zza:Landroid/net/Uri;

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zzb(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static zzb(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "sdk_version"

    .line 6
    .line 7
    const-string v1, "a.3.35.1"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getLanguage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "hl"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "omv"

    .line 24
    .line 25
    const-string v1, "1.4.10-google_20240110"

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "app"

    .line 32
    .line 33
    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p2, "WEB_MESSAGE_LISTENER"

    .line 38
    .line 39
    invoke-static {p2}, Lcom/bumptech/glide/c;->o(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v0, 0x1

    .line 44
    if-eq v0, p2, :cond_0

    .line 45
    .line 46
    const-string p2, "0"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string p2, "4"

    .line 50
    .line 51
    :goto_0
    const-string v0, "mt"

    .line 52
    .line 53
    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvs;

    .line 63
    .line 64
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvs;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzpu;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpu;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvs;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzwk;)Lcom/google/ads/interactivemedia/v3/internal/zzvs;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzpt;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpt;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvs;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpt;)Lcom/google/ads/interactivemedia/v3/internal/zzvs;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvs;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "tcnfp"

    .line 96
    .line 97
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public static zzc(Landroid/net/Uri;)Ljava/util/Map;
    .locals 6

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x23

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, -0x1

    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_1
    const/16 v4, 0x26

    .line 42
    .line 43
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v4, v3, :cond_2

    .line 48
    .line 49
    move v4, v1

    .line 50
    :cond_2
    const/16 v5, 0x3d

    .line 51
    .line 52
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-gt v5, v4, :cond_3

    .line 57
    .line 58
    if-ne v5, v3, :cond_4

    .line 59
    .line 60
    :cond_3
    move v5, v4

    .line 61
    :cond_4
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-ge v5, v4, :cond_5

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const-string v5, ""

    .line 75
    .line 76
    :goto_0
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v4, 0x1

    .line 80
    .line 81
    if-lt v2, v1, :cond_1

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_6
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 94
    .line 95
    const-string v0, "This isn\'t a hierarchical URI."

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method
