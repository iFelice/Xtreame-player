.class public final LJ6/O;
.super LJ6/N;
.source "SourceFile"


# instance fields
.field public final e:LJ6/Q;

.field public final f:LJ6/P;

.field public final g:LJ6/h;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ6/Q;LJ6/P;LJ6/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LN6/k;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ6/O;->e:LJ6/Q;

    .line 5
    .line 6
    iput-object p2, p0, LJ6/O;->f:LJ6/P;

    .line 7
    .line 8
    iput-object p3, p0, LJ6/O;->g:LJ6/h;

    .line 9
    .line 10
    iput-object p4, p0, LJ6/O;->h:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object p1, p0, LJ6/O;->e:LJ6/Q;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LJ6/O;->g:LJ6/h;

    .line 7
    .line 8
    invoke-static {v0}, LJ6/Q;->u(LN6/k;)LJ6/h;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, LJ6/O;->f:LJ6/P;

    .line 13
    .line 14
    iget-object v3, p0, LJ6/O;->h:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v2, v1, v3}, LJ6/Q;->C(LJ6/P;LJ6/h;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v2, LJ6/P;->a:LJ6/T;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v4, LN6/i;

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-direct {v4, v5}, LN6/i;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v4, v5}, LN6/k;->d(LN6/k;I)Z

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, LJ6/Q;->u(LN6/k;)LJ6/h;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v2, v0, v3}, LJ6/Q;->C(LJ6/P;LJ6/h;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1, v2, v3}, LJ6/Q;->j(LJ6/P;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, LJ6/Q;->c(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
