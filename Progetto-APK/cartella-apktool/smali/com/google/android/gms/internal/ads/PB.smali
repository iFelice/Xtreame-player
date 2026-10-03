.class public abstract Lcom/google/android/gms/internal/ads/PB;
.super Lcom/google/android/gms/internal/ads/CB;
.source "SourceFile"


# static fields
.field public static final P:Lcom/google/android/gms/internal/measurement/p2;

.field public static final Q:Lcom/google/android/gms/internal/ads/iC;


# instance fields
.field public volatile N:Ljava/util/Set;

.field public volatile O:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/iC;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-class v2, Lcom/google/android/gms/internal/ads/PB;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/iC;-><init>(ILjava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/PB;->Q:Lcom/google/android/gms/internal/ads/iC;

    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/NB;

    .line 12
    .line 13
    const-class v1, Ljava/util/Set;

    .line 14
    .line 15
    const-string v3, "N"

    .line 16
    .line 17
    invoke-static {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v3, "O"

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/NB;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    move-object v6, v1

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object v1, v0

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/OB;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/ads/PB;->P:Lcom/google/android/gms/internal/measurement/p2;

    .line 42
    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    sget-object v0, Lcom/google/android/gms/internal/ads/PB;->Q:Lcom/google/android/gms/internal/ads/iC;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iC;->a()Ljava/util/logging/Logger;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 52
    .line 53
    const-string v4, "<clinit>"

    .line 54
    .line 55
    const-string v5, "SafeAtomicHelper is broken!"

    .line 56
    .line 57
    const-string v3, "com.google.common.util.concurrent.AggregateFutureState"

    .line 58
    .line 59
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
