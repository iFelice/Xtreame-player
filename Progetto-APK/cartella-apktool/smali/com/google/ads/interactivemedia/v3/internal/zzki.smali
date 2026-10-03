.class public final Lcom/google/ads/interactivemedia/v3/internal/zzki;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkx;
.source "SourceFile"


# instance fields
.field private final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzim;

.field private final zzi:J

.field private final zzj:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;IILcom/google/ads/interactivemedia/v3/internal/zzim;JJ)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    const-string v3, "LymMUKNT3cAvWIhxX52CTQ3uE86eU+14G9dqvWvUzWk="

    .line 3
    .line 4
    const/16 v6, 0xb

    .line 5
    .line 6
    const-string v2, "K0xZIBPInE6j6xPLxhKGMY561g1nMY757L1d/vVVfLAbZ7cYe/kji+8cDrSya44i"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V

    .line 13
    .line 14
    .line 15
    move-object v0, p7

    .line 16
    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzim;

    .line 17
    .line 18
    move-wide/from16 v0, p8

    .line 19
    .line 20
    iput-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zzi:J

    .line 21
    .line 22
    move-wide/from16 v0, p10

    .line 23
    .line 24
    iput-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zzj:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzim;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzim;->zzb()Landroid/net/NetworkCapabilities;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zzi:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zzj:J

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x3

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput-object v0, v4, v5

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    aput-object v2, v4, v0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object v3, v4, v0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzik;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 51
    .line 52
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzz(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzb:Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    cmp-long v6, v2, v4

    .line 70
    .line 71
    if-ltz v6, :cond_0

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 74
    .line 75
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzb:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    invoke-virtual {v2, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzQ(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzc:Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    cmp-long v6, v2, v4

    .line 94
    .line 95
    if-ltz v6, :cond_1

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzc:Ljava/lang/Long;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzf(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 106
    .line 107
    .line 108
    :cond_1
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw v1

    .line 112
    :cond_2
    return-void
.end method
