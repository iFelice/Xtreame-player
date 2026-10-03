.class public abstract Lc4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:LE1/W;


# instance fields
.field public final a:Lc4/t0;

.field public final b:LK3/V;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lc4/t0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lc4/p;->a:Lc4/t0;

    .line 8
    .line 9
    new-instance v0, LK3/V;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, v1, p0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lc4/p;->b:LK3/V;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lc4/p;->c:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lc4/p;->d()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lc4/p;->b:LK3/V;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public abstract b()V
.end method

.method public final c(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/p;->a()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lc4/p;->a:Lc4/t0;

    .line 11
    .line 12
    invoke-interface {v0}, Lc4/t0;->c()LP3/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, LP3/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p0, Lc4/p;->c:J

    .line 26
    .line 27
    invoke-virtual {p0}, Lc4/p;->d()Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lc4/p;->b:LK3/V;

    .line 32
    .line 33
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Lc4/t0;->b()Lc4/T;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 44
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "Failed to schedule delayed post. time"

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final d()Landroid/os/Handler;
    .locals 4

    .line 1
    sget-object v0, Lc4/p;->d:LE1/W;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lc4/p;->d:LE1/W;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lc4/p;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lc4/p;->d:LE1/W;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, LE1/W;

    .line 16
    .line 17
    iget-object v2, p0, Lc4/p;->a:Lc4/t0;

    .line 18
    .line 19
    invoke-interface {v2}, Lc4/t0;->zzaT()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v1, v2, v3}, LE1/W;-><init>(Landroid/os/Looper;I)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lc4/p;->d:LE1/W;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    sget-object v1, Lc4/p;->d:LE1/W;

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-object v1

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method
