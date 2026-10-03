.class public abstract Lz6/c;
.super Lz6/a;
.source "SourceFile"


# instance fields
.field public final H:Lx6/j;

.field public transient I:Lx6/e;


# direct methods
.method public constructor <init>(Lx6/e;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lx6/e;->getContext()Lx6/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lz6/c;-><init>(Lx6/e;Lx6/j;)V

    return-void
.end method

.method public constructor <init>(Lx6/e;Lx6/j;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lz6/a;-><init>(Lx6/e;)V

    .line 4
    iput-object p2, p0, Lz6/c;->H:Lx6/j;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lz6/c;->I:Lx6/e;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eq v0, p0, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lz6/c;->H:Lx6/j;

    .line 8
    .line 9
    invoke-static {v1}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lx6/f;->G:Lx6/f;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Lx6/g;

    .line 22
    .line 23
    check-cast v0, LN6/d;

    .line 24
    .line 25
    :cond_0
    sget-object v1, LN6/d;->N:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, LN6/e;->b:Lp3/e;

    .line 32
    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v1, v0, LJ6/d;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    check-cast v0, LJ6/d;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-eqz v0, :cond_3

    .line 48
    .line 49
    sget-object v1, LJ6/d;->N:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, LJ6/z;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-interface {v2}, LJ6/z;->a()V

    .line 61
    .line 62
    .line 63
    sget-object v2, LJ6/U;->a:LJ6/U;

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    sget-object v0, Lz6/b;->G:Lz6/b;

    .line 69
    .line 70
    iput-object v0, p0, Lz6/c;->I:Lx6/e;

    .line 71
    .line 72
    return-void
.end method

.method public final getContext()Lx6/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lz6/c;->H:Lx6/j;

    .line 2
    .line 3
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
