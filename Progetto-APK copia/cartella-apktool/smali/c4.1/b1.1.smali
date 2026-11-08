.class public final Lc4/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/G;

.field public final synthetic I:Lc4/c1;


# direct methods
.method public synthetic constructor <init>(Lc4/c1;Lc4/G;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc4/b1;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lc4/b1;->H:Lc4/G;

    .line 7
    .line 8
    iput-object p1, p0, Lc4/b1;->I:Lc4/c1;

    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/b1;->I:Lc4/c1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lc4/c1;->a:Z

    .line 6
    .line 7
    iget-object v1, v0, Lc4/c1;->c:Lc4/d1;

    .line 8
    .line 9
    invoke-virtual {v1}, Lc4/d1;->x()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lc4/l0;

    .line 18
    .line 19
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 25
    .line 26
    const-string v3, "Connected to service"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lc4/b1;->H:Lc4/G;

    .line 32
    .line 33
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v1, Lc4/d1;->J:Lc4/G;

    .line 40
    .line 41
    invoke-virtual {v1}, Lc4/d1;->D()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lc4/d1;->C()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lc4/b1;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc4/b1;->I:Lc4/c1;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iput-boolean v1, v0, Lc4/c1;->a:Z

    .line 11
    .line 12
    iget-object v1, v0, Lc4/c1;->c:Lc4/d1;

    .line 13
    .line 14
    invoke-virtual {v1}, Lc4/d1;->x()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lc4/l0;

    .line 23
    .line 24
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 25
    .line 26
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v2, Lc4/T;->S:Lc4/Q;

    .line 30
    .line 31
    const-string v3, "Connected to remote service"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lc4/b1;->H:Lc4/G;

    .line 37
    .line 38
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, v1, Lc4/d1;->J:Lc4/G;

    .line 45
    .line 46
    invoke-virtual {v1}, Lc4/d1;->D()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lc4/d1;->C()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lc4/b1;->I:Lc4/c1;

    .line 57
    .line 58
    iget-object v0, v0, Lc4/c1;->c:Lc4/d1;

    .line 59
    .line 60
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lc4/l0;

    .line 63
    .line 64
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 65
    .line 66
    sget-object v2, Lc4/E;->p1:Lc4/D;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, v3, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v1, v0, Lc4/d1;->M:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    iput-object v3, v0, Lc4/d1;->M:Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    .line 84
    :cond_1
    return-void

    .line 85
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v1

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lc4/b1;->a()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
