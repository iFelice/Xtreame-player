.class public abstract LA0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/I;


# instance fields
.field public final G:LA0/h0;

.field public final H:Ljava/lang/Object;

.field public I:LA0/g0;


# direct methods
.method public constructor <init>(LA0/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/a0;->G:LA0/h0;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LA0/a0;->H:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public synthetic A(Lm0/v;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/a0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LA0/a0;->I:LA0/g0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, LA0/h0;->g(LA0/g0;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public abstract d()I
.end method

.method public e(Lm0/u;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Lm0/u;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(LA0/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, LA0/a0;->I:LA0/g0;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public abstract j(LA0/m;)V
.end method

.method public abstract k()V
.end method

.method public final x()V
    .locals 3

    .line 1
    new-instance v0, LA0/p;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, LA0/p;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
