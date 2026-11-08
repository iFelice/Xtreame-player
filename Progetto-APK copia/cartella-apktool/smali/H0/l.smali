.class public final LH0/l;
.super LP0/p;
.source "SourceFile"


# static fields
.field public static final t0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final Q:I

.field public final R:I

.field public final S:Landroid/net/Uri;

.field public final T:Z

.field public final U:I

.field public final V:Ls0/i;

.field public final W:Ls0/m;

.field public final X:LH0/m;

.field public final Y:Z

.field public final Z:Z

.field public final a0:Lp0/J;

.field public final b0:LH0/k;

.field public final c0:Ljava/util/List;

.field public final d0:Lm0/n;

.field public final e0:Li1/i;

.field public final f0:Lp0/E;

.field public final g0:Z

.field public final h0:Z

.field public final i0:J

.field public j0:LH0/m;

.field public k0:LH0/t;

.field public l0:I

.field public m0:Z

.field public volatile n0:Z

.field public o0:Z

.field public p0:Lz4/H;

.field public q0:Z

.field public r0:J

.field public s0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LH0/l;->t0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(LH0/k;Ls0/i;Ls0/m;Lm0/t;ZLs0/i;Ls0/m;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLp0/J;JLm0/n;LH0/m;Li1/i;Lp0/E;ZZLC0/I;)V
    .locals 14

    .line 1
    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 2
    invoke-direct/range {v0 .. v11}, LP0/p;-><init>(Ls0/i;Ls0/m;Lm0/t;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 3
    iput-boolean v0, v12, LH0/l;->g0:Z

    move/from16 v0, p19

    .line 4
    iput v0, v12, LH0/l;->U:I

    if-eqz p20, :cond_0

    sub-long v0, p15, p13

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    :goto_0
    iput-wide v0, v12, LH0/l;->r0:J

    move/from16 v0, p21

    .line 6
    iput v0, v12, LH0/l;->R:I

    .line 7
    iput-object v13, v12, LH0/l;->W:Ls0/m;

    move-object/from16 v0, p6

    .line 8
    iput-object v0, v12, LH0/l;->V:Ls0/i;

    if-eqz v13, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    iput-boolean v0, v12, LH0/l;->m0:Z

    move/from16 v0, p8

    .line 10
    iput-boolean v0, v12, LH0/l;->h0:Z

    move-object/from16 v0, p9

    .line 11
    iput-object v0, v12, LH0/l;->S:Landroid/net/Uri;

    move/from16 v0, p23

    .line 12
    iput-boolean v0, v12, LH0/l;->Y:Z

    move-object/from16 v0, p24

    .line 13
    iput-object v0, v12, LH0/l;->a0:Lp0/J;

    move-wide/from16 v0, p25

    .line 14
    iput-wide v0, v12, LH0/l;->i0:J

    move/from16 v0, p22

    .line 15
    iput-boolean v0, v12, LH0/l;->Z:Z

    move-object v0, p1

    .line 16
    iput-object v0, v12, LH0/l;->b0:LH0/k;

    move-object/from16 v0, p10

    .line 17
    iput-object v0, v12, LH0/l;->c0:Ljava/util/List;

    move-object/from16 v0, p27

    .line 18
    iput-object v0, v12, LH0/l;->d0:Lm0/n;

    move-object/from16 v0, p28

    .line 19
    iput-object v0, v12, LH0/l;->X:LH0/m;

    move-object/from16 v0, p29

    .line 20
    iput-object v0, v12, LH0/l;->e0:Li1/i;

    move-object/from16 v0, p30

    .line 21
    iput-object v0, v12, LH0/l;->f0:Lp0/E;

    move/from16 v0, p31

    .line 22
    iput-boolean v0, v12, LH0/l;->s0:Z

    move/from16 v0, p32

    .line 23
    iput-boolean v0, v12, LH0/l;->T:Z

    .line 24
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 25
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 26
    iput-object v0, v12, LH0/l;->p0:Lz4/H;

    .line 27
    sget-object v0, LH0/l;->t0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, LH0/l;->Q:I

    return-void
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "0x"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    .line 19
    .line 20
    const/16 v1, 0x10

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-array v0, v1, [B

    .line 30
    .line 31
    array-length v2, p0

    .line 32
    if-le v2, v1, :cond_1

    .line 33
    .line 34
    array-length v2, p0

    .line 35
    sub-int/2addr v2, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    array-length v3, p0

    .line 39
    sub-int/2addr v1, v3

    .line 40
    add-int/2addr v1, v2

    .line 41
    array-length v3, p0

    .line 42
    sub-int/2addr v3, v2

    .line 43
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method


# virtual methods
.method public final I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LH0/l;->n0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ls0/i;Ls0/m;ZZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    iget p3, p0, LH0/l;->l0:I

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    move v1, p3

    .line 12
    move-object p3, p2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget p3, p0, LH0/l;->l0:I

    .line 15
    .line 16
    int-to-long v1, p3

    .line 17
    invoke-virtual {p2, v1, v2}, Ls0/m;->c(J)Ls0/m;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, LH0/l;->g(Ls0/i;Ls0/m;Z)LW0/n;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget p4, p0, LH0/l;->l0:I

    .line 29
    .line 30
    invoke-virtual {p3, p4, v0}, LW0/n;->d(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    goto :goto_7

    .line 36
    :cond_2
    :goto_2
    :try_start_1
    iget-boolean p4, p0, LH0/l;->n0:Z

    .line 37
    .line 38
    if-nez p4, :cond_3

    .line 39
    .line 40
    iget-object p4, p0, LH0/l;->j0:LH0/m;

    .line 41
    .line 42
    check-cast p4, LH0/b;

    .line 43
    .line 44
    sget-object v0, LH0/b;->f:LW0/w;

    .line 45
    .line 46
    iget-object p4, p4, LH0/b;->a:LW0/s;

    .line 47
    .line 48
    invoke-interface {p4, p3, v0}, LW0/s;->h(LW0/t;LW0/w;)I

    .line 49
    .line 50
    .line 51
    move-result p4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-nez p4, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_1
    move-exception p4

    .line 56
    goto :goto_6

    .line 57
    :catch_0
    move-exception p4

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    :try_start_2
    iget-wide p3, p3, LW0/n;->d:J

    .line 60
    .line 61
    iget-wide v0, p2, Ls0/m;->f:J

    .line 62
    .line 63
    :goto_3
    sub-long/2addr p3, v0

    .line 64
    long-to-int p2, p3

    .line 65
    iput p2, p0, LH0/l;->l0:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :goto_4
    :try_start_3
    iget-object v0, p0, LP0/f;->J:Lm0/t;

    .line 69
    .line 70
    iget v0, v0, Lm0/t;->f:I

    .line 71
    .line 72
    and-int/lit16 v0, v0, 0x4000

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object p4, p0, LH0/l;->j0:LH0/m;

    .line 77
    .line 78
    check-cast p4, LH0/b;

    .line 79
    .line 80
    iget-object p4, p4, LH0/b;->a:LW0/s;

    .line 81
    .line 82
    const-wide/16 v0, 0x0

    .line 83
    .line 84
    invoke-interface {p4, v0, v1, v0, v1}, LW0/s;->i(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    .line 87
    :try_start_4
    iget-wide p3, p3, LW0/n;->d:J

    .line 88
    .line 89
    iget-wide v0, p2, Ls0/m;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_5
    invoke-static {p1}, Ln0/c;->d(Ls0/i;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 97
    :goto_6
    :try_start_6
    iget-wide v0, p3, LW0/n;->d:J

    .line 98
    .line 99
    iget-wide p2, p2, Ls0/m;->f:J

    .line 100
    .line 101
    sub-long/2addr v0, p2

    .line 102
    long-to-int p2, v0

    .line 103
    iput p2, p0, LH0/l;->l0:I

    .line 104
    .line 105
    throw p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    :goto_7
    invoke-static {p1}, Ln0/c;->d(Ls0/i;)V

    .line 107
    .line 108
    .line 109
    throw p2
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, LH0/l;->s0:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LH0/l;->p0:Lz4/H;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v0, p0, LH0/l;->p0:Lz4/H;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final f()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LH0/l;->r0:J

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

.method public final g(Ls0/i;Ls0/m;Z)LW0/n;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p2}, Ls0/i;->a(Ls0/m;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v6

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v8, v1, LH0/l;->a0:Lp0/J;

    .line 12
    .line 13
    iget-boolean v13, v1, LH0/l;->Y:Z

    .line 14
    .line 15
    iget-wide v9, v1, LP0/f;->M:J

    .line 16
    .line 17
    iget-wide v11, v1, LH0/l;->i0:J

    .line 18
    .line 19
    invoke-virtual/range {v8 .. v13}, Lp0/J;->h(JJZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v2, Ljava/io/IOException;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v2

    .line 30
    :catch_1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_0
    :goto_0
    new-instance v8, LW0/n;

    .line 37
    .line 38
    iget-wide v4, v0, Ls0/m;->f:J

    .line 39
    .line 40
    move-object v2, v8

    .line 41
    move-object/from16 v3, p1

    .line 42
    .line 43
    invoke-direct/range {v2 .. v7}, LW0/n;-><init>(Lm0/j;JJ)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, LH0/l;->j0:LH0/m;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    if-nez v2, :cond_2e

    .line 51
    .line 52
    iget-object v2, v1, LH0/l;->f0:Lp0/E;

    .line 53
    .line 54
    iput v3, v8, LW0/n;->f:I

    .line 55
    .line 56
    const/16 v5, 0xa

    .line 57
    .line 58
    const/16 v6, 0x8

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {v2, v5}, Lp0/E;->I(I)V

    .line 61
    .line 62
    .line 63
    iget-object v7, v2, Lp0/E;->a:[B

    .line 64
    .line 65
    invoke-virtual {v8, v7, v3, v5, v3}, LW0/n;->e([BIIZ)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lp0/E;->C()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const v11, 0x494433

    .line 73
    .line 74
    .line 75
    if-eq v7, v11, :cond_2

    .line 76
    .line 77
    :catch_2
    :cond_1
    :goto_1
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    const/4 v7, 0x3

    .line 84
    invoke-virtual {v2, v7}, Lp0/E;->M(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lp0/E;->y()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    add-int/lit8 v11, v7, 0xa

    .line 92
    .line 93
    iget-object v12, v2, Lp0/E;->a:[B

    .line 94
    .line 95
    array-length v13, v12

    .line 96
    if-le v11, v13, :cond_3

    .line 97
    .line 98
    invoke-virtual {v2, v11}, Lp0/E;->I(I)V

    .line 99
    .line 100
    .line 101
    iget-object v11, v2, Lp0/E;->a:[B

    .line 102
    .line 103
    invoke-static {v12, v3, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v11, v2, Lp0/E;->a:[B

    .line 107
    .line 108
    invoke-virtual {v8, v11, v5, v7, v3}, LW0/n;->e([BIIZ)Z

    .line 109
    .line 110
    .line 111
    iget-object v5, v2, Lp0/E;->a:[B

    .line 112
    .line 113
    iget-object v11, v1, LH0/l;->e0:Li1/i;

    .line 114
    .line 115
    invoke-virtual {v11, v7, v5}, Li1/i;->u(I[B)Lm0/N;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-nez v5, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    iget-object v5, v5, Lm0/N;->a:[Lm0/M;

    .line 123
    .line 124
    array-length v7, v5

    .line 125
    const/4 v11, 0x0

    .line 126
    :goto_2
    if-ge v11, v7, :cond_1

    .line 127
    .line 128
    aget-object v12, v5, v11

    .line 129
    .line 130
    instance-of v13, v12, Li1/n;

    .line 131
    .line 132
    if-eqz v13, :cond_5

    .line 133
    .line 134
    check-cast v12, Li1/n;

    .line 135
    .line 136
    iget-object v13, v12, Li1/n;->b:Ljava/lang/String;

    .line 137
    .line 138
    const-string v14, "com.apple.streaming.transportStreamTimestamp"

    .line 139
    .line 140
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-eqz v13, :cond_5

    .line 145
    .line 146
    iget-object v5, v2, Lp0/E;->a:[B

    .line 147
    .line 148
    iget-object v7, v12, Li1/n;->c:[B

    .line 149
    .line 150
    invoke-static {v7, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v6}, Lp0/E;->K(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lp0/E;->t()J

    .line 160
    .line 161
    .line 162
    move-result-wide v11

    .line 163
    const-wide v13, 0x1ffffffffL

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    and-long/2addr v11, v13

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :goto_3
    iput v3, v8, LW0/n;->f:I

    .line 174
    .line 175
    iget-object v2, v1, LH0/l;->X:LH0/m;

    .line 176
    .line 177
    if-eqz v2, :cond_e

    .line 178
    .line 179
    check-cast v2, LH0/b;

    .line 180
    .line 181
    iget-object v0, v2, LH0/b;->a:LW0/s;

    .line 182
    .line 183
    invoke-interface {v0}, LW0/s;->b()LW0/s;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    instance-of v6, v5, LA1/F;

    .line 188
    .line 189
    if-nez v6, :cond_7

    .line 190
    .line 191
    instance-of v5, v5, Lo1/i;

    .line 192
    .line 193
    if-eqz v5, :cond_6

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_6
    const/4 v5, 0x0

    .line 197
    goto :goto_5

    .line 198
    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 199
    :goto_5
    xor-int/2addr v5, v4

    .line 200
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v0}, LW0/s;->b()LW0/s;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    if-ne v5, v0, :cond_8

    .line 208
    .line 209
    const/4 v5, 0x1

    .line 210
    goto :goto_6

    .line 211
    :cond_8
    const/4 v5, 0x0

    .line 212
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v7, "Can\'t recreate wrapped extractors. Outer type: "

    .line 215
    .line 216
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    instance-of v5, v0, LH0/w;

    .line 234
    .line 235
    if-eqz v5, :cond_9

    .line 236
    .line 237
    new-instance v0, LH0/w;

    .line 238
    .line 239
    iget-object v5, v2, LH0/b;->b:Lm0/t;

    .line 240
    .line 241
    iget-object v5, v5, Lm0/t;->d:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v6, v2, LH0/b;->c:Lp0/J;

    .line 244
    .line 245
    iget-object v7, v2, LH0/b;->d:Lq1/k;

    .line 246
    .line 247
    iget-boolean v15, v2, LH0/b;->e:Z

    .line 248
    .line 249
    invoke-direct {v0, v5, v6, v7, v15}, LH0/w;-><init>(Ljava/lang/String;Lp0/J;Lq1/k;Z)V

    .line 250
    .line 251
    .line 252
    :goto_7
    move-object/from16 v16, v0

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_9
    instance-of v5, v0, LA1/e;

    .line 256
    .line 257
    if-eqz v5, :cond_a

    .line 258
    .line 259
    new-instance v0, LA1/e;

    .line 260
    .line 261
    invoke-direct {v0}, LA1/e;-><init>()V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_a
    instance-of v5, v0, LA1/a;

    .line 266
    .line 267
    if-eqz v5, :cond_b

    .line 268
    .line 269
    new-instance v0, LA1/a;

    .line 270
    .line 271
    invoke-direct {v0}, LA1/a;-><init>()V

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_b
    instance-of v5, v0, LA1/c;

    .line 276
    .line 277
    if-eqz v5, :cond_c

    .line 278
    .line 279
    new-instance v0, LA1/c;

    .line 280
    .line 281
    invoke-direct {v0}, LA1/c;-><init>()V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_c
    instance-of v5, v0, Ln1/d;

    .line 286
    .line 287
    if-eqz v5, :cond_d

    .line 288
    .line 289
    new-instance v0, Ln1/d;

    .line 290
    .line 291
    invoke-direct {v0}, Ln1/d;-><init>()V

    .line 292
    .line 293
    .line 294
    goto :goto_7

    .line 295
    :goto_8
    new-instance v0, LH0/b;

    .line 296
    .line 297
    iget-object v5, v2, LH0/b;->d:Lq1/k;

    .line 298
    .line 299
    iget-boolean v6, v2, LH0/b;->e:Z

    .line 300
    .line 301
    iget-object v7, v2, LH0/b;->b:Lm0/t;

    .line 302
    .line 303
    iget-object v2, v2, LH0/b;->c:Lp0/J;

    .line 304
    .line 305
    move-object v15, v0

    .line 306
    move-object/from16 v17, v7

    .line 307
    .line 308
    move-object/from16 v18, v2

    .line 309
    .line 310
    move-object/from16 v19, v5

    .line 311
    .line 312
    move/from16 v20, v6

    .line 313
    .line 314
    invoke-direct/range {v15 .. v20}, LH0/b;-><init>(LW0/s;Lm0/t;Lp0/J;Lq1/k;Z)V

    .line 315
    .line 316
    .line 317
    move-wide/from16 v27, v11

    .line 318
    .line 319
    :goto_9
    const/4 v9, 0x0

    .line 320
    goto/16 :goto_1b

    .line 321
    .line 322
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const-string v3, "Unexpected extractor type for recreation: "

    .line 333
    .line 334
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v2

    .line 342
    :cond_e
    invoke-interface/range {p1 .. p1}, Ls0/i;->k()Ljava/util/Map;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iget-object v5, v1, LH0/l;->b0:LH0/k;

    .line 347
    .line 348
    check-cast v5, LH0/d;

    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-object v7, v1, LP0/f;->J:Lm0/t;

    .line 354
    .line 355
    iget-object v15, v7, Lm0/t;->o:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v15}, LZ3/H;->k(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v15

    .line 361
    const-string v9, "Content-Type"

    .line 362
    .line 363
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Ljava/util/List;

    .line 368
    .line 369
    if-eqz v2, :cond_10

    .line 370
    .line 371
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    if-eqz v10, :cond_f

    .line 376
    .line 377
    goto :goto_a

    .line 378
    :cond_f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Ljava/lang/String;

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_10
    :goto_a
    const/4 v2, 0x0

    .line 386
    :goto_b
    invoke-static {v2}, LZ3/H;->k(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    iget-object v0, v0, Ls0/m;->a:Landroid/net/Uri;

    .line 391
    .line 392
    invoke-static {v0}, LZ3/H;->l(Landroid/net/Uri;)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    new-instance v10, Ljava/util/ArrayList;

    .line 397
    .line 398
    const/4 v9, 0x7

    .line 399
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    .line 401
    .line 402
    invoke-static {v15, v10}, LH0/d;->a(ILjava/util/ArrayList;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v2, v10}, LH0/d;->a(ILjava/util/ArrayList;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v0, v10}, LH0/d;->a(ILjava/util/ArrayList;)V

    .line 409
    .line 410
    .line 411
    sget-object v16, LH0/d;->f:[I

    .line 412
    .line 413
    const/4 v13, 0x0

    .line 414
    :goto_c
    if-ge v13, v9, :cond_11

    .line 415
    .line 416
    aget v14, v16, v13

    .line 417
    .line 418
    invoke-static {v14, v10}, LH0/d;->a(ILjava/util/ArrayList;)V

    .line 419
    .line 420
    .line 421
    add-int/lit8 v13, v13, 0x1

    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_11
    iput v3, v8, LW0/n;->f:I

    .line 425
    .line 426
    const/4 v13, 0x0

    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    :goto_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 430
    .line 431
    .line 432
    move-result v14

    .line 433
    iget-object v3, v1, LH0/l;->a0:Lp0/J;

    .line 434
    .line 435
    if-ge v13, v14, :cond_27

    .line 436
    .line 437
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    check-cast v14, Ljava/lang/Integer;

    .line 442
    .line 443
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result v14

    .line 447
    const/16 v6, 0xb

    .line 448
    .line 449
    if-eqz v14, :cond_23

    .line 450
    .line 451
    if-eq v14, v4, :cond_22

    .line 452
    .line 453
    const/4 v4, 0x2

    .line 454
    if-eq v14, v4, :cond_21

    .line 455
    .line 456
    if-eq v14, v9, :cond_20

    .line 457
    .line 458
    sget-object v4, Lq1/k;->E:LF2/G;

    .line 459
    .line 460
    iget-object v9, v1, LH0/l;->c0:Ljava/util/List;

    .line 461
    .line 462
    move-object/from16 v18, v4

    .line 463
    .line 464
    const/16 v4, 0x8

    .line 465
    .line 466
    if-eq v14, v4, :cond_1a

    .line 467
    .line 468
    if-eq v14, v6, :cond_13

    .line 469
    .line 470
    const/16 v9, 0xd

    .line 471
    .line 472
    if-eq v14, v9, :cond_12

    .line 473
    .line 474
    move-object/from16 v20, v10

    .line 475
    .line 476
    move-wide/from16 v27, v11

    .line 477
    .line 478
    const/4 v4, 0x0

    .line 479
    goto/16 :goto_19

    .line 480
    .line 481
    :cond_12
    new-instance v9, LH0/w;

    .line 482
    .line 483
    iget-object v4, v5, LH0/d;->b:Lq1/k;

    .line 484
    .line 485
    iget-boolean v6, v5, LH0/d;->c:Z

    .line 486
    .line 487
    move-object/from16 v20, v10

    .line 488
    .line 489
    iget-object v10, v7, Lm0/t;->d:Ljava/lang/String;

    .line 490
    .line 491
    invoke-direct {v9, v10, v3, v4, v6}, LH0/w;-><init>(Ljava/lang/String;Lp0/J;Lq1/k;Z)V

    .line 492
    .line 493
    .line 494
    move-object v4, v9

    .line 495
    :goto_e
    move-wide/from16 v27, v11

    .line 496
    .line 497
    goto/16 :goto_19

    .line 498
    .line 499
    :cond_13
    move-object/from16 v20, v10

    .line 500
    .line 501
    iget-object v4, v5, LH0/d;->b:Lq1/k;

    .line 502
    .line 503
    iget-boolean v6, v5, LH0/d;->c:Z

    .line 504
    .line 505
    iget v10, v5, LH0/d;->a:I

    .line 506
    .line 507
    or-int/lit8 v21, v10, 0x10

    .line 508
    .line 509
    if-eqz v9, :cond_14

    .line 510
    .line 511
    or-int/lit8 v21, v10, 0x30

    .line 512
    .line 513
    goto :goto_f

    .line 514
    :cond_14
    iget-boolean v9, v5, LH0/d;->e:Z

    .line 515
    .line 516
    if-eqz v9, :cond_15

    .line 517
    .line 518
    new-instance v9, Lm0/s;

    .line 519
    .line 520
    invoke-direct {v9}, Lm0/s;-><init>()V

    .line 521
    .line 522
    .line 523
    const-string v10, "application/cea-608"

    .line 524
    .line 525
    invoke-static {v10}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    iput-object v10, v9, Lm0/s;->n:Ljava/lang/String;

    .line 530
    .line 531
    new-instance v10, Lm0/t;

    .line 532
    .line 533
    invoke-direct {v10, v9}, Lm0/t;-><init>(Lm0/s;)V

    .line 534
    .line 535
    .line 536
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 537
    .line 538
    .line 539
    move-result-object v9

    .line 540
    goto :goto_f

    .line 541
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    :goto_f
    iget-object v10, v7, Lm0/t;->k:Ljava/lang/String;

    .line 546
    .line 547
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result v22

    .line 551
    if-nez v22, :cond_18

    .line 552
    .line 553
    move-object/from16 v22, v4

    .line 554
    .line 555
    const-string v4, "audio/mp4a-latm"

    .line 556
    .line 557
    invoke-static {v10, v4}, Lm0/O;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    if-eqz v4, :cond_16

    .line 562
    .line 563
    goto :goto_10

    .line 564
    :cond_16
    or-int/lit8 v21, v21, 0x2

    .line 565
    .line 566
    :goto_10
    const-string v4, "video/avc"

    .line 567
    .line 568
    invoke-static {v10, v4}, Lm0/O;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    if-eqz v4, :cond_17

    .line 573
    .line 574
    :goto_11
    move/from16 v4, v21

    .line 575
    .line 576
    goto :goto_12

    .line 577
    :cond_17
    or-int/lit8 v21, v21, 0x4

    .line 578
    .line 579
    goto :goto_11

    .line 580
    :cond_18
    move-object/from16 v22, v4

    .line 581
    .line 582
    goto :goto_11

    .line 583
    :goto_12
    if-nez v6, :cond_19

    .line 584
    .line 585
    move-object/from16 v24, v18

    .line 586
    .line 587
    goto :goto_13

    .line 588
    :cond_19
    move-object/from16 v24, v22

    .line 589
    .line 590
    :goto_13
    xor-int/lit8 v23, v6, 0x1

    .line 591
    .line 592
    new-instance v6, LA1/F;

    .line 593
    .line 594
    new-instance v10, LA1/g;

    .line 595
    .line 596
    invoke-direct {v10, v4, v9}, LA1/g;-><init>(ILjava/util/List;)V

    .line 597
    .line 598
    .line 599
    const/16 v22, 0x2

    .line 600
    .line 601
    move-object/from16 v21, v6

    .line 602
    .line 603
    move-object/from16 v25, v3

    .line 604
    .line 605
    move-object/from16 v26, v10

    .line 606
    .line 607
    invoke-direct/range {v21 .. v26}, LA1/F;-><init>(IILq1/k;Lp0/J;LA1/g;)V

    .line 608
    .line 609
    .line 610
    move-object v4, v6

    .line 611
    goto :goto_e

    .line 612
    :cond_1a
    move-object/from16 v20, v10

    .line 613
    .line 614
    iget-object v4, v5, LH0/d;->b:Lq1/k;

    .line 615
    .line 616
    iget-boolean v6, v5, LH0/d;->c:Z

    .line 617
    .line 618
    iget v10, v5, LH0/d;->d:I

    .line 619
    .line 620
    move-object/from16 v21, v4

    .line 621
    .line 622
    iget-object v4, v7, Lm0/t;->l:Lm0/N;

    .line 623
    .line 624
    if-nez v4, :cond_1b

    .line 625
    .line 626
    move-wide/from16 v27, v11

    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_1b
    move-wide/from16 v27, v11

    .line 630
    .line 631
    const/4 v11, 0x0

    .line 632
    :goto_14
    iget-object v12, v4, Lm0/N;->a:[Lm0/M;

    .line 633
    .line 634
    move-object/from16 v22, v4

    .line 635
    .line 636
    array-length v4, v12

    .line 637
    if-ge v11, v4, :cond_1d

    .line 638
    .line 639
    aget-object v4, v12, v11

    .line 640
    .line 641
    instance-of v12, v4, LH0/v;

    .line 642
    .line 643
    if-eqz v12, :cond_1c

    .line 644
    .line 645
    check-cast v4, LH0/v;

    .line 646
    .line 647
    iget-object v4, v4, LH0/v;->c:Ljava/util/List;

    .line 648
    .line 649
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 650
    .line 651
    .line 652
    move-result v4

    .line 653
    const/4 v11, 0x1

    .line 654
    xor-int/2addr v4, v11

    .line 655
    if-eqz v4, :cond_1d

    .line 656
    .line 657
    const/4 v4, 0x4

    .line 658
    goto :goto_16

    .line 659
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    .line 660
    .line 661
    move-object/from16 v4, v22

    .line 662
    .line 663
    goto :goto_14

    .line 664
    :cond_1d
    :goto_15
    const/4 v4, 0x0

    .line 665
    :goto_16
    if-nez v6, :cond_1e

    .line 666
    .line 667
    or-int/lit8 v4, v4, 0x20

    .line 668
    .line 669
    move-object/from16 v22, v18

    .line 670
    .line 671
    goto :goto_17

    .line 672
    :cond_1e
    move-object/from16 v22, v21

    .line 673
    .line 674
    :goto_17
    invoke-static {v10}, Lo1/i;->a(I)I

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    or-int v23, v4, v6

    .line 679
    .line 680
    new-instance v4, Lo1/i;

    .line 681
    .line 682
    if-eqz v9, :cond_1f

    .line 683
    .line 684
    move-object/from16 v25, v9

    .line 685
    .line 686
    goto :goto_18

    .line 687
    :cond_1f
    sget-object v6, Lz4/d0;->K:Lz4/d0;

    .line 688
    .line 689
    move-object/from16 v25, v6

    .line 690
    .line 691
    :goto_18
    const/16 v26, 0x0

    .line 692
    .line 693
    move-object/from16 v21, v4

    .line 694
    .line 695
    move-object/from16 v24, v3

    .line 696
    .line 697
    invoke-direct/range {v21 .. v26}, Lo1/i;-><init>(Lq1/k;ILp0/J;Ljava/util/List;LW0/L;)V

    .line 698
    .line 699
    .line 700
    goto :goto_19

    .line 701
    :cond_20
    move-object/from16 v20, v10

    .line 702
    .line 703
    move-wide/from16 v27, v11

    .line 704
    .line 705
    new-instance v4, Ln1/d;

    .line 706
    .line 707
    const-wide/16 v9, 0x0

    .line 708
    .line 709
    invoke-direct {v4, v9, v10}, Ln1/d;-><init>(J)V

    .line 710
    .line 711
    .line 712
    goto :goto_19

    .line 713
    :cond_21
    move-object/from16 v20, v10

    .line 714
    .line 715
    move-wide/from16 v27, v11

    .line 716
    .line 717
    new-instance v4, LA1/e;

    .line 718
    .line 719
    invoke-direct {v4}, LA1/e;-><init>()V

    .line 720
    .line 721
    .line 722
    goto :goto_19

    .line 723
    :cond_22
    move-object/from16 v20, v10

    .line 724
    .line 725
    move-wide/from16 v27, v11

    .line 726
    .line 727
    new-instance v4, LA1/c;

    .line 728
    .line 729
    invoke-direct {v4}, LA1/c;-><init>()V

    .line 730
    .line 731
    .line 732
    goto :goto_19

    .line 733
    :cond_23
    move-object/from16 v20, v10

    .line 734
    .line 735
    move-wide/from16 v27, v11

    .line 736
    .line 737
    new-instance v4, LA1/a;

    .line 738
    .line 739
    invoke-direct {v4}, LA1/a;-><init>()V

    .line 740
    .line 741
    .line 742
    :goto_19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    :try_start_2
    invoke-interface {v4, v8}, LW0/s;->g(LW0/t;)Z

    .line 746
    .line 747
    .line 748
    move-result v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    const/4 v9, 0x0

    .line 750
    iput v9, v8, LW0/n;->f:I

    .line 751
    .line 752
    if-eqz v6, :cond_24

    .line 753
    .line 754
    new-instance v0, LH0/b;

    .line 755
    .line 756
    iget-object v2, v5, LH0/d;->b:Lq1/k;

    .line 757
    .line 758
    iget-boolean v5, v5, LH0/d;->c:Z

    .line 759
    .line 760
    move-object v15, v0

    .line 761
    move-object/from16 v16, v4

    .line 762
    .line 763
    move-object/from16 v17, v7

    .line 764
    .line 765
    move-object/from16 v18, v3

    .line 766
    .line 767
    move-object/from16 v19, v2

    .line 768
    .line 769
    move/from16 v20, v5

    .line 770
    .line 771
    invoke-direct/range {v15 .. v20}, LH0/b;-><init>(LW0/s;Lm0/t;Lp0/J;Lq1/k;Z)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_9

    .line 775
    .line 776
    :cond_24
    const/4 v9, 0x0

    .line 777
    goto :goto_1a

    .line 778
    :catchall_0
    move-exception v0

    .line 779
    move-object v2, v0

    .line 780
    const/4 v9, 0x0

    .line 781
    iput v9, v8, LW0/n;->f:I

    .line 782
    .line 783
    throw v2

    .line 784
    :catch_3
    const/4 v9, 0x0

    .line 785
    iput v9, v8, LW0/n;->f:I

    .line 786
    .line 787
    :goto_1a
    if-nez v16, :cond_26

    .line 788
    .line 789
    if-eq v14, v15, :cond_25

    .line 790
    .line 791
    if-eq v14, v2, :cond_25

    .line 792
    .line 793
    if-eq v14, v0, :cond_25

    .line 794
    .line 795
    const/16 v3, 0xb

    .line 796
    .line 797
    if-ne v14, v3, :cond_26

    .line 798
    .line 799
    :cond_25
    move-object/from16 v16, v4

    .line 800
    .line 801
    :cond_26
    add-int/lit8 v13, v13, 0x1

    .line 802
    .line 803
    move-object/from16 v10, v20

    .line 804
    .line 805
    move-wide/from16 v11, v27

    .line 806
    .line 807
    const/4 v3, 0x0

    .line 808
    const/4 v4, 0x1

    .line 809
    const/16 v6, 0x8

    .line 810
    .line 811
    const/4 v9, 0x7

    .line 812
    goto/16 :goto_d

    .line 813
    .line 814
    :cond_27
    move-wide/from16 v27, v11

    .line 815
    .line 816
    const/4 v9, 0x0

    .line 817
    new-instance v0, LH0/b;

    .line 818
    .line 819
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    iget-object v2, v5, LH0/d;->b:Lq1/k;

    .line 823
    .line 824
    iget-boolean v4, v5, LH0/d;->c:Z

    .line 825
    .line 826
    move-object v15, v0

    .line 827
    move-object/from16 v17, v7

    .line 828
    .line 829
    move-object/from16 v18, v3

    .line 830
    .line 831
    move-object/from16 v19, v2

    .line 832
    .line 833
    move/from16 v20, v4

    .line 834
    .line 835
    invoke-direct/range {v15 .. v20}, LH0/b;-><init>(LW0/s;Lm0/t;Lp0/J;Lq1/k;Z)V

    .line 836
    .line 837
    .line 838
    :goto_1b
    iput-object v0, v1, LH0/l;->j0:LH0/m;

    .line 839
    .line 840
    iget-object v0, v0, LH0/b;->a:LW0/s;

    .line 841
    .line 842
    invoke-interface {v0}, LW0/s;->b()LW0/s;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    instance-of v2, v0, LA1/e;

    .line 847
    .line 848
    if-nez v2, :cond_2a

    .line 849
    .line 850
    instance-of v2, v0, LA1/a;

    .line 851
    .line 852
    if-nez v2, :cond_2a

    .line 853
    .line 854
    instance-of v2, v0, LA1/c;

    .line 855
    .line 856
    if-nez v2, :cond_2a

    .line 857
    .line 858
    instance-of v0, v0, Ln1/d;

    .line 859
    .line 860
    if-eqz v0, :cond_28

    .line 861
    .line 862
    goto :goto_1d

    .line 863
    :cond_28
    iget-object v0, v1, LH0/l;->k0:LH0/t;

    .line 864
    .line 865
    iget-wide v2, v0, LH0/t;->B0:J

    .line 866
    .line 867
    const-wide/16 v4, 0x0

    .line 868
    .line 869
    cmp-long v6, v2, v4

    .line 870
    .line 871
    if-eqz v6, :cond_2d

    .line 872
    .line 873
    iput-wide v4, v0, LH0/t;->B0:J

    .line 874
    .line 875
    iget-object v0, v0, LH0/t;->b0:[LH0/s;

    .line 876
    .line 877
    array-length v2, v0

    .line 878
    const/4 v3, 0x0

    .line 879
    :goto_1c
    if-ge v3, v2, :cond_2d

    .line 880
    .line 881
    aget-object v6, v0, v3

    .line 882
    .line 883
    iget-wide v10, v6, LO0/T;->F:J

    .line 884
    .line 885
    cmp-long v7, v10, v4

    .line 886
    .line 887
    if-eqz v7, :cond_29

    .line 888
    .line 889
    iput-wide v4, v6, LO0/T;->F:J

    .line 890
    .line 891
    const/4 v7, 0x1

    .line 892
    iput-boolean v7, v6, LO0/T;->z:Z

    .line 893
    .line 894
    :cond_29
    add-int/lit8 v3, v3, 0x1

    .line 895
    .line 896
    goto :goto_1c

    .line 897
    :cond_2a
    :goto_1d
    iget-object v0, v1, LH0/l;->k0:LH0/t;

    .line 898
    .line 899
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    cmp-long v4, v27, v2

    .line 905
    .line 906
    if-eqz v4, :cond_2b

    .line 907
    .line 908
    iget-object v2, v1, LH0/l;->a0:Lp0/J;

    .line 909
    .line 910
    move-wide/from16 v11, v27

    .line 911
    .line 912
    invoke-virtual {v2, v11, v12}, Lp0/J;->b(J)J

    .line 913
    .line 914
    .line 915
    move-result-wide v2

    .line 916
    goto :goto_1e

    .line 917
    :cond_2b
    iget-wide v2, v1, LP0/f;->M:J

    .line 918
    .line 919
    :goto_1e
    iget-wide v4, v0, LH0/t;->B0:J

    .line 920
    .line 921
    cmp-long v6, v4, v2

    .line 922
    .line 923
    if-eqz v6, :cond_2d

    .line 924
    .line 925
    iput-wide v2, v0, LH0/t;->B0:J

    .line 926
    .line 927
    iget-object v0, v0, LH0/t;->b0:[LH0/s;

    .line 928
    .line 929
    array-length v4, v0

    .line 930
    const/4 v5, 0x0

    .line 931
    :goto_1f
    if-ge v5, v4, :cond_2d

    .line 932
    .line 933
    aget-object v6, v0, v5

    .line 934
    .line 935
    iget-wide v10, v6, LO0/T;->F:J

    .line 936
    .line 937
    cmp-long v7, v10, v2

    .line 938
    .line 939
    if-eqz v7, :cond_2c

    .line 940
    .line 941
    iput-wide v2, v6, LO0/T;->F:J

    .line 942
    .line 943
    const/4 v7, 0x1

    .line 944
    iput-boolean v7, v6, LO0/T;->z:Z

    .line 945
    .line 946
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    .line 947
    .line 948
    goto :goto_1f

    .line 949
    :cond_2d
    iget-object v0, v1, LH0/l;->k0:LH0/t;

    .line 950
    .line 951
    iget-object v0, v0, LH0/t;->d0:Ljava/util/HashSet;

    .line 952
    .line 953
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 954
    .line 955
    .line 956
    iget-object v0, v1, LH0/l;->j0:LH0/m;

    .line 957
    .line 958
    iget-object v2, v1, LH0/l;->k0:LH0/t;

    .line 959
    .line 960
    check-cast v0, LH0/b;

    .line 961
    .line 962
    iget-object v0, v0, LH0/b;->a:LW0/s;

    .line 963
    .line 964
    invoke-interface {v0, v2}, LW0/s;->d(LW0/u;)V

    .line 965
    .line 966
    .line 967
    goto :goto_20

    .line 968
    :cond_2e
    const/4 v9, 0x0

    .line 969
    :goto_20
    iget-object v0, v1, LH0/l;->k0:LH0/t;

    .line 970
    .line 971
    iget-object v2, v0, LH0/t;->C0:Lm0/n;

    .line 972
    .line 973
    iget-object v3, v1, LH0/l;->d0:Lm0/n;

    .line 974
    .line 975
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    if-nez v2, :cond_30

    .line 980
    .line 981
    iput-object v3, v0, LH0/t;->C0:Lm0/n;

    .line 982
    .line 983
    :goto_21
    iget-object v2, v0, LH0/t;->b0:[LH0/s;

    .line 984
    .line 985
    array-length v4, v2

    .line 986
    if-ge v9, v4, :cond_30

    .line 987
    .line 988
    iget-object v4, v0, LH0/t;->u0:[Z

    .line 989
    .line 990
    aget-boolean v4, v4, v9

    .line 991
    .line 992
    if-eqz v4, :cond_2f

    .line 993
    .line 994
    aget-object v2, v2, v9

    .line 995
    .line 996
    iput-object v3, v2, LH0/s;->I:Lm0/n;

    .line 997
    .line 998
    const/4 v4, 0x1

    .line 999
    iput-boolean v4, v2, LO0/T;->z:Z

    .line 1000
    .line 1001
    goto :goto_22

    .line 1002
    :cond_2f
    const/4 v4, 0x1

    .line 1003
    :goto_22
    add-int/lit8 v9, v9, 0x1

    .line 1004
    .line 1005
    goto :goto_21

    .line 1006
    :cond_30
    return-object v8
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, LH0/l;->k0:LH0/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LH0/l;->j0:LH0/m;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, LH0/l;->X:LH0/m;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast v0, LH0/b;

    .line 16
    .line 17
    iget-object v0, v0, LH0/b;->a:LW0/s;

    .line 18
    .line 19
    invoke-interface {v0}, LW0/s;->b()LW0/s;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, LA1/F;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    instance-of v0, v0, Lo1/i;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, LH0/l;->X:LH0/m;

    .line 32
    .line 33
    iput-object v0, p0, LH0/l;->j0:LH0/m;

    .line 34
    .line 35
    iput-boolean v1, p0, LH0/l;->m0:Z

    .line 36
    .line 37
    :cond_1
    iget-boolean v0, p0, LH0/l;->m0:Z

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, LH0/l;->V:Ls0/i;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, LH0/l;->W:Ls0/m;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-boolean v3, p0, LH0/l;->h0:Z

    .line 53
    .line 54
    invoke-virtual {p0, v0, v2, v3, v1}, LH0/l;->c(Ls0/i;Ls0/m;ZZ)V

    .line 55
    .line 56
    .line 57
    iput v1, p0, LH0/l;->l0:I

    .line 58
    .line 59
    iput-boolean v1, p0, LH0/l;->m0:Z

    .line 60
    .line 61
    :goto_0
    iget-boolean v0, p0, LH0/l;->n0:Z

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    iget-boolean v0, p0, LH0/l;->Z:Z

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-boolean v0, p0, LH0/l;->g0:Z

    .line 71
    .line 72
    iget-object v2, p0, LP0/f;->O:Ls0/M;

    .line 73
    .line 74
    iget-object v3, p0, LP0/f;->H:Ls0/m;

    .line 75
    .line 76
    invoke-virtual {p0, v2, v3, v0, v1}, LH0/l;->c(Ls0/i;Ls0/m;ZZ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-boolean v0, p0, LH0/l;->n0:Z

    .line 80
    .line 81
    xor-int/2addr v0, v1

    .line 82
    iput-boolean v0, p0, LH0/l;->o0:Z

    .line 83
    .line 84
    :cond_4
    return-void
.end method
