.class public final Lg4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg4/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg4/r;

    invoke-direct {v0}, Lg4/r;-><init>()V

    iput-object v0, p0, Lg4/i;->a:Lg4/r;

    return-void
.end method

.method public constructor <init>(Lg4/k;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg4/r;

    invoke-direct {v0}, Lg4/r;-><init>()V

    iput-object v0, p0, Lg4/i;->a:Lg4/r;

    new-instance v0, Lg4/k;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lg4/k;-><init>(Ljava/lang/Object;I)V

    .line 3
    new-instance v1, Lg4/k;

    invoke-direct {v1, v0}, Lg4/k;-><init>(Lg4/k;)V

    iget-object p1, p1, Lg4/k;->H:Ljava/lang/Object;

    check-cast p1, Lg4/r;

    sget-object v0, Lg4/j;->a:Lg4/q;

    invoke-virtual {p1, v0, v1}, Lg4/r;->c(Ljava/util/concurrent/Executor;Lg4/f;)Lg4/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg4/i;->a:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg4/r;->j(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg4/i;->a:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg4/r;->k(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg4/i;->a:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Exception must not be null"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lg4/r;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-boolean v2, v0, Lg4/r;->c:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v0, Lg4/r;->c:Z

    .line 24
    .line 25
    iput-object p1, v0, Lg4/r;->f:Ljava/lang/Exception;

    .line 26
    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p1, v0, Lg4/r;->b:LJ2/t;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, LJ2/t;->k(Lg4/h;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg4/i;->a:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg4/r;->m(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
