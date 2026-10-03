.class public final LS0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/n;


# static fields
.field public static final J:LS0/g;

.field public static final K:LS0/g;

.field public static final L:LS0/g;


# instance fields
.field public final G:LT0/a;

.field public H:LS0/i;

.field public I:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, LS0/m;->c(JZ)LS0/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LS0/m;->J:LS0/g;

    .line 12
    .line 13
    new-instance v0, LS0/g;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-direct {v0, v3, v1, v2, v4}, LS0/g;-><init>(IJLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, LS0/m;->K:LS0/g;

    .line 21
    .line 22
    new-instance v0, LS0/g;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-direct {v0, v3, v1, v2, v4}, LS0/g;-><init>(IJLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, LS0/m;->L:LS0/g;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(LT0/a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, LS0/m;->G:LT0/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "ExoPlayer:Loader:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lp0/L;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lp0/L;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 4
    new-instance v0, LN/i;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LN/i;-><init>(I)V

    .line 5
    new-instance v1, LT0/a;

    invoke-direct {v1, p1, v0}, LT0/a;-><init>(Ljava/util/concurrent/ExecutorService;LN/i;)V

    .line 6
    invoke-direct {p0, v1}, LS0/m;-><init>(LT0/a;)V

    return-void
.end method

.method public static c(JZ)LS0/g;
    .locals 2

    .line 1
    new-instance v0, LS0/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p2, p0, p1, v1}, LS0/g;-><init>(IJLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LS0/m;->H:LS0/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, LS0/i;->a(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LS0/m;->I:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, LS0/m;->H:LS0/i;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, LS0/i;->K:Ljava/io/IOException;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v2, v0, LS0/i;->L:I

    .line 14
    .line 15
    iget v0, v0, LS0/i;->G:I

    .line 16
    .line 17
    if-gt v2, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    throw v1

    .line 21
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    throw v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, LS0/m;->I:Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, LS0/m;->H:LS0/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final f(LS0/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, LS0/m;->H:LS0/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, LS0/i;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, LS0/m;->G:LT0/a;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance v1, La/f;

    .line 14
    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    invoke-direct {v1, p1, v2}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, LT0/a;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p1, v0, LT0/a;->H:Lp0/j;

    .line 24
    .line 25
    iget-object v0, v0, LT0/a;->G:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final g(LS0/j;LS0/h;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LS0/m;->I:Ljava/io/IOException;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    new-instance v8, LS0/i;

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    move-object v1, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move v5, p3

    .line 22
    invoke-direct/range {v0 .. v7}, LS0/i;-><init>(LS0/m;Landroid/os/Looper;LS0/j;LS0/h;IJ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, LS0/m;->H:LS0/i;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v8, p0, LS0/m;->H:LS0/i;

    .line 36
    .line 37
    invoke-virtual {v8}, LS0/i;->b()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
