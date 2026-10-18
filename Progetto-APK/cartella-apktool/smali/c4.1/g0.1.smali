.class public final Lc4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lc4/j0;


# direct methods
.method public constructor <init>(Lc4/j0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc4/g0;->b:Lc4/j0;

    .line 5
    .line 6
    iput-object p2, p0, Lc4/g0;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lc4/g0;->b:Lc4/j0;

    .line 3
    .line 4
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lc4/l0;

    .line 7
    .line 8
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 14
    .line 15
    iget-object v0, p0, Lc4/g0;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method
