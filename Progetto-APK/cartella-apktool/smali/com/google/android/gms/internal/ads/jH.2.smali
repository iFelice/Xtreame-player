.class public final Lcom/google/android/gms/internal/ads/jH;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/google/android/gms/internal/ads/jH;

.field public static final c:Lcom/google/android/gms/internal/ads/jH;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/jH;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jH;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jH;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/jH;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/ads/jH;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

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
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/nH;->e()Lcom/google/android/gms/internal/ads/jH;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method
