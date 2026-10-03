.class public final LH0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/w;
.implements LI0/t;


# instance fields
.field public final G:LH0/k;

.field public final H:LI0/w;

.field public final I:LH0/c;

.field public final J:Ls0/O;

.field public final K:LG0/r;

.field public final L:LG0/o;

.field public final M:LU4/b;

.field public final N:LO0/D;

.field public final O:LS0/d;

.field public final P:Ljava/util/IdentityHashMap;

.field public final Q:LD0/U;

.field public final R:LU4/b;

.field public final S:Z

.field public final T:I

.field public final U:Z

.field public final V:LC0/I;

.field public final W:LD0/U;

.field public final X:J

.field public Y:LO0/v;

.field public Z:I

.field public a0:LO0/Z;

.field public b0:[LH0/t;

.field public c0:[LH0/t;

.field public d0:I

.field public e0:LO0/j;


# direct methods
.method public constructor <init>(LH0/k;LI0/w;LH0/c;Ls0/O;LG0/r;LG0/o;LU4/b;LO0/D;LS0/d;LU4/b;ZIZLC0/I;J)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, LH0/n;->G:LH0/k;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, LH0/n;->H:LI0/w;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, LH0/n;->I:LH0/c;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, LH0/n;->J:Ls0/O;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, LH0/n;->K:LG0/r;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, LH0/n;->L:LG0/o;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, LH0/n;->M:LU4/b;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, LH0/n;->N:LO0/D;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, LH0/n;->O:LS0/d;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, LH0/n;->R:LU4/b;

    .line 34
    .line 35
    move v2, p11

    .line 36
    iput-boolean v2, v0, LH0/n;->S:Z

    .line 37
    .line 38
    move/from16 v2, p12

    .line 39
    .line 40
    iput v2, v0, LH0/n;->T:I

    .line 41
    .line 42
    move/from16 v2, p13

    .line 43
    .line 44
    iput-boolean v2, v0, LH0/n;->U:Z

    .line 45
    .line 46
    move-object/from16 v2, p14

    .line 47
    .line 48
    iput-object v2, v0, LH0/n;->V:LC0/I;

    .line 49
    .line 50
    move-wide/from16 v2, p15

    .line 51
    .line 52
    iput-wide v2, v0, LH0/n;->X:J

    .line 53
    .line 54
    new-instance v2, LD0/U;

    .line 55
    .line 56
    invoke-direct {v2, p0}, LD0/U;-><init>(LH0/n;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, v0, LH0/n;->W:LD0/U;

    .line 60
    .line 61
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v1, LO0/j;

    .line 65
    .line 66
    sget-object v2, Lz4/H;->H:Lz4/F;

    .line 67
    .line 68
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 69
    .line 70
    invoke-direct {v1, v2, v2}, LO0/j;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, LH0/n;->e0:LO0/j;

    .line 74
    .line 75
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, v0, LH0/n;->P:Ljava/util/IdentityHashMap;

    .line 81
    .line 82
    new-instance v1, LD0/U;

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    invoke-direct {v1, v2}, LD0/U;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-object v1, v0, LH0/n;->Q:LD0/U;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    new-array v2, v1, [LH0/t;

    .line 92
    .line 93
    iput-object v2, v0, LH0/n;->b0:[LH0/t;

    .line 94
    .line 95
    new-array v1, v1, [LH0/t;

    .line 96
    .line 97
    iput-object v1, v0, LH0/n;->c0:[LH0/t;

    .line 98
    .line 99
    return-void
.end method

.method public static f(Lm0/t;Lm0/t;Z)Lm0/t;
    .locals 12

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lm0/t;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Lm0/t;->l:Lm0/N;

    .line 11
    .line 12
    iget v3, p1, Lm0/t;->G:I

    .line 13
    .line 14
    iget v4, p1, Lm0/t;->e:I

    .line 15
    .line 16
    iget v5, p1, Lm0/t;->f:I

    .line 17
    .line 18
    iget-object v6, p1, Lm0/t;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, p1, Lm0/t;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lm0/t;->c:Ljava/util/List;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Lm0/t;->k:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v2, p1}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v2, p0, Lm0/t;->l:Lm0/N;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget v3, p0, Lm0/t;->G:I

    .line 37
    .line 38
    iget v4, p0, Lm0/t;->e:I

    .line 39
    .line 40
    iget v5, p0, Lm0/t;->f:I

    .line 41
    .line 42
    iget-object v6, p0, Lm0/t;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v7, p0, Lm0/t;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Lm0/t;->c:Ljava/util/List;

    .line 47
    .line 48
    :goto_0
    move-object v11, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v11

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    move-object v7, v6

    .line 55
    const/4 v3, -0x1

    .line 56
    const/4 v5, 0x0

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    invoke-static {v0}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget v9, p0, Lm0/t;->h:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 v9, -0x1

    .line 68
    :goto_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget v1, p0, Lm0/t;->i:I

    .line 71
    .line 72
    :cond_3
    new-instance p2, Lm0/s;

    .line 73
    .line 74
    invoke-direct {p2}, Lm0/s;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v10, p0, Lm0/t;->a:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v10, p2, Lm0/s;->a:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v7, p2, Lm0/s;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p2, Lm0/s;->c:Ljava/util/List;

    .line 88
    .line 89
    iget-object p0, p0, Lm0/t;->n:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, p2, Lm0/s;->m:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v8}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iput-object p0, p2, Lm0/s;->n:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v0, p2, Lm0/s;->j:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v2, p2, Lm0/s;->k:Lm0/N;

    .line 106
    .line 107
    iput v9, p2, Lm0/s;->h:I

    .line 108
    .line 109
    iput v1, p2, Lm0/s;->i:I

    .line 110
    .line 111
    iput v3, p2, Lm0/s;->F:I

    .line 112
    .line 113
    iput v4, p2, Lm0/s;->e:I

    .line 114
    .line 115
    iput v5, p2, Lm0/s;->f:I

    .line 116
    .line 117
    iput-object v6, p2, Lm0/s;->d:Ljava/lang/String;

    .line 118
    .line 119
    new-instance p0, Lm0/t;

    .line 120
    .line 121
    invoke-direct {p0, p2}, Lm0/t;-><init>(Lm0/s;)V

    .line 122
    .line 123
    .line 124
    return-object p0
.end method


# virtual methods
.method public final a(JLB0/I0;)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, LH0/n;->c0:[LH0/t;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v2, :cond_4

    .line 7
    .line 8
    aget-object v4, v1, v3

    .line 9
    .line 10
    iget v5, v4, LH0/t;->g0:I

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    if-ne v5, v6, :cond_3

    .line 14
    .line 15
    iget-object v1, v4, LH0/t;->J:LH0/j;

    .line 16
    .line 17
    iget-object v2, v1, LH0/j;->s:LR0/t;

    .line 18
    .line 19
    invoke-interface {v2}, LR0/t;->b()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, v1, LH0/j;->e:[Landroid/net/Uri;

    .line 24
    .line 25
    array-length v4, v3

    .line 26
    const/4 v5, 0x1

    .line 27
    iget-object v6, v1, LH0/j;->g:LI0/w;

    .line 28
    .line 29
    if-ge v2, v4, :cond_0

    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    if-eq v2, v4, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, LH0/j;->s:LR0/t;

    .line 35
    .line 36
    check-cast v1, LR0/c;

    .line 37
    .line 38
    iget-object v2, v1, LR0/c;->c:[I

    .line 39
    .line 40
    invoke-interface {v1}, LR0/t;->b()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    aget v1, v2, v1

    .line 45
    .line 46
    aget-object v1, v3, v1

    .line 47
    .line 48
    move-object v2, v6

    .line 49
    check-cast v2, LI0/c;

    .line 50
    .line 51
    invoke-virtual {v2, v1, v5}, LI0/c;->a(Landroid/net/Uri;Z)LI0/l;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_1
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-object v2, v1, LI0/l;->r:Lz4/H;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_1
    check-cast v6, LI0/c;

    .line 69
    .line 70
    iget-wide v3, v6, LI0/c;->T:J

    .line 71
    .line 72
    iget-wide v6, v1, LI0/l;->h:J

    .line 73
    .line 74
    sub-long/2addr v6, v3

    .line 75
    sub-long v9, p1, v6

    .line 76
    .line 77
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v2, v3, v5}, Lp0/M;->c(Lz4/H;Ljava/lang/Long;Z)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, LI0/i;

    .line 90
    .line 91
    iget-wide v11, v4, LI0/j;->K:J

    .line 92
    .line 93
    iget-boolean v1, v1, LI0/p;->c:Z

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    sub-int/2addr v1, v5

    .line 102
    if-eq v3, v1, :cond_2

    .line 103
    .line 104
    add-int/2addr v3, v5

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, LI0/i;

    .line 110
    .line 111
    iget-wide v1, v1, LI0/j;->K:J

    .line 112
    .line 113
    move-wide v13, v1

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    move-wide v13, v11

    .line 116
    :goto_2
    move-object/from16 v8, p3

    .line 117
    .line 118
    invoke-virtual/range {v8 .. v14}, LB0/I0;->a(JJJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    add-long/2addr v1, v6

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    :goto_3
    move-wide/from16 v1, p1

    .line 128
    .line 129
    :goto_4
    return-wide v1
.end method

.method public final b()V
    .locals 12

    .line 1
    iget-object v0, p0, LH0/n;->b0:[LH0/t;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_7

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-object v5, v4, LH0/t;->T:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-static {v5}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, LH0/l;

    .line 25
    .line 26
    iget-object v6, v4, LH0/t;->J:LH0/j;

    .line 27
    .line 28
    invoke-virtual {v6, v5}, LH0/j;->b(LH0/l;)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x1

    .line 33
    if-ne v7, v8, :cond_4

    .line 34
    .line 35
    invoke-virtual {v5}, LH0/l;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_6

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    iget v7, v5, LH0/l;->U:I

    .line 43
    .line 44
    if-eq v7, v4, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v8, 0x0

    .line 48
    :goto_1
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v6, LH0/j;->h:Lm0/g0;

    .line 52
    .line 53
    iget-object v8, v5, LP0/f;->J:Lm0/t;

    .line 54
    .line 55
    invoke-virtual {v4, v8}, Lm0/g0;->b(Lm0/t;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget-object v8, v6, LH0/j;->e:[Landroid/net/Uri;

    .line 60
    .line 61
    aget-object v4, v8, v4

    .line 62
    .line 63
    iget-object v6, v6, LH0/j;->g:LI0/w;

    .line 64
    .line 65
    check-cast v6, LI0/c;

    .line 66
    .line 67
    invoke-virtual {v6, v4, v2}, LI0/c;->a(Landroid/net/Uri;Z)LI0/l;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-wide v8, v5, LP0/p;->P:J

    .line 75
    .line 76
    iget-wide v10, v4, LI0/l;->k:J

    .line 77
    .line 78
    sub-long/2addr v8, v10

    .line 79
    long-to-int v6, v8

    .line 80
    if-gez v6, :cond_2

    .line 81
    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    iget-object v8, v4, LI0/l;->r:Lz4/H;

    .line 86
    .line 87
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-ge v6, v9, :cond_3

    .line 92
    .line 93
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, LI0/i;

    .line 98
    .line 99
    iget-object v4, v4, LI0/i;->S:Lz4/H;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v4, v4, LI0/l;->s:Lz4/H;

    .line 103
    .line 104
    :goto_2
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, LI0/g;

    .line 109
    .line 110
    iget-wide v6, v4, LI0/j;->I:J

    .line 111
    .line 112
    :goto_3
    iput-wide v6, v5, LH0/l;->r0:J

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    if-nez v7, :cond_5

    .line 116
    .line 117
    iget-object v6, v4, LH0/t;->X:Landroid/os/Handler;

    .line 118
    .line 119
    new-instance v7, Lf/t;

    .line 120
    .line 121
    const/16 v8, 0x19

    .line 122
    .line 123
    invoke-direct {v7, v8, v4, v5}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    const/4 v5, 0x2

    .line 131
    if-ne v7, v5, :cond_6

    .line 132
    .line 133
    iget-boolean v5, v4, LH0/t;->z0:Z

    .line 134
    .line 135
    if-nez v5, :cond_6

    .line 136
    .line 137
    iget-object v4, v4, LH0/t;->P:LS0/m;

    .line 138
    .line 139
    invoke-virtual {v4}, LS0/m;->e()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_6

    .line 144
    .line 145
    invoke-virtual {v4}, LS0/m;->a()V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_7
    iget-object v0, p0, LH0/n;->Y:LO0/v;

    .line 153
    .line 154
    invoke-interface {v0, p0}, LO0/V;->r(LO0/W;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final c(Landroid/net/Uri;LB0/w0;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LH0/n;->b0:[LH0/t;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    :goto_0
    if-ge v6, v3, :cond_9

    .line 11
    .line 12
    aget-object v8, v2, v6

    .line 13
    .line 14
    iget-object v9, v8, LH0/t;->J:LH0/j;

    .line 15
    .line 16
    iget-object v10, v9, LH0/j;->e:[Landroid/net/Uri;

    .line 17
    .line 18
    invoke-static {v10, v1}, Lp0/M;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    if-nez v10, :cond_0

    .line 23
    .line 24
    move-object/from16 v8, p2

    .line 25
    .line 26
    :goto_1
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x1

    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    iget-object v12, v9, LH0/j;->s:LR0/t;

    .line 38
    .line 39
    invoke-static {v12}, LJ6/r;->e(LR0/t;)Lj0/c;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    iget-object v8, v8, LH0/t;->O:LU4/b;

    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-object/from16 v8, p2

    .line 49
    .line 50
    invoke-static {v12, v8}, LU4/b;->V(Lj0/c;LB0/w0;)LS0/g;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    if-eqz v12, :cond_2

    .line 55
    .line 56
    iget v13, v12, LS0/g;->a:I

    .line 57
    .line 58
    const/4 v14, 0x2

    .line 59
    if-ne v13, v14, :cond_2

    .line 60
    .line 61
    iget-wide v12, v12, LS0/g;->b:J

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move-object/from16 v8, p2

    .line 65
    .line 66
    :cond_2
    move-wide v12, v10

    .line 67
    :goto_2
    const/4 v14, 0x0

    .line 68
    :goto_3
    iget-object v15, v9, LH0/j;->e:[Landroid/net/Uri;

    .line 69
    .line 70
    array-length v5, v15

    .line 71
    const/4 v4, -0x1

    .line 72
    if-ge v14, v5, :cond_4

    .line 73
    .line 74
    aget-object v5, v15, v14

    .line 75
    .line 76
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    const/4 v14, -0x1

    .line 87
    :goto_4
    if-ne v14, v4, :cond_5

    .line 88
    .line 89
    :goto_5
    goto :goto_1

    .line 90
    :cond_5
    iget-object v5, v9, LH0/j;->s:LR0/t;

    .line 91
    .line 92
    check-cast v5, LR0/c;

    .line 93
    .line 94
    invoke-virtual {v5, v14}, LR0/c;->n(I)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ne v5, v4, :cond_6

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    iput-object v1, v9, LH0/j;->p:Landroid/net/Uri;

    .line 102
    .line 103
    cmp-long v4, v12, v10

    .line 104
    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    iget-object v4, v9, LH0/j;->s:LR0/t;

    .line 108
    .line 109
    check-cast v4, LR0/c;

    .line 110
    .line 111
    invoke-virtual {v4, v5, v12, v13}, LR0/c;->i(IJ)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_7

    .line 116
    .line 117
    iget-object v4, v9, LH0/j;->g:LI0/w;

    .line 118
    .line 119
    check-cast v4, LI0/c;

    .line 120
    .line 121
    iget-object v4, v4, LI0/c;->J:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, LI0/b;

    .line 128
    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-static {v4, v12, v13}, LI0/b;->a(LI0/b;J)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/4 v5, 0x1

    .line 136
    xor-int/2addr v4, v5

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    goto :goto_6

    .line 141
    :cond_7
    const/4 v5, 0x1

    .line 142
    :cond_8
    const/4 v4, 0x0

    .line 143
    :goto_6
    and-int/2addr v7, v4

    .line 144
    add-int/lit8 v6, v6, 0x1

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_9
    iget-object v1, v0, LH0/n;->Y:LO0/v;

    .line 149
    .line 150
    invoke-interface {v1, v0}, LO0/V;->r(LO0/W;)V

    .line 151
    .line 152
    .line 153
    return v7
.end method

.method public final d(Ljava/lang/String;I[Landroid/net/Uri;[Lm0/t;Lm0/t;Ljava/util/List;Ljava/util/Map;J)LH0/t;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v13, LH0/j;

    .line 4
    .line 5
    iget-object v8, v0, LH0/n;->Q:LD0/U;

    .line 6
    .line 7
    iget-wide v9, v0, LH0/n;->X:J

    .line 8
    .line 9
    iget-object v2, v0, LH0/n;->G:LH0/k;

    .line 10
    .line 11
    iget-object v3, v0, LH0/n;->H:LI0/w;

    .line 12
    .line 13
    iget-object v6, v0, LH0/n;->I:LH0/c;

    .line 14
    .line 15
    iget-object v7, v0, LH0/n;->J:Ls0/O;

    .line 16
    .line 17
    iget-object v12, v0, LH0/n;->V:LC0/I;

    .line 18
    .line 19
    move-object v1, v13

    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p4

    .line 23
    .line 24
    move-object/from16 v11, p6

    .line 25
    .line 26
    invoke-direct/range {v1 .. v12}, LH0/j;-><init>(LH0/k;LI0/w;[Landroid/net/Uri;[Lm0/t;LH0/c;Ls0/O;LD0/U;JLjava/util/List;LC0/I;)V

    .line 27
    .line 28
    .line 29
    new-instance v16, LH0/t;

    .line 30
    .line 31
    iget-object v12, v0, LH0/n;->L:LG0/o;

    .line 32
    .line 33
    iget-object v14, v0, LH0/n;->M:LU4/b;

    .line 34
    .line 35
    iget-object v4, v0, LH0/n;->W:LD0/U;

    .line 36
    .line 37
    iget-object v7, v0, LH0/n;->O:LS0/d;

    .line 38
    .line 39
    iget-object v11, v0, LH0/n;->K:LG0/r;

    .line 40
    .line 41
    iget-object v15, v0, LH0/n;->N:LO0/D;

    .line 42
    .line 43
    iget v10, v0, LH0/n;->T:I

    .line 44
    .line 45
    move-object/from16 v1, v16

    .line 46
    .line 47
    move-object/from16 v2, p1

    .line 48
    .line 49
    move/from16 v3, p2

    .line 50
    .line 51
    move-object v5, v13

    .line 52
    move-object/from16 v6, p7

    .line 53
    .line 54
    move-wide/from16 v8, p8

    .line 55
    .line 56
    move/from16 v17, v10

    .line 57
    .line 58
    move-object/from16 v10, p5

    .line 59
    .line 60
    move-object v13, v14

    .line 61
    move-object v14, v15

    .line 62
    move/from16 v15, v17

    .line 63
    .line 64
    invoke-direct/range {v1 .. v15}, LH0/t;-><init>(Ljava/lang/String;ILD0/U;LH0/j;Ljava/util/Map;LS0/d;JLm0/t;LG0/r;LG0/o;LU4/b;LO0/D;I)V

    .line 65
    .line 66
    .line 67
    return-object v16
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, LH0/n;->e0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/j;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final g(LB0/d0;)Z
    .locals 7

    .line 1
    iget-object v0, p0, LH0/n;->a0:LO0/Z;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, LH0/n;->b0:[LH0/t;

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    iget-boolean v4, v3, LH0/t;->j0:Z

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    new-instance v4, LB0/c0;

    .line 19
    .line 20
    invoke-direct {v4}, LB0/c0;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-wide v5, v3, LH0/t;->v0:J

    .line 24
    .line 25
    iput-wide v5, v4, LB0/c0;->a:J

    .line 26
    .line 27
    new-instance v5, LB0/d0;

    .line 28
    .line 29
    invoke-direct {v5, v4}, LB0/d0;-><init>(LB0/c0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v5}, LH0/t;->g(LB0/d0;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v1

    .line 39
    :cond_2
    iget-object v0, p0, LH0/n;->e0:LO0/j;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, LO0/j;->g(LB0/d0;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, LH0/n;->b0:[LH0/t;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, LH0/t;->G()V

    .line 10
    .line 11
    .line 12
    iget-boolean v4, v3, LH0/t;->z0:Z

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    iget-boolean v3, v3, LH0/t;->j0:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final i(J)J
    .locals 4

    .line 1
    iget-object v0, p0, LH0/n;->c0:[LH0/t;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, LH0/t;->J(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, LH0/n;->c0:[LH0/t;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2, v0}, LH0/t;->J(JZ)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, LH0/n;->Q:LD0/U;

    .line 30
    .line 31
    iget v1, v0, LD0/U;->G:I

    .line 32
    .line 33
    packed-switch v1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, LD0/U;->H:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_0
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_1
    return-wide p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LH0/n;->e0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/j;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final l([LR0/t;[Z[LO0/U;[ZJ)J
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p5

    .line 8
    .line 9
    array-length v5, v1

    .line 10
    new-array v5, v5, [I

    .line 11
    .line 12
    array-length v6, v1

    .line 13
    new-array v6, v6, [I

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    :goto_0
    array-length v9, v1

    .line 17
    iget-object v10, v0, LH0/n;->P:Ljava/util/IdentityHashMap;

    .line 18
    .line 19
    const/4 v11, -0x1

    .line 20
    if-ge v8, v9, :cond_3

    .line 21
    .line 22
    aget-object v9, v2, v8

    .line 23
    .line 24
    if-nez v9, :cond_0

    .line 25
    .line 26
    const/4 v9, -0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    check-cast v9, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    :goto_1
    aput v9, v5, v8

    .line 39
    .line 40
    aput v11, v6, v8

    .line 41
    .line 42
    aget-object v9, v1, v8

    .line 43
    .line 44
    if-eqz v9, :cond_2

    .line 45
    .line 46
    check-cast v9, LR0/c;

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_2
    iget-object v12, v0, LH0/n;->b0:[LH0/t;

    .line 50
    .line 51
    array-length v13, v12

    .line 52
    if-ge v10, v13, :cond_2

    .line 53
    .line 54
    aget-object v12, v12, v10

    .line 55
    .line 56
    invoke-virtual {v12}, LH0/t;->f()V

    .line 57
    .line 58
    .line 59
    iget-object v12, v12, LH0/t;->o0:LO0/Z;

    .line 60
    .line 61
    iget-object v13, v9, LR0/c;->a:Lm0/g0;

    .line 62
    .line 63
    invoke-virtual {v12, v13}, LO0/Z;->b(Lm0/g0;)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eq v12, v11, :cond_1

    .line 68
    .line 69
    aput v10, v6, v8

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v10}, Ljava/util/IdentityHashMap;->clear()V

    .line 79
    .line 80
    .line 81
    array-length v8, v1

    .line 82
    new-array v9, v8, [LO0/U;

    .line 83
    .line 84
    array-length v12, v1

    .line 85
    new-array v13, v12, [LO0/U;

    .line 86
    .line 87
    array-length v14, v1

    .line 88
    new-array v15, v14, [LR0/t;

    .line 89
    .line 90
    iget-object v7, v0, LH0/n;->b0:[LH0/t;

    .line 91
    .line 92
    array-length v7, v7

    .line 93
    new-array v7, v7, [LH0/t;

    .line 94
    .line 95
    move-object/from16 v18, v7

    .line 96
    .line 97
    move/from16 v16, v8

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    :goto_4
    iget-object v7, v0, LH0/n;->b0:[LH0/t;

    .line 104
    .line 105
    array-length v7, v7

    .line 106
    if-ge v11, v7, :cond_28

    .line 107
    .line 108
    move/from16 v19, v8

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_5
    array-length v8, v1

    .line 112
    move-object/from16 v20, v10

    .line 113
    .line 114
    if-ge v7, v8, :cond_6

    .line 115
    .line 116
    aget v8, v5, v7

    .line 117
    .line 118
    if-ne v8, v11, :cond_4

    .line 119
    .line 120
    aget-object v8, v2, v7

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_4
    const/4 v8, 0x0

    .line 124
    :goto_6
    aput-object v8, v13, v7

    .line 125
    .line 126
    aget v8, v6, v7

    .line 127
    .line 128
    if-ne v8, v11, :cond_5

    .line 129
    .line 130
    aget-object v10, v1, v7

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_5
    const/4 v10, 0x0

    .line 134
    :goto_7
    aput-object v10, v15, v7

    .line 135
    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    move-object/from16 v10, v20

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    iget-object v7, v0, LH0/n;->b0:[LH0/t;

    .line 142
    .line 143
    aget-object v7, v7, v11

    .line 144
    .line 145
    invoke-virtual {v7}, LH0/t;->f()V

    .line 146
    .line 147
    .line 148
    iget v8, v7, LH0/t;->k0:I

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    :goto_8
    if-ge v10, v14, :cond_a

    .line 152
    .line 153
    aget-object v21, v13, v10

    .line 154
    .line 155
    move-object/from16 v2, v21

    .line 156
    .line 157
    check-cast v2, LH0/p;

    .line 158
    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    aget-object v21, v15, v10

    .line 162
    .line 163
    if-eqz v21, :cond_8

    .line 164
    .line 165
    aget-boolean v21, p2, v10

    .line 166
    .line 167
    if-nez v21, :cond_7

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_7
    move-object/from16 v21, v5

    .line 171
    .line 172
    move-object/from16 v22, v9

    .line 173
    .line 174
    const/4 v0, -0x1

    .line 175
    goto :goto_c

    .line 176
    :cond_8
    :goto_9
    iget v0, v7, LH0/t;->k0:I

    .line 177
    .line 178
    const/16 v21, 0x1

    .line 179
    .line 180
    add-int/lit8 v0, v0, -0x1

    .line 181
    .line 182
    iput v0, v7, LH0/t;->k0:I

    .line 183
    .line 184
    iget v0, v2, LH0/p;->I:I

    .line 185
    .line 186
    move-object/from16 v21, v5

    .line 187
    .line 188
    const/4 v5, -0x1

    .line 189
    if-eq v0, v5, :cond_9

    .line 190
    .line 191
    iget-object v0, v2, LH0/p;->H:LH0/t;

    .line 192
    .line 193
    invoke-virtual {v0}, LH0/t;->f()V

    .line 194
    .line 195
    .line 196
    iget-object v5, v0, LH0/t;->q0:[I

    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object v5, v0, LH0/t;->q0:[I

    .line 202
    .line 203
    move-object/from16 v22, v9

    .line 204
    .line 205
    iget v9, v2, LH0/p;->G:I

    .line 206
    .line 207
    aget v5, v5, v9

    .line 208
    .line 209
    iget-object v9, v0, LH0/t;->t0:[Z

    .line 210
    .line 211
    aget-boolean v9, v9, v5

    .line 212
    .line 213
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v0, LH0/t;->t0:[Z

    .line 217
    .line 218
    const/4 v9, 0x0

    .line 219
    aput-boolean v9, v0, v5

    .line 220
    .line 221
    const/4 v0, -0x1

    .line 222
    iput v0, v2, LH0/p;->I:I

    .line 223
    .line 224
    :goto_a
    const/4 v2, 0x0

    .line 225
    goto :goto_b

    .line 226
    :cond_9
    move-object/from16 v22, v9

    .line 227
    .line 228
    const/4 v0, -0x1

    .line 229
    goto :goto_a

    .line 230
    :goto_b
    aput-object v2, v13, v10

    .line 231
    .line 232
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 233
    .line 234
    move-object/from16 v0, p0

    .line 235
    .line 236
    move-object/from16 v5, v21

    .line 237
    .line 238
    move-object/from16 v9, v22

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_a
    move-object/from16 v21, v5

    .line 242
    .line 243
    move-object/from16 v22, v9

    .line 244
    .line 245
    const/4 v0, -0x1

    .line 246
    if-nez v17, :cond_d

    .line 247
    .line 248
    iget-boolean v2, v7, LH0/t;->y0:Z

    .line 249
    .line 250
    if-eqz v2, :cond_b

    .line 251
    .line 252
    if-nez v8, :cond_c

    .line 253
    .line 254
    goto :goto_d

    .line 255
    :cond_b
    iget-wide v8, v7, LH0/t;->v0:J

    .line 256
    .line 257
    cmp-long v2, v3, v8

    .line 258
    .line 259
    if-eqz v2, :cond_c

    .line 260
    .line 261
    goto :goto_d

    .line 262
    :cond_c
    const/4 v2, 0x0

    .line 263
    goto :goto_e

    .line 264
    :cond_d
    :goto_d
    const/4 v2, 0x1

    .line 265
    :goto_e
    iget-object v5, v7, LH0/t;->J:LH0/j;

    .line 266
    .line 267
    iget-object v8, v5, LH0/j;->s:LR0/t;

    .line 268
    .line 269
    move v9, v2

    .line 270
    move-object v10, v8

    .line 271
    const/4 v2, 0x0

    .line 272
    :goto_f
    iget-object v0, v5, LH0/j;->g:LI0/w;

    .line 273
    .line 274
    move/from16 v30, v11

    .line 275
    .line 276
    iget-object v11, v5, LH0/j;->e:[Landroid/net/Uri;

    .line 277
    .line 278
    if-ge v2, v14, :cond_13

    .line 279
    .line 280
    move/from16 v31, v14

    .line 281
    .line 282
    aget-object v14, v15, v2

    .line 283
    .line 284
    if-nez v14, :cond_e

    .line 285
    .line 286
    move-object/from16 v33, v6

    .line 287
    .line 288
    move-object/from16 v32, v15

    .line 289
    .line 290
    goto :goto_11

    .line 291
    :cond_e
    move-object/from16 v32, v15

    .line 292
    .line 293
    iget-object v15, v7, LH0/t;->o0:LO0/Z;

    .line 294
    .line 295
    move-object/from16 v33, v6

    .line 296
    .line 297
    move-object v6, v14

    .line 298
    check-cast v6, LR0/c;

    .line 299
    .line 300
    iget-object v6, v6, LR0/c;->a:Lm0/g0;

    .line 301
    .line 302
    invoke-virtual {v15, v6}, LO0/Z;->b(Lm0/g0;)I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    iget v15, v7, LH0/t;->r0:I

    .line 307
    .line 308
    if-ne v6, v15, :cond_10

    .line 309
    .line 310
    iget-object v10, v5, LH0/j;->s:LR0/t;

    .line 311
    .line 312
    check-cast v10, LR0/c;

    .line 313
    .line 314
    iget-object v15, v10, LR0/c;->c:[I

    .line 315
    .line 316
    invoke-interface {v10}, LR0/t;->b()I

    .line 317
    .line 318
    .line 319
    move-result v10

    .line 320
    aget v10, v15, v10

    .line 321
    .line 322
    aget-object v10, v11, v10

    .line 323
    .line 324
    check-cast v0, LI0/c;

    .line 325
    .line 326
    iget-object v0, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, LI0/b;

    .line 333
    .line 334
    if-eqz v0, :cond_f

    .line 335
    .line 336
    const/4 v10, 0x0

    .line 337
    iput-boolean v10, v0, LI0/b;->Q:Z

    .line 338
    .line 339
    :cond_f
    iput-object v14, v5, LH0/j;->s:LR0/t;

    .line 340
    .line 341
    move-object v10, v14

    .line 342
    :cond_10
    aget-object v0, v13, v2

    .line 343
    .line 344
    if-nez v0, :cond_12

    .line 345
    .line 346
    iget v0, v7, LH0/t;->k0:I

    .line 347
    .line 348
    const/4 v11, 0x1

    .line 349
    add-int/2addr v0, v11

    .line 350
    iput v0, v7, LH0/t;->k0:I

    .line 351
    .line 352
    new-instance v0, LH0/p;

    .line 353
    .line 354
    invoke-direct {v0, v7, v6}, LH0/p;-><init>(LH0/t;I)V

    .line 355
    .line 356
    .line 357
    aput-object v0, v13, v2

    .line 358
    .line 359
    aput-boolean v11, p4, v2

    .line 360
    .line 361
    iget-object v14, v7, LH0/t;->q0:[I

    .line 362
    .line 363
    if-eqz v14, :cond_12

    .line 364
    .line 365
    invoke-virtual {v0}, LH0/p;->a()V

    .line 366
    .line 367
    .line 368
    if-nez v9, :cond_12

    .line 369
    .line 370
    iget-object v0, v7, LH0/t;->b0:[LH0/s;

    .line 371
    .line 372
    iget-object v9, v7, LH0/t;->q0:[I

    .line 373
    .line 374
    aget v6, v9, v6

    .line 375
    .line 376
    aget-object v0, v0, v6

    .line 377
    .line 378
    invoke-virtual {v0}, LO0/T;->t()I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_11

    .line 383
    .line 384
    invoke-virtual {v0, v3, v4, v11}, LO0/T;->H(JZ)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_11

    .line 389
    .line 390
    const/4 v0, 0x1

    .line 391
    goto :goto_10

    .line 392
    :cond_11
    const/4 v0, 0x0

    .line 393
    :goto_10
    move v9, v0

    .line 394
    :cond_12
    :goto_11
    add-int/lit8 v2, v2, 0x1

    .line 395
    .line 396
    move/from16 v11, v30

    .line 397
    .line 398
    move/from16 v14, v31

    .line 399
    .line 400
    move-object/from16 v15, v32

    .line 401
    .line 402
    move-object/from16 v6, v33

    .line 403
    .line 404
    goto/16 :goto_f

    .line 405
    .line 406
    :cond_13
    move-object/from16 v33, v6

    .line 407
    .line 408
    move/from16 v31, v14

    .line 409
    .line 410
    move-object/from16 v32, v15

    .line 411
    .line 412
    iget v2, v7, LH0/t;->k0:I

    .line 413
    .line 414
    iget-object v6, v7, LH0/t;->T:Ljava/util/ArrayList;

    .line 415
    .line 416
    if-nez v2, :cond_17

    .line 417
    .line 418
    iget-object v2, v5, LH0/j;->s:LR0/t;

    .line 419
    .line 420
    check-cast v2, LR0/c;

    .line 421
    .line 422
    iget-object v8, v2, LR0/c;->c:[I

    .line 423
    .line 424
    invoke-interface {v2}, LR0/t;->b()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    aget v2, v8, v2

    .line 429
    .line 430
    aget-object v2, v11, v2

    .line 431
    .line 432
    check-cast v0, LI0/c;

    .line 433
    .line 434
    iget-object v0, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 435
    .line 436
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, LI0/b;

    .line 441
    .line 442
    if-eqz v0, :cond_14

    .line 443
    .line 444
    const/4 v2, 0x0

    .line 445
    iput-boolean v2, v0, LI0/b;->Q:Z

    .line 446
    .line 447
    :cond_14
    const/4 v0, 0x0

    .line 448
    iput-object v0, v5, LH0/j;->o:LO0/b;

    .line 449
    .line 450
    iput-object v0, v7, LH0/t;->m0:Lm0/t;

    .line 451
    .line 452
    const/4 v0, 0x1

    .line 453
    iput-boolean v0, v7, LH0/t;->x0:Z

    .line 454
    .line 455
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 456
    .line 457
    .line 458
    iget-object v0, v7, LH0/t;->P:LS0/m;

    .line 459
    .line 460
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_16

    .line 465
    .line 466
    iget-boolean v2, v7, LH0/t;->i0:Z

    .line 467
    .line 468
    if-eqz v2, :cond_15

    .line 469
    .line 470
    iget-object v2, v7, LH0/t;->b0:[LH0/s;

    .line 471
    .line 472
    array-length v6, v2

    .line 473
    const/4 v8, 0x0

    .line 474
    :goto_12
    if-ge v8, v6, :cond_15

    .line 475
    .line 476
    aget-object v10, v2, v8

    .line 477
    .line 478
    invoke-virtual {v10}, LO0/T;->k()V

    .line 479
    .line 480
    .line 481
    add-int/lit8 v8, v8, 0x1

    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_15
    invoke-virtual {v0}, LS0/m;->a()V

    .line 485
    .line 486
    .line 487
    goto :goto_17

    .line 488
    :cond_16
    invoke-virtual {v7}, LH0/t;->I()V

    .line 489
    .line 490
    .line 491
    goto :goto_17

    .line 492
    :cond_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-nez v0, :cond_1a

    .line 497
    .line 498
    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-nez v0, :cond_1a

    .line 503
    .line 504
    iget-boolean v0, v7, LH0/t;->y0:Z

    .line 505
    .line 506
    if-nez v0, :cond_19

    .line 507
    .line 508
    const-wide/16 v14, 0x0

    .line 509
    .line 510
    cmp-long v0, v3, v14

    .line 511
    .line 512
    if-gez v0, :cond_18

    .line 513
    .line 514
    neg-long v14, v3

    .line 515
    :cond_18
    move-wide/from16 v24, v14

    .line 516
    .line 517
    invoke-virtual {v7}, LH0/t;->C()LH0/l;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v5, v3, v4, v0}, LH0/j;->a(JLH0/l;)[LP0/q;

    .line 522
    .line 523
    .line 524
    move-result-object v29

    .line 525
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    iget-object v2, v7, LH0/t;->U:Ljava/util/List;

    .line 531
    .line 532
    move-object/from16 v23, v10

    .line 533
    .line 534
    move-object/from16 v28, v2

    .line 535
    .line 536
    invoke-interface/range {v23 .. v29}, LR0/t;->a(JJLjava/util/List;[LP0/q;)V

    .line 537
    .line 538
    .line 539
    iget-object v0, v0, LP0/f;->J:Lm0/t;

    .line 540
    .line 541
    iget-object v2, v5, LH0/j;->h:Lm0/g0;

    .line 542
    .line 543
    invoke-virtual {v2, v0}, Lm0/g0;->b(Lm0/t;)I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    check-cast v10, LR0/c;

    .line 548
    .line 549
    iget-object v2, v10, LR0/c;->c:[I

    .line 550
    .line 551
    invoke-interface {v10}, LR0/t;->b()I

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    aget v2, v2, v6

    .line 556
    .line 557
    if-eq v2, v0, :cond_1a

    .line 558
    .line 559
    :cond_19
    const/4 v0, 0x1

    .line 560
    goto :goto_13

    .line 561
    :cond_1a
    const/4 v0, 0x1

    .line 562
    goto :goto_14

    .line 563
    :goto_13
    iput-boolean v0, v7, LH0/t;->x0:Z

    .line 564
    .line 565
    const/4 v2, 0x1

    .line 566
    const/4 v9, 0x1

    .line 567
    goto :goto_15

    .line 568
    :goto_14
    move/from16 v2, v17

    .line 569
    .line 570
    :goto_15
    if-eqz v9, :cond_1c

    .line 571
    .line 572
    invoke-virtual {v7, v3, v4, v2}, LH0/t;->J(JZ)Z

    .line 573
    .line 574
    .line 575
    const/4 v2, 0x0

    .line 576
    :goto_16
    if-ge v2, v12, :cond_1c

    .line 577
    .line 578
    aget-object v6, v13, v2

    .line 579
    .line 580
    if-eqz v6, :cond_1b

    .line 581
    .line 582
    aput-boolean v0, p4, v2

    .line 583
    .line 584
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 585
    .line 586
    const/4 v0, 0x1

    .line 587
    goto :goto_16

    .line 588
    :cond_1c
    :goto_17
    iget-object v0, v7, LH0/t;->Y:Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 591
    .line 592
    .line 593
    const/4 v2, 0x0

    .line 594
    :goto_18
    if-ge v2, v12, :cond_1e

    .line 595
    .line 596
    aget-object v6, v13, v2

    .line 597
    .line 598
    if-eqz v6, :cond_1d

    .line 599
    .line 600
    check-cast v6, LH0/p;

    .line 601
    .line 602
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 606
    .line 607
    goto :goto_18

    .line 608
    :cond_1e
    const/4 v2, 0x1

    .line 609
    iput-boolean v2, v7, LH0/t;->y0:Z

    .line 610
    .line 611
    const/4 v0, 0x0

    .line 612
    const/4 v2, 0x0

    .line 613
    :goto_19
    array-length v6, v1

    .line 614
    if-ge v0, v6, :cond_22

    .line 615
    .line 616
    aget-object v6, v13, v0

    .line 617
    .line 618
    aget v8, v33, v0

    .line 619
    .line 620
    move/from16 v10, v30

    .line 621
    .line 622
    if-ne v8, v10, :cond_1f

    .line 623
    .line 624
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    aput-object v6, v22, v0

    .line 628
    .line 629
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    move-object/from16 v8, v20

    .line 634
    .line 635
    invoke-virtual {v8, v6, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    const/4 v2, 0x1

    .line 639
    goto :goto_1b

    .line 640
    :cond_1f
    move-object/from16 v8, v20

    .line 641
    .line 642
    aget v11, v21, v0

    .line 643
    .line 644
    if-ne v11, v10, :cond_21

    .line 645
    .line 646
    if-nez v6, :cond_20

    .line 647
    .line 648
    const/4 v6, 0x1

    .line 649
    goto :goto_1a

    .line 650
    :cond_20
    const/4 v6, 0x0

    .line 651
    :goto_1a
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 652
    .line 653
    .line 654
    :cond_21
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    .line 655
    .line 656
    move-object/from16 v20, v8

    .line 657
    .line 658
    move/from16 v30, v10

    .line 659
    .line 660
    goto :goto_19

    .line 661
    :cond_22
    move-object/from16 v8, v20

    .line 662
    .line 663
    move/from16 v10, v30

    .line 664
    .line 665
    if-eqz v2, :cond_26

    .line 666
    .line 667
    aput-object v7, v18, v19

    .line 668
    .line 669
    add-int/lit8 v0, v19, 0x1

    .line 670
    .line 671
    if-nez v19, :cond_24

    .line 672
    .line 673
    const/4 v2, 0x1

    .line 674
    iput-boolean v2, v5, LH0/j;->m:Z

    .line 675
    .line 676
    move-object/from16 v6, p0

    .line 677
    .line 678
    if-nez v9, :cond_23

    .line 679
    .line 680
    iget-object v5, v6, LH0/n;->c0:[LH0/t;

    .line 681
    .line 682
    array-length v9, v5

    .line 683
    if-eqz v9, :cond_23

    .line 684
    .line 685
    const/4 v9, 0x0

    .line 686
    aget-object v5, v5, v9

    .line 687
    .line 688
    if-eq v7, v5, :cond_27

    .line 689
    .line 690
    :cond_23
    iget-object v5, v6, LH0/n;->Q:LD0/U;

    .line 691
    .line 692
    iget v7, v5, LD0/U;->G:I

    .line 693
    .line 694
    packed-switch v7, :pswitch_data_0

    .line 695
    .line 696
    .line 697
    const/4 v7, 0x0

    .line 698
    iput-object v7, v5, LD0/U;->H:Ljava/lang/Object;

    .line 699
    .line 700
    goto :goto_1c

    .line 701
    :pswitch_0
    iget-object v5, v5, LD0/U;->H:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v5, Landroid/util/SparseArray;

    .line 704
    .line 705
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 706
    .line 707
    .line 708
    :goto_1c
    const/16 v17, 0x1

    .line 709
    .line 710
    goto :goto_1e

    .line 711
    :cond_24
    const/4 v2, 0x1

    .line 712
    move-object/from16 v6, p0

    .line 713
    .line 714
    iget v7, v6, LH0/n;->d0:I

    .line 715
    .line 716
    if-ge v10, v7, :cond_25

    .line 717
    .line 718
    goto :goto_1d

    .line 719
    :cond_25
    const/4 v2, 0x0

    .line 720
    :goto_1d
    iput-boolean v2, v5, LH0/j;->m:Z

    .line 721
    .line 722
    goto :goto_1e

    .line 723
    :cond_26
    move-object/from16 v6, p0

    .line 724
    .line 725
    move/from16 v0, v19

    .line 726
    .line 727
    :cond_27
    :goto_1e
    add-int/lit8 v11, v10, 0x1

    .line 728
    .line 729
    move-object/from16 v2, p3

    .line 730
    .line 731
    move-object v10, v8

    .line 732
    move-object/from16 v5, v21

    .line 733
    .line 734
    move-object/from16 v9, v22

    .line 735
    .line 736
    move/from16 v14, v31

    .line 737
    .line 738
    move-object/from16 v15, v32

    .line 739
    .line 740
    move v8, v0

    .line 741
    move-object v0, v6

    .line 742
    move-object/from16 v6, v33

    .line 743
    .line 744
    goto/16 :goto_4

    .line 745
    .line 746
    :cond_28
    move-object v6, v0

    .line 747
    move-object v0, v2

    .line 748
    move/from16 v19, v8

    .line 749
    .line 750
    move-object v7, v9

    .line 751
    move/from16 v5, v16

    .line 752
    .line 753
    const/4 v2, 0x0

    .line 754
    invoke-static {v7, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v0, v18

    .line 758
    .line 759
    move/from16 v1, v19

    .line 760
    .line 761
    invoke-static {v1, v0}, Lp0/M;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    check-cast v0, [LH0/t;

    .line 766
    .line 767
    iput-object v0, v6, LH0/n;->c0:[LH0/t;

    .line 768
    .line 769
    invoke-static {v0}, Lz4/H;->t([Ljava/lang/Object;)Lz4/d0;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    new-instance v1, LC0/h;

    .line 774
    .line 775
    const/4 v2, 0x5

    .line 776
    invoke-direct {v1, v2}, LC0/h;-><init>(I)V

    .line 777
    .line 778
    .line 779
    invoke-static {v1, v0}, Lo3/r;->i(LC0/h;Ljava/util/List;)Ljava/util/AbstractList;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    iget-object v2, v6, LH0/n;->R:LU4/b;

    .line 784
    .line 785
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    new-instance v2, LO0/j;

    .line 789
    .line 790
    invoke-direct {v2, v0, v1}, LO0/j;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 791
    .line 792
    .line 793
    iput-object v2, v6, LH0/n;->e0:LO0/j;

    .line 794
    .line 795
    return-wide v3

    .line 796
    nop

    .line 797
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final m(LO0/v;J)V
    .locals 27

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const/4 v11, 0x0

    .line 4
    const/4 v12, 0x1

    .line 5
    move-object/from16 v0, p1

    .line 6
    .line 7
    iput-object v0, v10, LH0/n;->Y:LO0/v;

    .line 8
    .line 9
    iget-object v0, v10, LH0/n;->H:LI0/w;

    .line 10
    .line 11
    check-cast v0, LI0/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v1, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v13, v0, LI0/c;->P:LI0/o;

    .line 22
    .line 23
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-boolean v0, v10, LH0/n;->U:Z

    .line 27
    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v1, v13, LI0/o;->m:Ljava/util/List;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ge v3, v4, :cond_5

    .line 48
    .line 49
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lm0/n;

    .line 54
    .line 55
    iget-object v5, v4, Lm0/n;->I:Ljava/lang/String;

    .line 56
    .line 57
    add-int/2addr v3, v12

    .line 58
    move v6, v3

    .line 59
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-ge v6, v7, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lm0/n;

    .line 70
    .line 71
    iget-object v8, v7, Lm0/n;->I:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_3

    .line 78
    .line 79
    iget-object v8, v4, Lm0/n;->I:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v9, v7, Lm0/n;->I:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v8, :cond_1

    .line 84
    .line 85
    if-eqz v9, :cond_1

    .line 86
    .line 87
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    if-eqz v14, :cond_0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_0
    const/4 v14, 0x0

    .line 95
    goto :goto_3

    .line 96
    :cond_1
    :goto_2
    const/4 v14, 0x1

    .line 97
    :goto_3
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 98
    .line 99
    .line 100
    if-eqz v8, :cond_2

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_2
    move-object v8, v9

    .line 104
    :goto_4
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v4, v4, Lm0/n;->G:[Lm0/m;

    .line 107
    .line 108
    array-length v9, v4

    .line 109
    iget-object v7, v7, Lm0/n;->G:[Lm0/m;

    .line 110
    .line 111
    array-length v14, v7

    .line 112
    add-int/2addr v9, v14

    .line 113
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    array-length v4, v4

    .line 118
    array-length v14, v7

    .line 119
    invoke-static {v7, v11, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    check-cast v9, [Lm0/m;

    .line 123
    .line 124
    new-instance v4, Lm0/n;

    .line 125
    .line 126
    invoke-direct {v4, v8, v12, v9}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    add-int/2addr v6, v12

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    :goto_5
    move-object v14, v2

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_5

    .line 146
    :goto_6
    iget-object v0, v13, LI0/o;->e:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    xor-int/2addr v1, v12

    .line 153
    iput v11, v10, LH0/n;->Z:I

    .line 154
    .line 155
    new-instance v15, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v8, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v9, v10, LH0/n;->G:LH0/k;

    .line 166
    .line 167
    iget-boolean v7, v10, LH0/n;->S:Z

    .line 168
    .line 169
    iget-object v6, v13, LI0/o;->g:Ljava/util/List;

    .line 170
    .line 171
    if-eqz v1, :cond_1b

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    new-array v2, v1, [I

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    const/4 v4, 0x0

    .line 181
    const/4 v5, 0x0

    .line 182
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-ge v3, v11, :cond_a

    .line 187
    .line 188
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    check-cast v11, LI0/n;

    .line 193
    .line 194
    iget-object v11, v11, LI0/n;->b:Lm0/t;

    .line 195
    .line 196
    iget v12, v11, Lm0/t;->w:I

    .line 197
    .line 198
    if-gtz v12, :cond_9

    .line 199
    .line 200
    iget-object v11, v11, Lm0/t;->k:Ljava/lang/String;

    .line 201
    .line 202
    const/4 v12, 0x2

    .line 203
    invoke-static {v12, v11}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v16

    .line 207
    if-eqz v16, :cond_7

    .line 208
    .line 209
    const/4 v11, 0x2

    .line 210
    const/4 v12, 0x1

    .line 211
    goto :goto_8

    .line 212
    :cond_7
    const/4 v12, 0x1

    .line 213
    invoke-static {v12, v11}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    if-eqz v11, :cond_8

    .line 218
    .line 219
    aput v12, v2, v3

    .line 220
    .line 221
    add-int/2addr v5, v12

    .line 222
    goto :goto_9

    .line 223
    :cond_8
    const/4 v11, -0x1

    .line 224
    aput v11, v2, v3

    .line 225
    .line 226
    goto :goto_9

    .line 227
    :cond_9
    const/4 v12, 0x1

    .line 228
    const/4 v11, 0x2

    .line 229
    :goto_8
    aput v11, v2, v3

    .line 230
    .line 231
    add-int/2addr v4, v12

    .line 232
    :goto_9
    add-int/2addr v3, v12

    .line 233
    goto :goto_7

    .line 234
    :cond_a
    if-lez v4, :cond_b

    .line 235
    .line 236
    move v11, v4

    .line 237
    const/4 v1, 0x1

    .line 238
    :goto_a
    const/4 v3, 0x0

    .line 239
    goto :goto_b

    .line 240
    :cond_b
    if-ge v5, v1, :cond_c

    .line 241
    .line 242
    sub-int/2addr v1, v5

    .line 243
    move v11, v1

    .line 244
    const/4 v1, 0x0

    .line 245
    const/4 v3, 0x1

    .line 246
    goto :goto_b

    .line 247
    :cond_c
    move v11, v1

    .line 248
    const/4 v1, 0x0

    .line 249
    goto :goto_a

    .line 250
    :goto_b
    new-array v4, v11, [Landroid/net/Uri;

    .line 251
    .line 252
    new-array v12, v11, [Lm0/t;

    .line 253
    .line 254
    new-array v5, v11, [I

    .line 255
    .line 256
    move/from16 v16, v7

    .line 257
    .line 258
    move-object/from16 v18, v8

    .line 259
    .line 260
    const/4 v7, 0x0

    .line 261
    const/16 v17, 0x0

    .line 262
    .line 263
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-ge v7, v8, :cond_11

    .line 268
    .line 269
    if-eqz v1, :cond_e

    .line 270
    .line 271
    aget v8, v2, v7

    .line 272
    .line 273
    move-object/from16 v19, v9

    .line 274
    .line 275
    const/4 v9, 0x2

    .line 276
    if-ne v8, v9, :cond_d

    .line 277
    .line 278
    goto :goto_d

    .line 279
    :cond_d
    const/4 v9, 0x1

    .line 280
    goto :goto_e

    .line 281
    :cond_e
    move-object/from16 v19, v9

    .line 282
    .line 283
    :goto_d
    if-eqz v3, :cond_10

    .line 284
    .line 285
    aget v8, v2, v7

    .line 286
    .line 287
    const/4 v9, 0x1

    .line 288
    if-eq v8, v9, :cond_f

    .line 289
    .line 290
    goto :goto_f

    .line 291
    :cond_f
    :goto_e
    const/4 v8, 0x1

    .line 292
    goto :goto_10

    .line 293
    :cond_10
    const/4 v9, 0x1

    .line 294
    :goto_f
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    check-cast v8, LI0/n;

    .line 299
    .line 300
    iget-object v9, v8, LI0/n;->a:Landroid/net/Uri;

    .line 301
    .line 302
    aput-object v9, v4, v17

    .line 303
    .line 304
    iget-object v8, v8, LI0/n;->b:Lm0/t;

    .line 305
    .line 306
    aput-object v8, v12, v17

    .line 307
    .line 308
    const/4 v8, 0x1

    .line 309
    add-int/lit8 v9, v17, 0x1

    .line 310
    .line 311
    aput v7, v5, v17

    .line 312
    .line 313
    move/from16 v17, v9

    .line 314
    .line 315
    :goto_10
    add-int/2addr v7, v8

    .line 316
    move-object/from16 v9, v19

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_11
    move-object/from16 v19, v9

    .line 320
    .line 321
    const/4 v7, 0x0

    .line 322
    const/4 v8, 0x1

    .line 323
    aget-object v0, v12, v7

    .line 324
    .line 325
    iget-object v0, v0, Lm0/t;->k:Ljava/lang/String;

    .line 326
    .line 327
    const/4 v2, 0x2

    .line 328
    invoke-static {v2, v0}, Lp0/M;->t(ILjava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    invoke-static {v8, v0}, Lp0/M;->t(ILjava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-eq v7, v8, :cond_12

    .line 337
    .line 338
    if-nez v7, :cond_13

    .line 339
    .line 340
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_13

    .line 345
    .line 346
    :cond_12
    if-gt v9, v8, :cond_13

    .line 347
    .line 348
    add-int v0, v7, v9

    .line 349
    .line 350
    if-lez v0, :cond_13

    .line 351
    .line 352
    const/16 v17, 0x1

    .line 353
    .line 354
    goto :goto_11

    .line 355
    :cond_13
    const/16 v17, 0x0

    .line 356
    .line 357
    :goto_11
    if-nez v1, :cond_14

    .line 358
    .line 359
    if-lez v7, :cond_14

    .line 360
    .line 361
    const/4 v2, 0x1

    .line 362
    goto :goto_12

    .line 363
    :cond_14
    const/4 v2, 0x0

    .line 364
    :goto_12
    const-string v8, "main"

    .line 365
    .line 366
    iget-object v3, v13, LI0/o;->j:Lm0/t;

    .line 367
    .line 368
    iget-object v1, v13, LI0/o;->k:Ljava/util/List;

    .line 369
    .line 370
    move-object/from16 v0, p0

    .line 371
    .line 372
    move-object/from16 v20, v1

    .line 373
    .line 374
    move-object v1, v8

    .line 375
    move-object/from16 v21, v3

    .line 376
    .line 377
    move-object v3, v4

    .line 378
    move-object v4, v12

    .line 379
    move-object v10, v5

    .line 380
    move-object/from16 v5, v21

    .line 381
    .line 382
    move-object/from16 v21, v6

    .line 383
    .line 384
    move-object/from16 v6, v20

    .line 385
    .line 386
    move/from16 v20, v7

    .line 387
    .line 388
    move-object v7, v14

    .line 389
    move-object/from16 v23, v8

    .line 390
    .line 391
    move-object/from16 v22, v14

    .line 392
    .line 393
    move-object/from16 v14, v18

    .line 394
    .line 395
    move-object/from16 v18, v19

    .line 396
    .line 397
    move/from16 v19, v9

    .line 398
    .line 399
    move-wide/from16 v8, p2

    .line 400
    .line 401
    invoke-virtual/range {v0 .. v9}, LH0/n;->d(Ljava/lang/String;I[Landroid/net/Uri;[Lm0/t;Lm0/t;Ljava/util/List;Ljava/util/Map;J)LH0/t;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    if-eqz v16, :cond_1c

    .line 412
    .line 413
    if-eqz v17, :cond_1c

    .line 414
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .line 419
    .line 420
    iget-object v2, v13, LI0/o;->j:Lm0/t;

    .line 421
    .line 422
    if-lez v19, :cond_19

    .line 423
    .line 424
    new-array v3, v11, [Lm0/t;

    .line 425
    .line 426
    const/4 v4, 0x0

    .line 427
    :goto_13
    if-ge v4, v11, :cond_15

    .line 428
    .line 429
    aget-object v5, v12, v4

    .line 430
    .line 431
    iget-object v6, v5, Lm0/t;->k:Ljava/lang/String;

    .line 432
    .line 433
    const/4 v7, 0x2

    .line 434
    invoke-static {v7, v6}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-static {v6}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    new-instance v9, Lm0/s;

    .line 443
    .line 444
    invoke-direct {v9}, Lm0/s;-><init>()V

    .line 445
    .line 446
    .line 447
    iget-object v10, v5, Lm0/t;->a:Ljava/lang/String;

    .line 448
    .line 449
    iput-object v10, v9, Lm0/s;->a:Ljava/lang/String;

    .line 450
    .line 451
    iget-object v10, v5, Lm0/t;->b:Ljava/lang/String;

    .line 452
    .line 453
    iput-object v10, v9, Lm0/s;->b:Ljava/lang/String;

    .line 454
    .line 455
    iget-object v10, v5, Lm0/t;->c:Ljava/util/List;

    .line 456
    .line 457
    invoke-static {v10}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 458
    .line 459
    .line 460
    move-result-object v10

    .line 461
    iput-object v10, v9, Lm0/s;->c:Ljava/util/List;

    .line 462
    .line 463
    iget-object v10, v5, Lm0/t;->n:Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {v10}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    iput-object v10, v9, Lm0/s;->m:Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v8}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    iput-object v8, v9, Lm0/s;->n:Ljava/lang/String;

    .line 476
    .line 477
    iput-object v6, v9, Lm0/s;->j:Ljava/lang/String;

    .line 478
    .line 479
    iget-object v6, v5, Lm0/t;->l:Lm0/N;

    .line 480
    .line 481
    iput-object v6, v9, Lm0/s;->k:Lm0/N;

    .line 482
    .line 483
    iget v6, v5, Lm0/t;->h:I

    .line 484
    .line 485
    iput v6, v9, Lm0/s;->h:I

    .line 486
    .line 487
    iget v6, v5, Lm0/t;->i:I

    .line 488
    .line 489
    iput v6, v9, Lm0/s;->i:I

    .line 490
    .line 491
    iget v6, v5, Lm0/t;->v:I

    .line 492
    .line 493
    iput v6, v9, Lm0/s;->u:I

    .line 494
    .line 495
    iget v6, v5, Lm0/t;->w:I

    .line 496
    .line 497
    iput v6, v9, Lm0/s;->v:I

    .line 498
    .line 499
    iget v6, v5, Lm0/t;->z:F

    .line 500
    .line 501
    iput v6, v9, Lm0/s;->y:F

    .line 502
    .line 503
    iget v6, v5, Lm0/t;->e:I

    .line 504
    .line 505
    iput v6, v9, Lm0/s;->e:I

    .line 506
    .line 507
    iget v5, v5, Lm0/t;->f:I

    .line 508
    .line 509
    iput v5, v9, Lm0/s;->f:I

    .line 510
    .line 511
    new-instance v5, Lm0/t;

    .line 512
    .line 513
    invoke-direct {v5, v9}, Lm0/t;-><init>(Lm0/s;)V

    .line 514
    .line 515
    .line 516
    aput-object v5, v3, v4

    .line 517
    .line 518
    const/4 v5, 0x1

    .line 519
    add-int/2addr v4, v5

    .line 520
    goto :goto_13

    .line 521
    :cond_15
    new-instance v4, Lm0/g0;

    .line 522
    .line 523
    move-object/from16 v5, v23

    .line 524
    .line 525
    invoke-direct {v4, v5, v3}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    if-lez v20, :cond_17

    .line 532
    .line 533
    if-nez v2, :cond_16

    .line 534
    .line 535
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eqz v3, :cond_17

    .line 540
    .line 541
    :cond_16
    new-instance v3, Lm0/g0;

    .line 542
    .line 543
    const/4 v4, 0x0

    .line 544
    aget-object v5, v12, v4

    .line 545
    .line 546
    invoke-static {v5, v2, v4}, LH0/n;->f(Lm0/t;Lm0/t;Z)Lm0/t;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    const/4 v5, 0x1

    .line 551
    new-array v6, v5, [Lm0/t;

    .line 552
    .line 553
    aput-object v2, v6, v4

    .line 554
    .line 555
    const-string v2, "main:audio"

    .line 556
    .line 557
    invoke-direct {v3, v2, v6}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    :cond_17
    iget-object v2, v13, LI0/o;->k:Ljava/util/List;

    .line 564
    .line 565
    if-eqz v2, :cond_18

    .line 566
    .line 567
    const/4 v3, 0x0

    .line 568
    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    if-ge v3, v4, :cond_18

    .line 573
    .line 574
    const-string v4, "main:cc:"

    .line 575
    .line 576
    invoke-static {v4, v3}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    new-instance v5, Lm0/g0;

    .line 581
    .line 582
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    check-cast v6, Lm0/t;

    .line 587
    .line 588
    move-object/from16 v9, v18

    .line 589
    .line 590
    check-cast v9, LH0/d;

    .line 591
    .line 592
    invoke-virtual {v9, v6}, LH0/d;->b(Lm0/t;)Lm0/t;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    const/4 v7, 0x1

    .line 597
    new-array v8, v7, [Lm0/t;

    .line 598
    .line 599
    const/4 v9, 0x0

    .line 600
    aput-object v6, v8, v9

    .line 601
    .line 602
    invoke-direct {v5, v4, v8}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    add-int/2addr v3, v7

    .line 609
    goto :goto_14

    .line 610
    :cond_18
    const/4 v7, 0x1

    .line 611
    goto :goto_16

    .line 612
    :cond_19
    move-object/from16 v5, v23

    .line 613
    .line 614
    const/4 v7, 0x1

    .line 615
    new-array v3, v11, [Lm0/t;

    .line 616
    .line 617
    const/4 v4, 0x0

    .line 618
    :goto_15
    if-ge v4, v11, :cond_1a

    .line 619
    .line 620
    aget-object v6, v12, v4

    .line 621
    .line 622
    invoke-static {v6, v2, v7}, LH0/n;->f(Lm0/t;Lm0/t;Z)Lm0/t;

    .line 623
    .line 624
    .line 625
    move-result-object v6

    .line 626
    aput-object v6, v3, v4

    .line 627
    .line 628
    add-int/2addr v4, v7

    .line 629
    goto :goto_15

    .line 630
    :cond_1a
    new-instance v2, Lm0/g0;

    .line 631
    .line 632
    invoke-direct {v2, v5, v3}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    :goto_16
    new-instance v2, Lm0/g0;

    .line 639
    .line 640
    new-instance v3, Lm0/s;

    .line 641
    .line 642
    invoke-direct {v3}, Lm0/s;-><init>()V

    .line 643
    .line 644
    .line 645
    const-string v4, "ID3"

    .line 646
    .line 647
    iput-object v4, v3, Lm0/s;->a:Ljava/lang/String;

    .line 648
    .line 649
    const-string v4, "application/id3"

    .line 650
    .line 651
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    iput-object v4, v3, Lm0/s;->n:Ljava/lang/String;

    .line 656
    .line 657
    new-instance v4, Lm0/t;

    .line 658
    .line 659
    invoke-direct {v4, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 660
    .line 661
    .line 662
    const/4 v3, 0x1

    .line 663
    new-array v5, v3, [Lm0/t;

    .line 664
    .line 665
    const/4 v3, 0x0

    .line 666
    aput-object v4, v5, v3

    .line 667
    .line 668
    const-string v4, "main:id3"

    .line 669
    .line 670
    invoke-direct {v2, v4, v5}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    new-array v4, v3, [Lm0/g0;

    .line 677
    .line 678
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    check-cast v3, [Lm0/g0;

    .line 683
    .line 684
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 685
    .line 686
    .line 687
    move-result v1

    .line 688
    filled-new-array {v1}, [I

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {v0, v3, v1}, LH0/t;->H([Lm0/g0;[I)V

    .line 693
    .line 694
    .line 695
    goto :goto_17

    .line 696
    :cond_1b
    move-object/from16 v21, v6

    .line 697
    .line 698
    move/from16 v16, v7

    .line 699
    .line 700
    move-object/from16 v18, v9

    .line 701
    .line 702
    move-object/from16 v22, v14

    .line 703
    .line 704
    move-object v14, v8

    .line 705
    :cond_1c
    :goto_17
    new-instance v10, Ljava/util/ArrayList;

    .line 706
    .line 707
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .line 713
    .line 714
    new-instance v11, Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    .line 722
    .line 723
    new-instance v12, Ljava/util/ArrayList;

    .line 724
    .line 725
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .line 731
    .line 732
    new-instance v8, Ljava/util/HashSet;

    .line 733
    .line 734
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 735
    .line 736
    .line 737
    const/4 v9, 0x0

    .line 738
    :goto_18
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-ge v9, v0, :cond_22

    .line 743
    .line 744
    move-object/from16 v7, v21

    .line 745
    .line 746
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    check-cast v0, LI0/m;

    .line 751
    .line 752
    iget-object v0, v0, LI0/m;->c:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-nez v1, :cond_1e

    .line 759
    .line 760
    move-object/from16 v19, v7

    .line 761
    .line 762
    move-object/from16 v20, v8

    .line 763
    .line 764
    move/from16 v21, v9

    .line 765
    .line 766
    :cond_1d
    const/4 v2, 0x1

    .line 767
    goto/16 :goto_1c

    .line 768
    .line 769
    :cond_1e
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 776
    .line 777
    .line 778
    const/4 v1, 0x0

    .line 779
    const/16 v17, 0x1

    .line 780
    .line 781
    :goto_19
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    if-ge v1, v2, :cond_21

    .line 786
    .line 787
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    check-cast v2, LI0/m;

    .line 792
    .line 793
    iget-object v2, v2, LI0/m;->c:Ljava/lang/String;

    .line 794
    .line 795
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_20

    .line 800
    .line 801
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    check-cast v2, LI0/m;

    .line 806
    .line 807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    iget-object v3, v2, LI0/m;->a:Landroid/net/Uri;

    .line 815
    .line 816
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    iget-object v2, v2, LI0/m;->b:Lm0/t;

    .line 820
    .line 821
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    iget-object v2, v2, Lm0/t;->k:Ljava/lang/String;

    .line 825
    .line 826
    const/4 v3, 0x1

    .line 827
    invoke-static {v3, v2}, Lp0/M;->t(ILjava/lang/String;)I

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    if-ne v2, v3, :cond_1f

    .line 832
    .line 833
    const/4 v2, 0x1

    .line 834
    goto :goto_1a

    .line 835
    :cond_1f
    const/4 v2, 0x0

    .line 836
    :goto_1a
    and-int v2, v17, v2

    .line 837
    .line 838
    move/from16 v17, v2

    .line 839
    .line 840
    goto :goto_1b

    .line 841
    :cond_20
    const/4 v3, 0x1

    .line 842
    :goto_1b
    add-int/2addr v1, v3

    .line 843
    goto :goto_19

    .line 844
    :cond_21
    const-string v1, "audio:"

    .line 845
    .line 846
    invoke-static {v1, v0}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v6

    .line 850
    const/4 v0, 0x0

    .line 851
    new-array v1, v0, [Landroid/net/Uri;

    .line 852
    .line 853
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 854
    .line 855
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    move-object v3, v1

    .line 860
    check-cast v3, [Landroid/net/Uri;

    .line 861
    .line 862
    new-array v1, v0, [Lm0/t;

    .line 863
    .line 864
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    move-object v4, v0

    .line 869
    check-cast v4, [Lm0/t;

    .line 870
    .line 871
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 872
    .line 873
    .line 874
    move-result-object v19

    .line 875
    const/4 v2, 0x1

    .line 876
    const/4 v5, 0x0

    .line 877
    move-object/from16 v0, p0

    .line 878
    .line 879
    move-object v1, v6

    .line 880
    move-object/from16 v24, v6

    .line 881
    .line 882
    move-object/from16 v6, v19

    .line 883
    .line 884
    move-object/from16 v19, v7

    .line 885
    .line 886
    move-object/from16 v7, v22

    .line 887
    .line 888
    move-object/from16 v20, v8

    .line 889
    .line 890
    move/from16 v21, v9

    .line 891
    .line 892
    move-wide/from16 v8, p2

    .line 893
    .line 894
    invoke-virtual/range {v0 .. v9}, LH0/n;->d(Ljava/lang/String;I[Landroid/net/Uri;[Lm0/t;Lm0/t;Ljava/util/List;Ljava/util/Map;J)LH0/t;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-static {v12}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    if-eqz v16, :cond_1d

    .line 909
    .line 910
    if-eqz v17, :cond_1d

    .line 911
    .line 912
    const/4 v1, 0x0

    .line 913
    new-array v2, v1, [Lm0/t;

    .line 914
    .line 915
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    check-cast v2, [Lm0/t;

    .line 920
    .line 921
    new-instance v3, Lm0/g0;

    .line 922
    .line 923
    move-object/from16 v4, v24

    .line 924
    .line 925
    invoke-direct {v3, v4, v2}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 926
    .line 927
    .line 928
    const/4 v2, 0x1

    .line 929
    new-array v4, v2, [Lm0/g0;

    .line 930
    .line 931
    aput-object v3, v4, v1

    .line 932
    .line 933
    new-array v3, v1, [I

    .line 934
    .line 935
    invoke-virtual {v0, v4, v3}, LH0/t;->H([Lm0/g0;[I)V

    .line 936
    .line 937
    .line 938
    :goto_1c
    add-int/lit8 v9, v21, 0x1

    .line 939
    .line 940
    move-object/from16 v21, v19

    .line 941
    .line 942
    move-object/from16 v8, v20

    .line 943
    .line 944
    goto/16 :goto_18

    .line 945
    .line 946
    :cond_22
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    move-object/from16 v10, p0

    .line 951
    .line 952
    iput v0, v10, LH0/n;->d0:I

    .line 953
    .line 954
    new-instance v11, Ljava/util/ArrayList;

    .line 955
    .line 956
    iget-object v12, v13, LI0/o;->h:Ljava/util/List;

    .line 957
    .line 958
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 963
    .line 964
    .line 965
    new-instance v13, Ljava/util/ArrayList;

    .line 966
    .line 967
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 972
    .line 973
    .line 974
    new-instance v8, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 981
    .line 982
    .line 983
    new-instance v9, Ljava/util/HashSet;

    .line 984
    .line 985
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 986
    .line 987
    .line 988
    const/4 v7, 0x0

    .line 989
    :goto_1d
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-ge v7, v0, :cond_27

    .line 994
    .line 995
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    check-cast v0, LI0/m;

    .line 1000
    .line 1001
    iget-object v0, v0, LI0/m;->c:Ljava/lang/String;

    .line 1002
    .line 1003
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v1

    .line 1007
    if-nez v1, :cond_23

    .line 1008
    .line 1009
    move/from16 v16, v7

    .line 1010
    .line 1011
    move-object/from16 v17, v8

    .line 1012
    .line 1013
    move-object/from16 v19, v9

    .line 1014
    .line 1015
    const/4 v4, 0x1

    .line 1016
    const/4 v7, 0x0

    .line 1017
    goto/16 :goto_20

    .line 1018
    .line 1019
    :cond_23
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1026
    .line 1027
    .line 1028
    const/4 v1, 0x0

    .line 1029
    :goto_1e
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1030
    .line 1031
    .line 1032
    move-result v2

    .line 1033
    if-ge v1, v2, :cond_25

    .line 1034
    .line 1035
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v2

    .line 1039
    check-cast v2, LI0/m;

    .line 1040
    .line 1041
    iget-object v2, v2, LI0/m;->c:Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_24

    .line 1048
    .line 1049
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    check-cast v2, LI0/m;

    .line 1054
    .line 1055
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    iget-object v3, v2, LI0/m;->a:Landroid/net/Uri;

    .line 1063
    .line 1064
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    iget-object v2, v2, LI0/m;->b:Lm0/t;

    .line 1068
    .line 1069
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    .line 1071
    .line 1072
    :cond_24
    const/4 v2, 0x1

    .line 1073
    add-int/2addr v1, v2

    .line 1074
    goto :goto_1e

    .line 1075
    :cond_25
    const-string v1, "subtitle:"

    .line 1076
    .line 1077
    invoke-static {v1, v0}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v6

    .line 1081
    const/4 v0, 0x0

    .line 1082
    new-array v1, v0, [Lm0/t;

    .line 1083
    .line 1084
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v1

    .line 1088
    move-object v5, v1

    .line 1089
    check-cast v5, [Lm0/t;

    .line 1090
    .line 1091
    new-array v1, v0, [Landroid/net/Uri;

    .line 1092
    .line 1093
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 1094
    .line 1095
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    move-object v3, v0

    .line 1100
    check-cast v3, [Landroid/net/Uri;

    .line 1101
    .line 1102
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 1103
    .line 1104
    sget-object v16, Lz4/d0;->K:Lz4/d0;

    .line 1105
    .line 1106
    const/4 v2, 0x3

    .line 1107
    const/16 v17, 0x0

    .line 1108
    .line 1109
    move-object/from16 v0, p0

    .line 1110
    .line 1111
    move-object v1, v6

    .line 1112
    move-object v4, v5

    .line 1113
    move-object/from16 v25, v5

    .line 1114
    .line 1115
    move-object/from16 v5, v17

    .line 1116
    .line 1117
    move-object/from16 v26, v6

    .line 1118
    .line 1119
    move-object/from16 v6, v16

    .line 1120
    .line 1121
    move/from16 v16, v7

    .line 1122
    .line 1123
    move-object/from16 v7, v22

    .line 1124
    .line 1125
    move-object/from16 v17, v8

    .line 1126
    .line 1127
    move-object/from16 v19, v9

    .line 1128
    .line 1129
    move-wide/from16 v8, p2

    .line 1130
    .line 1131
    invoke-virtual/range {v0 .. v9}, LH0/n;->d(Ljava/lang/String;I[Landroid/net/Uri;[Lm0/t;Lm0/t;Ljava/util/List;Ljava/util/Map;J)LH0/t;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-static/range {v17 .. v17}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    .line 1144
    .line 1145
    move-object/from16 v1, v25

    .line 1146
    .line 1147
    array-length v2, v1

    .line 1148
    new-array v3, v2, [Lm0/t;

    .line 1149
    .line 1150
    const/4 v7, 0x0

    .line 1151
    :goto_1f
    if-ge v7, v2, :cond_26

    .line 1152
    .line 1153
    aget-object v4, v1, v7

    .line 1154
    .line 1155
    move-object/from16 v9, v18

    .line 1156
    .line 1157
    check-cast v9, LH0/d;

    .line 1158
    .line 1159
    invoke-virtual {v9, v4}, LH0/d;->b(Lm0/t;)Lm0/t;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v4

    .line 1163
    aput-object v4, v3, v7

    .line 1164
    .line 1165
    const/4 v4, 0x1

    .line 1166
    add-int/2addr v7, v4

    .line 1167
    goto :goto_1f

    .line 1168
    :cond_26
    const/4 v4, 0x1

    .line 1169
    new-instance v1, Lm0/g0;

    .line 1170
    .line 1171
    move-object/from16 v2, v26

    .line 1172
    .line 1173
    invoke-direct {v1, v2, v3}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 1174
    .line 1175
    .line 1176
    new-array v2, v4, [Lm0/g0;

    .line 1177
    .line 1178
    const/4 v7, 0x0

    .line 1179
    aput-object v1, v2, v7

    .line 1180
    .line 1181
    new-array v1, v7, [I

    .line 1182
    .line 1183
    invoke-virtual {v0, v2, v1}, LH0/t;->H([Lm0/g0;[I)V

    .line 1184
    .line 1185
    .line 1186
    :goto_20
    add-int/lit8 v0, v16, 0x1

    .line 1187
    .line 1188
    move v7, v0

    .line 1189
    move-object/from16 v8, v17

    .line 1190
    .line 1191
    move-object/from16 v9, v19

    .line 1192
    .line 1193
    goto/16 :goto_1d

    .line 1194
    .line 1195
    :cond_27
    const/4 v7, 0x0

    .line 1196
    new-array v0, v7, [LH0/t;

    .line 1197
    .line 1198
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    check-cast v0, [LH0/t;

    .line 1203
    .line 1204
    iput-object v0, v10, LH0/n;->b0:[LH0/t;

    .line 1205
    .line 1206
    new-array v0, v7, [[I

    .line 1207
    .line 1208
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    check-cast v0, [[I

    .line 1213
    .line 1214
    iget-object v0, v10, LH0/n;->b0:[LH0/t;

    .line 1215
    .line 1216
    array-length v0, v0

    .line 1217
    iput v0, v10, LH0/n;->Z:I

    .line 1218
    .line 1219
    const/4 v0, 0x0

    .line 1220
    :goto_21
    iget v1, v10, LH0/n;->d0:I

    .line 1221
    .line 1222
    if-ge v0, v1, :cond_28

    .line 1223
    .line 1224
    iget-object v1, v10, LH0/n;->b0:[LH0/t;

    .line 1225
    .line 1226
    aget-object v1, v1, v0

    .line 1227
    .line 1228
    iget-object v1, v1, LH0/t;->J:LH0/j;

    .line 1229
    .line 1230
    const/4 v2, 0x1

    .line 1231
    iput-boolean v2, v1, LH0/j;->m:Z

    .line 1232
    .line 1233
    add-int/2addr v0, v2

    .line 1234
    goto :goto_21

    .line 1235
    :cond_28
    iget-object v0, v10, LH0/n;->b0:[LH0/t;

    .line 1236
    .line 1237
    array-length v1, v0

    .line 1238
    const/4 v11, 0x0

    .line 1239
    :goto_22
    if-ge v11, v1, :cond_2a

    .line 1240
    .line 1241
    aget-object v2, v0, v11

    .line 1242
    .line 1243
    iget-boolean v3, v2, LH0/t;->j0:Z

    .line 1244
    .line 1245
    if-nez v3, :cond_29

    .line 1246
    .line 1247
    new-instance v3, LB0/c0;

    .line 1248
    .line 1249
    invoke-direct {v3}, LB0/c0;-><init>()V

    .line 1250
    .line 1251
    .line 1252
    iget-wide v4, v2, LH0/t;->v0:J

    .line 1253
    .line 1254
    iput-wide v4, v3, LB0/c0;->a:J

    .line 1255
    .line 1256
    new-instance v4, LB0/d0;

    .line 1257
    .line 1258
    invoke-direct {v4, v3}, LB0/d0;-><init>(LB0/c0;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v2, v4}, LH0/t;->g(LB0/d0;)Z

    .line 1262
    .line 1263
    .line 1264
    :cond_29
    const/4 v2, 0x1

    .line 1265
    add-int/2addr v11, v2

    .line 1266
    goto :goto_22

    .line 1267
    :cond_2a
    iget-object v0, v10, LH0/n;->b0:[LH0/t;

    .line 1268
    .line 1269
    iput-object v0, v10, LH0/n;->c0:[LH0/t;

    .line 1270
    .line 1271
    return-void
.end method

.method public final q()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final s()LO0/Z;
    .locals 1

    .line 1
    iget-object v0, p0, LH0/n;->a0:LO0/Z;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-object v0, p0, LH0/n;->e0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/j;->u()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final v(JZ)V
    .locals 9

    .line 1
    iget-object v0, p0, LH0/n;->c0:[LH0/t;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-boolean v5, v4, LH0/t;->i0:Z

    .line 11
    .line 12
    if-eqz v5, :cond_1

    .line 13
    .line 14
    invoke-virtual {v4}, LH0/t;->E()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget-object v5, v4, LH0/t;->b0:[LH0/s;

    .line 22
    .line 23
    array-length v5, v5

    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_1
    if-ge v6, v5, :cond_1

    .line 26
    .line 27
    iget-object v7, v4, LH0/t;->b0:[LH0/s;

    .line 28
    .line 29
    aget-object v7, v7, v6

    .line 30
    .line 31
    iget-object v8, v4, LH0/t;->t0:[Z

    .line 32
    .line 33
    aget-boolean v8, v8, v6

    .line 34
    .line 35
    invoke-virtual {v7, p1, p2, p3, v8}, LO0/T;->j(JZZ)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final w(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LH0/n;->e0:LO0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LO0/j;->w(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
