.class public final Lcom/google/android/gms/internal/ads/Zt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/uu;

.field public final b:J

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uu;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zt;->a:Lcom/google/android/gms/internal/ads/uu;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/Zt;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Zt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zt;->a:Lcom/google/android/gms/internal/ads/uu;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb()LD4/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zt;->a:Lcom/google/android/gms/internal/ads/uu;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uu;->zzb()LD4/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->c2:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    :cond_0
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Zt;->b:J

    .line 32
    .line 33
    cmp-long v6, v4, v2

    .line 34
    .line 35
    if-lez v6, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    invoke-static {v0, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/No;

    .line 44
    .line 45
    const/16 v2, 0xe

    .line 46
    .line 47
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 51
    .line 52
    const-class v3, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
