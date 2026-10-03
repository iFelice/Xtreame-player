.class public final LP0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/U;
.implements LO0/W;
.implements LS0/h;
.implements LS0/k;


# instance fields
.field public final G:I

.field public final H:[I

.field public final I:[Lm0/t;

.field public final J:[Z

.field public final K:LE0/b;

.field public final L:LO0/V;

.field public final M:LO0/D;

.field public final N:LU4/b;

.field public final O:LS0/m;

.field public final P:LP0/j;

.field public final Q:Ljava/util/ArrayList;

.field public final R:Ljava/util/List;

.field public final S:LO0/T;

.field public final T:[LO0/T;

.field public final U:LP0/c;

.field public V:LP0/f;

.field public W:Lm0/t;

.field public X:LP0/l;

.field public Y:J

.field public Z:J

.field public a0:I

.field public b0:Z

.field public c0:Z

.field public d0:Z


# direct methods
.method public constructor <init>(I[I[Lm0/t;LE0/p;LO0/V;LS0/d;JLG0/r;LG0/o;LU4/b;LO0/D;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LP0/m;->G:I

    .line 5
    .line 6
    iput-object p2, p0, LP0/m;->H:[I

    .line 7
    .line 8
    iput-object p3, p0, LP0/m;->I:[Lm0/t;

    .line 9
    .line 10
    iput-object p4, p0, LP0/m;->K:LE0/b;

    .line 11
    .line 12
    iput-object p5, p0, LP0/m;->L:LO0/V;

    .line 13
    .line 14
    iput-object p12, p0, LP0/m;->M:LO0/D;

    .line 15
    .line 16
    iput-object p11, p0, LP0/m;->N:LU4/b;

    .line 17
    .line 18
    iput-boolean p13, p0, LP0/m;->b0:Z

    .line 19
    .line 20
    new-instance p3, LS0/m;

    .line 21
    .line 22
    const-string p4, "ChunkSampleStream"

    .line 23
    .line 24
    invoke-direct {p3, p4}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, LP0/m;->O:LS0/m;

    .line 28
    .line 29
    new-instance p3, LP0/j;

    .line 30
    .line 31
    const/4 p4, 0x0

    .line 32
    invoke-direct {p3, p4}, LP0/j;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, LP0/m;->P:LP0/j;

    .line 36
    .line 37
    new-instance p3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p3, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iput-object p3, p0, LP0/m;->R:Ljava/util/List;

    .line 49
    .line 50
    array-length p2, p2

    .line 51
    new-array p3, p2, [LO0/T;

    .line 52
    .line 53
    iput-object p3, p0, LP0/m;->T:[LO0/T;

    .line 54
    .line 55
    new-array p3, p2, [Z

    .line 56
    .line 57
    iput-object p3, p0, LP0/m;->J:[Z

    .line 58
    .line 59
    add-int/lit8 p3, p2, 0x1

    .line 60
    .line 61
    new-array p5, p3, [I

    .line 62
    .line 63
    new-array p3, p3, [LO0/T;

    .line 64
    .line 65
    new-instance p11, LO0/T;

    .line 66
    .line 67
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-direct {p11, p6, p9, p10}, LO0/T;-><init>(LS0/d;LG0/r;LG0/o;)V

    .line 74
    .line 75
    .line 76
    iput-object p11, p0, LP0/m;->S:LO0/T;

    .line 77
    .line 78
    aput p1, p5, p4

    .line 79
    .line 80
    aput-object p11, p3, p4

    .line 81
    .line 82
    :goto_0
    if-ge p4, p2, :cond_0

    .line 83
    .line 84
    new-instance p1, LO0/T;

    .line 85
    .line 86
    const/4 p9, 0x0

    .line 87
    invoke-direct {p1, p6, p9, p9}, LO0/T;-><init>(LS0/d;LG0/r;LG0/o;)V

    .line 88
    .line 89
    .line 90
    iget-object p9, p0, LP0/m;->T:[LO0/T;

    .line 91
    .line 92
    aput-object p1, p9, p4

    .line 93
    .line 94
    add-int/lit8 p9, p4, 0x1

    .line 95
    .line 96
    aput-object p1, p3, p9

    .line 97
    .line 98
    iget-object p1, p0, LP0/m;->H:[I

    .line 99
    .line 100
    aget p1, p1, p4

    .line 101
    .line 102
    aput p1, p5, p9

    .line 103
    .line 104
    move p4, p9

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, LP0/c;

    .line 107
    .line 108
    invoke-direct {p1, p5, p3}, LP0/c;-><init>([I[LO0/T;)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, LP0/m;->U:LP0/c;

    .line 112
    .line 113
    iput-wide p7, p0, LP0/m;->Y:J

    .line 114
    .line 115
    iput-wide p7, p0, LP0/m;->Z:J

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LP0/m;->Y:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final B()V
    .locals 10

    .line 1
    iget-object v0, p0, LP0/m;->S:LO0/T;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/T;->t()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, LP0/m;->a0:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, LP0/m;->C(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    iget v1, p0, LP0/m;->a0:I

    .line 16
    .line 17
    if-gt v1, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p0, LP0/m;->a0:I

    .line 22
    .line 23
    iget-object v2, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, LP0/a;

    .line 30
    .line 31
    iget-object v9, v1, LP0/f;->J:Lm0/t;

    .line 32
    .line 33
    iget-object v2, p0, LP0/m;->W:Lm0/t;

    .line 34
    .line 35
    invoke-virtual {v9, v2}, Lm0/t;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget v3, p0, LP0/m;->G:I

    .line 42
    .line 43
    iget v5, v1, LP0/f;->K:I

    .line 44
    .line 45
    iget-object v2, p0, LP0/m;->M:LO0/D;

    .line 46
    .line 47
    iget-object v6, v1, LP0/f;->L:Ljava/lang/Object;

    .line 48
    .line 49
    iget-wide v7, v1, LP0/f;->M:J

    .line 50
    .line 51
    move-object v4, v9

    .line 52
    invoke-virtual/range {v2 .. v8}, LO0/D;->b(ILm0/t;ILjava/lang/Object;J)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iput-object v9, p0, LP0/m;->W:Lm0/t;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public final C(II)I
    .locals 2

    .line 1
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    iget-object v0, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LP0/a;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, LP0/a;->c(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, p1, :cond_0

    .line 23
    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    return p2

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    return p1
.end method

.method public final D(LP0/l;)V
    .locals 6

    .line 1
    iput-object p1, p0, LP0/m;->X:LP0/l;

    .line 2
    .line 3
    iget-object p1, p0, LP0/m;->S:LO0/T;

    .line 4
    .line 5
    invoke-virtual {p1}, LO0/T;->k()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, LO0/T;->h:LG0/l;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p1, LO0/T;->e:LG0/o;

    .line 14
    .line 15
    invoke-interface {v0, v2}, LG0/l;->c(LG0/o;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p1, LO0/T;->h:LG0/l;

    .line 19
    .line 20
    iput-object v1, p1, LO0/T;->g:Lm0/t;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, LP0/m;->T:[LO0/T;

    .line 23
    .line 24
    array-length v0, p1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_2

    .line 27
    .line 28
    aget-object v3, p1, v2

    .line 29
    .line 30
    invoke-virtual {v3}, LO0/T;->k()V

    .line 31
    .line 32
    .line 33
    iget-object v4, v3, LO0/T;->h:LG0/l;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iget-object v5, v3, LO0/T;->e:LG0/o;

    .line 38
    .line 39
    invoke-interface {v4, v5}, LG0/l;->c(LG0/o;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v3, LO0/T;->h:LG0/l;

    .line 43
    .line 44
    iput-object v1, v3, LO0/T;->g:Lm0/t;

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, LP0/m;->O:LS0/m;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, LS0/m;->f(LS0/k;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final E(IJ)LP0/k;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LP0/m;->T:[LO0/T;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, LP0/m;->H:[I

    .line 8
    .line 9
    aget v2, v2, v0

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, LP0/m;->J:[Z

    .line 14
    .line 15
    aget-boolean v2, p1, v0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    xor-int/2addr v2, v3

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 20
    .line 21
    .line 22
    aput-boolean v3, p1, v0

    .line 23
    .line 24
    aget-object p1, v1, v0

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3, v3}, LO0/T;->H(JZ)Z

    .line 27
    .line 28
    .line 29
    new-instance p1, LP0/k;

    .line 30
    .line 31
    aget-object p2, v1, v0

    .line 32
    .line 33
    invoke-direct {p1, p0, p0, p2, v0}, LP0/k;-><init>(LP0/m;LP0/m;LO0/T;I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LP0/m;->O:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LP0/m;->S:LO0/T;

    .line 7
    .line 8
    invoke-virtual {v1}, LO0/T;->A()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, LP0/m;->K:LE0/b;

    .line 18
    .line 19
    check-cast v0, LE0/p;

    .line 20
    .line 21
    iget-object v1, v0, LE0/p;->m:LO0/b;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, LE0/p;->a:LS0/n;

    .line 26
    .line 27
    invoke-interface {v0}, LS0/n;->b()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    throw v1

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(LS0/j;JJZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LP0/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, LP0/m;->V:LP0/f;

    .line 7
    .line 8
    new-instance v4, LO0/p;

    .line 9
    .line 10
    iget-wide v2, v1, LP0/f;->G:J

    .line 11
    .line 12
    iget-object v2, v1, LP0/f;->O:Ls0/M;

    .line 13
    .line 14
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 17
    .line 18
    move-wide/from16 v5, p4

    .line 19
    .line 20
    invoke-direct {v4, v2, v5, v6}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, LP0/m;->N:LU4/b;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-wide v10, v1, LP0/f;->M:J

    .line 29
    .line 30
    iget-wide v12, v1, LP0/f;->N:J

    .line 31
    .line 32
    iget-object v3, v0, LP0/m;->M:LO0/D;

    .line 33
    .line 34
    iget v5, v1, LP0/f;->I:I

    .line 35
    .line 36
    iget v6, v0, LP0/m;->G:I

    .line 37
    .line 38
    iget-object v7, v1, LP0/f;->J:Lm0/t;

    .line 39
    .line 40
    iget v8, v1, LP0/f;->K:I

    .line 41
    .line 42
    iget-object v9, v1, LP0/f;->L:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual/range {v3 .. v13}, LO0/D;->c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 45
    .line 46
    .line 47
    if-nez p6, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iget-object v1, v0, LP0/m;->S:LO0/T;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, LO0/T;->E(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, LP0/m;->T:[LO0/T;

    .line 62
    .line 63
    array-length v3, v1

    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_0
    if-ge v4, v3, :cond_1

    .line 66
    .line 67
    aget-object v5, v1, v4

    .line 68
    .line 69
    invoke-virtual {v5, v2}, LO0/T;->E(Z)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    instance-of v1, v1, LP0/a;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    iget-object v1, v0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/lit8 v2, v2, -0x1

    .line 86
    .line 87
    invoke-virtual {p0, v2}, LP0/m;->t(I)LP0/a;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    iget-wide v1, v0, LP0/m;->Z:J

    .line 97
    .line 98
    iput-wide v1, v0, LP0/m;->Y:J

    .line 99
    .line 100
    :cond_1
    iget-object v1, v0, LP0/m;->L:LO0/V;

    .line 101
    .line 102
    invoke-interface {v1, p0}, LO0/V;->r(LO0/W;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 9

    .line 1
    iget-object v0, p0, LP0/m;->S:LO0/T;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LO0/T;->E(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, LO0/T;->h:LG0/l;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v4, v0, LO0/T;->e:LG0/o;

    .line 13
    .line 14
    invoke-interface {v2, v4}, LG0/l;->c(LG0/o;)V

    .line 15
    .line 16
    .line 17
    iput-object v3, v0, LO0/T;->h:LG0/l;

    .line 18
    .line 19
    iput-object v3, v0, LO0/T;->g:Lm0/t;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, LP0/m;->T:[LO0/T;

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_0
    if-ge v5, v2, :cond_2

    .line 27
    .line 28
    aget-object v6, v0, v5

    .line 29
    .line 30
    invoke-virtual {v6, v1}, LO0/T;->E(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v7, v6, LO0/T;->h:LG0/l;

    .line 34
    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    iget-object v8, v6, LO0/T;->e:LG0/o;

    .line 38
    .line 39
    invoke-interface {v7, v8}, LG0/l;->c(LG0/o;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, v6, LO0/T;->h:LG0/l;

    .line 43
    .line 44
    iput-object v3, v6, LO0/T;->g:Lm0/t;

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, LP0/m;->K:LE0/b;

    .line 50
    .line 51
    check-cast v0, LE0/p;

    .line 52
    .line 53
    iget-object v0, v0, LE0/p;->i:[LE0/n;

    .line 54
    .line 55
    array-length v2, v0

    .line 56
    :goto_1
    if-ge v4, v2, :cond_4

    .line 57
    .line 58
    aget-object v5, v0, v4

    .line 59
    .line 60
    iget-object v5, v5, LE0/n;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, LP0/i;

    .line 63
    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    check-cast v5, LP0/e;

    .line 67
    .line 68
    iget-object v5, v5, LP0/e;->G:LW0/s;

    .line 69
    .line 70
    invoke-interface {v5}, LW0/s;->release()V

    .line 71
    .line 72
    .line 73
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object v0, p0, LP0/m;->X:LP0/l;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    check-cast v0, LE0/d;

    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v2, v0, LE0/d;->T:Ljava/util/IdentityHashMap;

    .line 84
    .line 85
    invoke-virtual {v2, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, LE0/s;

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    iget-object v2, v2, LE0/s;->a:LO0/T;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, LO0/T;->E(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v2, LO0/T;->h:LG0/l;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    iget-object v4, v2, LO0/T;->e:LG0/o;

    .line 103
    .line 104
    invoke-interface {v1, v4}, LG0/l;->c(LG0/o;)V

    .line 105
    .line 106
    .line 107
    iput-object v3, v2, LO0/T;->h:LG0/l;

    .line 108
    .line 109
    iput-object v3, v2, LO0/T;->g:Lm0/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    :cond_5
    monitor-exit v0

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0

    .line 115
    throw v1

    .line 116
    :cond_6
    :goto_2
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, LP0/m;->Y:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, LP0/m;->d0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, LP0/m;->y()LP0/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v0, v0, LP0/f;->N:J

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LP0/m;->S:LO0/T;

    .line 8
    .line 9
    iget-boolean v1, p0, LP0/m;->d0:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, LO0/T;->y(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final g(LB0/d0;)Z
    .locals 64

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, LP0/m;->d0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, LP0/m;->O:LS0/m;

    .line 8
    .line 9
    invoke-virtual {v1}, LS0/m;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, LS0/m;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto/16 :goto_24

    .line 23
    .line 24
    :cond_1
    invoke-virtual/range {p0 .. p0}, LP0/m;->A()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-wide v5, v0, LP0/m;->Y:J

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual/range {p0 .. p0}, LP0/m;->y()LP0/a;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-wide v5, v4, LP0/f;->N:J

    .line 42
    .line 43
    iget-object v4, v0, LP0/m;->R:Ljava/util/List;

    .line 44
    .line 45
    :goto_0
    iget-object v7, v0, LP0/m;->K:LE0/b;

    .line 46
    .line 47
    move-object v14, v7

    .line 48
    check-cast v14, LE0/p;

    .line 49
    .line 50
    iget-object v7, v14, LE0/p;->m:LO0/b;

    .line 51
    .line 52
    const/4 v15, 0x1

    .line 53
    iget-object v11, v0, LP0/m;->P:LP0/j;

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    move-object/from16 v22, v1

    .line 58
    .line 59
    move/from16 p1, v3

    .line 60
    .line 61
    move-object v15, v11

    .line 62
    goto/16 :goto_20

    .line 63
    .line 64
    :cond_3
    move-object/from16 v7, p1

    .line 65
    .line 66
    iget-wide v7, v7, LB0/d0;->a:J

    .line 67
    .line 68
    sub-long v16, v5, v7

    .line 69
    .line 70
    iget-object v9, v14, LE0/p;->k:LF0/c;

    .line 71
    .line 72
    move-object/from16 v19, v11

    .line 73
    .line 74
    iget-wide v10, v9, LF0/c;->a:J

    .line 75
    .line 76
    invoke-static {v10, v11}, Lp0/M;->R(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    iget-object v11, v14, LE0/p;->k:LF0/c;

    .line 81
    .line 82
    iget v2, v14, LE0/p;->l:I

    .line 83
    .line 84
    invoke-virtual {v11, v2}, LF0/c;->b(I)LF0/h;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-wide v12, v2, LF0/h;->b:J

    .line 89
    .line 90
    invoke-static {v12, v13}, Lp0/M;->R(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v11

    .line 94
    add-long/2addr v11, v9

    .line 95
    add-long/2addr v11, v5

    .line 96
    iget-object v2, v14, LE0/p;->h:LE0/s;

    .line 97
    .line 98
    if-eqz v2, :cond_b

    .line 99
    .line 100
    iget-object v2, v2, LE0/s;->e:LE0/t;

    .line 101
    .line 102
    iget-object v9, v2, LE0/t;->L:LF0/c;

    .line 103
    .line 104
    iget-boolean v10, v9, LF0/c;->d:Z

    .line 105
    .line 106
    if-nez v10, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    iget-boolean v10, v2, LE0/t;->N:Z

    .line 110
    .line 111
    if-eqz v10, :cond_5

    .line 112
    .line 113
    move-object/from16 v22, v1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iget-object v10, v2, LE0/t;->K:Ljava/util/TreeMap;

    .line 117
    .line 118
    move-object/from16 v22, v1

    .line 119
    .line 120
    iget-wide v0, v9, LF0/c;->h:J

    .line 121
    .line 122
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v10, v0}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, v2, LE0/t;->H:LE0/f;

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 141
    .line 142
    .line 143
    move-result-wide v9

    .line 144
    cmp-long v13, v9, v11

    .line 145
    .line 146
    if-gez v13, :cond_8

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/Long;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v9

    .line 158
    iget-object v0, v1, LE0/f;->G:LE0/j;

    .line 159
    .line 160
    iget-wide v11, v0, LE0/j;->N:J

    .line 161
    .line 162
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    cmp-long v13, v11, v20

    .line 168
    .line 169
    if-eqz v13, :cond_6

    .line 170
    .line 171
    cmp-long v13, v11, v9

    .line 172
    .line 173
    if-gez v13, :cond_7

    .line 174
    .line 175
    :cond_6
    iput-wide v9, v0, LE0/j;->N:J

    .line 176
    .line 177
    :cond_7
    const/4 v0, 0x1

    .line 178
    goto :goto_1

    .line 179
    :cond_8
    const/4 v0, 0x0

    .line 180
    :goto_1
    if-eqz v0, :cond_a

    .line 181
    .line 182
    iget-boolean v9, v2, LE0/t;->M:Z

    .line 183
    .line 184
    if-nez v9, :cond_9

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_9
    iput-boolean v15, v2, LE0/t;->N:Z

    .line 188
    .line 189
    const/4 v9, 0x0

    .line 190
    iput-boolean v9, v2, LE0/t;->M:Z

    .line 191
    .line 192
    iget-object v1, v1, LE0/f;->G:LE0/j;

    .line 193
    .line 194
    iget-object v2, v1, LE0/j;->D:Landroid/os/Handler;

    .line 195
    .line 196
    iget-object v9, v1, LE0/j;->w:LE0/e;

    .line 197
    .line 198
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, LE0/j;->z()V

    .line 202
    .line 203
    .line 204
    :cond_a
    :goto_2
    if-eqz v0, :cond_c

    .line 205
    .line 206
    :goto_3
    move/from16 p1, v3

    .line 207
    .line 208
    move-object/from16 v15, v19

    .line 209
    .line 210
    goto/16 :goto_20

    .line 211
    .line 212
    :cond_b
    :goto_4
    move-object/from16 v22, v1

    .line 213
    .line 214
    :cond_c
    iget-wide v0, v14, LE0/p;->f:J

    .line 215
    .line 216
    invoke-static {v0, v1}, Lp0/M;->z(J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v0

    .line 220
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v0

    .line 224
    iget-object v2, v14, LE0/p;->k:LF0/c;

    .line 225
    .line 226
    iget-wide v9, v2, LF0/c;->a:J

    .line 227
    .line 228
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    cmp-long v13, v9, v11

    .line 234
    .line 235
    if-nez v13, :cond_d

    .line 236
    .line 237
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_d
    iget v11, v14, LE0/p;->l:I

    .line 244
    .line 245
    invoke-virtual {v2, v11}, LF0/c;->b(I)LF0/h;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget-wide v11, v2, LF0/h;->b:J

    .line 250
    .line 251
    add-long/2addr v9, v11

    .line 252
    invoke-static {v9, v10}, Lp0/M;->R(J)J

    .line 253
    .line 254
    .line 255
    move-result-wide v9

    .line 256
    sub-long v9, v0, v9

    .line 257
    .line 258
    move-wide v12, v9

    .line 259
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_e

    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    goto :goto_6

    .line 267
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    sub-int/2addr v2, v15

    .line 272
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, LP0/p;

    .line 277
    .line 278
    :goto_6
    iget-object v9, v14, LE0/p;->j:LR0/t;

    .line 279
    .line 280
    check-cast v9, LR0/c;

    .line 281
    .line 282
    iget-object v9, v9, LR0/c;->c:[I

    .line 283
    .line 284
    array-length v9, v9

    .line 285
    new-array v10, v9, [LP0/q;

    .line 286
    .line 287
    const/4 v11, 0x0

    .line 288
    :goto_7
    iget-object v15, v14, LE0/p;->i:[LE0/n;

    .line 289
    .line 290
    if-ge v11, v9, :cond_12

    .line 291
    .line 292
    aget-object v15, v15, v11

    .line 293
    .line 294
    move/from16 p1, v9

    .line 295
    .line 296
    iget-object v9, v15, LE0/n;->g:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v9, LE0/k;

    .line 299
    .line 300
    sget-object v23, LP0/q;->i:LU4/b;

    .line 301
    .line 302
    if-nez v9, :cond_f

    .line 303
    .line 304
    aput-object v23, v10, v11

    .line 305
    .line 306
    move-wide/from16 v36, v5

    .line 307
    .line 308
    move-wide/from16 v34, v12

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_f
    invoke-virtual {v15, v0, v1}, LE0/n;->b(J)J

    .line 312
    .line 313
    .line 314
    move-result-wide v30

    .line 315
    invoke-virtual {v15, v0, v1}, LE0/n;->c(J)J

    .line 316
    .line 317
    .line 318
    move-result-wide v32

    .line 319
    if-eqz v2, :cond_10

    .line 320
    .line 321
    invoke-virtual {v2}, LP0/p;->a()J

    .line 322
    .line 323
    .line 324
    move-result-wide v24

    .line 325
    move-wide/from16 v36, v5

    .line 326
    .line 327
    move-wide/from16 v34, v12

    .line 328
    .line 329
    move-wide/from16 v26, v24

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_10
    iget-object v9, v15, LE0/n;->g:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v9, LE0/k;

    .line 335
    .line 336
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    move-wide/from16 v34, v12

    .line 340
    .line 341
    iget-wide v12, v15, LE0/n;->b:J

    .line 342
    .line 343
    invoke-interface {v9, v5, v6, v12, v13}, LE0/k;->f(JJ)J

    .line 344
    .line 345
    .line 346
    move-result-wide v12

    .line 347
    move-wide/from16 v36, v5

    .line 348
    .line 349
    iget-wide v5, v15, LE0/n;->c:J

    .line 350
    .line 351
    add-long v24, v12, v5

    .line 352
    .line 353
    move-wide/from16 v26, v30

    .line 354
    .line 355
    move-wide/from16 v28, v32

    .line 356
    .line 357
    invoke-static/range {v24 .. v29}, Lp0/M;->j(JJJ)J

    .line 358
    .line 359
    .line 360
    move-result-wide v5

    .line 361
    move-wide/from16 v26, v5

    .line 362
    .line 363
    :goto_8
    cmp-long v5, v26, v30

    .line 364
    .line 365
    if-gez v5, :cond_11

    .line 366
    .line 367
    aput-object v23, v10, v11

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_11
    invoke-virtual {v14, v11}, LE0/p;->b(I)LE0/n;

    .line 371
    .line 372
    .line 373
    move-result-object v25

    .line 374
    new-instance v5, LE0/o;

    .line 375
    .line 376
    move-object/from16 v24, v5

    .line 377
    .line 378
    move-wide/from16 v28, v32

    .line 379
    .line 380
    invoke-direct/range {v24 .. v29}, LE0/o;-><init>(LE0/n;JJ)V

    .line 381
    .line 382
    .line 383
    aput-object v5, v10, v11

    .line 384
    .line 385
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 386
    .line 387
    move/from16 v9, p1

    .line 388
    .line 389
    move-wide/from16 v12, v34

    .line 390
    .line 391
    move-wide/from16 v5, v36

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :cond_12
    move-wide/from16 v36, v5

    .line 395
    .line 396
    move-wide/from16 v34, v12

    .line 397
    .line 398
    iget-object v5, v14, LE0/p;->k:LF0/c;

    .line 399
    .line 400
    iget-boolean v5, v5, LF0/c;->d:Z

    .line 401
    .line 402
    const-wide/16 v12, 0x0

    .line 403
    .line 404
    if-eqz v5, :cond_13

    .line 405
    .line 406
    const/4 v5, 0x0

    .line 407
    aget-object v6, v15, v5

    .line 408
    .line 409
    invoke-virtual {v6}, LE0/n;->d()J

    .line 410
    .line 411
    .line 412
    move-result-wide v23

    .line 413
    cmp-long v6, v23, v12

    .line 414
    .line 415
    if-nez v6, :cond_14

    .line 416
    .line 417
    :cond_13
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    move-wide/from16 v62, v12

    .line 423
    .line 424
    move-object v13, v10

    .line 425
    move-wide/from16 v10, v62

    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_14
    aget-object v6, v15, v5

    .line 429
    .line 430
    invoke-virtual {v6, v0, v1}, LE0/n;->c(J)J

    .line 431
    .line 432
    .line 433
    move-result-wide v12

    .line 434
    aget-object v6, v15, v5

    .line 435
    .line 436
    invoke-virtual {v6, v12, v13}, LE0/n;->e(J)J

    .line 437
    .line 438
    .line 439
    move-result-wide v5

    .line 440
    iget-object v9, v14, LE0/p;->k:LF0/c;

    .line 441
    .line 442
    iget-wide v11, v9, LF0/c;->a:J

    .line 443
    .line 444
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    cmp-long v13, v11, v20

    .line 450
    .line 451
    if-nez v13, :cond_15

    .line 452
    .line 453
    move-object v13, v10

    .line 454
    move-wide/from16 v9, v20

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_15
    iget v13, v14, LE0/p;->l:I

    .line 458
    .line 459
    invoke-virtual {v9, v13}, LF0/c;->b(I)LF0/h;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    move-object v13, v10

    .line 464
    iget-wide v9, v9, LF0/h;->b:J

    .line 465
    .line 466
    add-long/2addr v11, v9

    .line 467
    invoke-static {v11, v12}, Lp0/M;->R(J)J

    .line 468
    .line 469
    .line 470
    move-result-wide v9

    .line 471
    sub-long v9, v0, v9

    .line 472
    .line 473
    :goto_a
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 474
    .line 475
    .line 476
    move-result-wide v5

    .line 477
    sub-long/2addr v5, v7

    .line 478
    const-wide/16 v10, 0x0

    .line 479
    .line 480
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 481
    .line 482
    .line 483
    move-result-wide v5

    .line 484
    goto :goto_c

    .line 485
    :goto_b
    move-wide/from16 v5, v20

    .line 486
    .line 487
    :goto_c
    iget-object v7, v14, LE0/p;->j:LR0/t;

    .line 488
    .line 489
    move-wide/from16 v8, v16

    .line 490
    .line 491
    move-wide/from16 v17, v10

    .line 492
    .line 493
    move-object/from16 v16, v13

    .line 494
    .line 495
    move-object/from16 v13, v19

    .line 496
    .line 497
    const/4 v15, 0x0

    .line 498
    move-wide v10, v5

    .line 499
    move-wide/from16 v5, v20

    .line 500
    .line 501
    move-wide/from16 v38, v34

    .line 502
    .line 503
    move-object v12, v4

    .line 504
    move-object v15, v13

    .line 505
    move-object/from16 v13, v16

    .line 506
    .line 507
    invoke-interface/range {v7 .. v13}, LR0/t;->a(JJLjava/util/List;[LP0/q;)V

    .line 508
    .line 509
    .line 510
    iget-object v7, v14, LE0/p;->j:LR0/t;

    .line 511
    .line 512
    invoke-interface {v7}, LR0/t;->b()I

    .line 513
    .line 514
    .line 515
    move-result v7

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 517
    .line 518
    .line 519
    invoke-virtual {v14, v7}, LE0/p;->b(I)LE0/n;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    iget-object v8, v7, LE0/n;->d:Ljava/lang/Object;

    .line 524
    .line 525
    move-object/from16 v59, v8

    .line 526
    .line 527
    check-cast v59, LP0/i;

    .line 528
    .line 529
    iget-object v8, v7, LE0/n;->g:Ljava/lang/Object;

    .line 530
    .line 531
    iget-object v9, v7, LE0/n;->f:Ljava/lang/Object;

    .line 532
    .line 533
    iget-object v10, v7, LE0/n;->e:Ljava/lang/Object;

    .line 534
    .line 535
    if-eqz v59, :cond_1b

    .line 536
    .line 537
    move-object v11, v10

    .line 538
    check-cast v11, LF0/m;

    .line 539
    .line 540
    move-object/from16 v12, v59

    .line 541
    .line 542
    check-cast v12, LP0/e;

    .line 543
    .line 544
    iget-object v12, v12, LP0/e;->O:[Lm0/t;

    .line 545
    .line 546
    if-nez v12, :cond_16

    .line 547
    .line 548
    iget-object v12, v11, LF0/m;->g:LF0/j;

    .line 549
    .line 550
    goto :goto_d

    .line 551
    :cond_16
    const/4 v12, 0x0

    .line 552
    :goto_d
    move-object v13, v8

    .line 553
    check-cast v13, LE0/k;

    .line 554
    .line 555
    if-nez v13, :cond_17

    .line 556
    .line 557
    invoke-virtual {v11}, LF0/m;->m()LF0/j;

    .line 558
    .line 559
    .line 560
    move-result-object v13

    .line 561
    goto :goto_e

    .line 562
    :cond_17
    const/4 v13, 0x0

    .line 563
    :goto_e
    if-nez v12, :cond_18

    .line 564
    .line 565
    if-eqz v13, :cond_1b

    .line 566
    .line 567
    :cond_18
    iget-object v0, v14, LE0/p;->j:LR0/t;

    .line 568
    .line 569
    check-cast v0, LR0/c;

    .line 570
    .line 571
    invoke-virtual {v0}, LR0/c;->l()Lm0/t;

    .line 572
    .line 573
    .line 574
    move-result-object v26

    .line 575
    iget-object v0, v14, LE0/p;->j:LR0/t;

    .line 576
    .line 577
    invoke-interface {v0}, LR0/t;->f()I

    .line 578
    .line 579
    .line 580
    move-result v27

    .line 581
    iget-object v0, v14, LE0/p;->j:LR0/t;

    .line 582
    .line 583
    invoke-interface {v0}, LR0/t;->h()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v28

    .line 587
    if-eqz v12, :cond_1a

    .line 588
    .line 589
    move-object v0, v9

    .line 590
    check-cast v0, LF0/b;

    .line 591
    .line 592
    iget-object v0, v0, LF0/b;->a:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v12, v13, v0}, LF0/j;->a(LF0/j;Ljava/lang/String;)LF0/j;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    if-nez v0, :cond_19

    .line 599
    .line 600
    goto :goto_f

    .line 601
    :cond_19
    move-object v12, v0

    .line 602
    goto :goto_f

    .line 603
    :cond_1a
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    move-object v12, v13

    .line 607
    :goto_f
    check-cast v9, LF0/b;

    .line 608
    .line 609
    iget-object v0, v9, LF0/b;->a:Ljava/lang/String;

    .line 610
    .line 611
    const/4 v1, 0x0

    .line 612
    invoke-static {v11, v0, v12, v1}, La7/b;->a(LF0/m;Ljava/lang/String;LF0/j;I)Ls0/m;

    .line 613
    .line 614
    .line 615
    move-result-object v25

    .line 616
    new-instance v0, LP0/o;

    .line 617
    .line 618
    iget-object v1, v14, LE0/p;->e:Ls0/i;

    .line 619
    .line 620
    move-object/from16 v23, v0

    .line 621
    .line 622
    move-object/from16 v24, v1

    .line 623
    .line 624
    move-object/from16 v29, v59

    .line 625
    .line 626
    invoke-direct/range {v23 .. v29}, LP0/o;-><init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;LP0/i;)V

    .line 627
    .line 628
    .line 629
    iput-object v0, v15, LP0/j;->H:Ljava/lang/Object;

    .line 630
    .line 631
    :goto_10
    move/from16 p1, v3

    .line 632
    .line 633
    goto/16 :goto_20

    .line 634
    .line 635
    :cond_1b
    iget-object v11, v14, LE0/p;->k:LF0/c;

    .line 636
    .line 637
    iget-boolean v12, v11, LF0/c;->d:Z

    .line 638
    .line 639
    if-eqz v12, :cond_1c

    .line 640
    .line 641
    iget v12, v14, LE0/p;->l:I

    .line 642
    .line 643
    iget-object v11, v11, LF0/c;->m:Ljava/util/List;

    .line 644
    .line 645
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 646
    .line 647
    .line 648
    move-result v11

    .line 649
    const/4 v13, 0x1

    .line 650
    sub-int/2addr v11, v13

    .line 651
    if-ne v12, v11, :cond_1c

    .line 652
    .line 653
    const/4 v11, 0x1

    .line 654
    goto :goto_11

    .line 655
    :cond_1c
    const/4 v11, 0x0

    .line 656
    :goto_11
    iget-wide v12, v7, LE0/n;->b:J

    .line 657
    .line 658
    if-eqz v11, :cond_1e

    .line 659
    .line 660
    cmp-long v16, v12, v5

    .line 661
    .line 662
    if-eqz v16, :cond_1d

    .line 663
    .line 664
    goto :goto_12

    .line 665
    :cond_1d
    const/4 v5, 0x0

    .line 666
    goto :goto_13

    .line 667
    :cond_1e
    :goto_12
    const/4 v5, 0x1

    .line 668
    :goto_13
    invoke-virtual {v7}, LE0/n;->d()J

    .line 669
    .line 670
    .line 671
    move-result-wide v23

    .line 672
    cmp-long v6, v23, v17

    .line 673
    .line 674
    if-nez v6, :cond_1f

    .line 675
    .line 676
    iput-boolean v5, v15, LP0/j;->G:Z

    .line 677
    .line 678
    goto :goto_10

    .line 679
    :cond_1f
    invoke-virtual {v7, v0, v1}, LE0/n;->b(J)J

    .line 680
    .line 681
    .line 682
    move-result-wide v16

    .line 683
    invoke-virtual {v7, v0, v1}, LE0/n;->c(J)J

    .line 684
    .line 685
    .line 686
    move-result-wide v0

    .line 687
    if-eqz v11, :cond_21

    .line 688
    .line 689
    invoke-virtual {v7, v0, v1}, LE0/n;->e(J)J

    .line 690
    .line 691
    .line 692
    move-result-wide v23

    .line 693
    invoke-virtual {v7, v0, v1}, LE0/n;->f(J)J

    .line 694
    .line 695
    .line 696
    move-result-wide v25

    .line 697
    sub-long v25, v23, v25

    .line 698
    .line 699
    add-long v25, v25, v23

    .line 700
    .line 701
    cmp-long v6, v25, v12

    .line 702
    .line 703
    if-ltz v6, :cond_20

    .line 704
    .line 705
    const/4 v6, 0x1

    .line 706
    goto :goto_14

    .line 707
    :cond_20
    const/4 v6, 0x0

    .line 708
    :goto_14
    and-int/2addr v5, v6

    .line 709
    :cond_21
    if-eqz v2, :cond_22

    .line 710
    .line 711
    invoke-virtual {v2}, LP0/p;->a()J

    .line 712
    .line 713
    .line 714
    move-result-wide v23

    .line 715
    move v6, v3

    .line 716
    move-wide/from16 v2, v23

    .line 717
    .line 718
    goto :goto_15

    .line 719
    :cond_22
    check-cast v8, LE0/k;

    .line 720
    .line 721
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    move v6, v3

    .line 725
    move-wide/from16 v2, v36

    .line 726
    .line 727
    invoke-interface {v8, v2, v3, v12, v13}, LE0/k;->f(JJ)J

    .line 728
    .line 729
    .line 730
    move-result-wide v23

    .line 731
    iget-wide v2, v7, LE0/n;->c:J

    .line 732
    .line 733
    add-long v23, v23, v2

    .line 734
    .line 735
    move-wide/from16 v25, v16

    .line 736
    .line 737
    move-wide/from16 v27, v0

    .line 738
    .line 739
    invoke-static/range {v23 .. v28}, Lp0/M;->j(JJJ)J

    .line 740
    .line 741
    .line 742
    move-result-wide v2

    .line 743
    :goto_15
    cmp-long v8, v2, v16

    .line 744
    .line 745
    if-gez v8, :cond_23

    .line 746
    .line 747
    new-instance v0, LO0/b;

    .line 748
    .line 749
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 750
    .line 751
    .line 752
    iput-object v0, v14, LE0/p;->m:LO0/b;

    .line 753
    .line 754
    :goto_16
    move/from16 p1, v6

    .line 755
    .line 756
    goto/16 :goto_20

    .line 757
    .line 758
    :cond_23
    cmp-long v8, v2, v0

    .line 759
    .line 760
    if-gtz v8, :cond_24

    .line 761
    .line 762
    iget-boolean v11, v14, LE0/p;->n:Z

    .line 763
    .line 764
    if-eqz v11, :cond_25

    .line 765
    .line 766
    if-ltz v8, :cond_25

    .line 767
    .line 768
    :cond_24
    move/from16 p1, v6

    .line 769
    .line 770
    goto/16 :goto_1f

    .line 771
    .line 772
    :cond_25
    if-eqz v5, :cond_26

    .line 773
    .line 774
    invoke-virtual {v7, v2, v3}, LE0/n;->f(J)J

    .line 775
    .line 776
    .line 777
    move-result-wide v16

    .line 778
    cmp-long v5, v16, v12

    .line 779
    .line 780
    if-ltz v5, :cond_26

    .line 781
    .line 782
    const/4 v5, 0x1

    .line 783
    iput-boolean v5, v15, LP0/j;->G:Z

    .line 784
    .line 785
    goto :goto_16

    .line 786
    :cond_26
    iget v5, v14, LE0/p;->g:I

    .line 787
    .line 788
    move/from16 p1, v6

    .line 789
    .line 790
    int-to-long v5, v5

    .line 791
    sub-long/2addr v0, v2

    .line 792
    const-wide/16 v16, 0x1

    .line 793
    .line 794
    add-long v0, v0, v16

    .line 795
    .line 796
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 797
    .line 798
    .line 799
    move-result-wide v0

    .line 800
    long-to-int v1, v0

    .line 801
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    cmp-long v0, v12, v5

    .line 807
    .line 808
    if-eqz v0, :cond_27

    .line 809
    .line 810
    :goto_17
    const/4 v5, 0x1

    .line 811
    if-le v1, v5, :cond_27

    .line 812
    .line 813
    int-to-long v5, v1

    .line 814
    add-long/2addr v5, v2

    .line 815
    sub-long v5, v5, v16

    .line 816
    .line 817
    invoke-virtual {v7, v5, v6}, LE0/n;->f(J)J

    .line 818
    .line 819
    .line 820
    move-result-wide v5

    .line 821
    cmp-long v8, v5, v12

    .line 822
    .line 823
    if-ltz v8, :cond_27

    .line 824
    .line 825
    add-int/lit8 v1, v1, -0x1

    .line 826
    .line 827
    goto :goto_17

    .line 828
    :cond_27
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 829
    .line 830
    .line 831
    move-result v4

    .line 832
    if-eqz v4, :cond_28

    .line 833
    .line 834
    move-wide/from16 v50, v36

    .line 835
    .line 836
    goto :goto_18

    .line 837
    :cond_28
    const-wide v50, -0x7fffffffffffffffL    # -4.9E-324

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    :goto_18
    iget-object v4, v14, LE0/p;->j:LR0/t;

    .line 843
    .line 844
    check-cast v4, LR0/c;

    .line 845
    .line 846
    invoke-virtual {v4}, LR0/c;->l()Lm0/t;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    iget-object v5, v14, LE0/p;->j:LR0/t;

    .line 851
    .line 852
    invoke-interface {v5}, LR0/t;->f()I

    .line 853
    .line 854
    .line 855
    move-result v44

    .line 856
    iget-object v5, v14, LE0/p;->j:LR0/t;

    .line 857
    .line 858
    invoke-interface {v5}, LR0/t;->h()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v45

    .line 862
    check-cast v10, LF0/m;

    .line 863
    .line 864
    invoke-virtual {v7, v2, v3}, LE0/n;->f(J)J

    .line 865
    .line 866
    .line 867
    move-result-wide v46

    .line 868
    invoke-virtual {v7, v2, v3}, LE0/n;->g(J)LF0/j;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    iget-object v6, v14, LE0/p;->e:Ls0/i;

    .line 873
    .line 874
    if-nez v59, :cond_2a

    .line 875
    .line 876
    invoke-virtual {v7, v2, v3}, LE0/n;->e(J)J

    .line 877
    .line 878
    .line 879
    move-result-wide v48

    .line 880
    move-wide/from16 v0, v38

    .line 881
    .line 882
    invoke-virtual {v7, v2, v3, v0, v1}, LE0/n;->h(JJ)Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-eqz v0, :cond_29

    .line 887
    .line 888
    const/4 v8, 0x0

    .line 889
    goto :goto_19

    .line 890
    :cond_29
    const/16 v8, 0x8

    .line 891
    .line 892
    :goto_19
    check-cast v9, LF0/b;

    .line 893
    .line 894
    iget-object v0, v9, LF0/b;->a:Ljava/lang/String;

    .line 895
    .line 896
    invoke-static {v10, v0, v5, v8}, La7/b;->a(LF0/m;Ljava/lang/String;LF0/j;I)Ls0/m;

    .line 897
    .line 898
    .line 899
    move-result-object v42

    .line 900
    new-instance v0, LP0/r;

    .line 901
    .line 902
    iget v1, v14, LE0/p;->d:I

    .line 903
    .line 904
    move-object/from16 v40, v0

    .line 905
    .line 906
    move-object/from16 v41, v6

    .line 907
    .line 908
    move-object/from16 v43, v4

    .line 909
    .line 910
    move-wide/from16 v50, v2

    .line 911
    .line 912
    move/from16 v52, v1

    .line 913
    .line 914
    move-object/from16 v53, v4

    .line 915
    .line 916
    invoke-direct/range {v40 .. v53}, LP0/r;-><init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;JJJILm0/t;)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_1e

    .line 920
    .line 921
    :cond_2a
    move-wide/from16 v60, v38

    .line 922
    .line 923
    const/4 v11, 0x1

    .line 924
    const/4 v14, 0x1

    .line 925
    :goto_1a
    move-object/from16 v23, v9

    .line 926
    .line 927
    if-ge v11, v1, :cond_2c

    .line 928
    .line 929
    int-to-long v8, v11

    .line 930
    add-long/2addr v8, v2

    .line 931
    invoke-virtual {v7, v8, v9}, LE0/n;->g(J)LF0/j;

    .line 932
    .line 933
    .line 934
    move-result-object v8

    .line 935
    move-object/from16 v9, v23

    .line 936
    .line 937
    check-cast v9, LF0/b;

    .line 938
    .line 939
    iget-object v9, v9, LF0/b;->a:Ljava/lang/String;

    .line 940
    .line 941
    invoke-virtual {v5, v8, v9}, LF0/j;->a(LF0/j;Ljava/lang/String;)LF0/j;

    .line 942
    .line 943
    .line 944
    move-result-object v8

    .line 945
    if-nez v8, :cond_2b

    .line 946
    .line 947
    goto :goto_1b

    .line 948
    :cond_2b
    add-int/lit8 v14, v14, 0x1

    .line 949
    .line 950
    add-int/lit8 v11, v11, 0x1

    .line 951
    .line 952
    move-object v5, v8

    .line 953
    move-object/from16 v9, v23

    .line 954
    .line 955
    goto :goto_1a

    .line 956
    :cond_2c
    :goto_1b
    int-to-long v8, v14

    .line 957
    add-long/2addr v8, v2

    .line 958
    sub-long v8, v8, v16

    .line 959
    .line 960
    invoke-virtual {v7, v8, v9}, LE0/n;->e(J)J

    .line 961
    .line 962
    .line 963
    move-result-wide v48

    .line 964
    if-eqz v0, :cond_2d

    .line 965
    .line 966
    cmp-long v0, v12, v48

    .line 967
    .line 968
    if-gtz v0, :cond_2d

    .line 969
    .line 970
    move-wide/from16 v52, v12

    .line 971
    .line 972
    move-wide/from16 v0, v60

    .line 973
    .line 974
    goto :goto_1c

    .line 975
    :cond_2d
    move-wide/from16 v0, v60

    .line 976
    .line 977
    const-wide v52, -0x7fffffffffffffffL    # -4.9E-324

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    :goto_1c
    invoke-virtual {v7, v8, v9, v0, v1}, LE0/n;->h(JJ)Z

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    if-eqz v0, :cond_2e

    .line 987
    .line 988
    const/4 v0, 0x0

    .line 989
    goto :goto_1d

    .line 990
    :cond_2e
    const/16 v0, 0x8

    .line 991
    .line 992
    :goto_1d
    move-object/from16 v9, v23

    .line 993
    .line 994
    check-cast v9, LF0/b;

    .line 995
    .line 996
    iget-object v1, v9, LF0/b;->a:Ljava/lang/String;

    .line 997
    .line 998
    invoke-static {v10, v1, v5, v0}, La7/b;->a(LF0/m;Ljava/lang/String;LF0/j;I)Ls0/m;

    .line 999
    .line 1000
    .line 1001
    move-result-object v42

    .line 1002
    iget-wide v0, v10, LF0/m;->c:J

    .line 1003
    .line 1004
    neg-long v0, v0

    .line 1005
    iget-object v5, v4, Lm0/t;->o:Ljava/lang/String;

    .line 1006
    .line 1007
    invoke-static {v5}, Lm0/O;->m(Ljava/lang/String;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v5

    .line 1011
    if-eqz v5, :cond_2f

    .line 1012
    .line 1013
    add-long v0, v0, v46

    .line 1014
    .line 1015
    :cond_2f
    move-wide/from16 v57, v0

    .line 1016
    .line 1017
    new-instance v0, LP0/n;

    .line 1018
    .line 1019
    move-object/from16 v40, v0

    .line 1020
    .line 1021
    move-object/from16 v41, v6

    .line 1022
    .line 1023
    move-object/from16 v43, v4

    .line 1024
    .line 1025
    move-wide/from16 v54, v2

    .line 1026
    .line 1027
    move/from16 v56, v14

    .line 1028
    .line 1029
    invoke-direct/range {v40 .. v59}, LP0/n;-><init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;JJJJJIJLP0/i;)V

    .line 1030
    .line 1031
    .line 1032
    :goto_1e
    iput-object v0, v15, LP0/j;->H:Ljava/lang/Object;

    .line 1033
    .line 1034
    goto :goto_20

    .line 1035
    :goto_1f
    iput-boolean v5, v15, LP0/j;->G:Z

    .line 1036
    .line 1037
    :goto_20
    iget-boolean v0, v15, LP0/j;->G:Z

    .line 1038
    .line 1039
    iget-object v1, v15, LP0/j;->H:Ljava/lang/Object;

    .line 1040
    .line 1041
    check-cast v1, LP0/f;

    .line 1042
    .line 1043
    const/4 v2, 0x0

    .line 1044
    iput-object v2, v15, LP0/j;->H:Ljava/lang/Object;

    .line 1045
    .line 1046
    const/4 v2, 0x0

    .line 1047
    iput-boolean v2, v15, LP0/j;->G:Z

    .line 1048
    .line 1049
    if-eqz v0, :cond_30

    .line 1050
    .line 1051
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    move-object/from16 v0, p0

    .line 1057
    .line 1058
    iput-wide v3, v0, LP0/m;->Y:J

    .line 1059
    .line 1060
    const/4 v1, 0x1

    .line 1061
    iput-boolean v1, v0, LP0/m;->d0:Z

    .line 1062
    .line 1063
    return v1

    .line 1064
    :cond_30
    move-object/from16 v0, p0

    .line 1065
    .line 1066
    if-nez v1, :cond_31

    .line 1067
    .line 1068
    return v2

    .line 1069
    :cond_31
    iput-object v1, v0, LP0/m;->V:LP0/f;

    .line 1070
    .line 1071
    instance-of v2, v1, LP0/a;

    .line 1072
    .line 1073
    iget-object v3, v0, LP0/m;->U:LP0/c;

    .line 1074
    .line 1075
    if-eqz v2, :cond_36

    .line 1076
    .line 1077
    move-object v2, v1

    .line 1078
    check-cast v2, LP0/a;

    .line 1079
    .line 1080
    if-eqz p1, :cond_34

    .line 1081
    .line 1082
    iget-wide v4, v0, LP0/m;->Y:J

    .line 1083
    .line 1084
    iget-wide v6, v2, LP0/f;->M:J

    .line 1085
    .line 1086
    cmp-long v8, v6, v4

    .line 1087
    .line 1088
    if-gez v8, :cond_33

    .line 1089
    .line 1090
    iget-object v6, v0, LP0/m;->S:LO0/T;

    .line 1091
    .line 1092
    iput-wide v4, v6, LO0/T;->t:J

    .line 1093
    .line 1094
    iget-object v4, v0, LP0/m;->T:[LO0/T;

    .line 1095
    .line 1096
    array-length v5, v4

    .line 1097
    const/4 v6, 0x0

    .line 1098
    :goto_21
    if-ge v6, v5, :cond_32

    .line 1099
    .line 1100
    aget-object v7, v4, v6

    .line 1101
    .line 1102
    iget-wide v8, v0, LP0/m;->Y:J

    .line 1103
    .line 1104
    iput-wide v8, v7, LO0/T;->t:J

    .line 1105
    .line 1106
    add-int/lit8 v6, v6, 0x1

    .line 1107
    .line 1108
    goto :goto_21

    .line 1109
    :cond_32
    iget-boolean v4, v0, LP0/m;->b0:Z

    .line 1110
    .line 1111
    if-eqz v4, :cond_33

    .line 1112
    .line 1113
    iget-object v4, v2, LP0/f;->J:Lm0/t;

    .line 1114
    .line 1115
    iget-object v5, v4, Lm0/t;->o:Ljava/lang/String;

    .line 1116
    .line 1117
    iget-object v4, v4, Lm0/t;->k:Ljava/lang/String;

    .line 1118
    .line 1119
    invoke-static {v5, v4}, Lm0/O;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v4

    .line 1123
    const/4 v5, 0x1

    .line 1124
    xor-int/2addr v4, v5

    .line 1125
    iput-boolean v4, v0, LP0/m;->c0:Z

    .line 1126
    .line 1127
    :cond_33
    const/4 v4, 0x0

    .line 1128
    iput-boolean v4, v0, LP0/m;->b0:Z

    .line 1129
    .line 1130
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    iput-wide v4, v0, LP0/m;->Y:J

    .line 1136
    .line 1137
    :cond_34
    iput-object v3, v2, LP0/a;->S:LP0/c;

    .line 1138
    .line 1139
    iget-object v3, v3, LP0/c;->b:[LO0/T;

    .line 1140
    .line 1141
    array-length v4, v3

    .line 1142
    new-array v4, v4, [I

    .line 1143
    .line 1144
    const/4 v5, 0x0

    .line 1145
    :goto_22
    array-length v6, v3

    .line 1146
    if-ge v5, v6, :cond_35

    .line 1147
    .line 1148
    aget-object v6, v3, v5

    .line 1149
    .line 1150
    iget v7, v6, LO0/T;->q:I

    .line 1151
    .line 1152
    iget v6, v6, LO0/T;->p:I

    .line 1153
    .line 1154
    add-int/2addr v7, v6

    .line 1155
    aput v7, v4, v5

    .line 1156
    .line 1157
    add-int/lit8 v5, v5, 0x1

    .line 1158
    .line 1159
    goto :goto_22

    .line 1160
    :cond_35
    iput-object v4, v2, LP0/a;->T:[I

    .line 1161
    .line 1162
    iget-object v3, v0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 1163
    .line 1164
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    goto :goto_23

    .line 1168
    :cond_36
    instance-of v2, v1, LP0/o;

    .line 1169
    .line 1170
    if-eqz v2, :cond_37

    .line 1171
    .line 1172
    move-object v2, v1

    .line 1173
    check-cast v2, LP0/o;

    .line 1174
    .line 1175
    iput-object v3, v2, LP0/o;->Q:LP0/h;

    .line 1176
    .line 1177
    :cond_37
    :goto_23
    iget-object v2, v0, LP0/m;->N:LU4/b;

    .line 1178
    .line 1179
    iget v3, v1, LP0/f;->I:I

    .line 1180
    .line 1181
    invoke-virtual {v2, v3}, LU4/b;->Y(I)I

    .line 1182
    .line 1183
    .line 1184
    move-result v2

    .line 1185
    move-object/from16 v3, v22

    .line 1186
    .line 1187
    invoke-virtual {v3, v1, v0, v2}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 1188
    .line 1189
    .line 1190
    const/4 v1, 0x1

    .line 1191
    :goto_24
    return v1
.end method

.method public final j(J)I
    .locals 2

    .line 1
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, LP0/m;->S:LO0/T;

    .line 10
    .line 11
    iget-boolean v1, p0, LP0/m;->d0:Z

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, v1}, LO0/T;->v(JZ)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, LO0/T;->I(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, LP0/m;->B()V

    .line 21
    .line 22
    .line 23
    return p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LP0/m;->O:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final n(LS0/j;JJLjava/io/IOException;I)LS0/g;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p6

    .line 4
    .line 5
    move-object/from16 v7, p1

    .line 6
    .line 7
    check-cast v7, LP0/f;

    .line 8
    .line 9
    iget-object v1, v7, LP0/f;->O:Ls0/M;

    .line 10
    .line 11
    iget-wide v1, v1, Ls0/M;->b:J

    .line 12
    .line 13
    instance-of v8, v7, LP0/a;

    .line 14
    .line 15
    iget-object v9, v0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v10, 0x1

    .line 22
    add-int/lit8 v11, v3, -0x1

    .line 23
    .line 24
    const-wide/16 v14, 0x0

    .line 25
    .line 26
    cmp-long v3, v1, v14

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    if-eqz v8, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v11}, LP0/m;->z(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v16, 0x0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/16 v16, 0x1

    .line 43
    .line 44
    :goto_1
    new-instance v6, LO0/p;

    .line 45
    .line 46
    iget-object v1, v7, LP0/f;->O:Ls0/M;

    .line 47
    .line 48
    iget-object v2, v1, Ls0/M;->c:Landroid/net/Uri;

    .line 49
    .line 50
    iget-object v1, v1, Ls0/M;->d:Ljava/util/Map;

    .line 51
    .line 52
    move-wide/from16 v2, p4

    .line 53
    .line 54
    invoke-direct {v6, v1, v2, v3}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 55
    .line 56
    .line 57
    new-instance v3, LO0/u;

    .line 58
    .line 59
    iget-wide v4, v7, LP0/f;->M:J

    .line 60
    .line 61
    invoke-static {v4, v5}, Lp0/M;->e0(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v23

    .line 65
    iget-wide v1, v7, LP0/f;->N:J

    .line 66
    .line 67
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v25

    .line 71
    iget v1, v7, LP0/f;->I:I

    .line 72
    .line 73
    iget v2, v0, LP0/m;->G:I

    .line 74
    .line 75
    iget-object v14, v7, LP0/f;->J:Lm0/t;

    .line 76
    .line 77
    iget v15, v7, LP0/f;->K:I

    .line 78
    .line 79
    iget-object v13, v7, LP0/f;->L:Ljava/lang/Object;

    .line 80
    .line 81
    move-object/from16 v17, v3

    .line 82
    .line 83
    move/from16 v18, v1

    .line 84
    .line 85
    move/from16 v19, v2

    .line 86
    .line 87
    move-object/from16 v20, v14

    .line 88
    .line 89
    move/from16 v21, v15

    .line 90
    .line 91
    move-object/from16 v22, v13

    .line 92
    .line 93
    invoke-direct/range {v17 .. v26}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 94
    .line 95
    .line 96
    new-instance v13, LB0/w0;

    .line 97
    .line 98
    const/4 v15, 0x1

    .line 99
    move-object v1, v13

    .line 100
    move-object v2, v6

    .line 101
    move-wide/from16 v17, v4

    .line 102
    .line 103
    move-object/from16 v4, p6

    .line 104
    .line 105
    move/from16 v5, p7

    .line 106
    .line 107
    move-object/from16 v19, v6

    .line 108
    .line 109
    move v6, v15

    .line 110
    invoke-direct/range {v1 .. v6}, LB0/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;II)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, LP0/m;->K:LE0/b;

    .line 114
    .line 115
    check-cast v1, LE0/p;

    .line 116
    .line 117
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    iget-object v6, v0, LP0/m;->N:LU4/b;

    .line 123
    .line 124
    if-nez v16, :cond_2

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-object v11, v6

    .line 130
    move-object v4, v7

    .line 131
    goto/16 :goto_c

    .line 132
    .line 133
    :cond_2
    iget-object v4, v1, LE0/p;->h:LE0/s;

    .line 134
    .line 135
    move/from16 v20, v11

    .line 136
    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    iget-wide v10, v4, LE0/s;->d:J

    .line 140
    .line 141
    cmp-long v21, v10, v2

    .line 142
    .line 143
    if-eqz v21, :cond_3

    .line 144
    .line 145
    cmp-long v21, v10, v17

    .line 146
    .line 147
    if-gez v21, :cond_3

    .line 148
    .line 149
    const/4 v10, 0x1

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    const/4 v10, 0x0

    .line 152
    :goto_2
    iget-object v4, v4, LE0/s;->e:LE0/t;

    .line 153
    .line 154
    iget-object v11, v4, LE0/t;->L:LF0/c;

    .line 155
    .line 156
    iget-boolean v11, v11, LF0/c;->d:Z

    .line 157
    .line 158
    if-nez v11, :cond_4

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_4
    iget-boolean v11, v4, LE0/t;->N:Z

    .line 162
    .line 163
    if-eqz v11, :cond_5

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    if-eqz v10, :cond_7

    .line 167
    .line 168
    iget-boolean v1, v4, LE0/t;->M:Z

    .line 169
    .line 170
    if-nez v1, :cond_6

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    const/4 v1, 0x1

    .line 174
    iput-boolean v1, v4, LE0/t;->N:Z

    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, v4, LE0/t;->M:Z

    .line 178
    .line 179
    iget-object v1, v4, LE0/t;->H:LE0/f;

    .line 180
    .line 181
    iget-object v1, v1, LE0/f;->G:LE0/j;

    .line 182
    .line 183
    iget-object v4, v1, LE0/j;->D:Landroid/os/Handler;

    .line 184
    .line 185
    iget-object v10, v1, LE0/j;->w:LE0/e;

    .line 186
    .line 187
    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, LE0/j;->z()V

    .line 191
    .line 192
    .line 193
    :goto_3
    move-object v11, v6

    .line 194
    move-object/from16 v18, v7

    .line 195
    .line 196
    move-object/from16 v17, v9

    .line 197
    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_7
    :goto_4
    iget-object v4, v1, LE0/p;->k:LF0/c;

    .line 201
    .line 202
    iget-boolean v4, v4, LF0/c;->d:Z

    .line 203
    .line 204
    iget-object v10, v1, LE0/p;->i:[LE0/n;

    .line 205
    .line 206
    if-nez v4, :cond_8

    .line 207
    .line 208
    instance-of v4, v7, LP0/p;

    .line 209
    .line 210
    if-eqz v4, :cond_8

    .line 211
    .line 212
    instance-of v4, v12, Ls0/A;

    .line 213
    .line 214
    if-eqz v4, :cond_8

    .line 215
    .line 216
    move-object v4, v12

    .line 217
    check-cast v4, Ls0/A;

    .line 218
    .line 219
    iget v4, v4, Ls0/A;->J:I

    .line 220
    .line 221
    const/16 v11, 0x194

    .line 222
    .line 223
    if-ne v4, v11, :cond_8

    .line 224
    .line 225
    iget-object v4, v1, LE0/p;->j:LR0/t;

    .line 226
    .line 227
    check-cast v4, LR0/c;

    .line 228
    .line 229
    invoke-virtual {v4, v14}, LR0/c;->o(Lm0/t;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    aget-object v4, v10, v4

    .line 234
    .line 235
    invoke-virtual {v4}, LE0/n;->d()J

    .line 236
    .line 237
    .line 238
    move-result-wide v17

    .line 239
    const-wide/16 v21, -0x1

    .line 240
    .line 241
    cmp-long v11, v17, v21

    .line 242
    .line 243
    if-eqz v11, :cond_8

    .line 244
    .line 245
    const-wide/16 v21, 0x0

    .line 246
    .line 247
    cmp-long v11, v17, v21

    .line 248
    .line 249
    if-eqz v11, :cond_8

    .line 250
    .line 251
    iget-object v11, v4, LE0/n;->g:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v11, LE0/k;

    .line 254
    .line 255
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v11}, LE0/k;->h()J

    .line 259
    .line 260
    .line 261
    move-result-wide v21

    .line 262
    iget-wide v2, v4, LE0/n;->c:J

    .line 263
    .line 264
    add-long v21, v21, v2

    .line 265
    .line 266
    add-long v21, v21, v17

    .line 267
    .line 268
    const-wide/16 v2, 0x1

    .line 269
    .line 270
    sub-long v21, v21, v2

    .line 271
    .line 272
    move-object v2, v7

    .line 273
    check-cast v2, LP0/p;

    .line 274
    .line 275
    invoke-virtual {v2}, LP0/p;->a()J

    .line 276
    .line 277
    .line 278
    move-result-wide v2

    .line 279
    cmp-long v4, v2, v21

    .line 280
    .line 281
    if-lez v4, :cond_8

    .line 282
    .line 283
    const/4 v2, 0x1

    .line 284
    iput-boolean v2, v1, LE0/p;->n:Z

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_8
    iget-object v2, v1, LE0/p;->j:LR0/t;

    .line 288
    .line 289
    check-cast v2, LR0/c;

    .line 290
    .line 291
    invoke-virtual {v2, v14}, LR0/c;->o(Lm0/t;)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    aget-object v2, v10, v2

    .line 296
    .line 297
    iget-object v3, v2, LE0/n;->e:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v3, LF0/m;

    .line 300
    .line 301
    iget-object v3, v3, LF0/m;->b:Lz4/H;

    .line 302
    .line 303
    iget-object v4, v1, LE0/p;->b:Lm2/i;

    .line 304
    .line 305
    invoke-virtual {v4, v3}, Lm2/i;->q(Lz4/H;)LF0/b;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    iget-object v10, v2, LE0/n;->f:Ljava/lang/Object;

    .line 310
    .line 311
    if-eqz v3, :cond_9

    .line 312
    .line 313
    move-object v11, v10

    .line 314
    check-cast v11, LF0/b;

    .line 315
    .line 316
    invoke-virtual {v11, v3}, LF0/b;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_9

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_9
    iget-object v3, v1, LE0/p;->j:LR0/t;

    .line 325
    .line 326
    iget-object v2, v2, LE0/n;->e:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v2, LF0/m;

    .line 329
    .line 330
    iget-object v2, v2, LF0/m;->b:Lz4/H;

    .line 331
    .line 332
    move-object v11, v6

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 334
    .line 335
    .line 336
    move-result-wide v5

    .line 337
    check-cast v3, LR0/c;

    .line 338
    .line 339
    iget-object v15, v3, LR0/c;->c:[I

    .line 340
    .line 341
    array-length v15, v15

    .line 342
    move-object/from16 v17, v9

    .line 343
    .line 344
    const/4 v9, 0x0

    .line 345
    const/4 v12, 0x0

    .line 346
    :goto_5
    if-ge v12, v15, :cond_b

    .line 347
    .line 348
    invoke-virtual {v3, v12, v5, v6}, LR0/c;->p(IJ)Z

    .line 349
    .line 350
    .line 351
    move-result v18

    .line 352
    if-eqz v18, :cond_a

    .line 353
    .line 354
    add-int/lit8 v9, v9, 0x1

    .line 355
    .line 356
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_b
    new-instance v3, Ljava/util/HashSet;

    .line 360
    .line 361
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 362
    .line 363
    .line 364
    const/4 v5, 0x0

    .line 365
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    if-ge v5, v6, :cond_c

    .line 370
    .line 371
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    check-cast v6, LF0/b;

    .line 376
    .line 377
    iget v6, v6, LF0/b;->c:I

    .line 378
    .line 379
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_c
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    new-instance v6, Lj0/c;

    .line 394
    .line 395
    new-instance v5, Ljava/util/HashSet;

    .line 396
    .line 397
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v2}, Lm2/i;->i(Lz4/H;)Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    move-object/from16 v18, v7

    .line 405
    .line 406
    const/4 v12, 0x0

    .line 407
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-ge v12, v7, :cond_d

    .line 412
    .line 413
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    check-cast v7, LF0/b;

    .line 418
    .line 419
    iget v7, v7, LF0/b;->c:I

    .line 420
    .line 421
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    add-int/lit8 v12, v12, 0x1

    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_d
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    sub-int v2, v3, v2

    .line 436
    .line 437
    invoke-direct {v6, v3, v2, v15, v9}, Lj0/c;-><init>(IIII)V

    .line 438
    .line 439
    .line 440
    const/4 v2, 0x2

    .line 441
    invoke-virtual {v6, v2}, Lj0/c;->a(I)Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-nez v3, :cond_e

    .line 446
    .line 447
    const/4 v3, 0x1

    .line 448
    invoke-virtual {v6, v3}, Lj0/c;->a(I)Z

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    if-nez v7, :cond_e

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_e
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    invoke-static {v6, v13}, LU4/b;->V(Lj0/c;LB0/w0;)LS0/g;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    if-eqz v3, :cond_f

    .line 463
    .line 464
    iget v7, v3, LS0/g;->a:I

    .line 465
    .line 466
    invoke-virtual {v6, v7}, Lj0/c;->a(I)Z

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    if-nez v6, :cond_10

    .line 471
    .line 472
    :cond_f
    :goto_8
    move-object/from16 v4, v18

    .line 473
    .line 474
    goto/16 :goto_c

    .line 475
    .line 476
    :cond_10
    iget-wide v5, v3, LS0/g;->b:J

    .line 477
    .line 478
    if-ne v7, v2, :cond_11

    .line 479
    .line 480
    iget-object v1, v1, LE0/p;->j:LR0/t;

    .line 481
    .line 482
    check-cast v1, LR0/c;

    .line 483
    .line 484
    invoke-virtual {v1, v14}, LR0/c;->o(Lm0/t;)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-virtual {v1, v2, v5, v6}, LR0/c;->i(IJ)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_f

    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_11
    const/4 v1, 0x1

    .line 496
    if-ne v7, v1, :cond_f

    .line 497
    .line 498
    check-cast v10, LF0/b;

    .line 499
    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 501
    .line 502
    .line 503
    move-result-wide v2

    .line 504
    add-long/2addr v2, v5

    .line 505
    iget-object v5, v10, LF0/b;->b:Ljava/lang/String;

    .line 506
    .line 507
    iget-object v6, v4, Lm2/i;->H:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast v6, Ljava/util/Map;

    .line 510
    .line 511
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v7

    .line 515
    if-eqz v7, :cond_12

    .line 516
    .line 517
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    check-cast v7, Ljava/lang/Long;

    .line 522
    .line 523
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 526
    .line 527
    .line 528
    move-result-wide v14

    .line 529
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 530
    .line 531
    .line 532
    move-result-wide v14

    .line 533
    goto :goto_9

    .line 534
    :cond_12
    move-wide v14, v2

    .line 535
    :goto_9
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    const/high16 v5, -0x80000000

    .line 543
    .line 544
    iget v6, v10, LF0/b;->c:I

    .line 545
    .line 546
    if-eq v6, v5, :cond_14

    .line 547
    .line 548
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    iget-object v4, v4, Lm2/i;->I:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v4, Ljava/util/Map;

    .line 555
    .line 556
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v6

    .line 560
    if-eqz v6, :cond_13

    .line 561
    .line 562
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v6

    .line 566
    check-cast v6, Ljava/lang/Long;

    .line 567
    .line 568
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 571
    .line 572
    .line 573
    move-result-wide v6

    .line 574
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 575
    .line 576
    .line 577
    move-result-wide v2

    .line 578
    :cond_13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    :cond_14
    :goto_a
    if-eqz v16, :cond_17

    .line 586
    .line 587
    sget-object v2, LS0/m;->K:LS0/g;

    .line 588
    .line 589
    if-eqz v8, :cond_16

    .line 590
    .line 591
    move/from16 v3, v20

    .line 592
    .line 593
    invoke-virtual {v0, v3}, LP0/m;->t(I)LP0/a;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    move-object/from16 v4, v18

    .line 598
    .line 599
    if-ne v3, v4, :cond_15

    .line 600
    .line 601
    const/4 v3, 0x1

    .line 602
    goto :goto_b

    .line 603
    :cond_15
    const/4 v3, 0x0

    .line 604
    :goto_b
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 605
    .line 606
    .line 607
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-eqz v3, :cond_18

    .line 612
    .line 613
    iget-wide v5, v0, LP0/m;->Z:J

    .line 614
    .line 615
    iput-wide v5, v0, LP0/m;->Y:J

    .line 616
    .line 617
    goto :goto_d

    .line 618
    :cond_16
    move-object/from16 v4, v18

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_17
    move-object/from16 v4, v18

    .line 622
    .line 623
    const-string v2, "ChunkSampleStream"

    .line 624
    .line 625
    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    .line 626
    .line 627
    invoke-static {v2, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    :goto_c
    const/4 v2, 0x0

    .line 631
    :cond_18
    :goto_d
    if-nez v2, :cond_1a

    .line 632
    .line 633
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-static {v13}, LU4/b;->Z(LB0/w0;)J

    .line 637
    .line 638
    .line 639
    move-result-wide v2

    .line 640
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    cmp-long v7, v2, v5

    .line 646
    .line 647
    if-eqz v7, :cond_19

    .line 648
    .line 649
    const/4 v5, 0x0

    .line 650
    invoke-static {v2, v3, v5}, LS0/m;->c(JZ)LS0/g;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    goto :goto_e

    .line 655
    :cond_19
    sget-object v2, LS0/m;->L:LS0/g;

    .line 656
    .line 657
    :cond_1a
    :goto_e
    move-object v14, v2

    .line 658
    invoke-virtual {v14}, LS0/g;->a()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    const/4 v1, 0x1

    .line 663
    xor-int/lit8 v15, v2, 0x1

    .line 664
    .line 665
    iget-wide v8, v4, LP0/f;->M:J

    .line 666
    .line 667
    iget-wide v12, v4, LP0/f;->N:J

    .line 668
    .line 669
    iget-object v1, v0, LP0/m;->M:LO0/D;

    .line 670
    .line 671
    iget v3, v4, LP0/f;->I:I

    .line 672
    .line 673
    iget v5, v0, LP0/m;->G:I

    .line 674
    .line 675
    iget-object v6, v4, LP0/f;->J:Lm0/t;

    .line 676
    .line 677
    iget v7, v4, LP0/f;->K:I

    .line 678
    .line 679
    iget-object v10, v4, LP0/f;->L:Ljava/lang/Object;

    .line 680
    .line 681
    move-object/from16 v2, v19

    .line 682
    .line 683
    move v4, v5

    .line 684
    move-object v5, v6

    .line 685
    move-object/from16 v16, v11

    .line 686
    .line 687
    move v6, v7

    .line 688
    move-object v7, v10

    .line 689
    move-wide v10, v12

    .line 690
    move-object/from16 v12, p6

    .line 691
    .line 692
    move v13, v15

    .line 693
    invoke-virtual/range {v1 .. v13}, LO0/D;->e(LO0/p;IILm0/t;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 694
    .line 695
    .line 696
    if-eqz v15, :cond_1b

    .line 697
    .line 698
    const/4 v1, 0x0

    .line 699
    iput-object v1, v0, LP0/m;->V:LP0/f;

    .line 700
    .line 701
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    iget-object v1, v0, LP0/m;->L:LO0/V;

    .line 705
    .line 706
    invoke-interface {v1, v0}, LO0/V;->r(LO0/W;)V

    .line 707
    .line 708
    .line 709
    :cond_1b
    return-object v14
.end method

.method public final o(LS0/j;JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, LP0/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, LP0/m;->V:LP0/f;

    .line 9
    .line 10
    iget-object v3, v0, LP0/m;->K:LE0/b;

    .line 11
    .line 12
    check-cast v3, LE0/p;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    instance-of v4, v1, LP0/o;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    move-object v4, v1

    .line 22
    check-cast v4, LP0/o;

    .line 23
    .line 24
    iget-object v5, v3, LE0/p;->j:LR0/t;

    .line 25
    .line 26
    iget-object v4, v4, LP0/f;->J:Lm0/t;

    .line 27
    .line 28
    check-cast v5, LR0/c;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, LR0/c;->o(Lm0/t;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v3, LE0/p;->i:[LE0/n;

    .line 35
    .line 36
    aget-object v6, v5, v4

    .line 37
    .line 38
    iget-object v7, v6, LE0/n;->g:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v7, LE0/k;

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    iget-object v7, v6, LE0/n;->d:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v13, v7

    .line 47
    check-cast v13, LP0/i;

    .line 48
    .line 49
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v7, v13

    .line 53
    check-cast v7, LP0/e;

    .line 54
    .line 55
    iget-object v7, v7, LP0/e;->N:LW0/F;

    .line 56
    .line 57
    instance-of v8, v7, LW0/l;

    .line 58
    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    move-object v2, v7

    .line 62
    check-cast v2, LW0/l;

    .line 63
    .line 64
    :cond_0
    if-eqz v2, :cond_1

    .line 65
    .line 66
    new-instance v7, LE0/l;

    .line 67
    .line 68
    iget-object v8, v6, LE0/n;->e:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v11, v8

    .line 71
    check-cast v11, LF0/m;

    .line 72
    .line 73
    iget-wide v8, v11, LF0/m;->c:J

    .line 74
    .line 75
    invoke-direct {v7, v2, v8, v9}, LE0/l;-><init>(LW0/l;J)V

    .line 76
    .line 77
    .line 78
    new-instance v2, LE0/n;

    .line 79
    .line 80
    iget-object v8, v6, LE0/n;->f:Ljava/lang/Object;

    .line 81
    .line 82
    move-object v12, v8

    .line 83
    check-cast v12, LF0/b;

    .line 84
    .line 85
    iget-wide v14, v6, LE0/n;->c:J

    .line 86
    .line 87
    iget-wide v9, v6, LE0/n;->b:J

    .line 88
    .line 89
    move-object v8, v2

    .line 90
    move-object/from16 v16, v7

    .line 91
    .line 92
    invoke-direct/range {v8 .. v16}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 93
    .line 94
    .line 95
    aput-object v2, v5, v4

    .line 96
    .line 97
    :cond_1
    iget-object v2, v3, LE0/p;->h:LE0/s;

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    iget-wide v3, v2, LE0/s;->d:J

    .line 102
    .line 103
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    cmp-long v7, v3, v5

    .line 109
    .line 110
    if-eqz v7, :cond_2

    .line 111
    .line 112
    iget-wide v5, v1, LP0/f;->N:J

    .line 113
    .line 114
    cmp-long v7, v5, v3

    .line 115
    .line 116
    if-lez v7, :cond_3

    .line 117
    .line 118
    :cond_2
    iget-wide v3, v1, LP0/f;->N:J

    .line 119
    .line 120
    iput-wide v3, v2, LE0/s;->d:J

    .line 121
    .line 122
    :cond_3
    const/4 v3, 0x1

    .line 123
    iget-object v2, v2, LE0/s;->e:LE0/t;

    .line 124
    .line 125
    iput-boolean v3, v2, LE0/t;->M:Z

    .line 126
    .line 127
    :cond_4
    new-instance v5, LO0/p;

    .line 128
    .line 129
    iget-wide v2, v1, LP0/f;->G:J

    .line 130
    .line 131
    iget-object v2, v1, LP0/f;->O:Ls0/M;

    .line 132
    .line 133
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 134
    .line 135
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 136
    .line 137
    move-wide/from16 v3, p4

    .line 138
    .line 139
    invoke-direct {v5, v2, v3, v4}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, LP0/m;->N:LU4/b;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-wide v11, v1, LP0/f;->M:J

    .line 148
    .line 149
    iget-wide v13, v1, LP0/f;->N:J

    .line 150
    .line 151
    iget-object v4, v0, LP0/m;->M:LO0/D;

    .line 152
    .line 153
    iget v6, v1, LP0/f;->I:I

    .line 154
    .line 155
    iget v7, v0, LP0/m;->G:I

    .line 156
    .line 157
    iget-object v8, v1, LP0/f;->J:Lm0/t;

    .line 158
    .line 159
    iget v9, v1, LP0/f;->K:I

    .line 160
    .line 161
    iget-object v10, v1, LP0/f;->L:Ljava/lang/Object;

    .line 162
    .line 163
    invoke-virtual/range {v4 .. v14}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, LP0/m;->L:LO0/V;

    .line 167
    .line 168
    invoke-interface {v1, v0}, LO0/V;->r(LO0/W;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final p(LS0/j;JJI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LP0/f;

    .line 4
    .line 5
    if-nez p6, :cond_0

    .line 6
    .line 7
    new-instance v8, LO0/p;

    .line 8
    .line 9
    iget-wide v3, v1, LP0/f;->G:J

    .line 10
    .line 11
    iget-object v5, v1, LP0/f;->H:Ls0/m;

    .line 12
    .line 13
    move-object v2, v8

    .line 14
    move-wide/from16 v6, p2

    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, LO0/p;-><init>(JLs0/m;J)V

    .line 17
    .line 18
    .line 19
    move-object v3, v8

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, LO0/p;

    .line 22
    .line 23
    iget-wide v3, v1, LP0/f;->G:J

    .line 24
    .line 25
    iget-object v3, v1, LP0/f;->O:Ls0/M;

    .line 26
    .line 27
    iget-object v4, v3, Ls0/M;->c:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v3, v3, Ls0/M;->d:Ljava/util/Map;

    .line 30
    .line 31
    move-wide/from16 v4, p4

    .line 32
    .line 33
    invoke-direct {v2, v3, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 34
    .line 35
    .line 36
    move-object v3, v2

    .line 37
    :goto_0
    iget v4, v1, LP0/f;->I:I

    .line 38
    .line 39
    iget-wide v9, v1, LP0/f;->M:J

    .line 40
    .line 41
    iget-wide v11, v1, LP0/f;->N:J

    .line 42
    .line 43
    iget-object v2, v0, LP0/m;->M:LO0/D;

    .line 44
    .line 45
    iget v5, v0, LP0/m;->G:I

    .line 46
    .line 47
    iget-object v6, v1, LP0/f;->J:Lm0/t;

    .line 48
    .line 49
    iget v7, v1, LP0/f;->K:I

    .line 50
    .line 51
    iget-object v8, v1, LP0/f;->L:Ljava/lang/Object;

    .line 52
    .line 53
    move/from16 v13, p6

    .line 54
    .line 55
    invoke-virtual/range {v2 .. v13}, LO0/D;->g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final r(LB0/Z;Lw0/g;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x3

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, LP0/m;->S:LO0/T;

    .line 10
    .line 11
    invoke-virtual {p0}, LP0/m;->B()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, LP0/m;->d0:Z

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3, v1}, LO0/T;->D(LB0/Z;Lw0/g;IZ)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final t(I)LP0/a;
    .locals 3

    .line 1
    iget-object v0, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, LP0/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p1, v2, v0}, Lp0/M;->W(IILjava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, LP0/m;->a0:I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, LP0/m;->a0:I

    .line 27
    .line 28
    iget-object p1, p0, LP0/m;->S:LO0/T;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v1, v0}, LP0/a;->c(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1, v2}, LO0/T;->n(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, LP0/m;->T:[LO0/T;

    .line 39
    .line 40
    array-length v2, p1

    .line 41
    if-ge v0, v2, :cond_0

    .line 42
    .line 43
    aget-object p1, p1, v0

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {v1, v0}, LP0/a;->c(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v2}, LO0/T;->n(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method

.method public final u()J
    .locals 5

    .line 1
    iget-boolean v0, p0, LP0/m;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, LP0/m;->Y:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_1
    iget-wide v0, p0, LP0/m;->Z:J

    .line 18
    .line 19
    invoke-virtual {p0}, LP0/m;->y()LP0/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, LP0/p;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v2, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-le v3, v4, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {v2, v3}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, LP0/a;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    :goto_0
    if-eqz v2, :cond_4

    .line 49
    .line 50
    iget-wide v2, v2, LP0/f;->N:J

    .line 51
    .line 52
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    :cond_4
    iget-object v2, p0, LP0/m;->S:LO0/T;

    .line 57
    .line 58
    invoke-virtual {v2}, LO0/T;->q()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    return-wide v0
.end method

.method public final w(J)V
    .locals 9

    .line 1
    iget-object v0, p0, LP0/m;->O:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_a

    .line 8
    .line 9
    invoke-virtual {p0}, LP0/m;->A()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v3, p0, LP0/m;->K:LE0/b;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, LP0/m;->V:LP0/f;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    instance-of p1, p1, LP0/a;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/lit8 p1, p1, -0x1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, LP0/m;->z(I)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    check-cast v3, LE0/p;

    .line 50
    .line 51
    iget-object p1, v3, LE0/p;->m:LO0/b;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, v3, LE0/p;->j:LR0/t;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :cond_3
    check-cast v3, LE0/p;

    .line 63
    .line 64
    iget-object v1, v3, LE0/p;->m:LO0/b;

    .line 65
    .line 66
    iget-object v4, p0, LP0/m;->R:Ljava/util/List;

    .line 67
    .line 68
    if-nez v1, :cond_5

    .line 69
    .line 70
    iget-object v1, v3, LE0/p;->j:LR0/t;

    .line 71
    .line 72
    move-object v3, v1

    .line 73
    check-cast v3, LR0/c;

    .line 74
    .line 75
    iget-object v3, v3, LR0/c;->c:[I

    .line 76
    .line 77
    array-length v3, v3

    .line 78
    const/4 v5, 0x2

    .line 79
    if-ge v3, v5, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-interface {v1, p1, p2, v4}, LR0/t;->d(JLjava/util/List;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-ge p1, p2, :cond_a

    .line 96
    .line 97
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    xor-int/lit8 p2, p2, 0x1

    .line 102
    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    :goto_3
    const/4 v0, -0x1

    .line 111
    if-ge p1, p2, :cond_7

    .line 112
    .line 113
    invoke-virtual {p0, p1}, LP0/m;->z(I)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    const/4 p1, -0x1

    .line 124
    :goto_4
    if-ne p1, v0, :cond_8

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    invoke-virtual {p0}, LP0/m;->y()LP0/a;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    iget-wide v7, p2, LP0/f;->N:J

    .line 132
    .line 133
    invoke-virtual {p0, p1}, LP0/m;->t(I)LP0/a;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_9

    .line 142
    .line 143
    iget-wide v0, p0, LP0/m;->Z:J

    .line 144
    .line 145
    iput-wide v0, p0, LP0/m;->Y:J

    .line 146
    .line 147
    :cond_9
    const/4 p2, 0x0

    .line 148
    iput-boolean p2, p0, LP0/m;->d0:Z

    .line 149
    .line 150
    iget-object v3, p0, LP0/m;->M:LO0/D;

    .line 151
    .line 152
    iget v4, p0, LP0/m;->G:I

    .line 153
    .line 154
    iget-wide v5, p1, LP0/f;->M:J

    .line 155
    .line 156
    invoke-virtual/range {v3 .. v8}, LO0/D;->h(IJJ)V

    .line 157
    .line 158
    .line 159
    :cond_a
    :goto_5
    return-void
.end method

.method public final x()LE0/b;
    .locals 1

    .line 1
    iget-object v0, p0, LP0/m;->K:LE0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()LP0/a;
    .locals 2

    .line 1
    iget-object v0, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, LP0/a;

    .line 9
    .line 10
    return-object v0
.end method

.method public final z(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LP0/m;->Q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, LP0/a;

    .line 8
    .line 9
    iget-object v0, p0, LP0/m;->S:LO0/T;

    .line 10
    .line 11
    invoke-virtual {v0}, LO0/T;->t()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, LP0/a;->c(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-le v0, v2, :cond_0

    .line 22
    .line 23
    return v3

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :cond_1
    iget-object v2, p0, LP0/m;->T:[LO0/T;

    .line 26
    .line 27
    array-length v4, v2

    .line 28
    if-ge v0, v4, :cond_2

    .line 29
    .line 30
    aget-object v2, v2, v0

    .line 31
    .line 32
    invoke-virtual {v2}, LO0/T;->t()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, LP0/a;->c(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-le v2, v4, :cond_1

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    return v1
.end method
