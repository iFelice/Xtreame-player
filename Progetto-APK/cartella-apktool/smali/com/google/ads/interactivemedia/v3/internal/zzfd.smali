.class public final Lcom/google/ads/interactivemedia/v3/internal/zzfd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Queue;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

.field private zzd:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbi;Lcom/google/ads/interactivemedia/v3/internal/zzfj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza:Ljava/util/Queue;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzd:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 17
    .line 18
    return-void
.end method

.method public static zza(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzahh;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahh;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 16
    .line 17
    return-object p0
.end method

.method private final zzi(Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 4
    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->nativeInstrumentation:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 6
    .line 7
    const-string v3, "*"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzd:I

    .line 13
    .line 14
    add-int/lit8 v1, p1, -0x1

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    if-eq v1, p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbi;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza:Ljava/util/Queue;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v1, 0x6

    .line 37
    if-le p1, v1, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzd:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza:Ljava/util/Queue;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    throw p1
.end method


# virtual methods
.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzahj;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zzd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zze()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzb()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzahe;

    .line 19
    .line 20
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;->LATENCY_MEASUREMENT_TRACKER:Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;

    .line 21
    .line 22
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;->FLUSH_LATENCY_MEASUREMENT:Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzach;->zzav()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v3, v4, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;->create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzi(Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zze(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final zzf(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;->create(JLcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzi(Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzg(Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;->create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/Throwable;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzi(Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzh(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzd:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbi;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbi;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza:Ljava/util/Queue;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    const/4 p1, 0x3

    .line 32
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzd:I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza:Ljava/util/Queue;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
