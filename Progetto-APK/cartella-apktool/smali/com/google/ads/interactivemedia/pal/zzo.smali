.class final Lcom/google/ads/interactivemedia/pal/zzo;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/pal/zzs;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzo;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, Ljava/lang/Throwable;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzo;->zza:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 9
    .line 10
    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/google/android/gms/internal/pal/r1;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/net/URL;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    :try_start_1
    sget v4, Lcom/google/ads/interactivemedia/pal/zzat;->zzb:I

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 32
    .line 33
    .line 34
    sget v4, Lcom/google/ads/interactivemedia/pal/zzat;->zzc:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception v4

    .line 55
    goto :goto_1

    .line 56
    :goto_0
    move-object v7, v4

    .line 57
    move-object v4, v3

    .line 58
    move-object v3, v7

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception v3

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    if-eqz v3, :cond_1

    .line 63
    .line 64
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_2
    move-exception v3

    .line 69
    :try_start_4
    new-array v5, v0, [Ljava/lang/Class;

    .line 70
    .line 71
    aput-object v2, v5, v1

    .line 72
    .line 73
    const-string v6, "addSuppressed"

    .line 74
    .line 75
    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v3, v0, v1

    .line 82
    .line 83
    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :cond_1
    :goto_2
    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 87
    :catch_1
    return-void
.end method
