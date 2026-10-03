.class public final Lcom/google/ads/interactivemedia/v3/internal/zzadk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzadk;

.field public static final synthetic zzb:I = 0x0

.field private static volatile zzc:Z = false

.field private static volatile zzd:Lcom/google/ads/interactivemedia/v3/internal/zzadk;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadk;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zze:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzadk;
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 4
    .line 5
    return-object v0
.end method

.method public static zzb()Lcom/google/ads/interactivemedia/v3/internal/zzadk;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza:I

    .line 18
    .line 19
    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzads;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzafb;I)Lcom/google/ads/interactivemedia/v3/internal/zzadx;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzadj;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzadj;-><init>(Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;->zze:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 13
    .line 14
    return-object p1
.end method
