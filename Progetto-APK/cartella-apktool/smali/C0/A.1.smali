.class public final LC0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/a;


# instance fields
.field public final G:Lp0/f;

.field public final H:Lm0/d0;

.field public final I:Lm0/e0;

.field public final J:LC0/z;

.field public final K:Landroid/util/SparseArray;

.field public L:Lx/e;

.field public M:Lm0/Y;

.field public N:Lp0/I;

.field public O:Z


# direct methods
.method public constructor <init>(Lp0/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LC0/A;->G:Lp0/f;

    .line 8
    .line 9
    new-instance v0, Lx/e;

    .line 10
    .line 11
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    new-instance v2, LN/i;

    .line 25
    .line 26
    const/16 v3, 0x9

    .line 27
    .line 28
    invoke-direct {v2, v3}, LN/i;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, p1, v2}, Lx/e;-><init>(Landroid/os/Looper;Lp0/f;Lp0/v;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, LC0/A;->L:Lx/e;

    .line 35
    .line 36
    new-instance p1, Lm0/d0;

    .line 37
    .line 38
    invoke-direct {p1}, Lm0/d0;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, LC0/A;->H:Lm0/d0;

    .line 42
    .line 43
    new-instance v0, Lm0/e0;

    .line 44
    .line 45
    invoke-direct {v0}, Lm0/e0;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, LC0/A;->I:Lm0/e0;

    .line 49
    .line 50
    new-instance v0, LC0/z;

    .line 51
    .line 52
    invoke-direct {v0, p1}, LC0/z;-><init>(Lm0/d0;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, LC0/A;->J:LC0/z;

    .line 56
    .line 57
    new-instance p1, Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, LC0/A;->K:Landroid/util/SparseArray;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final A(Lm0/m0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final B(Lm0/L;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0xe

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final C(ILO0/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/i;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-direct {p2, p1, v0}, LC0/i;-><init>(LC0/b;I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x403

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final D(Lm0/V;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final E(ILO0/y;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/t;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-direct {p2, p1, p3, v0}, LC0/t;-><init>(LC0/b;II)V

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x3fe

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final F(ILO0/y;LO0/p;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/q;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p2, p1, p3, p4, v0}, LC0/q;-><init>(LC0/b;LO0/p;LO0/u;I)V

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x3ea

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final G(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LC0/A;->T()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/l;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x18

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final H(ILO0/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/i;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-direct {p2, p1, v0}, LC0/i;-><init>(LC0/b;I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x402

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final I(ILO0/y;LO0/p;LO0/u;I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/k;

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    move-object v0, p2

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p3

    .line 11
    move-object v3, p4

    .line 12
    move v4, p5

    .line 13
    invoke-direct/range {v0 .. v5}, LC0/k;-><init>(Ljava/lang/Object;LO0/p;LO0/u;II)V

    .line 14
    .line 15
    .line 16
    const/16 p3, 0x3e8

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final J(Lm0/l;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1d

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final K(Lm0/d;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->T()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x14

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final L(Lm0/k0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x13

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final M(ILO0/y;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/m;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p2, p1, p3, v0}, LC0/m;-><init>(LC0/b;LO0/u;I)V

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x3ec

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final N(ILO0/y;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/v;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-direct {p2, p1, p3, v0}, LC0/v;-><init>(LC0/b;Ljava/lang/Exception;I)V

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x400

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final O(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/r;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/r;-><init>(ILC0/b;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x7

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final P()LC0/b;
    .locals 1

    .line 1
    iget-object v0, p0, LC0/A;->J:LC0/z;

    .line 2
    .line 3
    iget-object v0, v0, LC0/z;->d:LO0/y;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final Q(LO0/y;)LC0/b;
    .locals 3

    .line 1
    iget-object v0, p0, LC0/A;->M:Lm0/Y;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, LC0/A;->J:LC0/z;

    .line 12
    .line 13
    iget-object v1, v1, LC0/z;->c:Lz4/i0;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lm0/f0;

    .line 20
    .line 21
    :goto_0
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p1, LO0/y;->a:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v2, p0, LC0/A;->H:Lm0/d0;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v0, v0, Lm0/d0;->c:I

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0, p1}, LC0/A;->R(Lm0/f0;ILO0/y;)LC0/b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    :goto_1
    iget-object p1, p0, LC0/A;->M:Lm0/Y;

    .line 42
    .line 43
    check-cast p1, LB0/O;

    .line 44
    .line 45
    invoke-virtual {p1}, LB0/O;->t()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object v1, p0, LC0/A;->M:Lm0/Y;

    .line 50
    .line 51
    check-cast v1, LB0/O;

    .line 52
    .line 53
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lm0/f0;->p()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge p1, v2, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    sget-object v1, Lm0/f0;->a:Lm0/c0;

    .line 65
    .line 66
    :goto_2
    invoke-virtual {p0, v1, p1, v0}, LC0/A;->R(Lm0/f0;ILO0/y;)LC0/b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public final R(Lm0/f0;ILO0/y;)LC0/b;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lm0/f0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v6, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v6, p3

    .line 17
    .line 18
    :goto_0
    iget-object v1, v0, LC0/A;->G:Lp0/f;

    .line 19
    .line 20
    check-cast v1, Lp0/G;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 30
    .line 31
    check-cast v1, LB0/O;

    .line 32
    .line 33
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v1}, Lm0/f0;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 44
    .line 45
    check-cast v1, LB0/O;

    .line 46
    .line 47
    invoke-virtual {v1}, LB0/O;->t()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v5, v1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    :goto_1
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {v6}, LO0/y;->b()Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_2

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 69
    .line 70
    check-cast v1, LB0/O;

    .line 71
    .line 72
    invoke-virtual {v1}, LB0/O;->r()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget v9, v6, LO0/y;->b:I

    .line 77
    .line 78
    if-ne v1, v9, :cond_5

    .line 79
    .line 80
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 81
    .line 82
    check-cast v1, LB0/O;

    .line 83
    .line 84
    invoke-virtual {v1}, LB0/O;->s()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget v9, v6, LO0/y;->c:I

    .line 89
    .line 90
    if-ne v1, v9, :cond_5

    .line 91
    .line 92
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 93
    .line 94
    check-cast v1, LB0/O;

    .line 95
    .line 96
    invoke-virtual {v1}, LB0/O;->v()J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    if-eqz v1, :cond_3

    .line 102
    .line 103
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 104
    .line 105
    check-cast v1, LB0/O;

    .line 106
    .line 107
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 108
    .line 109
    .line 110
    iget-object v7, v1, LB0/O;->N0:LB0/v0;

    .line 111
    .line 112
    invoke-virtual {v1, v7}, LB0/O;->q(LB0/v0;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lm0/f0;->q()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v1, v0, LC0/A;->I:Lm0/e0;

    .line 125
    .line 126
    invoke-virtual {v4, v5, v1, v7, v8}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-wide v7, v1, Lm0/e0;->l:J

    .line 131
    .line 132
    invoke-static {v7, v8}, Lp0/M;->e0(J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v7

    .line 136
    :cond_5
    :goto_2
    iget-object v1, v0, LC0/A;->J:LC0/z;

    .line 137
    .line 138
    iget-object v11, v1, LC0/z;->d:LO0/y;

    .line 139
    .line 140
    new-instance v16, LC0/b;

    .line 141
    .line 142
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 143
    .line 144
    check-cast v1, LB0/O;

    .line 145
    .line 146
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 151
    .line 152
    check-cast v1, LB0/O;

    .line 153
    .line 154
    invoke-virtual {v1}, LB0/O;->t()I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 159
    .line 160
    check-cast v1, LB0/O;

    .line 161
    .line 162
    invoke-virtual {v1}, LB0/O;->v()J

    .line 163
    .line 164
    .line 165
    move-result-wide v12

    .line 166
    iget-object v1, v0, LC0/A;->M:Lm0/Y;

    .line 167
    .line 168
    check-cast v1, LB0/O;

    .line 169
    .line 170
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 171
    .line 172
    .line 173
    iget-object v1, v1, LB0/O;->N0:LB0/v0;

    .line 174
    .line 175
    iget-wide v14, v1, LB0/v0;->r:J

    .line 176
    .line 177
    invoke-static {v14, v15}, Lp0/M;->e0(J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v14

    .line 181
    move-object/from16 v1, v16

    .line 182
    .line 183
    move-object/from16 v4, p1

    .line 184
    .line 185
    move/from16 v5, p2

    .line 186
    .line 187
    invoke-direct/range {v1 .. v15}, LC0/b;-><init>(JLm0/f0;ILO0/y;JLm0/f0;ILO0/y;JJ)V

    .line 188
    .line 189
    .line 190
    return-object v16
.end method

.method public final S(ILO0/y;)LC0/b;
    .locals 1

    .line 1
    iget-object v0, p0, LC0/A;->M:Lm0/Y;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, LC0/A;->J:LC0/z;

    .line 9
    .line 10
    iget-object v0, v0, LC0/z;->c:Lz4/i0;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lm0/f0;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p2}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lm0/f0;->a:Lm0/c0;

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1, p2}, LC0/A;->R(Lm0/f0;ILO0/y;)LC0/b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    return-object p1

    .line 32
    :cond_1
    iget-object p2, p0, LC0/A;->M:Lm0/Y;

    .line 33
    .line 34
    check-cast p2, LB0/O;

    .line 35
    .line 36
    invoke-virtual {p2}, LB0/O;->x()Lm0/f0;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lm0/f0;->p()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ge p1, v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sget-object p2, Lm0/f0;->a:Lm0/c0;

    .line 48
    .line 49
    :goto_1
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p2, p1, v0}, LC0/A;->R(Lm0/f0;ILO0/y;)LC0/b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final T()LC0/b;
    .locals 1

    .line 1
    iget-object v0, p0, LC0/A;->J:LC0/z;

    .line 2
    .line 3
    iget-object v0, v0, LC0/z;->f:LO0/y;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final U(LC0/b;ILp0/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, LC0/A;->K:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC0/A;->L:Lx/e;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lx/e;->l(ILp0/u;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final V(Lm0/Y;Landroid/os/Looper;)V
    .locals 7

    .line 1
    iget-object v0, p0, LC0/A;->M:Lm0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LC0/A;->J:LC0/z;

    .line 6
    .line 7
    iget-object v0, v0, LC0/z;->b:Lz4/H;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, LC0/A;->M:Lm0/Y;

    .line 23
    .line 24
    iget-object v0, p0, LC0/A;->G:Lp0/f;

    .line 25
    .line 26
    check-cast v0, Lp0/G;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p2, v1}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, LC0/A;->N:Lp0/I;

    .line 34
    .line 35
    iget-object v0, p0, LC0/A;->L:Lx/e;

    .line 36
    .line 37
    new-instance v5, LC0/d;

    .line 38
    .line 39
    const/4 v1, 0x6

    .line 40
    invoke-direct {v5, v1, p0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lx/e;->c:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v4, p1

    .line 46
    check-cast v4, Lp0/f;

    .line 47
    .line 48
    new-instance p1, Lx/e;

    .line 49
    .line 50
    iget-object v1, v0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 54
    .line 55
    iget-boolean v6, v0, Lx/e;->b:Z

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    move-object v3, p2

    .line 59
    invoke-direct/range {v1 .. v6}, Lx/e;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lp0/f;Lp0/v;Z)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, LC0/A;->L:Lx/e;

    .line 63
    .line 64
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/t;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v0, p1, v2}, LC0/t;-><init>(LC0/b;II)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x6

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Lo0/c;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x1b

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->T()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/t;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, v0, p1, v2}, LC0/t;-><init>(LC0/b;II)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x15

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Lm0/U;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0xd

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(ILm0/X;Lm0/X;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LC0/A;->O:Z

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, LC0/A;->M:Lm0/Y;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, LC0/A;->J:LC0/z;

    .line 13
    .line 14
    iget-object v2, v1, LC0/z;->b:Lz4/H;

    .line 15
    .line 16
    iget-object v3, v1, LC0/z;->e:LO0/y;

    .line 17
    .line 18
    iget-object v4, v1, LC0/z;->a:Lm0/d0;

    .line 19
    .line 20
    invoke-static {v0, v2, v3, v4}, LC0/z;->b(Lm0/Y;Lz4/H;LO0/y;Lm0/d0;)LO0/y;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, v1, LC0/z;->d:LO0/y;

    .line 25
    .line 26
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, LC0/k;

    .line 31
    .line 32
    invoke-direct {v1, p1, p2, p3, v0}, LC0/k;-><init>(ILm0/X;Lm0/X;LC0/b;)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0xb

    .line 36
    .line 37
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->T()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/r;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/r;-><init>(ILC0/b;Z)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x17

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g(Lm0/w0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->T()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x19

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final h(ILO0/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/i;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-direct {p2, p1, v0}, LC0/i;-><init>(LC0/b;I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x401

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final i(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/r;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/r;-><init>(ILC0/b;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/x;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p1, v2, v0, p2}, LC0/x;-><init>(IILC0/b;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x5

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LC0/A;->T()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, LC0/u;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x16

    .line 11
    .line 12
    invoke-virtual {p0, p1, v1, v0}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final l(ILO0/y;LO0/p;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/q;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p2, p1, p3, p4, v0}, LC0/q;-><init>(LC0/b;LO0/p;LO0/u;I)V

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x3e9

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final m(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/t;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v0, p1, v2}, LC0/t;-><init>(LC0/b;II)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Lm0/S;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0xc

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final o(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/r;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v2, v0, p1}, LC0/r;-><init>(ILC0/b;Z)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x9

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/t;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v0, p1, v2}, LC0/t;-><init>(LC0/b;II)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p(LB0/w;)V
    .locals 3

    .line 1
    instance-of v0, p1, LB0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, LB0/w;->N:LO0/y;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    new-instance v1, LC0/f;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v0, p1, v2}, LC0/f;-><init>(LC0/b;LB0/w;I)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0xa

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final q(Lm0/N;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1c

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final r(ILO0/y;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/m;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p2, p1, p3, v0}, LC0/m;-><init>(LC0/b;LO0/u;I)V

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x3ed

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final s(ILO0/y;LO0/p;LO0/u;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/p;

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p5

    .line 12
    move v5, p6

    .line 13
    invoke-direct/range {v0 .. v5}, LC0/p;-><init>(Ljava/lang/Object;LO0/p;LO0/u;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    const/16 p3, 0x3eb

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final t(Lm0/I;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LB0/D;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, LB0/D;-><init>(LC0/b;Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final u(I)V
    .locals 5

    .line 1
    iget-object v0, p0, LC0/A;->M:Lm0/Y;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LC0/A;->J:LC0/z;

    .line 7
    .line 8
    iget-object v2, v1, LC0/z;->b:Lz4/H;

    .line 9
    .line 10
    iget-object v3, v1, LC0/z;->e:LO0/y;

    .line 11
    .line 12
    iget-object v4, v1, LC0/z;->a:Lm0/d0;

    .line 13
    .line 14
    invoke-static {v0, v2, v3, v4}, LC0/z;->b(Lm0/Y;Lz4/H;LO0/y;Lm0/d0;)LO0/y;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, v1, LC0/z;->d:LO0/y;

    .line 19
    .line 20
    check-cast v0, LB0/O;

    .line 21
    .line 22
    invoke-virtual {v0}, LB0/O;->x()Lm0/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, LC0/z;->d(Lm0/f0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, LC0/t;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v0, p1, v2}, LC0/t;-><init>(LC0/b;II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v2, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final v(LB0/w;)V
    .locals 3

    .line 1
    instance-of v0, p1, LB0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, LB0/w;->N:LO0/y;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    new-instance v1, LC0/f;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v0, p1, v2}, LC0/f;-><init>(LC0/b;LB0/w;I)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0xa

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final w(ILO0/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LC0/A;->S(ILO0/y;)LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, LC0/i;

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    invoke-direct {p2, p1, v0}, LC0/i;-><init>(LC0/b;I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x3ff

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final x()V
    .locals 0

    .line 1
    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/d;

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    invoke-direct {v1, v2, v0, p1}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1b

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LC0/A;->P()LC0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LC0/x;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2, v0, p2}, LC0/x;-><init>(IILC0/b;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    invoke-virtual {p0, v0, p1, v1}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
