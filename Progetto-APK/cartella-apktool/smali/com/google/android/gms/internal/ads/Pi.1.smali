.class public final Lcom/google/android/gms/internal/ads/Pi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qk;
.implements Lcom/google/android/gms/internal/ads/Ij;


# instance fields
.field public final G:LP3/a;

.field public final H:Lcom/google/android/gms/internal/ads/Qi;

.field public final I:Lcom/google/android/gms/internal/ads/Yv;

.field public final J:Ljava/lang/String;


# direct methods
.method public constructor <init>(LP3/a;Lcom/google/android/gms/internal/ads/Qi;Lcom/google/android/gms/internal/ads/Yv;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pi;->G:LP3/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pi;->H:Lcom/google/android/gms/internal/ads/Qi;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Pi;->I:Lcom/google/android/gms/internal/ads/Yv;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Pi;->J:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pi;->G:LP3/a;

    .line 2
    .line 3
    check-cast v0, LP3/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pi;->I:Lcom/google/android/gms/internal/ads/Yv;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Pi;->H:Lcom/google/android/gms/internal/ads/Qi;

    .line 17
    .line 18
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Qi;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Pi;->J:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Qi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    sub-long/2addr v0, v4

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pi;->G:LP3/a;

    .line 2
    .line 3
    check-cast v0, LP3/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pi;->H:Lcom/google/android/gms/internal/ads/Qi;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Qi;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pi;->J:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method
