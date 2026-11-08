.class public final Lcom/google/ads/interactivemedia/v3/internal/zznt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I = 0x0

.field private static volatile zzf:I = 0x1


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lg4/h;

.field private final zze:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg4/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzd:Lg4/h;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zze:Z

    .line 11
    .line 12
    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/ads/interactivemedia/v3/internal/zznt;
    .locals 2

    .line 1
    new-instance v0, Lg4/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lg4/i;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznr;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznr;-><init>(Landroid/content/Context;Lg4/i;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzns;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzns;-><init>(Lg4/i;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 26
    .line 27
    iget-object v0, v0, Lg4/i;->a:Lg4/r;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zznt;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg4/h;Z)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public static zzg(I)V
    .locals 0

    sput p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzf:I

    return-void
.end method

.method private final zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lg4/h;
    .locals 1

    .line 1
    iget-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zze:Z

    .line 2
    .line 3
    if-nez p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzd:Lg4/h;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzc:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zznp;

    .line 10
    .line 11
    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/zznp;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzb:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzv;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p6

    .line 29
    invoke-virtual {v0, p6}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 33
    .line 34
    .line 35
    sget p2, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzf:I

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zzg(I)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 38
    .line 39
    .line 40
    if-eqz p4, :cond_1

    .line 41
    .line 42
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzqo;->zza(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eqz p7, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zzb(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 63
    .line 64
    .line 65
    :cond_2
    if-eqz p5, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzq;

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzd:Lg4/h;

    .line 71
    .line 72
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzc:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zznq;

    .line 75
    .line 76
    invoke-direct {p4, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zznq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzq;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3, p4}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method


# virtual methods
.method public final zzb(ILjava/lang/String;)Lg4/h;
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move-object v7, p2

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lg4/h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final zzc(IJLjava/lang/Exception;)Lg4/h;
    .locals 8

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lg4/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zzd(IJ)Lg4/h;
    .locals 8

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lg4/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zze(IJLjava/lang/String;)Lg4/h;
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object v7, p4

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lg4/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zzf(IJLjava/lang/String;Ljava/util/Map;)Lg4/h;
    .locals 8

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzh(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lg4/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
