.class public final Lcom/google/android/gms/internal/ads/h5;
.super Lcom/google/android/gms/internal/ads/t5;
.source "SourceFile"


# static fields
.field public static volatile h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/h5;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V
    .locals 7

    .line 1
    const/16 v6, 0x2c

    .line 2
    .line 3
    const-string v2, "CyzY1Dq9Z94V5QdB/DvLAvp7GpoAO1TL85fhRTvPR0h7u5BGepLTIyh10t/XTOrZ"

    .line 4
    .line 5
    const-string v3, "skGQhdInPY4sBMicxMlDA8FpM67X6t386GsGM5hjG6o="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/V4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/h5;->h:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/h5;->i:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/h5;->h:Ljava/lang/Long;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t5;->e:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Long;

    .line 23
    .line 24
    sput-object v1, Lcom/google/android/gms/internal/ads/h5;->h:Ljava/lang/Long;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 37
    .line 38
    sget-object v2, Lcom/google/android/gms/internal/ads/h5;->h:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 48
    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/j4;->J(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    throw v1
.end method
