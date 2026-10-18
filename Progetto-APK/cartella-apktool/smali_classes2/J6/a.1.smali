.class public abstract LJ6/a;
.super LJ6/Q;
.source "SourceFile"

# interfaces
.implements Lx6/e;
.implements LJ6/p;


# instance fields
.field public final I:Lx6/j;


# direct methods
.method public constructor <init>(Lx6/j;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, LJ6/Q;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p2, LJ6/n;->H:LJ6/n;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, LJ6/J;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, LJ6/Q;->q(LJ6/J;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lx6/j;->N(Lx6/j;)Lx6/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, LJ6/a;->I:Lx6/j;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lt6/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, LJ6/k;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, LJ6/k;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, LJ6/Q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, LJ6/r;->e:Lp3/e;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, LJ6/a;->d(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " was cancelled"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getContext()Lx6/j;
    .locals 1

    .line 1
    iget-object v0, p0, LJ6/a;->I:Lx6/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, LJ6/Q;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final p(LY/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, LJ6/a;->I:Lx6/j;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lz4/q0;->w(Lx6/j;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, LJ6/Q;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, LJ6/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LJ6/k;

    .line 6
    .line 7
    iget-object v0, p1, LJ6/k;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v0, LJ6/k;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
