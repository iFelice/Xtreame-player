.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjt;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkx;
.source "SourceFile"


# instance fields
.field private final zzh:Landroid/app/Activity;

.field private final zzi:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    .line 1
    const-string v3, "mkv0O+E3pw6iWtJ8IDlF26p17YivjEWbfcApoyQN9bA="

    .line 2
    .line 3
    const/16 v6, 0x3e

    .line 4
    .line 5
    const-string v2, "3uIyPH12G92QFP63DNIOh82j8VF90h9kFqPNhDqRUCo8ufPXfg4SvIOT6xTdvJUh"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V

    .line 12
    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjt;->zzi:Landroid/view/View;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjt;->zzh:Landroid/app/Activity;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjt;->zzi:Landroid/view/View;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzmj;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzma;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjt;->zzi:Landroid/view/View;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjt;->zzh:Landroid/app/Activity;

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    new-array v8, v8, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v6, v8, v2

    .line 35
    .line 36
    aput-object v7, v8, v1

    .line 37
    .line 38
    aput-object v3, v8, v0

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, [Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 48
    .line 49
    monitor-enter v5

    .line 50
    :try_start_0
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 51
    .line 52
    aget-object v2, v3, v2

    .line 53
    .line 54
    check-cast v2, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    invoke-virtual {v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 64
    .line 65
    aget-object v1, v3, v1

    .line 66
    .line 67
    check-cast v1, Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-virtual {v2, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 74
    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 79
    .line 80
    aget-object v0, v3, v0

    .line 81
    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    monitor-exit v5

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw v0
.end method
