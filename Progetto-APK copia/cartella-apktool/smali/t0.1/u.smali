.class public final Lt0/u;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic G:Landroid/os/ConditionVariable;

.field public final synthetic H:Lt0/v;


# direct methods
.method public constructor <init>(Lt0/v;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt0/u;->H:Lt0/v;

    .line 2
    .line 3
    iput-object p2, p0, Lt0/u;->G:Landroid/os/ConditionVariable;

    .line 4
    .line 5
    const-string p1, "ExoPlayer:SimpleCacheInit"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/u;->H:Lt0/v;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lt0/u;->G:Landroid/os/ConditionVariable;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lt0/u;->H:Lt0/v;

    .line 10
    .line 11
    invoke-static {v1}, Lt0/v;->a(Lt0/v;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lt0/u;->H:Lt0/v;

    .line 15
    .line 16
    iget-object v1, v1, Lt0/v;->b:Lt0/h;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method
