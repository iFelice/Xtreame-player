.class public final LP1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:LP1/q;


# direct methods
.method public constructor <init>(LP1/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP1/p;->a:LP1/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "service"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p1, LP1/r;->H:I

    .line 12
    .line 13
    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    .line 14
    .line 15
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    instance-of v0, p1, LP1/i;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast p1, LP1/i;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, LP1/h;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p1, LP1/h;->G:Landroid/os/IBinder;

    .line 34
    .line 35
    :goto_0
    iget-object p2, p0, LP1/p;->a:LP1/q;

    .line 36
    .line 37
    iput-object p1, p2, LP1/q;->f:LP1/i;

    .line 38
    .line 39
    iget-object p1, p2, LP1/q;->c:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    iget-object p2, p2, LP1/q;->i:LP1/m;

    .line 42
    .line 43
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LP1/p;->a:LP1/q;

    .line 7
    .line 8
    iget-object v0, p1, LP1/q;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v1, p1, LP1/q;->j:LP1/m;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p1, LP1/q;->f:LP1/i;

    .line 17
    .line 18
    return-void
.end method
