.class public final Lcom/google/ads/interactivemedia/v3/internal/zzej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzei;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznm;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 16
    .line 17
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zzb:I

    .line 18
    .line 19
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzc:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/zzau;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzc:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "AdsIdentityTokenLoader: invalid parameter for gksTimeoutMs"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzc(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance v4, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "x-afma-token-requester-type"

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzau;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "extra_headers"

    .line 39
    .line 40
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catch_2
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 51
    .line 52
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x0

    .line 57
    iput-boolean v5, v4, LK3/r;->b:Z

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    new-array v6, v6, [LJ3/d;

    .line 61
    .line 62
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzpo;->zza:LJ3/d;

    .line 63
    .line 64
    aput-object v7, v6, v5

    .line 65
    .line 66
    iput-object v6, v4, LK3/r;->d:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzni;

    .line 69
    .line 70
    move-object v6, p1

    .line 71
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 72
    .line 73
    invoke-direct {v5, v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzni;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zznm;Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    iput-object v5, v4, LK3/r;->c:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v4}, LK3/r;->a()LK3/O;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zznm;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/j;->doRead(LK3/s;)Lg4/h;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzc:I

    .line 89
    .line 90
    int-to-long v4, v0

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    .line 93
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/Cw;->b(Lg4/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    return-object p1

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 101
    .line 102
    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;->ADS_IDENTITY_TOKEN_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;

    .line 103
    .line 104
    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;->GET_ADSIDENTITY_TOKEN:Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;

    .line 105
    .line 106
    invoke-virtual {v0, v4, v5, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzg(Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    invoke-static {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzk(Lcom/google/ads/interactivemedia/v3/internal/zzahh;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 124
    .line 125
    .line 126
    return-object v1
.end method
