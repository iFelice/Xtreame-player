.class public final Lcom/google/android/gms/internal/ads/Rm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lk3/a;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/ads/Fn;

.field public final d:Lcom/google/android/gms/internal/ads/cq;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/H4;

.field public final g:Lp3/a;

.field public final h:Lcom/google/android/gms/internal/ads/ix;

.field public final i:Lcom/google/android/gms/internal/ads/hq;

.field public final j:Lcom/google/android/gms/internal/ads/Zv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/H4;Lp3/a;Lk3/a;Lcom/google/android/gms/internal/ads/cq;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/hq;Lcom/google/android/gms/internal/ads/Zv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Rm;->e:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Rm;->f:Lcom/google/android/gms/internal/ads/H4;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Rm;->g:Lp3/a;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Rm;->a:Lk3/a;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Rm;->d:Lcom/google/android/gms/internal/ads/cq;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Rm;->h:Lcom/google/android/gms/internal/ads/ix;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Rm;->c:Lcom/google/android/gms/internal/ads/Fn;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Rm;->i:Lcom/google/android/gms/internal/ads/hq;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/Rm;->j:Lcom/google/android/gms/internal/ads/Zv;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Tm;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Tm;-><init>(Lcom/google/android/gms/internal/ads/Rm;)V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->x3:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v9, v1

    .line 18
    check-cast v9, Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/Kf;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Tm;->c:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tm;->f:Lcom/google/android/gms/internal/ads/H4;

    .line 25
    .line 26
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Tm;->g:Lp3/a;

    .line 27
    .line 28
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Tm;->b:Lk3/a;

    .line 29
    .line 30
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Tm;->k:Lcom/google/android/gms/internal/ads/hq;

    .line 31
    .line 32
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Tm;->l:Lcom/google/android/gms/internal/ads/Zv;

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/Kf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/H4;Lp3/a;Lk3/a;Lcom/google/android/gms/internal/ads/hq;Lcom/google/android/gms/internal/ads/Zv;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->W1(Lcom/google/android/gms/internal/ads/QB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/tC;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/google/android/gms/internal/ads/Sc;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Tm;->e:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Tm;->m:Lcom/google/android/gms/internal/ads/KB;

    .line 57
    .line 58
    const-string v2, "NativeJavascriptExecutor.initializeEngine"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lf/b;->d0(LD4/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    monitor-exit v0

    .line 67
    throw v1
.end method
