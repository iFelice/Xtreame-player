.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkp;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkx;
.source "SourceFile"


# instance fields
.field private final zzh:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 1
    const-string v3, "JHli6WI5R8sw7EkxbHsVjy9IYG7FikIpacvBlSmCeKs="

    .line 2
    .line 3
    const/16 v6, 0x2d

    .line 4
    .line 5
    const-string v2, "Tr7fGRhozrcGWgreSsweTKh/4NOM+Jnt9yuIucqZU1XFuQj1cofQtHqK781u41Fk"

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
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkp;->zzh:[Ljava/lang/StackTraceElement;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkp;->zzh:[Ljava/lang/StackTraceElement;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-object v1, v4, v5

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzja;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzja;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 29
    .line 30
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/zzja;->zza:Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzF(J)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 37
    .line 38
    .line 39
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzja;->zzb:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzja;->zzc:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eq v0, v2, :cond_0

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    :cond_0
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzac(I)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzac(I)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 68
    .line 69
    .line 70
    :goto_0
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw v0

    .line 74
    :cond_2
    return-void
.end method
