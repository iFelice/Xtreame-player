.class public final LB0/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements LO0/v;
.implements LR0/x;
.implements LB0/t0;
.implements LB0/n;
.implements LB0/x0;
.implements LB0/f;
.implements LU0/B;


# static fields
.field public static final L0:J

.field public static final synthetic M0:I


# instance fields
.field public A0:LB0/W;

.field public B0:J

.field public C0:J

.field public D0:I

.field public E0:Z

.field public F0:LB0/w;

.field public final G:[LB0/F0;

.field public G0:J

.field public final H:[LB0/D0;

.field public H0:LB0/A;

.field public final I:[Z

.field public I0:J

.field public final J:LR0/w;

.field public J0:Z

.field public final K:LR0/y;

.field public K0:F

.field public final L:LB0/b0;

.field public final M:LS0/c;

.field public final N:Lp0/I;

.field public final O:LB0/w0;

.field public final P:Landroid/os/Looper;

.field public final Q:Lm0/e0;

.field public final R:Lm0/d0;

.field public final S:J

.field public final T:Z

.field public final U:LB0/o;

.field public final V:Ljava/util/ArrayList;

.field public final W:Lp0/f;

.field public final X:LB0/H;

.field public final Y:LB0/i0;

.field public final Z:LB0/u0;

.field public final a0:LB0/k;

.field public final b0:J

.field public final c0:LC0/I;

.field public final d0:LC0/a;

.field public final e0:Lp0/I;

.field public final f0:Z

.field public final g0:LB0/g;

.field public h0:LB0/I0;

.field public i0:LB0/H0;

.field public j0:Z

.field public k0:Z

.field public l0:LB0/W;

.field public m0:LB0/v0;

.field public n0:LB0/U;

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:J

.field public t0:Z

.field public u0:I

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, LB0/X;->L0:J

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[LB0/h;[LB0/h;LR0/w;LR0/y;LB0/b0;LS0/c;IZLC0/a;LB0/I0;LB0/k;JLandroid/os/Looper;Lp0/G;LB0/H;LC0/I;LB0/M;)V
    .locals 15

    .line 1
    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p16

    move-object/from16 v7, p18

    sget-object v8, LB0/A;->a:LB0/A;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v9, v1, LB0/X;->I0:J

    move-object/from16 v11, p17

    .line 4
    iput-object v11, v1, LB0/X;->X:LB0/H;

    .line 5
    iput-object v2, v1, LB0/X;->J:LR0/w;

    move-object/from16 v11, p5

    .line 6
    iput-object v11, v1, LB0/X;->K:LR0/y;

    .line 7
    iput-object v3, v1, LB0/X;->L:LB0/b0;

    .line 8
    iput-object v4, v1, LB0/X;->M:LS0/c;

    move/from16 v12, p8

    .line 9
    iput v12, v1, LB0/X;->u0:I

    move/from16 v12, p9

    .line 10
    iput-boolean v12, v1, LB0/X;->v0:Z

    move-object/from16 v12, p11

    .line 11
    iput-object v12, v1, LB0/X;->h0:LB0/I0;

    move-object/from16 v12, p12

    .line 12
    iput-object v12, v1, LB0/X;->a0:LB0/k;

    move-wide/from16 v12, p13

    .line 13
    iput-wide v12, v1, LB0/X;->b0:J

    const/4 v12, 0x0

    .line 14
    iput-boolean v12, v1, LB0/X;->p0:Z

    .line 15
    iput-object v6, v1, LB0/X;->W:Lp0/f;

    .line 16
    iput-object v7, v1, LB0/X;->c0:LC0/I;

    .line 17
    iput-object v8, v1, LB0/X;->H0:LB0/A;

    .line 18
    iput-object v5, v1, LB0/X;->d0:LC0/a;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 19
    iput v8, v1, LB0/X;->K0:F

    .line 20
    sget-object v8, LB0/H0;->f:LB0/H0;

    iput-object v8, v1, LB0/X;->i0:LB0/H0;

    .line 21
    iput-wide v9, v1, LB0/X;->G0:J

    .line 22
    iput-wide v9, v1, LB0/X;->s0:J

    .line 23
    check-cast v3, LB0/m;

    .line 24
    iget-wide v8, v3, LB0/m;->h:J

    .line 25
    iput-wide v8, v1, LB0/X;->S:J

    .line 26
    iget-boolean v3, v3, LB0/m;->i:Z

    .line 27
    iput-boolean v3, v1, LB0/X;->T:Z

    .line 28
    sget-object v3, Lm0/f0;->a:Lm0/c0;

    .line 29
    invoke-static/range {p5 .. p5}, LB0/v0;->k(LR0/y;)LB0/v0;

    move-result-object v3

    iput-object v3, v1, LB0/X;->m0:LB0/v0;

    .line 30
    new-instance v8, LB0/U;

    invoke-direct {v8, v3, v12}, LB0/U;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v1, LB0/X;->n0:LB0/U;

    .line 31
    array-length v3, v0

    new-array v3, v3, [LB0/D0;

    iput-object v3, v1, LB0/X;->H:[LB0/D0;

    .line 32
    array-length v3, v0

    new-array v3, v3, [Z

    iput-object v3, v1, LB0/X;->I:[Z

    .line 33
    move-object v3, v2

    check-cast v3, LR0/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    array-length v8, v0

    new-array v8, v8, [LB0/F0;

    iput-object v8, v1, LB0/X;->G:[LB0/F0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 35
    :goto_0
    array-length v10, v0

    const/4 v11, 0x1

    if-ge v8, v10, :cond_1

    .line 36
    aget-object v10, v0, v8

    invoke-virtual {v10, v8, v7, v6}, LB0/h;->init(ILC0/I;Lp0/f;)V

    .line 37
    iget-object v10, v1, LB0/X;->H:[LB0/D0;

    aget-object v13, v0, v8

    invoke-virtual {v13}, LB0/h;->getCapabilities()LB0/D0;

    move-result-object v13

    aput-object v13, v10, v8

    .line 38
    iget-object v10, v1, LB0/X;->H:[LB0/D0;

    aget-object v10, v10, v8

    invoke-interface {v10, v3}, LB0/D0;->setListener(LB0/C0;)V

    .line 39
    aget-object v10, p3, v8

    if-eqz v10, :cond_0

    .line 40
    invoke-virtual {v10, v8, v7, v6}, LB0/h;->init(ILC0/I;Lp0/f;)V

    const/4 v9, 0x1

    .line 41
    :cond_0
    iget-object v10, v1, LB0/X;->G:[LB0/F0;

    new-instance v11, LB0/F0;

    aget-object v13, v0, v8

    aget-object v14, p3, v8

    invoke-direct {v11, v13, v14, v8}, LB0/F0;-><init>(LB0/h;LB0/h;I)V

    aput-object v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iput-boolean v9, v1, LB0/X;->f0:Z

    .line 43
    new-instance v0, LB0/o;

    invoke-direct {v0, p0, v6}, LB0/o;-><init>(LB0/n;Lp0/G;)V

    iput-object v0, v1, LB0/X;->U:LB0/o;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, LB0/X;->V:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lm0/e0;

    invoke-direct {v0}, Lm0/e0;-><init>()V

    iput-object v0, v1, LB0/X;->Q:Lm0/e0;

    .line 46
    new-instance v0, Lm0/d0;

    invoke-direct {v0}, Lm0/d0;-><init>()V

    iput-object v0, v1, LB0/X;->R:Lm0/d0;

    .line 47
    iget-object v0, v2, LR0/w;->a:LR0/x;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 48
    iput-object v1, v2, LR0/w;->a:LR0/x;

    .line 49
    iput-object v4, v2, LR0/w;->b:LS0/c;

    .line 50
    iput-boolean v11, v1, LB0/X;->E0:Z

    const/4 v0, 0x0

    move-object/from16 v2, p15

    .line 51
    invoke-virtual {v6, v2, v0}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object v0

    iput-object v0, v1, LB0/X;->e0:Lp0/I;

    .line 52
    new-instance v2, LB0/i0;

    new-instance v3, LB0/x;

    const/16 v4, 0xf

    invoke-direct {v3, p0, v4}, LB0/x;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v5, v0, v3}, LB0/i0;-><init>(LC0/a;Lp0/I;LB0/x;)V

    iput-object v2, v1, LB0/X;->Y:LB0/i0;

    .line 53
    new-instance v2, LB0/u0;

    invoke-direct {v2, p0, v5, v0, v7}, LB0/u0;-><init>(LB0/t0;LC0/a;Lp0/I;LC0/I;)V

    iput-object v2, v1, LB0/X;->Z:LB0/u0;

    .line 54
    new-instance v0, LB0/w0;

    invoke-direct {v0, v12}, LB0/w0;-><init>(I)V

    iput-object v0, v1, LB0/X;->O:LB0/w0;

    .line 55
    iget-object v2, v0, LB0/w0;->I:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    iget-object v3, v0, LB0/w0;->J:Ljava/lang/Object;

    check-cast v3, Landroid/os/Looper;

    if-nez v3, :cond_4

    .line 57
    iget v3, v0, LB0/w0;->H:I

    if-nez v3, :cond_3

    iget-object v3, v0, LB0/w0;->K:Ljava/lang/Object;

    check-cast v3, Landroid/os/HandlerThread;

    if-nez v3, :cond_3

    const/4 v12, 0x1

    :cond_3
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 58
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ExoPlayer:Playback"

    const/16 v5, -0x10

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, LB0/w0;->K:Ljava/lang/Object;

    .line 59
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 60
    iget-object v3, v0, LB0/w0;->K:Ljava/lang/Object;

    check-cast v3, Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, v0, LB0/w0;->J:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 61
    :cond_4
    :goto_2
    iget v3, v0, LB0/w0;->H:I

    add-int/2addr v3, v11

    iput v3, v0, LB0/w0;->H:I

    .line 62
    iget-object v0, v0, LB0/w0;->J:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iput-object v0, v1, LB0/X;->P:Landroid/os/Looper;

    .line 64
    invoke-virtual {v6, v0, p0}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object v2

    iput-object v2, v1, LB0/X;->N:Lp0/I;

    .line 65
    new-instance v3, LB0/g;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v0, p0}, LB0/g;-><init>(Landroid/content/Context;Landroid/os/Looper;LB0/f;)V

    iput-object v3, v1, LB0/X;->g0:LB0/g;

    .line 66
    new-instance v0, LB0/Q;

    move-object/from16 v3, p19

    invoke-direct {v0, p0, v3}, LB0/Q;-><init>(LB0/X;LB0/M;)V

    const/16 v3, 0x23

    .line 67
    invoke-virtual {v2, v3, v0}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lp0/H;->b()V

    return-void

    .line 69
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static R(Lm0/f0;LB0/W;ZIZLm0/e0;Lm0/d0;)Landroid/util/Pair;
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    iget-object v1, v0, LB0/W;->a:Lm0/f0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lm0/f0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v9

    .line 15
    :cond_0
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v10, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v10, v1

    .line 24
    :goto_0
    :try_start_0
    iget v4, v0, LB0/W;->b:I

    .line 25
    .line 26
    iget-wide v5, v0, LB0/W;->c:J

    .line 27
    .line 28
    move-object v1, v10

    .line 29
    move-object/from16 v2, p5

    .line 30
    .line 31
    move-object/from16 v3, p6

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0, v10}, Lm0/f0;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v11, -0x1

    .line 51
    if-eq v2, v11, :cond_4

    .line 52
    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v10, v2, v8}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-boolean v2, v2, Lm0/d0;->f:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget v2, v8, Lm0/d0;->c:I

    .line 64
    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    move-object/from16 v12, p5

    .line 68
    .line 69
    invoke-virtual {v10, v2, v12, v3, v4}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v2, v2, Lm0/e0;->n:I

    .line 74
    .line 75
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {v10, v3}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-ne v2, v3, :cond_3

    .line 82
    .line 83
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p0, v1, v8}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v3, v1, Lm0/d0;->c:I

    .line 90
    .line 91
    iget-wide v4, v0, LB0/W;->c:J

    .line 92
    .line 93
    move-object v0, p0

    .line 94
    move-object/from16 v1, p5

    .line 95
    .line 96
    move-object/from16 v2, p6

    .line 97
    .line 98
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_3
    return-object v1

    .line 103
    :cond_4
    move-object/from16 v12, p5

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 108
    .line 109
    move-object/from16 v0, p5

    .line 110
    .line 111
    move-object/from16 v1, p6

    .line 112
    .line 113
    move/from16 v2, p3

    .line 114
    .line 115
    move/from16 v3, p4

    .line 116
    .line 117
    move-object v5, v10

    .line 118
    move-object v6, p0

    .line 119
    invoke-static/range {v0 .. v6}, LB0/X;->S(Lm0/e0;Lm0/d0;IZLjava/lang/Object;Lm0/f0;Lm0/f0;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eq v3, v11, :cond_5

    .line 124
    .line 125
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    move-object v0, p0

    .line 131
    move-object/from16 v1, p5

    .line 132
    .line 133
    move-object/from16 v2, p6

    .line 134
    .line 135
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :catch_0
    :cond_5
    return-object v9
.end method

.method public static S(Lm0/e0;Lm0/d0;IZLjava/lang/Object;Lm0/f0;Lm0/f0;)I
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v0, p4

    .line 5
    .line 6
    move-object/from16 v8, p5

    .line 7
    .line 8
    move-object/from16 v9, p6

    .line 9
    .line 10
    invoke-virtual {v8, v0, v7}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v1, v1, Lm0/d0;->c:I

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    invoke-virtual {v8, v1, p0, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lm0/e0;->a:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lm0/f0;->p()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ge v4, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v9, v4, p0, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v5, v5, Lm0/e0;->a:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    return v4

    .line 45
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v8, v0}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual/range {p5 .. p5}, Lm0/f0;->i()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    const/4 v12, -0x1

    .line 57
    move v1, v0

    .line 58
    const/4 v13, 0x0

    .line 59
    const/4 v14, -0x1

    .line 60
    :goto_1
    if-ge v13, v11, :cond_3

    .line 61
    .line 62
    if-ne v14, v12, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p5

    .line 65
    .line 66
    move-object/from16 v2, p1

    .line 67
    .line 68
    move-object v3, p0

    .line 69
    move/from16 v4, p2

    .line 70
    .line 71
    move/from16 v5, p3

    .line 72
    .line 73
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->d(ILm0/d0;Lm0/e0;IZ)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v1, v12, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v8, v1}, Lm0/f0;->m(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v9, v0}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    add-int/lit8 v13, v13, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    if-ne v14, v12, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {v9, v14, v7, v10}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v12, v0, Lm0/d0;->c:I

    .line 99
    .line 100
    :goto_3
    return v12
.end method

.method public static z(LB0/f0;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, LB0/f0;->a:LO0/w;

    .line 5
    .line 6
    iget-boolean v2, p0, LB0/f0;->e:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, LO0/w;->h()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, LB0/f0;->c:[LO0/U;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v3, :cond_2

    .line 19
    .line 20
    aget-object v5, v2, v4

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-interface {v5}, LO0/U;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    iget-boolean p0, p0, LB0/f0;->e:Z

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    invoke-interface {v1}, LO0/W;->e()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    :goto_2
    const-wide/high16 v3, -0x8000000000000000L

    .line 42
    .line 43
    cmp-long p0, v1, v3

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    :catch_0
    :cond_4
    return v0
.end method


# virtual methods
.method public final A(ILO0/y;)Z
    .locals 5

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v1, v0, LB0/i0;->k:LB0/f0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_6

    .line 7
    .line 8
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 9
    .line 10
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 11
    .line 12
    invoke-virtual {v1, p2}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_0
    iget-object p2, p0, LB0/X;->G:[LB0/F0;

    .line 20
    .line 21
    aget-object p1, p2, p1

    .line 22
    .line 23
    iget-object p2, v0, LB0/i0;->k:LB0/f0;

    .line 24
    .line 25
    iget v0, p1, LB0/F0;->d:I

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, p2}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p1, LB0/F0;->a:LB0/h;

    .line 45
    .line 46
    if-ne v0, v1, :cond_3

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v0, 0x0

    .line 51
    :goto_2
    iget v1, p1, LB0/F0;->d:I

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    if-ne v1, v4, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1, p2}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object p1, p1, LB0/F0;->c:LB0/h;

    .line 61
    .line 62
    if-ne p2, p1, :cond_4

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 p1, 0x0

    .line 67
    :goto_3
    if-nez v0, :cond_5

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    :cond_5
    const/4 v2, 0x1

    .line 72
    :cond_6
    :goto_4
    return v2
.end method

.method public final A0(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LB0/X;->r0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, LB0/X;->W:Lp0/f;

    .line 8
    .line 9
    check-cast p1, Lp0/G;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    :goto_0
    iput-wide p1, p0, LB0/X;->s0:J

    .line 25
    .line 26
    return-void
.end method

.method public final B()Z
    .locals 5

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 4
    .line 5
    iget-object v1, v0, LB0/f0;->g:LB0/g0;

    .line 6
    .line 7
    iget-wide v1, v1, LB0/g0;->e:J

    .line 8
    .line 9
    iget-boolean v0, v0, LB0/f0;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v1, v3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 23
    .line 24
    iget-wide v3, v0, LB0/v0;->s:J

    .line 25
    .line 26
    cmp-long v0, v3, v1

    .line 27
    .line 28
    if-ltz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, LB0/X;->p0()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public final C()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LB0/X;->Y:LB0/i0;

    .line 4
    .line 5
    iget-object v1, v1, LB0/i0;->l:LB0/f0;

    .line 6
    .line 7
    invoke-static {v1}, LB0/X;->z(LB0/f0;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, LB0/X;->Y:LB0/i0;

    .line 20
    .line 21
    iget-object v1, v1, LB0/i0;->l:LB0/f0;

    .line 22
    .line 23
    iget-boolean v7, v1, LB0/f0;->e:Z

    .line 24
    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    move-wide v7, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v7, v1, LB0/f0;->a:LO0/w;

    .line 30
    .line 31
    invoke-interface {v7}, LO0/W;->e()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    :goto_0
    invoke-virtual {v0, v7, v8}, LB0/X;->n(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    iget-object v9, v0, LB0/X;->Y:LB0/i0;

    .line 40
    .line 41
    iget-object v9, v9, LB0/i0;->i:LB0/f0;

    .line 42
    .line 43
    if-ne v1, v9, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v9, v1, LB0/f0;->g:LB0/g0;

    .line 47
    .line 48
    iget-wide v9, v9, LB0/g0;->b:J

    .line 49
    .line 50
    :goto_1
    iget-object v9, v0, LB0/X;->m0:LB0/v0;

    .line 51
    .line 52
    iget-object v9, v9, LB0/v0;->a:Lm0/f0;

    .line 53
    .line 54
    iget-object v10, v1, LB0/f0;->g:LB0/g0;

    .line 55
    .line 56
    iget-object v10, v10, LB0/g0;->a:LO0/y;

    .line 57
    .line 58
    invoke-virtual {v0, v9, v10}, LB0/X;->q0(Lm0/f0;LO0/y;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_3

    .line 63
    .line 64
    iget-object v9, v0, LB0/X;->a0:LB0/k;

    .line 65
    .line 66
    iget-wide v9, v9, LB0/k;->i:J

    .line 67
    .line 68
    move-wide v15, v9

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :goto_2
    new-instance v14, LB0/a0;

    .line 76
    .line 77
    iget-object v10, v0, LB0/X;->c0:LC0/I;

    .line 78
    .line 79
    iget-object v9, v0, LB0/X;->m0:LB0/v0;

    .line 80
    .line 81
    iget-object v9, v9, LB0/v0;->a:Lm0/f0;

    .line 82
    .line 83
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 84
    .line 85
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 86
    .line 87
    iget-object v1, v0, LB0/X;->U:LB0/o;

    .line 88
    .line 89
    invoke-virtual {v1}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget v13, v1, Lm0/S;->a:F

    .line 94
    .line 95
    iget-object v1, v0, LB0/X;->m0:LB0/v0;

    .line 96
    .line 97
    iget-boolean v1, v1, LB0/v0;->l:Z

    .line 98
    .line 99
    iget-boolean v1, v0, LB0/X;->r0:Z

    .line 100
    .line 101
    move-object v9, v14

    .line 102
    move-wide v11, v7

    .line 103
    move-object v2, v14

    .line 104
    move v14, v1

    .line 105
    invoke-direct/range {v9 .. v16}, LB0/a0;-><init>(LC0/I;JFZJ)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, LB0/X;->L:LB0/b0;

    .line 109
    .line 110
    check-cast v1, LB0/m;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, LB0/m;->c(LB0/a0;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iget-object v3, v0, LB0/X;->Y:LB0/i0;

    .line 117
    .line 118
    iget-object v3, v3, LB0/i0;->i:LB0/f0;

    .line 119
    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    iget-boolean v9, v3, LB0/f0;->e:Z

    .line 123
    .line 124
    if-eqz v9, :cond_5

    .line 125
    .line 126
    const-wide/32 v9, 0x7a120

    .line 127
    .line 128
    .line 129
    cmp-long v11, v7, v9

    .line 130
    .line 131
    if-gez v11, :cond_5

    .line 132
    .line 133
    iget-wide v7, v0, LB0/X;->S:J

    .line 134
    .line 135
    cmp-long v9, v7, v4

    .line 136
    .line 137
    if-gtz v9, :cond_4

    .line 138
    .line 139
    iget-boolean v7, v0, LB0/X;->T:Z

    .line 140
    .line 141
    if-eqz v7, :cond_5

    .line 142
    .line 143
    :cond_4
    iget-object v1, v3, LB0/f0;->a:LO0/w;

    .line 144
    .line 145
    iget-object v3, v0, LB0/X;->m0:LB0/v0;

    .line 146
    .line 147
    iget-wide v7, v3, LB0/v0;->s:J

    .line 148
    .line 149
    invoke-interface {v1, v7, v8, v6}, LO0/w;->v(JZ)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, LB0/X;->L:LB0/b0;

    .line 153
    .line 154
    check-cast v1, LB0/m;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, LB0/m;->c(LB0/a0;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    :cond_5
    :goto_3
    iput-boolean v1, v0, LB0/X;->t0:Z

    .line 161
    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    iget-object v1, v0, LB0/X;->Y:LB0/i0;

    .line 165
    .line 166
    iget-object v1, v1, LB0/i0;->l:LB0/f0;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    new-instance v2, LB0/c0;

    .line 172
    .line 173
    invoke-direct {v2}, LB0/c0;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-wide v7, v0, LB0/X;->B0:J

    .line 177
    .line 178
    iget-wide v9, v1, LB0/f0;->p:J

    .line 179
    .line 180
    sub-long/2addr v7, v9

    .line 181
    iput-wide v7, v2, LB0/c0;->a:J

    .line 182
    .line 183
    iget-object v3, v0, LB0/X;->U:LB0/o;

    .line 184
    .line 185
    invoke-virtual {v3}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iget v3, v3, Lm0/S;->a:F

    .line 190
    .line 191
    const/4 v7, 0x0

    .line 192
    const/4 v8, 0x1

    .line 193
    cmpl-float v7, v3, v7

    .line 194
    .line 195
    if-gtz v7, :cond_7

    .line 196
    .line 197
    const v7, -0x800001

    .line 198
    .line 199
    .line 200
    cmpl-float v7, v3, v7

    .line 201
    .line 202
    if-nez v7, :cond_6

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_6
    const/4 v7, 0x0

    .line 206
    goto :goto_5

    .line 207
    :cond_7
    :goto_4
    const/4 v7, 0x1

    .line 208
    :goto_5
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 209
    .line 210
    .line 211
    iput v3, v2, LB0/c0;->b:F

    .line 212
    .line 213
    iget-wide v9, v0, LB0/X;->s0:J

    .line 214
    .line 215
    cmp-long v3, v9, v4

    .line 216
    .line 217
    if-gez v3, :cond_9

    .line 218
    .line 219
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    cmp-long v5, v9, v3

    .line 225
    .line 226
    if-nez v5, :cond_8

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_8
    const/4 v3, 0x0

    .line 230
    goto :goto_7

    .line 231
    :cond_9
    :goto_6
    const/4 v3, 0x1

    .line 232
    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 233
    .line 234
    .line 235
    iput-wide v9, v2, LB0/c0;->c:J

    .line 236
    .line 237
    new-instance v3, LB0/d0;

    .line 238
    .line 239
    invoke-direct {v3, v2}, LB0/d0;-><init>(LB0/c0;)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v1, LB0/f0;->m:LB0/f0;

    .line 243
    .line 244
    if-nez v2, :cond_a

    .line 245
    .line 246
    const/4 v6, 0x1

    .line 247
    :cond_a
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v1, LB0/f0;->a:LO0/w;

    .line 251
    .line 252
    invoke-interface {v1, v3}, LO0/W;->g(LB0/d0;)Z

    .line 253
    .line 254
    .line 255
    :cond_b
    invoke-virtual/range {p0 .. p0}, LB0/X;->u0()V

    .line 256
    .line 257
    .line 258
    return-void
.end method

.method public final D()V
    .locals 10

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, LB0/i0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, LB0/i0;->m:LB0/f0;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    iget-boolean v1, v0, LB0/f0;->d:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, v0, LB0/f0;->e:Z

    .line 15
    .line 16
    if-eqz v1, :cond_a

    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, LB0/f0;->a:LO0/w;

    .line 19
    .line 20
    invoke-interface {v1}, LO0/W;->k()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_a

    .line 25
    .line 26
    iget-object v2, p0, LB0/X;->m0:LB0/v0;

    .line 27
    .line 28
    iget-object v2, v2, LB0/v0;->a:Lm0/f0;

    .line 29
    .line 30
    iget-object v2, v0, LB0/f0;->g:LB0/g0;

    .line 31
    .line 32
    iget-object v2, v2, LB0/g0;->a:LO0/y;

    .line 33
    .line 34
    iget-boolean v2, v0, LB0/f0;->e:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, LO0/W;->u()J

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v2, p0, LB0/X;->L:LB0/b0;

    .line 42
    .line 43
    check-cast v2, LB0/m;

    .line 44
    .line 45
    iget-object v2, v2, LB0/m;->j:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, LB0/l;

    .line 66
    .line 67
    iget-boolean v3, v3, LB0/l;->a:Z

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_3
    iget-boolean v2, v0, LB0/f0;->d:Z

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    iget-object v2, v0, LB0/f0;->g:LB0/g0;

    .line 78
    .line 79
    iget-wide v4, v2, LB0/g0;->b:J

    .line 80
    .line 81
    iput-boolean v3, v0, LB0/f0;->d:Z

    .line 82
    .line 83
    invoke-interface {v1, p0, v4, v5}, LO0/w;->m(LO0/v;J)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_4
    new-instance v2, LB0/c0;

    .line 88
    .line 89
    invoke-direct {v2}, LB0/c0;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-wide v4, p0, LB0/X;->B0:J

    .line 93
    .line 94
    iget-wide v6, v0, LB0/f0;->p:J

    .line 95
    .line 96
    sub-long/2addr v4, v6

    .line 97
    iput-wide v4, v2, LB0/c0;->a:J

    .line 98
    .line 99
    iget-object v4, p0, LB0/X;->U:LB0/o;

    .line 100
    .line 101
    invoke-virtual {v4}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget v4, v4, Lm0/S;->a:F

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    cmpl-float v5, v4, v5

    .line 110
    .line 111
    if-gtz v5, :cond_6

    .line 112
    .line 113
    const v5, -0x800001

    .line 114
    .line 115
    .line 116
    cmpl-float v5, v4, v5

    .line 117
    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    const/4 v5, 0x0

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    :goto_0
    const/4 v5, 0x1

    .line 124
    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 125
    .line 126
    .line 127
    iput v4, v2, LB0/c0;->b:F

    .line 128
    .line 129
    iget-wide v4, p0, LB0/X;->s0:J

    .line 130
    .line 131
    const-wide/16 v7, 0x0

    .line 132
    .line 133
    cmp-long v9, v4, v7

    .line 134
    .line 135
    if-gez v9, :cond_8

    .line 136
    .line 137
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    cmp-long v9, v4, v7

    .line 143
    .line 144
    if-nez v9, :cond_7

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    const/4 v7, 0x0

    .line 148
    goto :goto_3

    .line 149
    :cond_8
    :goto_2
    const/4 v7, 0x1

    .line 150
    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 151
    .line 152
    .line 153
    iput-wide v4, v2, LB0/c0;->c:J

    .line 154
    .line 155
    new-instance v4, LB0/d0;

    .line 156
    .line 157
    invoke-direct {v4, v2}, LB0/d0;-><init>(LB0/c0;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v0, LB0/f0;->m:LB0/f0;

    .line 161
    .line 162
    if-nez v0, :cond_9

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    const/4 v3, 0x0

    .line 166
    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v4}, LO0/W;->g(LB0/d0;)Z

    .line 170
    .line 171
    .line 172
    :cond_a
    :goto_5
    return-void
.end method

.method public final E()V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 4
    .line 5
    iget-boolean v2, v0, LB0/U;->d:Z

    .line 6
    .line 7
    iget-object v3, v0, LB0/U;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, LB0/v0;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq v3, v1, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    or-int/2addr v2, v3

    .line 18
    iput-boolean v2, v0, LB0/U;->d:Z

    .line 19
    .line 20
    iput-object v1, v0, LB0/U;->f:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, LB0/X;->X:LB0/H;

    .line 25
    .line 26
    iget-object v1, v1, LB0/H;->G:LB0/O;

    .line 27
    .line 28
    iget-object v2, v1, LB0/O;->P:Lp0/I;

    .line 29
    .line 30
    new-instance v3, Lf/t;

    .line 31
    .line 32
    const/16 v5, 0x10

    .line 33
    .line 34
    invoke-direct {v3, v5, v1, v0}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    new-instance v0, LB0/U;

    .line 41
    .line 42
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 43
    .line 44
    invoke-direct {v0, v1, v4}, LB0/U;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, LB0/X;->n0:LB0/U;

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final F(I)V
    .locals 10

    .line 1
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, LB0/X;->Y:LB0/i0;

    .line 6
    .line 7
    iget-object v1, v1, LB0/i0;->i:LB0/f0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, LB0/h;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception v1

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v1

    .line 26
    :goto_0
    iget-object v0, v0, LB0/F0;->a:LB0/h;

    .line 27
    .line 28
    invoke-virtual {v0}, LB0/h;->getTrackType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    throw v1

    .line 40
    :cond_1
    :goto_1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 41
    .line 42
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 43
    .line 44
    iget-object v0, v0, LB0/f0;->o:LR0/y;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Disabling track due to error: "

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v0, LR0/y;->c:[LR0/t;

    .line 54
    .line 55
    aget-object v3, v3, p1

    .line 56
    .line 57
    check-cast v3, LR0/c;

    .line 58
    .line 59
    invoke-virtual {v3}, LR0/c;->l()Lm0/t;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Lm0/t;->d(Lm0/t;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "ExoPlayerImplInternal"

    .line 75
    .line 76
    invoke-static {v3, v2, v1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    new-instance v5, LR0/y;

    .line 80
    .line 81
    iget-object v1, v0, LR0/y;->b:[LB0/E0;

    .line 82
    .line 83
    invoke-virtual {v1}, [LB0/E0;->clone()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, [LB0/E0;

    .line 88
    .line 89
    iget-object v2, v0, LR0/y;->c:[LR0/t;

    .line 90
    .line 91
    invoke-virtual {v2}, [LR0/t;->clone()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, [LR0/t;

    .line 96
    .line 97
    iget-object v3, v0, LR0/y;->d:Lm0/m0;

    .line 98
    .line 99
    iget-object v0, v0, LR0/y;->e:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-direct {v5, v1, v2, v3, v0}, LR0/y;-><init>([LB0/E0;[LR0/t;Lm0/m0;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v5, LR0/y;->b:[LB0/E0;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    aput-object v1, v0, p1

    .line 108
    .line 109
    iget-object v0, v5, LR0/y;->c:[LR0/t;

    .line 110
    .line 111
    aput-object v1, v0, p1

    .line 112
    .line 113
    invoke-virtual {p0, p1}, LB0/X;->g(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, LB0/X;->Y:LB0/i0;

    .line 117
    .line 118
    iget-object v4, p1, LB0/i0;->i:LB0/f0;

    .line 119
    .line 120
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 121
    .line 122
    iget-wide v6, p1, LB0/v0;->s:J

    .line 123
    .line 124
    iget-object p1, v4, LB0/f0;->j:[LB0/D0;

    .line 125
    .line 126
    array-length p1, p1

    .line 127
    new-array v9, p1, [Z

    .line 128
    .line 129
    const/4 v8, 0x0

    .line 130
    invoke-virtual/range {v4 .. v9}, LB0/f0;->a(LR0/y;JZ[Z)J

    .line 131
    .line 132
    .line 133
    :goto_2
    return-void
.end method

.method public final G(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->I:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    if-eq v1, p2, :cond_0

    .line 6
    .line 7
    aput-boolean p2, v0, p1

    .line 8
    .line 9
    new-instance v0, LB0/P;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, LB0/P;-><init>(LB0/X;IZ)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, LB0/X;->e0:Lp0/I;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->Z:LB0/u0;

    .line 2
    .line 3
    invoke-virtual {v0}, LB0/u0;->b()Lm0/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, LB0/X;->v(Lm0/f0;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    throw v0
.end method

.method public final J()V
    .locals 10

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, v0, v0, v1}, LB0/X;->N(ZZZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, LB0/X;->L:LB0/b0;

    .line 12
    .line 13
    check-cast v2, LB0/m;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-wide v5, v2, LB0/m;->k:J

    .line 27
    .line 28
    const-wide/16 v7, -0x1

    .line 29
    .line 30
    cmp-long v9, v5, v7

    .line 31
    .line 32
    if-eqz v9, :cond_1

    .line 33
    .line 34
    cmp-long v7, v5, v3

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 42
    :goto_1
    const-string v6, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    .line 43
    .line 44
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iput-wide v3, v2, LB0/m;->k:J

    .line 48
    .line 49
    iget-object v3, v2, LB0/m;->j:Ljava/util/HashMap;

    .line 50
    .line 51
    iget-object v4, p0, LB0/X;->c0:LC0/I;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_2

    .line 58
    .line 59
    new-instance v5, LB0/l;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, LB0/l;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 v4, -0x1

    .line 77
    iget v2, v2, LB0/m;->f:I

    .line 78
    .line 79
    if-ne v2, v4, :cond_3

    .line 80
    .line 81
    const/high16 v2, 0xc80000

    .line 82
    .line 83
    :cond_3
    iput v2, v3, LB0/l;->b:I

    .line 84
    .line 85
    iput-boolean v0, v3, LB0/l;->a:Z

    .line 86
    .line 87
    iget-object v2, p0, LB0/X;->m0:LB0/v0;

    .line 88
    .line 89
    iget-object v2, v2, LB0/v0;->a:Lm0/f0;

    .line 90
    .line 91
    invoke-virtual {v2}, Lm0/f0;->q()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, 0x2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    const/4 v2, 0x4

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v2, 0x2

    .line 101
    :goto_2
    invoke-virtual {p0, v2}, LB0/X;->l0(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, LB0/X;->m0:LB0/v0;

    .line 105
    .line 106
    iget-boolean v4, v2, LB0/v0;->l:Z

    .line 107
    .line 108
    iget v5, v2, LB0/v0;->e:I

    .line 109
    .line 110
    iget-object v6, p0, LB0/X;->g0:LB0/g;

    .line 111
    .line 112
    invoke-virtual {v6, v5, v4}, LB0/g;->d(IZ)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    iget v6, v2, LB0/v0;->n:I

    .line 117
    .line 118
    iget v2, v2, LB0/v0;->m:I

    .line 119
    .line 120
    invoke-virtual {p0, v5, v6, v2, v4}, LB0/X;->x0(IIIZ)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, LB0/X;->M:LS0/c;

    .line 124
    .line 125
    check-cast v2, LS0/f;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v4, p0, LB0/X;->Z:LB0/u0;

    .line 131
    .line 132
    iget-boolean v5, v4, LB0/u0;->k:Z

    .line 133
    .line 134
    xor-int/2addr v5, v1

    .line 135
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 136
    .line 137
    .line 138
    iput-object v2, v4, LB0/u0;->l:Ls0/O;

    .line 139
    .line 140
    :goto_3
    iget-object v2, v4, LB0/u0;->b:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-ge v0, v5, :cond_5

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, LB0/s0;

    .line 153
    .line 154
    invoke-virtual {v4, v2}, LB0/u0;->e(LB0/s0;)V

    .line 155
    .line 156
    .line 157
    iget-object v5, v4, LB0/u0;->g:Ljava/util/HashSet;

    .line 158
    .line 159
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    iput-boolean v1, v4, LB0/u0;->k:Z

    .line 166
    .line 167
    iget-object v0, p0, LB0/X;->N:Lp0/I;

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Lp0/I;->e(I)Z

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final K(Lp0/i;)V
    .locals 8

    .line 1
    iget-object v0, p0, LB0/X;->O:LB0/w0;

    .line 2
    .line 3
    iget-object v1, p0, LB0/X;->N:Lp0/I;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v2, v4, v2, v4}, LB0/X;->N(ZZZZ)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    iget-object v6, p0, LB0/X;->G:[LB0/F0;

    .line 13
    .line 14
    array-length v7, v6

    .line 15
    if-ge v5, v7, :cond_1

    .line 16
    .line 17
    iget-object v7, p0, LB0/X;->H:[LB0/D0;

    .line 18
    .line 19
    aget-object v7, v7, v5

    .line 20
    .line 21
    invoke-interface {v7}, LB0/D0;->clearListener()V

    .line 22
    .line 23
    .line 24
    aget-object v6, v6, v5

    .line 25
    .line 26
    iget-object v7, v6, LB0/F0;->a:LB0/h;

    .line 27
    .line 28
    invoke-virtual {v7}, LB0/h;->release()V

    .line 29
    .line 30
    .line 31
    iput-boolean v4, v6, LB0/F0;->e:Z

    .line 32
    .line 33
    iget-object v7, v6, LB0/F0;->c:LB0/h;

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {v7}, LB0/h;->release()V

    .line 38
    .line 39
    .line 40
    iput-boolean v4, v6, LB0/F0;->f:Z

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v5, p0, LB0/X;->L:LB0/b0;

    .line 46
    .line 47
    iget-object v6, p0, LB0/X;->c0:LC0/I;

    .line 48
    .line 49
    check-cast v5, LB0/m;

    .line 50
    .line 51
    iget-object v7, v5, LB0/m;->j:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, LB0/m;->d()V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v6, v5, LB0/m;->j:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    const-wide/16 v6, -0x1

    .line 71
    .line 72
    iput-wide v6, v5, LB0/m;->k:J

    .line 73
    .line 74
    :cond_3
    iget-object v5, p0, LB0/X;->g0:LB0/g;

    .line 75
    .line 76
    iput-object v3, v5, LB0/g;->c:LB0/f;

    .line 77
    .line 78
    invoke-virtual {v5}, LB0/g;->a()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, LB0/g;->c(I)V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, LB0/X;->J:LR0/w;

    .line 85
    .line 86
    invoke-virtual {v4}, LR0/w;->a()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2}, LB0/X;->l0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    iget-object v1, v1, Lp0/I;->a:Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, LB0/w0;->e()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lp0/i;->f()Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v2

    .line 105
    iget-object v1, v1, Lp0/I;->a:Landroid/os/Handler;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, LB0/w0;->e()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lp0/i;->f()Z

    .line 114
    .line 115
    .line 116
    throw v2
.end method

.method public final L(IILO0/X;)V
    .locals 4

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LB0/X;->Z:LB0/u0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    if-gt p1, p2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, LB0/u0;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-gt p2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 28
    .line 29
    .line 30
    iput-object p3, v0, LB0/u0;->j:LO0/X;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, LB0/u0;->g(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, LB0/u0;->b()Lm0/f0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, v2}, LB0/X;->v(Lm0/f0;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final M()V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, LB0/X;->U:LB0/o;

    .line 4
    .line 5
    invoke-virtual {v0}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lm0/S;->a:F

    .line 10
    .line 11
    iget-object v1, v10, LB0/X;->Y:LB0/i0;

    .line 12
    .line 13
    iget-object v2, v1, LB0/i0;->i:LB0/f0;

    .line 14
    .line 15
    iget-object v1, v1, LB0/i0;->j:LB0/f0;

    .line 16
    .line 17
    const/4 v11, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    :goto_0
    if-eqz v4, :cond_13

    .line 22
    .line 23
    iget-boolean v5, v4, LB0/f0;->e:Z

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :cond_0
    iget-object v5, v10, LB0/X;->m0:LB0/v0;

    .line 30
    .line 31
    iget-object v5, v5, LB0/v0;->a:Lm0/f0;

    .line 32
    .line 33
    invoke-virtual {v4, v0, v5}, LB0/f0;->j(FLm0/f0;)LR0/y;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, v10, LB0/X;->Y:LB0/i0;

    .line 38
    .line 39
    iget-object v6, v6, LB0/i0;->i:LB0/f0;

    .line 40
    .line 41
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    move-object v13, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v13, v3

    .line 46
    :goto_1
    iget-object v3, v4, LB0/f0;->o:LR0/y;

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    iget-object v6, v3, LR0/y;->c:[LR0/t;

    .line 52
    .line 53
    array-length v6, v6

    .line 54
    iget-object v7, v5, LR0/y;->c:[LR0/t;

    .line 55
    .line 56
    array-length v8, v7

    .line 57
    if-eq v6, v8, :cond_2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    const/4 v6, 0x0

    .line 61
    :goto_2
    array-length v8, v7

    .line 62
    if-ge v6, v8, :cond_4

    .line 63
    .line 64
    invoke-virtual {v5, v3, v6}, LR0/y;->a(LR0/y;I)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-nez v8, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    if-ne v4, v1, :cond_5

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    :cond_5
    iget-object v4, v4, LB0/f0;->m:LB0/f0;

    .line 78
    .line 79
    move-object v3, v13

    .line 80
    goto :goto_0

    .line 81
    :cond_6
    :goto_3
    const/4 v8, 0x4

    .line 82
    if-eqz v2, :cond_10

    .line 83
    .line 84
    iget-object v0, v10, LB0/X;->Y:LB0/i0;

    .line 85
    .line 86
    iget-object v6, v0, LB0/i0;->i:LB0/f0;

    .line 87
    .line 88
    invoke-virtual {v0, v6}, LB0/i0;->n(LB0/f0;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    and-int/2addr v0, v11

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    const/16 v16, 0x1

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_7
    const/16 v16, 0x0

    .line 99
    .line 100
    :goto_4
    iget-object v0, v10, LB0/X;->G:[LB0/F0;

    .line 101
    .line 102
    array-length v0, v0

    .line 103
    new-array v7, v0, [Z

    .line 104
    .line 105
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 109
    .line 110
    iget-wide v14, v0, LB0/v0;->s:J

    .line 111
    .line 112
    move-object v12, v6

    .line 113
    move-object/from16 v17, v7

    .line 114
    .line 115
    invoke-virtual/range {v12 .. v17}, LB0/f0;->a(LR0/y;JZ[Z)J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 120
    .line 121
    iget v1, v0, LB0/v0;->e:I

    .line 122
    .line 123
    if-eq v1, v8, :cond_8

    .line 124
    .line 125
    iget-wide v0, v0, LB0/v0;->s:J

    .line 126
    .line 127
    cmp-long v2, v12, v0

    .line 128
    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    const/4 v14, 0x1

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    const/4 v14, 0x0

    .line 134
    :goto_5
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 135
    .line 136
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 137
    .line 138
    iget-wide v4, v0, LB0/v0;->c:J

    .line 139
    .line 140
    iget-wide v2, v0, LB0/v0;->d:J

    .line 141
    .line 142
    const/4 v15, 0x5

    .line 143
    move-object/from16 v0, p0

    .line 144
    .line 145
    move-wide/from16 v16, v2

    .line 146
    .line 147
    move-wide v2, v12

    .line 148
    move-object v11, v6

    .line 149
    move-object/from16 v18, v7

    .line 150
    .line 151
    move-wide/from16 v6, v16

    .line 152
    .line 153
    move v8, v14

    .line 154
    move v9, v15

    .line 155
    invoke-virtual/range {v0 .. v9}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 160
    .line 161
    if-eqz v14, :cond_9

    .line 162
    .line 163
    invoke-virtual {v10, v12, v13}, LB0/X;->P(J)V

    .line 164
    .line 165
    .line 166
    :cond_9
    invoke-virtual/range {p0 .. p0}, LB0/X;->f()V

    .line 167
    .line 168
    .line 169
    iget-object v0, v10, LB0/X;->G:[LB0/F0;

    .line 170
    .line 171
    array-length v0, v0

    .line 172
    new-array v0, v0, [Z

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    :goto_6
    iget-object v1, v10, LB0/X;->G:[LB0/F0;

    .line 176
    .line 177
    array-length v2, v1

    .line 178
    if-ge v9, v2, :cond_f

    .line 179
    .line 180
    aget-object v1, v1, v9

    .line 181
    .line 182
    invoke-virtual {v1}, LB0/F0;->b()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    iget-object v2, v10, LB0/X;->G:[LB0/F0;

    .line 187
    .line 188
    aget-object v2, v2, v9

    .line 189
    .line 190
    invoke-virtual {v2}, LB0/F0;->g()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    aput-boolean v2, v0, v9

    .line 195
    .line 196
    iget-object v2, v10, LB0/X;->G:[LB0/F0;

    .line 197
    .line 198
    aget-object v2, v2, v9

    .line 199
    .line 200
    iget-object v3, v11, LB0/f0;->c:[LO0/U;

    .line 201
    .line 202
    aget-object v3, v3, v9

    .line 203
    .line 204
    iget-object v4, v10, LB0/X;->U:LB0/o;

    .line 205
    .line 206
    iget-wide v5, v10, LB0/X;->B0:J

    .line 207
    .line 208
    aget-boolean v7, v18, v9

    .line 209
    .line 210
    iget-object v8, v2, LB0/F0;->a:LB0/h;

    .line 211
    .line 212
    invoke-static {v8}, LB0/F0;->h(LB0/h;)Z

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    if-eqz v12, :cond_b

    .line 217
    .line 218
    invoke-virtual {v8}, LB0/h;->getStream()LO0/U;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    if-eq v3, v12, :cond_a

    .line 223
    .line 224
    invoke-virtual {v2, v8, v4}, LB0/F0;->a(LB0/h;LB0/o;)V

    .line 225
    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_a
    if-eqz v7, :cond_b

    .line 229
    .line 230
    invoke-virtual {v8, v5, v6}, LB0/h;->resetPosition(J)V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_7
    iget-object v8, v2, LB0/F0;->c:LB0/h;

    .line 234
    .line 235
    if-eqz v8, :cond_d

    .line 236
    .line 237
    invoke-static {v8}, LB0/F0;->h(LB0/h;)Z

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    if-eqz v12, :cond_d

    .line 242
    .line 243
    invoke-virtual {v8}, LB0/h;->getStream()LO0/U;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    if-eq v3, v12, :cond_c

    .line 248
    .line 249
    invoke-virtual {v2, v8, v4}, LB0/F0;->a(LB0/h;LB0/o;)V

    .line 250
    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_c
    if-eqz v7, :cond_d

    .line 254
    .line 255
    invoke-virtual {v8, v5, v6}, LB0/h;->resetPosition(J)V

    .line 256
    .line 257
    .line 258
    :cond_d
    :goto_8
    iget-object v2, v10, LB0/X;->G:[LB0/F0;

    .line 259
    .line 260
    aget-object v2, v2, v9

    .line 261
    .line 262
    invoke-virtual {v2}, LB0/F0;->b()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    sub-int v2, v1, v2

    .line 267
    .line 268
    if-lez v2, :cond_e

    .line 269
    .line 270
    const/4 v2, 0x0

    .line 271
    invoke-virtual {v10, v9, v2}, LB0/X;->G(IZ)V

    .line 272
    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_e
    const/4 v2, 0x0

    .line 276
    :goto_9
    iget v3, v10, LB0/X;->z0:I

    .line 277
    .line 278
    iget-object v4, v10, LB0/X;->G:[LB0/F0;

    .line 279
    .line 280
    aget-object v4, v4, v9

    .line 281
    .line 282
    invoke-virtual {v4}, LB0/F0;->b()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    sub-int/2addr v1, v4

    .line 287
    sub-int/2addr v3, v1

    .line 288
    iput v3, v10, LB0/X;->z0:I

    .line 289
    .line 290
    add-int/lit8 v9, v9, 0x1

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_f
    iget-wide v1, v10, LB0/X;->B0:J

    .line 294
    .line 295
    invoke-virtual {v10, v0, v1, v2}, LB0/X;->j([ZJ)V

    .line 296
    .line 297
    .line 298
    const/4 v0, 0x1

    .line 299
    iput-boolean v0, v11, LB0/f0;->h:Z

    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_10
    iget-object v0, v10, LB0/X;->Y:LB0/i0;

    .line 303
    .line 304
    invoke-virtual {v0, v4}, LB0/i0;->n(LB0/f0;)I

    .line 305
    .line 306
    .line 307
    iget-boolean v0, v4, LB0/f0;->e:Z

    .line 308
    .line 309
    if-eqz v0, :cond_12

    .line 310
    .line 311
    iget-object v0, v4, LB0/f0;->g:LB0/g0;

    .line 312
    .line 313
    iget-wide v0, v0, LB0/g0;->b:J

    .line 314
    .line 315
    iget-wide v2, v10, LB0/X;->B0:J

    .line 316
    .line 317
    iget-wide v6, v4, LB0/f0;->p:J

    .line 318
    .line 319
    sub-long/2addr v2, v6

    .line 320
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 321
    .line 322
    .line 323
    move-result-wide v6

    .line 324
    iget-boolean v0, v10, LB0/X;->f0:Z

    .line 325
    .line 326
    if-eqz v0, :cond_11

    .line 327
    .line 328
    invoke-virtual/range {p0 .. p0}, LB0/X;->d()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_11

    .line 333
    .line 334
    iget-object v0, v10, LB0/X;->Y:LB0/i0;

    .line 335
    .line 336
    iget-object v0, v0, LB0/i0;->k:LB0/f0;

    .line 337
    .line 338
    if-ne v0, v4, :cond_11

    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, LB0/X;->f()V

    .line 341
    .line 342
    .line 343
    :cond_11
    iget-object v0, v4, LB0/f0;->j:[LB0/D0;

    .line 344
    .line 345
    array-length v0, v0

    .line 346
    new-array v9, v0, [Z

    .line 347
    .line 348
    const/4 v8, 0x0

    .line 349
    invoke-virtual/range {v4 .. v9}, LB0/f0;->a(LR0/y;JZ[Z)J

    .line 350
    .line 351
    .line 352
    :cond_12
    const/4 v0, 0x1

    .line 353
    :goto_a
    invoke-virtual {v10, v0}, LB0/X;->u(Z)V

    .line 354
    .line 355
    .line 356
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 357
    .line 358
    iget v0, v0, LB0/v0;->e:I

    .line 359
    .line 360
    const/4 v1, 0x4

    .line 361
    if-eq v0, v1, :cond_13

    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, LB0/X;->C()V

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, LB0/X;->y0()V

    .line 367
    .line 368
    .line 369
    iget-object v0, v10, LB0/X;->N:Lp0/I;

    .line 370
    .line 371
    const/4 v1, 0x2

    .line 372
    invoke-virtual {v0, v1}, Lp0/I;->e(I)Z

    .line 373
    .line 374
    .line 375
    :cond_13
    :goto_b
    return-void
.end method

.method public final N(ZZZZ)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "ExoPlayerImplInternal"

    .line 4
    .line 5
    iget-object v0, v1, LB0/X;->N:Lp0/I;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-virtual {v0, v3}, Lp0/I;->d(I)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v1, LB0/X;->k0:Z

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-object v4, v1, LB0/X;->l0:LB0/W;

    .line 16
    .line 17
    iput-object v4, v1, LB0/X;->F0:LB0/w;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-virtual {v1, v3, v5}, LB0/X;->A0(ZZ)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v1, LB0/X;->U:LB0/o;

    .line 24
    .line 25
    iput-boolean v3, v0, LB0/o;->L:Z

    .line 26
    .line 27
    iget-object v0, v0, LB0/o;->G:LB0/J0;

    .line 28
    .line 29
    iget-boolean v6, v0, LB0/J0;->H:Z

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, LB0/J0;->getPositionUs()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-virtual {v0, v6, v7}, LB0/J0;->a(J)V

    .line 38
    .line 39
    .line 40
    iput-boolean v3, v0, LB0/J0;->H:Z

    .line 41
    .line 42
    :cond_0
    const-wide v6, 0xe8d4a51000L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v6, v1, LB0/X;->B0:J

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :try_start_0
    iget-object v8, v1, LB0/X;->G:[LB0/F0;

    .line 56
    .line 57
    array-length v8, v8

    .line 58
    if-ge v0, v8, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1, v0}, LB0/X;->g(I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iput-wide v6, v1, LB0/X;->I0:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch LB0/w; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    :goto_1
    const-string v8, "Disable failed."

    .line 73
    .line 74
    invoke-static {v2, v8, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget-object v8, v1, LB0/X;->G:[LB0/F0;

    .line 80
    .line 81
    array-length v9, v8

    .line 82
    const/4 v10, 0x0

    .line 83
    :goto_3
    if-ge v10, v9, :cond_2

    .line 84
    .line 85
    aget-object v0, v8, v10

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v0}, LB0/F0;->k()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catch_2
    move-exception v0

    .line 92
    move-object v11, v0

    .line 93
    const-string v0, "Reset failed."

    .line 94
    .line 95
    invoke-static {v2, v0, v11}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    iput v3, v1, LB0/X;->z0:I

    .line 102
    .line 103
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 104
    .line 105
    iget-object v2, v0, LB0/v0;->b:LO0/y;

    .line 106
    .line 107
    iget-wide v8, v0, LB0/v0;->s:J

    .line 108
    .line 109
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 110
    .line 111
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 112
    .line 113
    invoke-virtual {v0}, LO0/y;->b()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 120
    .line 121
    iget-object v10, v1, LB0/X;->R:Lm0/d0;

    .line 122
    .line 123
    iget-object v11, v0, LB0/v0;->b:LO0/y;

    .line 124
    .line 125
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 126
    .line 127
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-nez v12, :cond_4

    .line 132
    .line 133
    iget-object v11, v11, LO0/y;->a:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v0, v11, v10}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-boolean v0, v0, Lm0/d0;->f:Z

    .line 140
    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_3
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 145
    .line 146
    iget-wide v10, v0, LB0/v0;->s:J

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_4
    :goto_5
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 150
    .line 151
    iget-wide v10, v0, LB0/v0;->c:J

    .line 152
    .line 153
    :goto_6
    if-eqz p2, :cond_6

    .line 154
    .line 155
    iput-object v4, v1, LB0/X;->A0:LB0/W;

    .line 156
    .line 157
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 158
    .line 159
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 160
    .line 161
    invoke-virtual {v1, v0}, LB0/X;->m(Lm0/f0;)Landroid/util/Pair;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, LO0/y;

    .line 168
    .line 169
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Ljava/lang/Long;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide v8

    .line 177
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 178
    .line 179
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 180
    .line 181
    invoke-virtual {v2, v0}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    move-wide/from16 v28, v8

    .line 186
    .line 187
    if-nez v0, :cond_5

    .line 188
    .line 189
    :goto_7
    move-wide v9, v6

    .line 190
    goto :goto_8

    .line 191
    :cond_5
    const/4 v5, 0x0

    .line 192
    goto :goto_7

    .line 193
    :cond_6
    move-wide/from16 v28, v8

    .line 194
    .line 195
    move-wide v9, v10

    .line 196
    const/4 v5, 0x0

    .line 197
    :goto_8
    iget-object v0, v1, LB0/X;->Y:LB0/i0;

    .line 198
    .line 199
    invoke-virtual {v0}, LB0/i0;->b()V

    .line 200
    .line 201
    .line 202
    iput-boolean v3, v1, LB0/X;->t0:Z

    .line 203
    .line 204
    iget-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 205
    .line 206
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 207
    .line 208
    if-eqz p3, :cond_9

    .line 209
    .line 210
    instance-of v6, v0, LB0/B0;

    .line 211
    .line 212
    if-eqz v6, :cond_9

    .line 213
    .line 214
    check-cast v0, LB0/B0;

    .line 215
    .line 216
    iget-object v6, v1, LB0/X;->Z:LB0/u0;

    .line 217
    .line 218
    iget-object v6, v6, LB0/u0;->j:LO0/X;

    .line 219
    .line 220
    iget-object v7, v0, LB0/B0;->h:[Lm0/f0;

    .line 221
    .line 222
    array-length v8, v7

    .line 223
    new-array v8, v8, [Lm0/f0;

    .line 224
    .line 225
    const/4 v11, 0x0

    .line 226
    :goto_9
    array-length v12, v7

    .line 227
    if-ge v11, v12, :cond_7

    .line 228
    .line 229
    new-instance v12, LB0/A0;

    .line 230
    .line 231
    aget-object v13, v7, v11

    .line 232
    .line 233
    invoke-direct {v12, v13}, LB0/A0;-><init>(Lm0/f0;)V

    .line 234
    .line 235
    .line 236
    aput-object v12, v8, v11

    .line 237
    .line 238
    add-int/lit8 v11, v11, 0x1

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_7
    new-instance v7, LB0/B0;

    .line 242
    .line 243
    iget-object v0, v0, LB0/B0;->i:[Ljava/lang/Object;

    .line 244
    .line 245
    invoke-direct {v7, v8, v0, v6}, LB0/B0;-><init>([Lm0/f0;[Ljava/lang/Object;LO0/X;)V

    .line 246
    .line 247
    .line 248
    iget v0, v2, LO0/y;->b:I

    .line 249
    .line 250
    const/4 v6, -0x1

    .line 251
    if-eq v0, v6, :cond_8

    .line 252
    .line 253
    iget-object v0, v2, LO0/y;->a:Ljava/lang/Object;

    .line 254
    .line 255
    iget-object v6, v1, LB0/X;->R:Lm0/d0;

    .line 256
    .line 257
    invoke-virtual {v7, v0, v6}, LB0/B0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 258
    .line 259
    .line 260
    iget-object v0, v1, LB0/X;->R:Lm0/d0;

    .line 261
    .line 262
    iget v0, v0, Lm0/d0;->c:I

    .line 263
    .line 264
    iget-object v6, v1, LB0/X;->Q:Lm0/e0;

    .line 265
    .line 266
    const-wide/16 v11, 0x0

    .line 267
    .line 268
    invoke-virtual {v7, v0, v6, v11, v12}, LB0/B0;->n(ILm0/e0;J)Lm0/e0;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6}, Lm0/e0;->a()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_8

    .line 276
    .line 277
    new-instance v0, LO0/y;

    .line 278
    .line 279
    iget-object v6, v2, LO0/y;->a:Ljava/lang/Object;

    .line 280
    .line 281
    iget-wide v11, v2, LO0/y;->d:J

    .line 282
    .line 283
    invoke-direct {v0, v6, v11, v12}, LO0/y;-><init>(Ljava/lang/Object;J)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v19, v0

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_8
    :goto_a
    move-object/from16 v19, v2

    .line 290
    .line 291
    goto :goto_b

    .line 292
    :cond_9
    move-object v7, v0

    .line 293
    goto :goto_a

    .line 294
    :goto_b
    new-instance v0, LB0/v0;

    .line 295
    .line 296
    iget-object v2, v1, LB0/X;->m0:LB0/v0;

    .line 297
    .line 298
    iget v13, v2, LB0/v0;->e:I

    .line 299
    .line 300
    if-eqz p4, :cond_a

    .line 301
    .line 302
    move-object v14, v4

    .line 303
    goto :goto_c

    .line 304
    :cond_a
    iget-object v6, v2, LB0/v0;->f:LB0/w;

    .line 305
    .line 306
    move-object v14, v6

    .line 307
    :goto_c
    if-eqz v5, :cond_b

    .line 308
    .line 309
    sget-object v6, LO0/Z;->d:LO0/Z;

    .line 310
    .line 311
    :goto_d
    move-object/from16 v16, v6

    .line 312
    .line 313
    goto :goto_e

    .line 314
    :cond_b
    iget-object v6, v2, LB0/v0;->h:LO0/Z;

    .line 315
    .line 316
    goto :goto_d

    .line 317
    :goto_e
    if-eqz v5, :cond_c

    .line 318
    .line 319
    iget-object v6, v1, LB0/X;->K:LR0/y;

    .line 320
    .line 321
    :goto_f
    move-object/from16 v17, v6

    .line 322
    .line 323
    goto :goto_10

    .line 324
    :cond_c
    iget-object v6, v2, LB0/v0;->i:LR0/y;

    .line 325
    .line 326
    goto :goto_f

    .line 327
    :goto_10
    if-eqz v5, :cond_d

    .line 328
    .line 329
    sget-object v5, Lz4/H;->H:Lz4/F;

    .line 330
    .line 331
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    .line 332
    .line 333
    :goto_11
    move-object/from16 v18, v5

    .line 334
    .line 335
    goto :goto_12

    .line 336
    :cond_d
    iget-object v5, v2, LB0/v0;->j:Ljava/util/List;

    .line 337
    .line 338
    goto :goto_11

    .line 339
    :goto_12
    iget-boolean v5, v2, LB0/v0;->l:Z

    .line 340
    .line 341
    move/from16 v20, v5

    .line 342
    .line 343
    iget v5, v2, LB0/v0;->m:I

    .line 344
    .line 345
    move/from16 v21, v5

    .line 346
    .line 347
    iget v5, v2, LB0/v0;->n:I

    .line 348
    .line 349
    move/from16 v22, v5

    .line 350
    .line 351
    iget-object v2, v2, LB0/v0;->o:Lm0/S;

    .line 352
    .line 353
    move-object/from16 v23, v2

    .line 354
    .line 355
    const/4 v15, 0x0

    .line 356
    const-wide/16 v26, 0x0

    .line 357
    .line 358
    const-wide/16 v30, 0x0

    .line 359
    .line 360
    const/16 v32, 0x0

    .line 361
    .line 362
    move-object v6, v0

    .line 363
    move-object/from16 v8, v19

    .line 364
    .line 365
    move-wide/from16 v11, v28

    .line 366
    .line 367
    move-wide/from16 v24, v28

    .line 368
    .line 369
    invoke-direct/range {v6 .. v32}, LB0/v0;-><init>(Lm0/f0;LO0/y;JJILB0/w;ZLO0/Z;LR0/y;Ljava/util/List;LO0/y;ZIILm0/S;JJJJZ)V

    .line 370
    .line 371
    .line 372
    iput-object v0, v1, LB0/X;->m0:LB0/v0;

    .line 373
    .line 374
    if-eqz p3, :cond_11

    .line 375
    .line 376
    iget-object v0, v1, LB0/X;->Y:LB0/i0;

    .line 377
    .line 378
    iget-object v2, v0, LB0/i0;->q:Ljava/util/List;

    .line 379
    .line 380
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_f

    .line 385
    .line 386
    new-instance v2, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    const/4 v5, 0x0

    .line 392
    :goto_13
    iget-object v6, v0, LB0/i0;->q:Ljava/util/List;

    .line 393
    .line 394
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    if-ge v5, v6, :cond_e

    .line 399
    .line 400
    iget-object v6, v0, LB0/i0;->q:Ljava/util/List;

    .line 401
    .line 402
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    check-cast v6, LB0/f0;

    .line 407
    .line 408
    invoke-virtual {v6}, LB0/f0;->i()V

    .line 409
    .line 410
    .line 411
    add-int/lit8 v5, v5, 0x1

    .line 412
    .line 413
    goto :goto_13

    .line 414
    :cond_e
    iput-object v2, v0, LB0/i0;->q:Ljava/util/List;

    .line 415
    .line 416
    iput-object v4, v0, LB0/i0;->m:LB0/f0;

    .line 417
    .line 418
    invoke-virtual {v0}, LB0/i0;->k()V

    .line 419
    .line 420
    .line 421
    :cond_f
    iget-object v2, v1, LB0/X;->Z:LB0/u0;

    .line 422
    .line 423
    iget-object v4, v2, LB0/u0;->f:Ljava/util/HashMap;

    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_10

    .line 438
    .line 439
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    move-object v6, v0

    .line 444
    check-cast v6, LB0/r0;

    .line 445
    .line 446
    :try_start_2
    iget-object v0, v6, LB0/r0;->a:LO0/a;

    .line 447
    .line 448
    iget-object v7, v6, LB0/r0;->b:LO0/z;

    .line 449
    .line 450
    invoke-virtual {v0, v7}, LO0/a;->o(LO0/z;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 451
    .line 452
    .line 453
    goto :goto_15

    .line 454
    :catch_3
    move-exception v0

    .line 455
    const-string v7, "MediaSourceList"

    .line 456
    .line 457
    const-string v8, "Failed to release child source."

    .line 458
    .line 459
    invoke-static {v7, v8, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    :goto_15
    iget-object v0, v6, LB0/r0;->a:LO0/a;

    .line 463
    .line 464
    iget-object v7, v6, LB0/r0;->c:LB0/q0;

    .line 465
    .line 466
    invoke-virtual {v0, v7}, LO0/a;->r(LO0/E;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, v6, LB0/r0;->a:LO0/a;

    .line 470
    .line 471
    invoke-virtual {v0, v7}, LO0/a;->q(LG0/p;)V

    .line 472
    .line 473
    .line 474
    goto :goto_14

    .line 475
    :cond_10
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 476
    .line 477
    .line 478
    iget-object v0, v2, LB0/u0;->g:Ljava/util/HashSet;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 481
    .line 482
    .line 483
    iput-boolean v3, v2, LB0/u0;->k:Z

    .line 484
    .line 485
    :cond_11
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, LB0/f0;->g:LB0/g0;

    .line 8
    .line 9
    iget-boolean v0, v0, LB0/g0;->i:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, LB0/X;->p0:Z

    .line 14
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
    iput-boolean v0, p0, LB0/X;->q0:Z

    .line 21
    .line 22
    return-void
.end method

.method public final P(J)V
    .locals 7

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v1, v0, LB0/i0;->i:LB0/f0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-wide v2, 0xe8d4a51000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    :goto_0
    add-long/2addr p1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v2, v1, LB0/f0;->p:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    iput-wide p1, p0, LB0/X;->B0:J

    .line 18
    .line 19
    iget-object v2, p0, LB0/X;->U:LB0/o;

    .line 20
    .line 21
    iget-object v2, v2, LB0/o;->G:LB0/J0;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, LB0/J0;->a(J)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, LB0/X;->G:[LB0/F0;

    .line 27
    .line 28
    array-length p2, p1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_2
    if-ge v3, p2, :cond_2

    .line 32
    .line 33
    aget-object v4, p1, v3

    .line 34
    .line 35
    iget-wide v5, p0, LB0/X;->B0:J

    .line 36
    .line 37
    invoke-virtual {v4, v1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, v5, v6}, LB0/h;->resetPosition(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object p1, v0, LB0/i0;->i:LB0/f0;

    .line 50
    .line 51
    :goto_3
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p2, p1, LB0/f0;->o:LR0/y;

    .line 54
    .line 55
    iget-object p2, p2, LR0/y;->c:[LR0/t;

    .line 56
    .line 57
    array-length v0, p2

    .line 58
    const/4 v1, 0x0

    .line 59
    :goto_4
    if-ge v1, v0, :cond_3

    .line 60
    .line 61
    aget-object v3, p2, v1

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_3
    iget-object p1, p1, LB0/f0;->m:LB0/f0;

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    return-void
.end method

.method public final Q(Lm0/f0;Lm0/f0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lm0/f0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lm0/f0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, LB0/X;->V:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    add-int/lit8 p2, p2, -0x1

    .line 21
    .line 22
    if-gez p2, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1
.end method

.method public final T(J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, LB0/X;->j0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, LB0/X;->i0:LB0/H0;

    .line 9
    .line 10
    iget-boolean v1, v1, LB0/H0;->d:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    const-wide/16 v3, 0x3e8

    .line 18
    .line 19
    sget-wide v5, LB0/X;->L0:J

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-object v1, v0, LB0/X;->m0:LB0/v0;

    .line 25
    .line 26
    iget v1, v1, LB0/v0;->e:I

    .line 27
    .line 28
    if-ne v1, v7, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-wide v3, v5

    .line 32
    :goto_1
    iget-object v1, v0, LB0/X;->G:[LB0/F0;

    .line 33
    .line 34
    array-length v7, v1

    .line 35
    :goto_2
    if-ge v2, v7, :cond_4

    .line 36
    .line 37
    aget-object v8, v1, v2

    .line 38
    .line 39
    iget-wide v9, v0, LB0/X;->B0:J

    .line 40
    .line 41
    iget-wide v11, v0, LB0/X;->C0:J

    .line 42
    .line 43
    iget-object v13, v8, LB0/F0;->a:LB0/h;

    .line 44
    .line 45
    invoke-static {v13}, LB0/F0;->h(LB0/h;)Z

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    if-eqz v14, :cond_2

    .line 50
    .line 51
    invoke-virtual {v13, v9, v10, v11, v12}, LB0/h;->getDurationToProgressUs(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v13

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    const-wide v13, 0x7fffffffffffffffL

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :goto_3
    iget-object v8, v8, LB0/F0;->c:LB0/h;

    .line 62
    .line 63
    if-eqz v8, :cond_3

    .line 64
    .line 65
    invoke-virtual {v8}, LB0/h;->getState()I

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    if-eqz v15, :cond_3

    .line 70
    .line 71
    invoke-virtual {v8, v9, v10, v11, v12}, LB0/h;->getDurationToProgressUs(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v13

    .line 79
    :cond_3
    invoke-static {v13, v14}, Lp0/M;->e0(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-object v1, v0, LB0/X;->m0:LB0/v0;

    .line 91
    .line 92
    invoke-virtual {v1}, LB0/v0;->m()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    iget-object v1, v0, LB0/X;->Y:LB0/i0;

    .line 99
    .line 100
    iget-object v1, v1, LB0/i0;->i:LB0/f0;

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    iget-object v1, v1, LB0/f0;->m:LB0/f0;

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    const/4 v1, 0x0

    .line 108
    :goto_4
    if-eqz v1, :cond_8

    .line 109
    .line 110
    iget-wide v7, v0, LB0/X;->B0:J

    .line 111
    .line 112
    long-to-float v2, v7

    .line 113
    invoke-static {v3, v4}, Lp0/M;->R(J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    long-to-float v7, v7

    .line 118
    iget-object v8, v0, LB0/X;->m0:LB0/v0;

    .line 119
    .line 120
    iget-object v8, v8, LB0/v0;->o:Lm0/S;

    .line 121
    .line 122
    iget v8, v8, Lm0/S;->a:F

    .line 123
    .line 124
    mul-float v7, v7, v8

    .line 125
    .line 126
    add-float/2addr v7, v2

    .line 127
    invoke-virtual {v1}, LB0/f0;->e()J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    long-to-float v1, v1

    .line 132
    cmpl-float v1, v7, v1

    .line 133
    .line 134
    if-ltz v1, :cond_8

    .line 135
    .line 136
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    iget-object v1, v0, LB0/X;->m0:LB0/v0;

    .line 142
    .line 143
    iget v1, v1, LB0/v0;->e:I

    .line 144
    .line 145
    if-ne v1, v7, :cond_7

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_7

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_7
    move-wide v3, v5

    .line 155
    :cond_8
    :goto_5
    add-long v1, p1, v3

    .line 156
    .line 157
    iget-object v3, v0, LB0/X;->N:Lp0/I;

    .line 158
    .line 159
    iget-object v3, v3, Lp0/I;->a:Landroid/os/Handler;

    .line 160
    .line 161
    const/4 v4, 0x2

    .line 162
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final U(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 4
    .line 5
    iget-object v0, v0, LB0/f0;->g:LB0/g0;

    .line 6
    .line 7
    iget-object v0, v0, LB0/g0;->a:LO0/y;

    .line 8
    .line 9
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 10
    .line 11
    iget-wide v3, v1, LB0/v0;->s:J

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, v0

    .line 17
    invoke-virtual/range {v1 .. v6}, LB0/X;->W(LO0/y;JZZ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 22
    .line 23
    iget-wide v1, v1, LB0/v0;->s:J

    .line 24
    .line 25
    cmp-long v5, v3, v1

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 30
    .line 31
    iget-wide v5, v1, LB0/v0;->c:J

    .line 32
    .line 33
    iget-wide v7, v1, LB0/v0;->d:J

    .line 34
    .line 35
    const/4 v10, 0x5

    .line 36
    move-object v1, p0

    .line 37
    move-object v2, v0

    .line 38
    move v9, p1

    .line 39
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final V(LB0/W;Z)V
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v11, LB0/X;->n0:LB0/U;

    .line 6
    .line 7
    move/from16 v2, p2

    .line 8
    .line 9
    invoke-virtual {v1, v2}, LB0/U;->d(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, v11, LB0/X;->k0:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iput-object v0, v11, LB0/X;->l0:LB0/W;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 20
    .line 21
    iget-object v1, v1, LB0/v0;->a:Lm0/f0;

    .line 22
    .line 23
    iget v4, v11, LB0/X;->u0:I

    .line 24
    .line 25
    iget-boolean v5, v11, LB0/X;->v0:Z

    .line 26
    .line 27
    iget-object v6, v11, LB0/X;->Q:Lm0/e0;

    .line 28
    .line 29
    iget-object v7, v11, LB0/X;->R:Lm0/d0;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    move-object/from16 v2, p1

    .line 33
    .line 34
    invoke-static/range {v1 .. v7}, LB0/X;->R(Lm0/f0;LB0/W;ZIZLm0/e0;Lm0/d0;)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v6, v11, LB0/X;->m0:LB0/v0;

    .line 50
    .line 51
    iget-object v6, v6, LB0/v0;->a:Lm0/f0;

    .line 52
    .line 53
    invoke-virtual {v11, v6}, LB0/X;->m(Lm0/f0;)Landroid/util/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v9, LO0/y;

    .line 60
    .line 61
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v6, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v12

    .line 69
    iget-object v6, v11, LB0/X;->m0:LB0/v0;

    .line 70
    .line 71
    iget-object v6, v6, LB0/v0;->a:Lm0/f0;

    .line 72
    .line 73
    invoke-virtual {v6}, Lm0/f0;->q()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    xor-int/2addr v6, v7

    .line 78
    move v14, v6

    .line 79
    move-wide/from16 v19, v4

    .line 80
    .line 81
    move-wide v4, v12

    .line 82
    move-wide/from16 v12, v19

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_1
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v9, Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    iget-wide v9, v0, LB0/W;->c:J

    .line 96
    .line 97
    cmp-long v14, v9, v4

    .line 98
    .line 99
    if-nez v14, :cond_2

    .line 100
    .line 101
    move-wide v9, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    move-wide v9, v12

    .line 104
    :goto_0
    iget-object v14, v11, LB0/X;->Y:LB0/i0;

    .line 105
    .line 106
    iget-object v15, v11, LB0/X;->m0:LB0/v0;

    .line 107
    .line 108
    iget-object v15, v15, LB0/v0;->a:Lm0/f0;

    .line 109
    .line 110
    invoke-virtual {v14, v15, v6, v12, v13}, LB0/i0;->p(Lm0/f0;Ljava/lang/Object;J)LO0/y;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6}, LO0/y;->b()Z

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_4

    .line 119
    .line 120
    iget-object v12, v11, LB0/X;->m0:LB0/v0;

    .line 121
    .line 122
    iget-object v12, v12, LB0/v0;->a:Lm0/f0;

    .line 123
    .line 124
    iget-object v13, v6, LO0/y;->a:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v14, v11, LB0/X;->R:Lm0/d0;

    .line 127
    .line 128
    invoke-virtual {v12, v13, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 129
    .line 130
    .line 131
    iget-object v12, v11, LB0/X;->R:Lm0/d0;

    .line 132
    .line 133
    iget v13, v6, LO0/y;->b:I

    .line 134
    .line 135
    invoke-virtual {v12, v13}, Lm0/d0;->f(I)I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    iget v13, v6, LO0/y;->c:I

    .line 140
    .line 141
    if-ne v12, v13, :cond_3

    .line 142
    .line 143
    iget-object v12, v11, LB0/X;->R:Lm0/d0;

    .line 144
    .line 145
    iget-object v12, v12, Lm0/d0;->g:Lm0/c;

    .line 146
    .line 147
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    :cond_3
    move-wide v4, v2

    .line 151
    move-wide v12, v9

    .line 152
    const/4 v14, 0x1

    .line 153
    :goto_1
    move-object v9, v6

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    iget-wide v14, v0, LB0/W;->c:J

    .line 156
    .line 157
    cmp-long v16, v14, v4

    .line 158
    .line 159
    if-nez v16, :cond_5

    .line 160
    .line 161
    const/4 v14, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_5
    const/4 v14, 0x0

    .line 164
    :goto_2
    move-wide v4, v12

    .line 165
    move-wide v12, v9

    .line 166
    goto :goto_1

    .line 167
    :goto_3
    :try_start_0
    iget-object v6, v11, LB0/X;->m0:LB0/v0;

    .line 168
    .line 169
    iget-object v6, v6, LB0/v0;->a:Lm0/f0;

    .line 170
    .line 171
    invoke-virtual {v6}, Lm0/f0;->q()Z

    .line 172
    .line 173
    .line 174
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 175
    if-eqz v6, :cond_6

    .line 176
    .line 177
    :try_start_1
    iput-object v0, v11, LB0/X;->A0:LB0/W;

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    move-wide v7, v4

    .line 182
    goto/16 :goto_c

    .line 183
    .line 184
    :cond_6
    const/4 v0, 0x4

    .line 185
    if-nez v1, :cond_8

    .line 186
    .line 187
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 188
    .line 189
    iget v1, v1, LB0/v0;->e:I

    .line 190
    .line 191
    if-eq v1, v7, :cond_7

    .line 192
    .line 193
    invoke-virtual {v11, v0}, LB0/X;->l0(I)V

    .line 194
    .line 195
    .line 196
    :cond_7
    invoke-virtual {v11, v8, v7, v8, v7}, LB0/X;->N(ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .line 198
    .line 199
    :goto_4
    move-wide v7, v4

    .line 200
    goto/16 :goto_a

    .line 201
    .line 202
    :cond_8
    :try_start_2
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 203
    .line 204
    iget-object v1, v1, LB0/v0;->b:LO0/y;

    .line 205
    .line 206
    invoke-virtual {v9, v1}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    :try_start_3
    iget-object v1, v11, LB0/X;->Y:LB0/i0;

    .line 213
    .line 214
    iget-object v1, v1, LB0/i0;->i:LB0/f0;

    .line 215
    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    iget-boolean v6, v1, LB0/f0;->e:Z

    .line 219
    .line 220
    if-eqz v6, :cond_a

    .line 221
    .line 222
    cmp-long v6, v4, v2

    .line 223
    .line 224
    if-eqz v6, :cond_a

    .line 225
    .line 226
    iget-object v1, v1, LB0/f0;->a:LO0/w;

    .line 227
    .line 228
    iget-object v2, v11, LB0/X;->Q:Lm0/e0;

    .line 229
    .line 230
    iget-wide v2, v2, Lm0/e0;->m:J

    .line 231
    .line 232
    iget-boolean v6, v11, LB0/X;->j0:Z

    .line 233
    .line 234
    if-eqz v6, :cond_9

    .line 235
    .line 236
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    cmp-long v6, v2, v15

    .line 242
    .line 243
    if-eqz v6, :cond_9

    .line 244
    .line 245
    iget-object v2, v11, LB0/X;->i0:LB0/H0;

    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    :cond_9
    iget-object v2, v11, LB0/X;->h0:LB0/I0;

    .line 251
    .line 252
    invoke-interface {v1, v4, v5, v2}, LO0/w;->a(JLB0/I0;)J

    .line 253
    .line 254
    .line 255
    move-result-wide v1

    .line 256
    goto :goto_5

    .line 257
    :cond_a
    move-wide v1, v4

    .line 258
    :goto_5
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v15

    .line 262
    iget-object v3, v11, LB0/X;->m0:LB0/v0;

    .line 263
    .line 264
    iget-wide v7, v3, LB0/v0;->s:J

    .line 265
    .line 266
    invoke-static {v7, v8}, Lp0/M;->e0(J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v6

    .line 270
    cmp-long v3, v15, v6

    .line 271
    .line 272
    if-nez v3, :cond_c

    .line 273
    .line 274
    iget-object v3, v11, LB0/X;->m0:LB0/v0;

    .line 275
    .line 276
    iget v6, v3, LB0/v0;->e:I

    .line 277
    .line 278
    const/4 v7, 0x2

    .line 279
    if-eq v6, v7, :cond_b

    .line 280
    .line 281
    const/4 v7, 0x3

    .line 282
    if-ne v6, v7, :cond_c

    .line 283
    .line 284
    :cond_b
    iget-wide v7, v3, LB0/v0;->s:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    .line 286
    const/4 v10, 0x2

    .line 287
    move-object/from16 v1, p0

    .line 288
    .line 289
    move-object v2, v9

    .line 290
    move-wide v3, v7

    .line 291
    move-wide v5, v12

    .line 292
    move v9, v14

    .line 293
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 298
    .line 299
    return-void

    .line 300
    :cond_c
    move-wide v6, v1

    .line 301
    goto :goto_6

    .line 302
    :cond_d
    move-wide v6, v4

    .line 303
    :goto_6
    :try_start_4
    iget-boolean v1, v11, LB0/X;->j0:Z

    .line 304
    .line 305
    iput-boolean v1, v11, LB0/X;->k0:Z

    .line 306
    .line 307
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 308
    .line 309
    iget v1, v1, LB0/v0;->e:I

    .line 310
    .line 311
    if-ne v1, v0, :cond_e

    .line 312
    .line 313
    const/4 v0, 0x1

    .line 314
    goto :goto_7

    .line 315
    :cond_e
    const/4 v0, 0x0

    .line 316
    :goto_7
    iget-object v1, v11, LB0/X;->Y:LB0/i0;

    .line 317
    .line 318
    iget-object v2, v1, LB0/i0;->i:LB0/f0;

    .line 319
    .line 320
    iget-object v1, v1, LB0/i0;->j:LB0/f0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 321
    .line 322
    if-eq v2, v1, :cond_f

    .line 323
    .line 324
    const/4 v8, 0x1

    .line 325
    goto :goto_8

    .line 326
    :cond_f
    const/4 v8, 0x0

    .line 327
    :goto_8
    move-object/from16 v1, p0

    .line 328
    .line 329
    move-object v2, v9

    .line 330
    move-wide v15, v4

    .line 331
    move-wide v3, v6

    .line 332
    move v5, v8

    .line 333
    move v6, v0

    .line 334
    :try_start_5
    invoke-virtual/range {v1 .. v6}, LB0/X;->W(LO0/y;JZZ)J

    .line 335
    .line 336
    .line 337
    move-result-wide v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 338
    cmp-long v0, v15, v17

    .line 339
    .line 340
    if-eqz v0, :cond_10

    .line 341
    .line 342
    const/4 v7, 0x1

    .line 343
    goto :goto_9

    .line 344
    :cond_10
    const/4 v7, 0x0

    .line 345
    :goto_9
    or-int v10, v14, v7

    .line 346
    .line 347
    :try_start_6
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 348
    .line 349
    iget-object v4, v0, LB0/v0;->a:Lm0/f0;

    .line 350
    .line 351
    iget-object v5, v0, LB0/v0;->b:LO0/y;

    .line 352
    .line 353
    const/4 v8, 0x1

    .line 354
    move-object/from16 v1, p0

    .line 355
    .line 356
    move-object v2, v4

    .line 357
    move-object v3, v9

    .line 358
    move-wide v6, v12

    .line 359
    invoke-virtual/range {v1 .. v8}, LB0/X;->z0(Lm0/f0;LO0/y;Lm0/f0;LO0/y;JZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 360
    .line 361
    .line 362
    move v14, v10

    .line 363
    move-wide/from16 v7, v17

    .line 364
    .line 365
    :goto_a
    const/4 v10, 0x2

    .line 366
    move-object/from16 v1, p0

    .line 367
    .line 368
    move-object v2, v9

    .line 369
    move-wide v3, v7

    .line 370
    move-wide v5, v12

    .line 371
    move v9, v14

    .line 372
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iput-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 377
    .line 378
    return-void

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    move v14, v10

    .line 381
    move-wide/from16 v7, v17

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :catchall_2
    move-exception v0

    .line 385
    :goto_b
    move-wide v7, v15

    .line 386
    goto :goto_c

    .line 387
    :catchall_3
    move-exception v0

    .line 388
    move-wide v15, v4

    .line 389
    goto :goto_b

    .line 390
    :goto_c
    const/4 v10, 0x2

    .line 391
    move-object/from16 v1, p0

    .line 392
    .line 393
    move-object v2, v9

    .line 394
    move-wide v3, v7

    .line 395
    move-wide v5, v12

    .line 396
    move v9, v14

    .line 397
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    iput-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 402
    .line 403
    throw v0
.end method

.method public final W(LO0/y;JZZ)J
    .locals 9

    .line 1
    invoke-virtual {p0}, LB0/X;->t0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, LB0/X;->A0(ZZ)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    iget-object p5, p0, LB0/X;->m0:LB0/v0;

    .line 13
    .line 14
    iget p5, p5, LB0/v0;->e:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne p5, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, v2}, LB0/X;->l0(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p5, p0, LB0/X;->Y:LB0/i0;

    .line 23
    .line 24
    iget-object v3, p5, LB0/i0;->i:LB0/f0;

    .line 25
    .line 26
    move-object v4, v3

    .line 27
    :goto_0
    if-eqz v4, :cond_3

    .line 28
    .line 29
    iget-object v5, v4, LB0/f0;->g:LB0/g0;

    .line 30
    .line 31
    iget-object v5, v5, LB0/g0;->a:LO0/y;

    .line 32
    .line 33
    invoke-virtual {p1, v5}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v4, v4, LB0/f0;->m:LB0/f0;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    if-nez p4, :cond_4

    .line 44
    .line 45
    if-ne v3, v4, :cond_4

    .line 46
    .line 47
    if-eqz v4, :cond_7

    .line 48
    .line 49
    iget-wide v5, v4, LB0/f0;->p:J

    .line 50
    .line 51
    add-long/2addr v5, p2

    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    cmp-long p1, v5, v7

    .line 55
    .line 56
    if-gez p1, :cond_7

    .line 57
    .line 58
    :cond_4
    const/4 p1, 0x0

    .line 59
    :goto_2
    iget-object p4, p0, LB0/X;->G:[LB0/F0;

    .line 60
    .line 61
    array-length v3, p4

    .line 62
    if-ge p1, v3, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0, p1}, LB0/X;->g(I)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    iput-wide v5, p0, LB0/X;->I0:J

    .line 76
    .line 77
    if-eqz v4, :cond_7

    .line 78
    .line 79
    :goto_3
    iget-object p1, p5, LB0/i0;->i:LB0/f0;

    .line 80
    .line 81
    if-eq p1, v4, :cond_6

    .line 82
    .line 83
    invoke-virtual {p5}, LB0/i0;->a()LB0/f0;

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    invoke-virtual {p5, v4}, LB0/i0;->n(LB0/f0;)I

    .line 88
    .line 89
    .line 90
    const-wide v5, 0xe8d4a51000L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    iput-wide v5, v4, LB0/f0;->p:J

    .line 96
    .line 97
    array-length p1, p4

    .line 98
    new-array p1, p1, [Z

    .line 99
    .line 100
    iget-object p4, p5, LB0/i0;->j:LB0/f0;

    .line 101
    .line 102
    invoke-virtual {p4}, LB0/f0;->e()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-virtual {p0, p1, v5, v6}, LB0/X;->j([ZJ)V

    .line 107
    .line 108
    .line 109
    iput-boolean v1, v4, LB0/f0;->h:Z

    .line 110
    .line 111
    :cond_7
    invoke-virtual {p0}, LB0/X;->f()V

    .line 112
    .line 113
    .line 114
    if-eqz v4, :cond_a

    .line 115
    .line 116
    invoke-virtual {p5, v4}, LB0/i0;->n(LB0/f0;)I

    .line 117
    .line 118
    .line 119
    iget-boolean p1, v4, LB0/f0;->e:Z

    .line 120
    .line 121
    if-nez p1, :cond_8

    .line 122
    .line 123
    iget-object p1, v4, LB0/f0;->g:LB0/g0;

    .line 124
    .line 125
    invoke-virtual {p1, p2, p3}, LB0/g0;->b(J)LB0/g0;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, v4, LB0/f0;->g:LB0/g0;

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_8
    iget-boolean p1, v4, LB0/f0;->f:Z

    .line 133
    .line 134
    if-eqz p1, :cond_9

    .line 135
    .line 136
    iget-object p1, v4, LB0/f0;->a:LO0/w;

    .line 137
    .line 138
    invoke-interface {p1, p2, p3}, LO0/w;->i(J)J

    .line 139
    .line 140
    .line 141
    move-result-wide p2

    .line 142
    iget-wide p4, p0, LB0/X;->S:J

    .line 143
    .line 144
    sub-long p4, p2, p4

    .line 145
    .line 146
    iget-boolean v1, p0, LB0/X;->T:Z

    .line 147
    .line 148
    invoke-interface {p1, p4, p5, v1}, LO0/w;->v(JZ)V

    .line 149
    .line 150
    .line 151
    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, LB0/X;->P(J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, LB0/X;->C()V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    invoke-virtual {p5}, LB0/i0;->b()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p2, p3}, LB0/X;->P(J)V

    .line 162
    .line 163
    .line 164
    :goto_5
    invoke-virtual {p0, v0}, LB0/X;->u(Z)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, LB0/X;->N:Lp0/I;

    .line 168
    .line 169
    invoke-virtual {p1, v2}, Lp0/I;->e(I)Z

    .line 170
    .line 171
    .line 172
    return-wide p2
.end method

.method public final X(LB0/z0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LB0/z0;->e:Landroid/os/Looper;

    .line 5
    .line 6
    iget-object v1, p0, LB0/X;->P:Landroid/os/Looper;

    .line 7
    .line 8
    iget-object v2, p0, LB0/X;->N:Lp0/I;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    monitor-exit p1

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_0
    iget-object v1, p1, LB0/z0;->a:LB0/y0;

    .line 16
    .line 17
    iget v3, p1, LB0/z0;->c:I

    .line 18
    .line 19
    iget-object v4, p1, LB0/z0;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v1, v3, v4}, LB0/y0;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, LB0/z0;->a(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 28
    .line 29
    iget p1, p1, LB0/v0;->e:I

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    if-ne p1, v1, :cond_2

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v2, v1}, Lp0/I;->e(I)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    invoke-virtual {p1, v0}, LB0/z0;->a(Z)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    const/16 v0, 0xf

    .line 47
    .line 48
    invoke-virtual {v2, v0, p1}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lp0/H;->b()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final Y(LB0/z0;)V
    .locals 3

    .line 1
    iget-object v0, p1, LB0/z0;->e:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "TAG"

    .line 14
    .line 15
    const-string v1, "Trying to send message on a dead thread."

    .line 16
    .line 17
    invoke-static {v0, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, LB0/z0;->a(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, LB0/X;->W:Lp0/f;

    .line 26
    .line 27
    check-cast v1, Lp0/G;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v0, v2}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lf/t;

    .line 35
    .line 36
    const/16 v2, 0x11

    .line 37
    .line 38
    invoke-direct {v1, v2, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final Z(Lm0/d;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->J:LR0/w;

    .line 2
    .line 3
    check-cast v0, LR0/q;

    .line 4
    .line 5
    iget-object v1, v0, LR0/q;->i:Lm0/d;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lm0/d;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, v0, LR0/q;->i:Lm0/d;

    .line 15
    .line 16
    invoke-virtual {v0}, LR0/q;->i()V

    .line 17
    .line 18
    .line 19
    :goto_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    iget-object p2, p0, LB0/X;->g0:LB0/g;

    .line 24
    .line 25
    iget-object v0, p2, LB0/g;->d:Lm0/d;

    .line 26
    .line 27
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    iput-object p1, p2, LB0/g;->d:Lm0/d;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 p1, 0x1

    .line 42
    :goto_2
    iput p1, p2, LB0/g;->f:I

    .line 43
    .line 44
    if-eq p1, v1, :cond_3

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    :cond_3
    const/4 v0, 0x1

    .line 49
    :cond_4
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    :cond_5
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 55
    .line 56
    iget-boolean v0, p1, LB0/v0;->l:Z

    .line 57
    .line 58
    iget v1, p1, LB0/v0;->e:I

    .line 59
    .line 60
    invoke-virtual {p2, v1, v0}, LB0/g;->d(IZ)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iget v1, p1, LB0/v0;->n:I

    .line 65
    .line 66
    iget p1, p1, LB0/v0;->m:I

    .line 67
    .line 68
    invoke-virtual {p0, p2, v1, p1, v0}, LB0/X;->x0(IIIZ)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final a(LB0/T;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iget-object v1, p0, LB0/X;->Z:LB0/u0;

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, v1, LB0/u0;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :cond_0
    iget-object v0, p1, LB0/T;->a:Ljava/util/List;

    .line 19
    .line 20
    iget-object p1, p1, LB0/T;->b:LO0/X;

    .line 21
    .line 22
    invoke-virtual {v1, p2, v0, p1}, LB0/u0;->a(ILjava/util/List;LO0/X;)Lm0/f0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p1, p2}, LB0/X;->v(Lm0/f0;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final a0(ZLp0/i;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, LB0/X;->w0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, LB0/X;->w0:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, LB0/X;->G:[LB0/F0;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {v2}, LB0/F0;->k()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lp0/i;->f()Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final b(JJLm0/t;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, LB0/X;->k0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, LB0/X;->N:Lp0/I;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p1, p1, Lp0/I;->a:Landroid/os/Handler;

    .line 15
    .line 16
    const/16 p3, 0x25

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p2, Lp0/H;->a:Landroid/os/Message;

    .line 23
    .line 24
    invoke-virtual {p2}, Lp0/H;->b()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final b0(LB0/T;)V
    .locals 7

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, LB0/T;->c:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iget-object v2, p1, LB0/T;->b:LO0/X;

    .line 11
    .line 12
    iget-object v3, p1, LB0/T;->a:Ljava/util/List;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, LB0/W;

    .line 17
    .line 18
    new-instance v1, LB0/B0;

    .line 19
    .line 20
    invoke-direct {v1, v3, v2}, LB0/B0;-><init>(Ljava/util/List;LO0/X;)V

    .line 21
    .line 22
    .line 23
    iget v4, p1, LB0/T;->c:I

    .line 24
    .line 25
    iget-wide v5, p1, LB0/T;->d:J

    .line 26
    .line 27
    invoke-direct {v0, v1, v4, v5, v6}, LB0/W;-><init>(Lm0/f0;IJ)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LB0/X;->A0:LB0/W;

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, LB0/X;->Z:LB0/u0;

    .line 33
    .line 34
    iget-object v0, p1, LB0/u0;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1, v4, v1}, LB0/u0;->g(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0, v3, v2}, LB0/u0;->a(ILjava/util/List;LO0/X;)Lm0/f0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v4}, LB0/X;->v(Lm0/f0;Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

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
    iget-boolean v4, p0, LB0/X;->j0:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, LB0/X;->i0:LB0/H0;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_1
    iget-object v5, v3, LB0/F0;->a:LB0/h;

    .line 18
    .line 19
    const/16 v6, 0x12

    .line 20
    .line 21
    invoke-interface {v5, v6, v4}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v3, LB0/F0;->c:LB0/h;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v3, v6, v4}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public final c0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, LB0/X;->p0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, LB0/X;->O()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, LB0/X;->q0:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LB0/X;->Y:LB0/i0;

    .line 11
    .line 12
    iget-object v0, p1, LB0/i0;->j:LB0/f0;

    .line 13
    .line 14
    iget-object p1, p1, LB0/i0;->i:LB0/f0;

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, LB0/X;->U(Z)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, LB0/X;->u(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, LB0/X;->f0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    aget-object v4, v0, v3

    .line 14
    .line 15
    invoke-virtual {v4}, LB0/F0;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v1
.end method

.method public final d0(Lm0/S;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->N:Lp0/I;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lp0/I;->d(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LB0/X;->U:LB0/o;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, LB0/o;->setPlaybackParameters(Lm0/S;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v0, p1, Lm0/S;->a:F

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, p1, v0, v1, v1}, LB0/X;->x(Lm0/S;FZZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/X;->M()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, LB0/X;->U(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e0(LB0/A;)V
    .locals 3

    .line 1
    iput-object p1, p0, LB0/X;->H0:LB0/A;

    .line 2
    .line 3
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 4
    .line 5
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 6
    .line 7
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, LB0/i0;->q:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, v0, LB0/i0;->q:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_0

    .line 36
    .line 37
    iget-object v2, v0, LB0/i0;->q:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, LB0/f0;

    .line 44
    .line 45
    invoke-virtual {v2}, LB0/f0;->i()V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-object p1, v0, LB0/i0;->q:Ljava/util/List;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-object p1, v0, LB0/i0;->m:LB0/f0;

    .line 55
    .line 56
    invoke-virtual {v0}, LB0/i0;->k()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 10

    .line 1
    iget-boolean v0, p0, LB0/X;->f0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, LB0/X;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :cond_0
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_6

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, LB0/F0;->b()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {v4}, LB0/F0;->f()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    goto :goto_5

    .line 32
    :cond_1
    iget v6, v4, LB0/F0;->d:I

    .line 33
    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v8, 0x4

    .line 36
    if-eq v6, v8, :cond_3

    .line 37
    .line 38
    const/4 v9, 0x2

    .line 39
    if-ne v6, v9, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v9, 0x0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    const/4 v9, 0x1

    .line 45
    :goto_2
    if-ne v6, v8, :cond_4

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    const/4 v7, 0x0

    .line 49
    :goto_3
    if-eqz v9, :cond_5

    .line 50
    .line 51
    iget-object v6, v4, LB0/F0;->a:LB0/h;

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_5
    iget-object v6, v4, LB0/F0;->c:LB0/h;

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    :goto_4
    iget-object v8, p0, LB0/X;->U:LB0/o;

    .line 60
    .line 61
    invoke-virtual {v4, v6, v8}, LB0/F0;->a(LB0/h;LB0/o;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v9}, LB0/F0;->i(Z)V

    .line 65
    .line 66
    .line 67
    iput v7, v4, LB0/F0;->d:I

    .line 68
    .line 69
    :goto_5
    iget v6, p0, LB0/X;->z0:I

    .line 70
    .line 71
    invoke-virtual {v4}, LB0/F0;->b()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    sub-int/2addr v5, v4

    .line 76
    sub-int/2addr v6, v5

    .line 77
    iput v6, p0, LB0/X;->z0:I

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    iput-wide v0, p0, LB0/X;->I0:J

    .line 88
    .line 89
    :cond_7
    :goto_6
    return-void
.end method

.method public final f0(I)V
    .locals 2

    .line 1
    iput p1, p0, LB0/X;->u0:I

    .line 2
    .line 3
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 4
    .line 5
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 6
    .line 7
    iget-object v1, p0, LB0/X;->Y:LB0/i0;

    .line 8
    .line 9
    iput p1, v1, LB0/i0;->g:I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, LB0/i0;->r(Lm0/f0;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, LB0/X;->U(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, LB0/X;->f()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, LB0/X;->u(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final g(I)V
    .locals 8

    .line 1
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, LB0/F0;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget-object v0, v0, p1

    .line 10
    .line 11
    iget-object v2, v0, LB0/F0;->a:LB0/h;

    .line 12
    .line 13
    iget-object v3, p0, LB0/X;->U:LB0/o;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, LB0/F0;->a(LB0/h;LB0/o;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iget-object v4, v0, LB0/F0;->c:LB0/h;

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v4}, LB0/h;->getState()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    :goto_0
    if-eqz v5, :cond_1

    .line 34
    .line 35
    iget v5, v0, LB0/F0;->d:I

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    if-eq v5, v7, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v6, 0x0

    .line 42
    :goto_1
    invoke-virtual {v0, v4, v3}, LB0/F0;->a(LB0/h;LB0/o;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, LB0/F0;->i(Z)V

    .line 46
    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/16 v3, 0x11

    .line 54
    .line 55
    iget-object v5, v0, LB0/F0;->a:LB0/h;

    .line 56
    .line 57
    invoke-interface {v4, v3, v5}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput v2, v0, LB0/F0;->d:I

    .line 61
    .line 62
    invoke-virtual {p0, p1, v2}, LB0/X;->G(IZ)V

    .line 63
    .line 64
    .line 65
    iget p1, p0, LB0/X;->z0:I

    .line 66
    .line 67
    sub-int/2addr p1, v1

    .line 68
    iput p1, p0, LB0/X;->z0:I

    .line 69
    .line 70
    return-void
.end method

.method public final g0(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LB0/X;->k0:Z

    .line 5
    .line 6
    iget-object v1, p0, LB0/X;->N:Lp0/I;

    .line 7
    .line 8
    const/16 v2, 0x25

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lp0/I;->d(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, LB0/X;->l0:LB0/W;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, LB0/X;->V(LB0/W;Z)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, LB0/X;->l0:LB0/W;

    .line 22
    .line 23
    :cond_0
    iput-boolean p1, p0, LB0/X;->j0:Z

    .line 24
    .line 25
    invoke-virtual {p0}, LB0/X;->c()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h()V
    .locals 33

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-object v0, v11, LB0/X;->W:Lp0/f;

    .line 4
    .line 5
    check-cast v0, Lp0/G;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v12

    .line 14
    iget-object v0, v11, LB0/X;->N:Lp0/I;

    .line 15
    .line 16
    const/4 v14, 0x2

    .line 17
    invoke-virtual {v0, v14}, Lp0/I;->d(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 21
    .line 22
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, v11, LB0/X;->Z:LB0/u0;

    .line 38
    .line 39
    iget-boolean v0, v0, LB0/u0;->k:Z

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    :cond_0
    const/4 v14, 0x3

    .line 44
    goto/16 :goto_30

    .line 45
    .line 46
    :cond_1
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 47
    .line 48
    iget-wide v1, v11, LB0/X;->B0:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, LB0/i0;->m(J)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 54
    .line 55
    iget-object v1, v0, LB0/i0;->l:LB0/f0;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v2, v1, LB0/f0;->g:LB0/g0;

    .line 60
    .line 61
    iget-boolean v2, v2, LB0/g0;->j:Z

    .line 62
    .line 63
    if-nez v2, :cond_e

    .line 64
    .line 65
    invoke-virtual {v1}, LB0/f0;->g()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_e

    .line 70
    .line 71
    iget-object v1, v0, LB0/i0;->l:LB0/f0;

    .line 72
    .line 73
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 74
    .line 75
    iget-wide v1, v1, LB0/g0;->e:J

    .line 76
    .line 77
    cmp-long v3, v1, v9

    .line 78
    .line 79
    if-eqz v3, :cond_e

    .line 80
    .line 81
    iget v0, v0, LB0/i0;->n:I

    .line 82
    .line 83
    const/16 v1, 0x64

    .line 84
    .line 85
    if-ge v0, v1, :cond_e

    .line 86
    .line 87
    :cond_2
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 88
    .line 89
    iget-wide v1, v11, LB0/X;->B0:J

    .line 90
    .line 91
    iget-object v3, v11, LB0/X;->m0:LB0/v0;

    .line 92
    .line 93
    iget-object v4, v0, LB0/i0;->l:LB0/f0;

    .line 94
    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    iget-object v1, v3, LB0/v0;->a:Lm0/f0;

    .line 98
    .line 99
    iget-object v2, v3, LB0/v0;->b:LO0/y;

    .line 100
    .line 101
    iget-wide v5, v3, LB0/v0;->c:J

    .line 102
    .line 103
    iget-wide v3, v3, LB0/v0;->s:J

    .line 104
    .line 105
    move-object/from16 v16, v0

    .line 106
    .line 107
    move-object/from16 v17, v1

    .line 108
    .line 109
    move-object/from16 v18, v2

    .line 110
    .line 111
    move-wide/from16 v19, v5

    .line 112
    .line 113
    move-wide/from16 v21, v3

    .line 114
    .line 115
    invoke-virtual/range {v16 .. v22}, LB0/i0;->e(Lm0/f0;LO0/y;JJ)LB0/g0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-object v3, v3, LB0/v0;->a:Lm0/f0;

    .line 121
    .line 122
    invoke-virtual {v0, v3, v4, v1, v2}, LB0/i0;->d(Lm0/f0;LB0/f0;J)LB0/g0;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :goto_0
    if-eqz v0, :cond_e

    .line 127
    .line 128
    iget-object v1, v11, LB0/X;->Y:LB0/i0;

    .line 129
    .line 130
    iget-object v2, v1, LB0/i0;->l:LB0/f0;

    .line 131
    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    const-wide v2, 0xe8d4a51000L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    iget-wide v3, v2, LB0/f0;->p:J

    .line 141
    .line 142
    iget-object v2, v2, LB0/f0;->g:LB0/g0;

    .line 143
    .line 144
    iget-wide v5, v2, LB0/g0;->e:J

    .line 145
    .line 146
    add-long/2addr v3, v5

    .line 147
    iget-wide v5, v0, LB0/g0;->b:J

    .line 148
    .line 149
    sub-long/2addr v3, v5

    .line 150
    move-wide v2, v3

    .line 151
    :goto_1
    const/4 v4, 0x0

    .line 152
    :goto_2
    iget-object v5, v1, LB0/i0;->q:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-ge v4, v5, :cond_7

    .line 159
    .line 160
    iget-object v5, v1, LB0/i0;->q:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, LB0/f0;

    .line 167
    .line 168
    iget-object v5, v5, LB0/f0;->g:LB0/g0;

    .line 169
    .line 170
    iget-wide v14, v5, LB0/g0;->e:J

    .line 171
    .line 172
    cmp-long v6, v14, v9

    .line 173
    .line 174
    if-eqz v6, :cond_5

    .line 175
    .line 176
    iget-wide v9, v0, LB0/g0;->e:J

    .line 177
    .line 178
    cmp-long v6, v14, v9

    .line 179
    .line 180
    if-nez v6, :cond_6

    .line 181
    .line 182
    :cond_5
    iget-wide v9, v5, LB0/g0;->b:J

    .line 183
    .line 184
    iget-wide v14, v0, LB0/g0;->b:J

    .line 185
    .line 186
    cmp-long v6, v9, v14

    .line 187
    .line 188
    if-nez v6, :cond_6

    .line 189
    .line 190
    iget-object v5, v5, LB0/g0;->a:LO0/y;

    .line 191
    .line 192
    iget-object v6, v0, LB0/g0;->a:LO0/y;

    .line 193
    .line 194
    invoke-virtual {v5, v6}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_6

    .line 199
    .line 200
    iget-object v5, v1, LB0/i0;->q:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, LB0/f0;

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 210
    .line 211
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    const/4 v14, 0x2

    .line 217
    goto :goto_2

    .line 218
    :cond_7
    move-object v4, v8

    .line 219
    :goto_3
    if-nez v4, :cond_8

    .line 220
    .line 221
    iget-object v4, v1, LB0/i0;->e:LB0/x;

    .line 222
    .line 223
    iget-object v4, v4, LB0/x;->H:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v4, LB0/X;

    .line 226
    .line 227
    new-instance v5, LB0/f0;

    .line 228
    .line 229
    iget-object v6, v4, LB0/X;->L:LB0/b0;

    .line 230
    .line 231
    check-cast v6, LB0/m;

    .line 232
    .line 233
    iget-object v6, v6, LB0/m;->a:LS0/d;

    .line 234
    .line 235
    iget-object v9, v4, LB0/X;->H0:LB0/A;

    .line 236
    .line 237
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    iget-object v9, v4, LB0/X;->Z:LB0/u0;

    .line 241
    .line 242
    iget-object v10, v4, LB0/X;->K:LR0/y;

    .line 243
    .line 244
    iget-object v14, v4, LB0/X;->H:[LB0/D0;

    .line 245
    .line 246
    iget-object v4, v4, LB0/X;->J:LR0/w;

    .line 247
    .line 248
    move-object/from16 v24, v5

    .line 249
    .line 250
    move-object/from16 v25, v14

    .line 251
    .line 252
    move-wide/from16 v26, v2

    .line 253
    .line 254
    move-object/from16 v28, v4

    .line 255
    .line 256
    move-object/from16 v29, v6

    .line 257
    .line 258
    move-object/from16 v30, v9

    .line 259
    .line 260
    move-object/from16 v31, v0

    .line 261
    .line 262
    move-object/from16 v32, v10

    .line 263
    .line 264
    invoke-direct/range {v24 .. v32}, LB0/f0;-><init>([LB0/D0;JLR0/w;LS0/d;LB0/u0;LB0/g0;LR0/y;)V

    .line 265
    .line 266
    .line 267
    move-object v4, v5

    .line 268
    goto :goto_4

    .line 269
    :cond_8
    iput-object v0, v4, LB0/f0;->g:LB0/g0;

    .line 270
    .line 271
    iput-wide v2, v4, LB0/f0;->p:J

    .line 272
    .line 273
    :goto_4
    iget-object v2, v1, LB0/i0;->l:LB0/f0;

    .line 274
    .line 275
    if-eqz v2, :cond_a

    .line 276
    .line 277
    iget-object v3, v2, LB0/f0;->m:LB0/f0;

    .line 278
    .line 279
    if-ne v4, v3, :cond_9

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_9
    invoke-virtual {v2}, LB0/f0;->b()V

    .line 283
    .line 284
    .line 285
    iput-object v4, v2, LB0/f0;->m:LB0/f0;

    .line 286
    .line 287
    invoke-virtual {v2}, LB0/f0;->c()V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_a
    iput-object v4, v1, LB0/i0;->i:LB0/f0;

    .line 292
    .line 293
    iput-object v4, v1, LB0/i0;->j:LB0/f0;

    .line 294
    .line 295
    iput-object v4, v1, LB0/i0;->k:LB0/f0;

    .line 296
    .line 297
    :goto_5
    iput-object v8, v1, LB0/i0;->o:Ljava/lang/Object;

    .line 298
    .line 299
    iput-object v4, v1, LB0/i0;->l:LB0/f0;

    .line 300
    .line 301
    iget v2, v1, LB0/i0;->n:I

    .line 302
    .line 303
    add-int/2addr v2, v7

    .line 304
    iput v2, v1, LB0/i0;->n:I

    .line 305
    .line 306
    invoke-virtual {v1}, LB0/i0;->l()V

    .line 307
    .line 308
    .line 309
    iget-boolean v1, v4, LB0/f0;->d:Z

    .line 310
    .line 311
    if-nez v1, :cond_b

    .line 312
    .line 313
    iget-wide v1, v0, LB0/g0;->b:J

    .line 314
    .line 315
    iput-boolean v7, v4, LB0/f0;->d:Z

    .line 316
    .line 317
    iget-object v3, v4, LB0/f0;->a:LO0/w;

    .line 318
    .line 319
    invoke-interface {v3, v11, v1, v2}, LO0/w;->m(LO0/v;J)V

    .line 320
    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_b
    iget-boolean v1, v4, LB0/f0;->e:Z

    .line 324
    .line 325
    if-eqz v1, :cond_c

    .line 326
    .line 327
    iget-object v1, v11, LB0/X;->N:Lp0/I;

    .line 328
    .line 329
    iget-object v2, v4, LB0/f0;->a:LO0/w;

    .line 330
    .line 331
    const/16 v3, 0x8

    .line 332
    .line 333
    invoke-virtual {v1, v3, v2}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lp0/H;->b()V

    .line 338
    .line 339
    .line 340
    :cond_c
    :goto_6
    iget-object v1, v11, LB0/X;->Y:LB0/i0;

    .line 341
    .line 342
    iget-object v1, v1, LB0/i0;->i:LB0/f0;

    .line 343
    .line 344
    if-ne v1, v4, :cond_d

    .line 345
    .line 346
    iget-wide v0, v0, LB0/g0;->b:J

    .line 347
    .line 348
    invoke-virtual {v11, v0, v1}, LB0/X;->P(J)V

    .line 349
    .line 350
    .line 351
    :cond_d
    const/4 v0, 0x0

    .line 352
    invoke-virtual {v11, v0}, LB0/X;->u(Z)V

    .line 353
    .line 354
    .line 355
    :cond_e
    iget-boolean v0, v11, LB0/X;->t0:Z

    .line 356
    .line 357
    if-eqz v0, :cond_f

    .line 358
    .line 359
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 360
    .line 361
    iget-object v0, v0, LB0/i0;->l:LB0/f0;

    .line 362
    .line 363
    invoke-static {v0}, LB0/X;->z(LB0/f0;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    iput-boolean v0, v11, LB0/X;->t0:Z

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, LB0/X;->u0()V

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_f
    invoke-virtual/range {p0 .. p0}, LB0/X;->C()V

    .line 374
    .line 375
    .line 376
    :goto_7
    iget-boolean v0, v11, LB0/X;->q0:Z

    .line 377
    .line 378
    if-nez v0, :cond_12

    .line 379
    .line 380
    iget-boolean v0, v11, LB0/X;->f0:Z

    .line 381
    .line 382
    if-eqz v0, :cond_12

    .line 383
    .line 384
    iget-boolean v0, v11, LB0/X;->J0:Z

    .line 385
    .line 386
    if-nez v0, :cond_12

    .line 387
    .line 388
    invoke-virtual/range {p0 .. p0}, LB0/X;->d()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_10

    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_10
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 396
    .line 397
    iget-object v1, v0, LB0/i0;->k:LB0/f0;

    .line 398
    .line 399
    if-eqz v1, :cond_12

    .line 400
    .line 401
    iget-object v2, v0, LB0/i0;->j:LB0/f0;

    .line 402
    .line 403
    if-ne v1, v2, :cond_12

    .line 404
    .line 405
    iget-object v1, v1, LB0/f0;->m:LB0/f0;

    .line 406
    .line 407
    if-eqz v1, :cond_12

    .line 408
    .line 409
    iget-boolean v2, v1, LB0/f0;->e:Z

    .line 410
    .line 411
    if-nez v2, :cond_11

    .line 412
    .line 413
    goto :goto_8

    .line 414
    :cond_11
    iput-object v1, v0, LB0/i0;->k:LB0/f0;

    .line 415
    .line 416
    invoke-virtual {v0}, LB0/i0;->l()V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, LB0/i0;->k:LB0/f0;

    .line 420
    .line 421
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    iget-object v9, v0, LB0/i0;->k:LB0/f0;

    .line 425
    .line 426
    if-nez v9, :cond_13

    .line 427
    .line 428
    :cond_12
    :goto_8
    const/4 v10, 0x3

    .line 429
    const/4 v15, 0x4

    .line 430
    goto/16 :goto_c

    .line 431
    .line 432
    :cond_13
    iget-object v10, v9, LB0/f0;->o:LR0/y;

    .line 433
    .line 434
    const/4 v14, 0x0

    .line 435
    :goto_9
    iget-object v1, v11, LB0/X;->G:[LB0/F0;

    .line 436
    .line 437
    array-length v2, v1

    .line 438
    if-ge v14, v2, :cond_17

    .line 439
    .line 440
    invoke-virtual {v10, v14}, LR0/y;->b(I)Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-eqz v2, :cond_16

    .line 445
    .line 446
    aget-object v2, v1, v14

    .line 447
    .line 448
    iget-object v3, v2, LB0/F0;->c:LB0/h;

    .line 449
    .line 450
    if-eqz v3, :cond_16

    .line 451
    .line 452
    invoke-virtual {v2}, LB0/F0;->f()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-nez v2, :cond_16

    .line 457
    .line 458
    aget-object v1, v1, v14

    .line 459
    .line 460
    invoke-virtual {v1}, LB0/F0;->f()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    xor-int/2addr v2, v7

    .line 465
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v1, LB0/F0;->a:LB0/h;

    .line 469
    .line 470
    invoke-static {v2}, LB0/F0;->h(LB0/h;)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_14

    .line 475
    .line 476
    const/4 v2, 0x3

    .line 477
    goto :goto_a

    .line 478
    :cond_14
    iget-object v2, v1, LB0/F0;->c:LB0/h;

    .line 479
    .line 480
    if-eqz v2, :cond_15

    .line 481
    .line 482
    invoke-virtual {v2}, LB0/h;->getState()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_15

    .line 487
    .line 488
    const/4 v2, 0x4

    .line 489
    goto :goto_a

    .line 490
    :cond_15
    const/4 v2, 0x2

    .line 491
    :goto_a
    iput v2, v1, LB0/F0;->d:I

    .line 492
    .line 493
    const/4 v4, 0x0

    .line 494
    invoke-virtual {v9}, LB0/f0;->e()J

    .line 495
    .line 496
    .line 497
    move-result-wide v5

    .line 498
    move-object/from16 v1, p0

    .line 499
    .line 500
    move-object v2, v9

    .line 501
    move v3, v14

    .line 502
    move-object/from16 v20, v10

    .line 503
    .line 504
    const/4 v10, 0x3

    .line 505
    const/4 v15, 0x4

    .line 506
    invoke-virtual/range {v1 .. v6}, LB0/X;->i(LB0/f0;IZJ)V

    .line 507
    .line 508
    .line 509
    goto :goto_b

    .line 510
    :cond_16
    move-object/from16 v20, v10

    .line 511
    .line 512
    const/4 v10, 0x3

    .line 513
    const/4 v15, 0x4

    .line 514
    :goto_b
    add-int/lit8 v14, v14, 0x1

    .line 515
    .line 516
    move-object/from16 v10, v20

    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_17
    const/4 v10, 0x3

    .line 520
    const/4 v15, 0x4

    .line 521
    invoke-virtual/range {p0 .. p0}, LB0/X;->d()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_18

    .line 526
    .line 527
    iget-object v1, v9, LB0/f0;->a:LO0/w;

    .line 528
    .line 529
    invoke-interface {v1}, LO0/w;->q()J

    .line 530
    .line 531
    .line 532
    move-result-wide v1

    .line 533
    iput-wide v1, v11, LB0/X;->I0:J

    .line 534
    .line 535
    invoke-virtual {v9}, LB0/f0;->g()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-nez v1, :cond_18

    .line 540
    .line 541
    invoke-virtual {v0, v9}, LB0/i0;->n(LB0/f0;)I

    .line 542
    .line 543
    .line 544
    const/4 v0, 0x0

    .line 545
    invoke-virtual {v11, v0}, LB0/X;->u(Z)V

    .line 546
    .line 547
    .line 548
    invoke-virtual/range {p0 .. p0}, LB0/X;->C()V

    .line 549
    .line 550
    .line 551
    :cond_18
    :goto_c
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 552
    .line 553
    iget-object v1, v0, LB0/i0;->j:LB0/f0;

    .line 554
    .line 555
    if-nez v1, :cond_1a

    .line 556
    .line 557
    :cond_19
    :goto_d
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    goto/16 :goto_1d

    .line 563
    .line 564
    :cond_1a
    iget-object v2, v1, LB0/f0;->m:LB0/f0;

    .line 565
    .line 566
    iget-object v9, v11, LB0/X;->G:[LB0/F0;

    .line 567
    .line 568
    if-eqz v2, :cond_31

    .line 569
    .line 570
    iget-boolean v2, v11, LB0/X;->q0:Z

    .line 571
    .line 572
    if-eqz v2, :cond_1b

    .line 573
    .line 574
    goto/16 :goto_19

    .line 575
    .line 576
    :cond_1b
    iget-boolean v2, v1, LB0/f0;->e:Z

    .line 577
    .line 578
    if-nez v2, :cond_1c

    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_1c
    const/4 v2, 0x0

    .line 582
    :goto_e
    array-length v3, v9

    .line 583
    if-ge v2, v3, :cond_1d

    .line 584
    .line 585
    aget-object v3, v9, v2

    .line 586
    .line 587
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 588
    .line 589
    invoke-virtual {v3, v4, v1}, LB0/F0;->e(LB0/h;LB0/f0;)Z

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    if-eqz v4, :cond_19

    .line 594
    .line 595
    iget-object v4, v3, LB0/F0;->c:LB0/h;

    .line 596
    .line 597
    invoke-virtual {v3, v4, v1}, LB0/F0;->e(LB0/h;LB0/f0;)Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-eqz v3, :cond_19

    .line 602
    .line 603
    add-int/lit8 v2, v2, 0x1

    .line 604
    .line 605
    goto :goto_e

    .line 606
    :cond_1d
    invoke-virtual/range {p0 .. p0}, LB0/X;->d()Z

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    if-eqz v2, :cond_1e

    .line 611
    .line 612
    iget-object v2, v0, LB0/i0;->k:LB0/f0;

    .line 613
    .line 614
    iget-object v3, v0, LB0/i0;->j:LB0/f0;

    .line 615
    .line 616
    if-ne v2, v3, :cond_1e

    .line 617
    .line 618
    goto :goto_d

    .line 619
    :cond_1e
    iget-object v2, v1, LB0/f0;->m:LB0/f0;

    .line 620
    .line 621
    iget-boolean v3, v2, LB0/f0;->e:Z

    .line 622
    .line 623
    if-nez v3, :cond_1f

    .line 624
    .line 625
    iget-wide v3, v11, LB0/X;->B0:J

    .line 626
    .line 627
    invoke-virtual {v2}, LB0/f0;->e()J

    .line 628
    .line 629
    .line 630
    move-result-wide v5

    .line 631
    cmp-long v2, v3, v5

    .line 632
    .line 633
    if-gez v2, :cond_1f

    .line 634
    .line 635
    goto :goto_d

    .line 636
    :cond_1f
    iget-object v14, v1, LB0/f0;->o:LR0/y;

    .line 637
    .line 638
    iget-object v2, v0, LB0/i0;->k:LB0/f0;

    .line 639
    .line 640
    iget-object v3, v0, LB0/i0;->j:LB0/f0;

    .line 641
    .line 642
    if-ne v2, v3, :cond_20

    .line 643
    .line 644
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    iget-object v2, v3, LB0/f0;->m:LB0/f0;

    .line 648
    .line 649
    iput-object v2, v0, LB0/i0;->k:LB0/f0;

    .line 650
    .line 651
    :cond_20
    iget-object v2, v0, LB0/i0;->j:LB0/f0;

    .line 652
    .line 653
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    iget-object v2, v2, LB0/f0;->m:LB0/f0;

    .line 657
    .line 658
    iput-object v2, v0, LB0/i0;->j:LB0/f0;

    .line 659
    .line 660
    invoke-virtual {v0}, LB0/i0;->l()V

    .line 661
    .line 662
    .line 663
    iget-object v6, v0, LB0/i0;->j:LB0/f0;

    .line 664
    .line 665
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    iget-object v5, v6, LB0/f0;->o:LR0/y;

    .line 669
    .line 670
    iget-object v2, v11, LB0/X;->m0:LB0/v0;

    .line 671
    .line 672
    iget-object v4, v2, LB0/v0;->a:Lm0/f0;

    .line 673
    .line 674
    iget-object v2, v6, LB0/f0;->g:LB0/g0;

    .line 675
    .line 676
    iget-object v3, v2, LB0/g0;->a:LO0/y;

    .line 677
    .line 678
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 679
    .line 680
    iget-object v2, v1, LB0/g0;->a:LO0/y;

    .line 681
    .line 682
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    const/16 v22, 0x0

    .line 688
    .line 689
    move-object/from16 v1, p0

    .line 690
    .line 691
    move-object/from16 v23, v2

    .line 692
    .line 693
    move-object v2, v4

    .line 694
    move-object v10, v5

    .line 695
    move-object/from16 v5, v23

    .line 696
    .line 697
    move-object v15, v6

    .line 698
    move-wide/from16 v6, v20

    .line 699
    .line 700
    move/from16 v8, v22

    .line 701
    .line 702
    invoke-virtual/range {v1 .. v8}, LB0/X;->z0(Lm0/f0;LO0/y;Lm0/f0;LO0/y;JZ)V

    .line 703
    .line 704
    .line 705
    iget-boolean v1, v15, LB0/f0;->e:Z

    .line 706
    .line 707
    const/4 v2, -0x2

    .line 708
    if-eqz v1, :cond_2a

    .line 709
    .line 710
    iget-boolean v1, v11, LB0/X;->f0:Z

    .line 711
    .line 712
    if-eqz v1, :cond_21

    .line 713
    .line 714
    iget-wide v3, v11, LB0/X;->I0:J

    .line 715
    .line 716
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    cmp-long v7, v3, v5

    .line 722
    .line 723
    if-nez v7, :cond_22

    .line 724
    .line 725
    goto :goto_f

    .line 726
    :cond_21
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :goto_f
    iget-object v3, v15, LB0/f0;->a:LO0/w;

    .line 732
    .line 733
    invoke-interface {v3}, LO0/w;->q()J

    .line 734
    .line 735
    .line 736
    move-result-wide v3

    .line 737
    cmp-long v7, v3, v5

    .line 738
    .line 739
    if-eqz v7, :cond_2a

    .line 740
    .line 741
    :cond_22
    iput-wide v5, v11, LB0/X;->I0:J

    .line 742
    .line 743
    if-eqz v1, :cond_23

    .line 744
    .line 745
    iget-boolean v1, v11, LB0/X;->J0:Z

    .line 746
    .line 747
    if-nez v1, :cond_23

    .line 748
    .line 749
    const/4 v7, 0x1

    .line 750
    goto :goto_10

    .line 751
    :cond_23
    const/4 v7, 0x0

    .line 752
    :goto_10
    if-eqz v7, :cond_26

    .line 753
    .line 754
    const/4 v1, 0x0

    .line 755
    :goto_11
    array-length v3, v9

    .line 756
    if-ge v1, v3, :cond_26

    .line 757
    .line 758
    invoke-virtual {v10, v1}, LR0/y;->b(I)Z

    .line 759
    .line 760
    .line 761
    move-result v3

    .line 762
    if-eqz v3, :cond_25

    .line 763
    .line 764
    aget-object v3, v9, v1

    .line 765
    .line 766
    iget-object v3, v3, LB0/F0;->a:LB0/h;

    .line 767
    .line 768
    invoke-virtual {v3}, LB0/h;->getTrackType()I

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    if-ne v3, v2, :cond_24

    .line 773
    .line 774
    goto :goto_12

    .line 775
    :cond_24
    iget-object v3, v10, LR0/y;->c:[LR0/t;

    .line 776
    .line 777
    aget-object v4, v3, v1

    .line 778
    .line 779
    check-cast v4, LR0/c;

    .line 780
    .line 781
    invoke-virtual {v4}, LR0/c;->l()Lm0/t;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    iget-object v4, v4, Lm0/t;->o:Ljava/lang/String;

    .line 786
    .line 787
    aget-object v3, v3, v1

    .line 788
    .line 789
    check-cast v3, LR0/c;

    .line 790
    .line 791
    invoke-virtual {v3}, LR0/c;->l()Lm0/t;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    iget-object v3, v3, Lm0/t;->k:Ljava/lang/String;

    .line 796
    .line 797
    invoke-static {v4, v3}, Lm0/O;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    if-nez v3, :cond_25

    .line 802
    .line 803
    aget-object v3, v9, v1

    .line 804
    .line 805
    invoke-virtual {v3}, LB0/F0;->f()Z

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    if-nez v3, :cond_25

    .line 810
    .line 811
    goto :goto_13

    .line 812
    :cond_25
    :goto_12
    add-int/lit8 v1, v1, 0x1

    .line 813
    .line 814
    goto :goto_11

    .line 815
    :cond_26
    if-nez v7, :cond_2a

    .line 816
    .line 817
    :goto_13
    invoke-virtual {v15}, LB0/f0;->e()J

    .line 818
    .line 819
    .line 820
    move-result-wide v1

    .line 821
    array-length v3, v9

    .line 822
    const/4 v4, 0x0

    .line 823
    :goto_14
    if-ge v4, v3, :cond_29

    .line 824
    .line 825
    aget-object v5, v9, v4

    .line 826
    .line 827
    iget-object v6, v5, LB0/F0;->a:LB0/h;

    .line 828
    .line 829
    invoke-static {v6}, LB0/F0;->h(LB0/h;)Z

    .line 830
    .line 831
    .line 832
    move-result v7

    .line 833
    if-eqz v7, :cond_27

    .line 834
    .line 835
    iget v7, v5, LB0/F0;->d:I

    .line 836
    .line 837
    const/4 v8, 0x4

    .line 838
    if-eq v7, v8, :cond_27

    .line 839
    .line 840
    const/4 v8, 0x2

    .line 841
    if-eq v7, v8, :cond_27

    .line 842
    .line 843
    invoke-static {v6, v1, v2}, LB0/F0;->l(LB0/h;J)V

    .line 844
    .line 845
    .line 846
    :cond_27
    iget-object v6, v5, LB0/F0;->c:LB0/h;

    .line 847
    .line 848
    if-eqz v6, :cond_28

    .line 849
    .line 850
    invoke-virtual {v6}, LB0/h;->getState()I

    .line 851
    .line 852
    .line 853
    move-result v7

    .line 854
    if-eqz v7, :cond_28

    .line 855
    .line 856
    iget v5, v5, LB0/F0;->d:I

    .line 857
    .line 858
    const/4 v7, 0x3

    .line 859
    if-eq v5, v7, :cond_28

    .line 860
    .line 861
    invoke-static {v6, v1, v2}, LB0/F0;->l(LB0/h;J)V

    .line 862
    .line 863
    .line 864
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 865
    .line 866
    goto :goto_14

    .line 867
    :cond_29
    invoke-virtual {v15}, LB0/f0;->g()Z

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-nez v1, :cond_19

    .line 872
    .line 873
    invoke-virtual {v0, v15}, LB0/i0;->n(LB0/f0;)I

    .line 874
    .line 875
    .line 876
    const/4 v0, 0x0

    .line 877
    invoke-virtual {v11, v0}, LB0/X;->u(Z)V

    .line 878
    .line 879
    .line 880
    invoke-virtual/range {p0 .. p0}, LB0/X;->C()V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_d

    .line 884
    .line 885
    :cond_2a
    array-length v0, v9

    .line 886
    const/4 v1, 0x0

    .line 887
    :goto_15
    if-ge v1, v0, :cond_19

    .line 888
    .line 889
    aget-object v3, v9, v1

    .line 890
    .line 891
    invoke-virtual {v15}, LB0/f0;->e()J

    .line 892
    .line 893
    .line 894
    move-result-wide v4

    .line 895
    iget v6, v3, LB0/F0;->b:I

    .line 896
    .line 897
    invoke-virtual {v14, v6}, LR0/y;->b(I)Z

    .line 898
    .line 899
    .line 900
    move-result v7

    .line 901
    invoke-virtual {v10, v6}, LR0/y;->b(I)Z

    .line 902
    .line 903
    .line 904
    move-result v8

    .line 905
    iget-object v2, v3, LB0/F0;->a:LB0/h;

    .line 906
    .line 907
    move/from16 v21, v0

    .line 908
    .line 909
    iget-object v0, v3, LB0/F0;->c:LB0/h;

    .line 910
    .line 911
    if-eqz v0, :cond_2c

    .line 912
    .line 913
    move-object/from16 v22, v0

    .line 914
    .line 915
    iget v0, v3, LB0/F0;->d:I

    .line 916
    .line 917
    move-object/from16 v24, v15

    .line 918
    .line 919
    const/4 v15, 0x3

    .line 920
    if-eq v0, v15, :cond_2d

    .line 921
    .line 922
    if-nez v0, :cond_2b

    .line 923
    .line 924
    invoke-static {v2}, LB0/F0;->h(LB0/h;)Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-eqz v0, :cond_2b

    .line 929
    .line 930
    goto :goto_16

    .line 931
    :cond_2b
    move-object/from16 v0, v22

    .line 932
    .line 933
    goto :goto_17

    .line 934
    :cond_2c
    move-object/from16 v24, v15

    .line 935
    .line 936
    const/4 v15, 0x3

    .line 937
    :cond_2d
    :goto_16
    move-object v0, v2

    .line 938
    :goto_17
    if-eqz v7, :cond_30

    .line 939
    .line 940
    invoke-virtual {v0}, LB0/h;->isCurrentStreamFinal()Z

    .line 941
    .line 942
    .line 943
    move-result v7

    .line 944
    if-nez v7, :cond_30

    .line 945
    .line 946
    invoke-virtual {v2}, LB0/h;->getTrackType()I

    .line 947
    .line 948
    .line 949
    move-result v2

    .line 950
    const/4 v7, -0x2

    .line 951
    if-ne v2, v7, :cond_2e

    .line 952
    .line 953
    const/4 v2, 0x1

    .line 954
    goto :goto_18

    .line 955
    :cond_2e
    const/4 v2, 0x0

    .line 956
    :goto_18
    iget-object v7, v14, LR0/y;->b:[LB0/E0;

    .line 957
    .line 958
    aget-object v7, v7, v6

    .line 959
    .line 960
    iget-object v15, v10, LR0/y;->b:[LB0/E0;

    .line 961
    .line 962
    aget-object v6, v15, v6

    .line 963
    .line 964
    if-eqz v8, :cond_2f

    .line 965
    .line 966
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result v6

    .line 970
    if-eqz v6, :cond_2f

    .line 971
    .line 972
    if-nez v2, :cond_2f

    .line 973
    .line 974
    invoke-virtual {v3}, LB0/F0;->f()Z

    .line 975
    .line 976
    .line 977
    move-result v2

    .line 978
    if-eqz v2, :cond_30

    .line 979
    .line 980
    :cond_2f
    invoke-static {v0, v4, v5}, LB0/F0;->l(LB0/h;J)V

    .line 981
    .line 982
    .line 983
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 984
    .line 985
    move/from16 v0, v21

    .line 986
    .line 987
    move-object/from16 v15, v24

    .line 988
    .line 989
    const/4 v2, -0x2

    .line 990
    goto :goto_15

    .line 991
    :cond_31
    :goto_19
    iget-object v0, v1, LB0/f0;->g:LB0/g0;

    .line 992
    .line 993
    iget-boolean v0, v0, LB0/g0;->j:Z

    .line 994
    .line 995
    if-nez v0, :cond_32

    .line 996
    .line 997
    iget-boolean v0, v11, LB0/X;->q0:Z

    .line 998
    .line 999
    if-eqz v0, :cond_19

    .line 1000
    .line 1001
    :cond_32
    array-length v0, v9

    .line 1002
    const/4 v2, 0x0

    .line 1003
    :goto_1a
    if-ge v2, v0, :cond_19

    .line 1004
    .line 1005
    aget-object v3, v9, v2

    .line 1006
    .line 1007
    invoke-virtual {v3, v1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v4

    .line 1011
    if-eqz v4, :cond_34

    .line 1012
    .line 1013
    invoke-virtual {v3, v1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v4}, LB0/h;->hasReadStreamToEnd()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v4

    .line 1024
    if-eqz v4, :cond_34

    .line 1025
    .line 1026
    iget-object v4, v1, LB0/f0;->g:LB0/g0;

    .line 1027
    .line 1028
    iget-wide v4, v4, LB0/g0;->e:J

    .line 1029
    .line 1030
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    cmp-long v6, v4, v14

    .line 1036
    .line 1037
    if-eqz v6, :cond_33

    .line 1038
    .line 1039
    const-wide/high16 v6, -0x8000000000000000L

    .line 1040
    .line 1041
    cmp-long v8, v4, v6

    .line 1042
    .line 1043
    if-eqz v8, :cond_33

    .line 1044
    .line 1045
    iget-wide v6, v1, LB0/f0;->p:J

    .line 1046
    .line 1047
    add-long v5, v6, v4

    .line 1048
    .line 1049
    goto :goto_1b

    .line 1050
    :cond_33
    move-wide v5, v14

    .line 1051
    :goto_1b
    invoke-virtual {v3, v1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v3, v5, v6}, LB0/F0;->l(LB0/h;J)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_1c

    .line 1062
    :cond_34
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    .line 1068
    .line 1069
    goto :goto_1a

    .line 1070
    :goto_1d
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 1071
    .line 1072
    iget-object v7, v0, LB0/i0;->j:LB0/f0;

    .line 1073
    .line 1074
    if-eqz v7, :cond_35

    .line 1075
    .line 1076
    iget-object v1, v0, LB0/i0;->i:LB0/f0;

    .line 1077
    .line 1078
    if-eq v1, v7, :cond_35

    .line 1079
    .line 1080
    iget-boolean v1, v7, LB0/f0;->h:Z

    .line 1081
    .line 1082
    if-eqz v1, :cond_36

    .line 1083
    .line 1084
    :cond_35
    const/4 v14, 0x1

    .line 1085
    goto/16 :goto_23

    .line 1086
    .line 1087
    :cond_36
    iget-object v8, v7, LB0/f0;->o:LR0/y;

    .line 1088
    .line 1089
    const/4 v1, 0x0

    .line 1090
    const/4 v9, 0x1

    .line 1091
    :goto_1e
    iget-object v10, v11, LB0/X;->G:[LB0/F0;

    .line 1092
    .line 1093
    array-length v2, v10

    .line 1094
    if-ge v1, v2, :cond_3b

    .line 1095
    .line 1096
    aget-object v2, v10, v1

    .line 1097
    .line 1098
    invoke-virtual {v2}, LB0/F0;->b()I

    .line 1099
    .line 1100
    .line 1101
    move-result v2

    .line 1102
    aget-object v3, v10, v1

    .line 1103
    .line 1104
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 1105
    .line 1106
    iget-object v5, v11, LB0/X;->U:LB0/o;

    .line 1107
    .line 1108
    invoke-virtual {v3, v4, v7, v8, v5}, LB0/F0;->j(LB0/h;LB0/f0;LR0/y;LB0/o;)I

    .line 1109
    .line 1110
    .line 1111
    move-result v4

    .line 1112
    iget-object v6, v3, LB0/F0;->c:LB0/h;

    .line 1113
    .line 1114
    invoke-virtual {v3, v6, v7, v8, v5}, LB0/F0;->j(LB0/h;LB0/f0;LR0/y;LB0/o;)I

    .line 1115
    .line 1116
    .line 1117
    move-result v3

    .line 1118
    const/4 v5, 0x1

    .line 1119
    if-ne v4, v5, :cond_37

    .line 1120
    .line 1121
    move v4, v3

    .line 1122
    :cond_37
    and-int/lit8 v3, v4, 0x2

    .line 1123
    .line 1124
    if-eqz v3, :cond_39

    .line 1125
    .line 1126
    iget-boolean v3, v11, LB0/X;->y0:Z

    .line 1127
    .line 1128
    if-eqz v3, :cond_39

    .line 1129
    .line 1130
    if-nez v3, :cond_38

    .line 1131
    .line 1132
    goto :goto_1f

    .line 1133
    :cond_38
    const/4 v3, 0x0

    .line 1134
    iput-boolean v3, v11, LB0/X;->y0:Z

    .line 1135
    .line 1136
    iget-object v3, v11, LB0/X;->m0:LB0/v0;

    .line 1137
    .line 1138
    iget-boolean v3, v3, LB0/v0;->p:Z

    .line 1139
    .line 1140
    if-eqz v3, :cond_39

    .line 1141
    .line 1142
    iget-object v3, v11, LB0/X;->N:Lp0/I;

    .line 1143
    .line 1144
    const/4 v6, 0x2

    .line 1145
    invoke-virtual {v3, v6}, Lp0/I;->e(I)Z

    .line 1146
    .line 1147
    .line 1148
    :cond_39
    :goto_1f
    iget v3, v11, LB0/X;->z0:I

    .line 1149
    .line 1150
    aget-object v6, v10, v1

    .line 1151
    .line 1152
    invoke-virtual {v6}, LB0/F0;->b()I

    .line 1153
    .line 1154
    .line 1155
    move-result v6

    .line 1156
    sub-int/2addr v2, v6

    .line 1157
    sub-int/2addr v3, v2

    .line 1158
    iput v3, v11, LB0/X;->z0:I

    .line 1159
    .line 1160
    and-int/lit8 v2, v4, 0x1

    .line 1161
    .line 1162
    if-eqz v2, :cond_3a

    .line 1163
    .line 1164
    const/4 v2, 0x1

    .line 1165
    goto :goto_20

    .line 1166
    :cond_3a
    const/4 v2, 0x0

    .line 1167
    :goto_20
    and-int/2addr v9, v2

    .line 1168
    add-int/lit8 v1, v1, 0x1

    .line 1169
    .line 1170
    goto :goto_1e

    .line 1171
    :cond_3b
    const/4 v5, 0x1

    .line 1172
    if-eqz v9, :cond_3e

    .line 1173
    .line 1174
    const/4 v6, 0x0

    .line 1175
    :goto_21
    array-length v1, v10

    .line 1176
    if-ge v6, v1, :cond_3e

    .line 1177
    .line 1178
    invoke-virtual {v8, v6}, LR0/y;->b(I)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v1

    .line 1182
    if-eqz v1, :cond_3c

    .line 1183
    .line 1184
    aget-object v1, v10, v6

    .line 1185
    .line 1186
    invoke-virtual {v1, v7}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    if-eqz v1, :cond_3d

    .line 1191
    .line 1192
    :cond_3c
    move v15, v6

    .line 1193
    const/4 v14, 0x1

    .line 1194
    goto :goto_22

    .line 1195
    :cond_3d
    const/4 v4, 0x0

    .line 1196
    invoke-virtual {v7}, LB0/f0;->e()J

    .line 1197
    .line 1198
    .line 1199
    move-result-wide v18

    .line 1200
    move-object/from16 v1, p0

    .line 1201
    .line 1202
    move-object v2, v7

    .line 1203
    move v3, v6

    .line 1204
    move v15, v6

    .line 1205
    const/4 v14, 0x1

    .line 1206
    move-wide/from16 v5, v18

    .line 1207
    .line 1208
    invoke-virtual/range {v1 .. v6}, LB0/X;->i(LB0/f0;IZJ)V

    .line 1209
    .line 1210
    .line 1211
    :goto_22
    add-int/lit8 v6, v15, 0x1

    .line 1212
    .line 1213
    const/4 v5, 0x1

    .line 1214
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    goto :goto_21

    .line 1220
    :cond_3e
    const/4 v14, 0x1

    .line 1221
    if-eqz v9, :cond_3f

    .line 1222
    .line 1223
    iget-object v0, v0, LB0/i0;->j:LB0/f0;

    .line 1224
    .line 1225
    iput-boolean v14, v0, LB0/f0;->h:Z

    .line 1226
    .line 1227
    :cond_3f
    :goto_23
    const/4 v7, 0x0

    .line 1228
    :goto_24
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-nez v0, :cond_41

    .line 1233
    .line 1234
    :cond_40
    :goto_25
    const/4 v14, 0x3

    .line 1235
    goto/16 :goto_2f

    .line 1236
    .line 1237
    :cond_41
    iget-boolean v0, v11, LB0/X;->q0:Z

    .line 1238
    .line 1239
    if-eqz v0, :cond_42

    .line 1240
    .line 1241
    goto :goto_25

    .line 1242
    :cond_42
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 1243
    .line 1244
    iget-object v1, v0, LB0/i0;->i:LB0/f0;

    .line 1245
    .line 1246
    if-nez v1, :cond_43

    .line 1247
    .line 1248
    goto :goto_25

    .line 1249
    :cond_43
    iget-object v1, v1, LB0/f0;->m:LB0/f0;

    .line 1250
    .line 1251
    if-eqz v1, :cond_40

    .line 1252
    .line 1253
    iget-wide v2, v11, LB0/X;->B0:J

    .line 1254
    .line 1255
    invoke-virtual {v1}, LB0/f0;->e()J

    .line 1256
    .line 1257
    .line 1258
    move-result-wide v4

    .line 1259
    cmp-long v6, v2, v4

    .line 1260
    .line 1261
    if-ltz v6, :cond_40

    .line 1262
    .line 1263
    iget-boolean v1, v1, LB0/f0;->h:Z

    .line 1264
    .line 1265
    if-eqz v1, :cond_40

    .line 1266
    .line 1267
    if-eqz v7, :cond_44

    .line 1268
    .line 1269
    invoke-virtual/range {p0 .. p0}, LB0/X;->E()V

    .line 1270
    .line 1271
    .line 1272
    :cond_44
    const/4 v1, 0x0

    .line 1273
    iput-boolean v1, v11, LB0/X;->J0:Z

    .line 1274
    .line 1275
    invoke-virtual {v0}, LB0/i0;->a()LB0/f0;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v15

    .line 1279
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1280
    .line 1281
    .line 1282
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1283
    .line 1284
    iget-object v1, v1, LB0/v0;->b:LO0/y;

    .line 1285
    .line 1286
    iget-object v1, v1, LO0/y;->a:Ljava/lang/Object;

    .line 1287
    .line 1288
    iget-object v2, v15, LB0/f0;->g:LB0/g0;

    .line 1289
    .line 1290
    iget-object v2, v2, LB0/g0;->a:LO0/y;

    .line 1291
    .line 1292
    iget-object v2, v2, LO0/y;->a:Ljava/lang/Object;

    .line 1293
    .line 1294
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v1

    .line 1298
    if-eqz v1, :cond_45

    .line 1299
    .line 1300
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1301
    .line 1302
    iget-object v1, v1, LB0/v0;->b:LO0/y;

    .line 1303
    .line 1304
    iget v2, v1, LO0/y;->b:I

    .line 1305
    .line 1306
    const/4 v3, -0x1

    .line 1307
    if-ne v2, v3, :cond_45

    .line 1308
    .line 1309
    iget-object v2, v15, LB0/f0;->g:LB0/g0;

    .line 1310
    .line 1311
    iget-object v2, v2, LB0/g0;->a:LO0/y;

    .line 1312
    .line 1313
    iget v4, v2, LO0/y;->b:I

    .line 1314
    .line 1315
    if-ne v4, v3, :cond_45

    .line 1316
    .line 1317
    iget v1, v1, LO0/y;->e:I

    .line 1318
    .line 1319
    iget v2, v2, LO0/y;->e:I

    .line 1320
    .line 1321
    if-eq v1, v2, :cond_45

    .line 1322
    .line 1323
    const/4 v7, 0x1

    .line 1324
    goto :goto_26

    .line 1325
    :cond_45
    const/4 v7, 0x0

    .line 1326
    :goto_26
    iget-object v1, v15, LB0/f0;->g:LB0/g0;

    .line 1327
    .line 1328
    iget-object v2, v1, LB0/g0;->a:LO0/y;

    .line 1329
    .line 1330
    iget-wide v8, v1, LB0/g0;->b:J

    .line 1331
    .line 1332
    iget-wide v5, v1, LB0/g0;->c:J

    .line 1333
    .line 1334
    xor-int/lit8 v10, v7, 0x1

    .line 1335
    .line 1336
    const/16 v18, 0x0

    .line 1337
    .line 1338
    move-object/from16 v1, p0

    .line 1339
    .line 1340
    move-wide v3, v8

    .line 1341
    move-wide v7, v8

    .line 1342
    move v9, v10

    .line 1343
    const/4 v14, 0x3

    .line 1344
    move/from16 v10, v18

    .line 1345
    .line 1346
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v1

    .line 1350
    iput-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1351
    .line 1352
    invoke-virtual/range {p0 .. p0}, LB0/X;->O()V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual/range {p0 .. p0}, LB0/X;->y0()V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual/range {p0 .. p0}, LB0/X;->d()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v1

    .line 1362
    iget-object v2, v11, LB0/X;->G:[LB0/F0;

    .line 1363
    .line 1364
    if-eqz v1, :cond_4c

    .line 1365
    .line 1366
    iget-object v1, v0, LB0/i0;->k:LB0/f0;

    .line 1367
    .line 1368
    if-ne v15, v1, :cond_4c

    .line 1369
    .line 1370
    array-length v1, v2

    .line 1371
    const/4 v3, 0x0

    .line 1372
    :goto_27
    if-ge v3, v1, :cond_4c

    .line 1373
    .line 1374
    aget-object v4, v2, v3

    .line 1375
    .line 1376
    iget v5, v4, LB0/F0;->d:I

    .line 1377
    .line 1378
    const/4 v6, 0x4

    .line 1379
    if-eq v5, v14, :cond_47

    .line 1380
    .line 1381
    if-ne v5, v6, :cond_46

    .line 1382
    .line 1383
    goto :goto_28

    .line 1384
    :cond_46
    const/4 v7, 0x2

    .line 1385
    if-ne v5, v7, :cond_4b

    .line 1386
    .line 1387
    const/4 v5, 0x0

    .line 1388
    iput v5, v4, LB0/F0;->d:I

    .line 1389
    .line 1390
    goto :goto_2c

    .line 1391
    :cond_47
    :goto_28
    if-ne v5, v6, :cond_48

    .line 1392
    .line 1393
    const/4 v7, 0x1

    .line 1394
    goto :goto_29

    .line 1395
    :cond_48
    const/4 v7, 0x0

    .line 1396
    :goto_29
    iget-object v5, v4, LB0/F0;->a:LB0/h;

    .line 1397
    .line 1398
    iget-object v6, v4, LB0/F0;->c:LB0/h;

    .line 1399
    .line 1400
    const/16 v8, 0x11

    .line 1401
    .line 1402
    if-eqz v7, :cond_49

    .line 1403
    .line 1404
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1405
    .line 1406
    .line 1407
    invoke-interface {v6, v8, v5}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_2a

    .line 1411
    :cond_49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1412
    .line 1413
    .line 1414
    invoke-interface {v5, v8, v6}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 1415
    .line 1416
    .line 1417
    :goto_2a
    iget v5, v4, LB0/F0;->d:I

    .line 1418
    .line 1419
    const/4 v6, 0x4

    .line 1420
    if-ne v5, v6, :cond_4a

    .line 1421
    .line 1422
    const/4 v7, 0x0

    .line 1423
    goto :goto_2b

    .line 1424
    :cond_4a
    const/4 v7, 0x1

    .line 1425
    :goto_2b
    iput v7, v4, LB0/F0;->d:I

    .line 1426
    .line 1427
    :cond_4b
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 1428
    .line 1429
    goto :goto_27

    .line 1430
    :cond_4c
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1431
    .line 1432
    iget v1, v1, LB0/v0;->e:I

    .line 1433
    .line 1434
    if-ne v1, v14, :cond_4d

    .line 1435
    .line 1436
    invoke-virtual/range {p0 .. p0}, LB0/X;->r0()V

    .line 1437
    .line 1438
    .line 1439
    :cond_4d
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 1440
    .line 1441
    iget-object v0, v0, LB0/f0;->o:LR0/y;

    .line 1442
    .line 1443
    const/4 v1, 0x0

    .line 1444
    :goto_2d
    array-length v3, v2

    .line 1445
    if-ge v1, v3, :cond_51

    .line 1446
    .line 1447
    invoke-virtual {v0, v1}, LR0/y;->b(I)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v3

    .line 1451
    if-nez v3, :cond_4e

    .line 1452
    .line 1453
    goto :goto_2e

    .line 1454
    :cond_4e
    aget-object v3, v2, v1

    .line 1455
    .line 1456
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 1457
    .line 1458
    invoke-static {v4}, LB0/F0;->h(LB0/h;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v5

    .line 1462
    if-eqz v5, :cond_4f

    .line 1463
    .line 1464
    invoke-virtual {v4}, LB0/h;->enableMayRenderStartOfStream()V

    .line 1465
    .line 1466
    .line 1467
    goto :goto_2e

    .line 1468
    :cond_4f
    iget-object v3, v3, LB0/F0;->c:LB0/h;

    .line 1469
    .line 1470
    if-eqz v3, :cond_50

    .line 1471
    .line 1472
    invoke-virtual {v3}, LB0/h;->getState()I

    .line 1473
    .line 1474
    .line 1475
    move-result v4

    .line 1476
    if-eqz v4, :cond_50

    .line 1477
    .line 1478
    invoke-virtual {v3}, LB0/h;->enableMayRenderStartOfStream()V

    .line 1479
    .line 1480
    .line 1481
    :cond_50
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    .line 1482
    .line 1483
    goto :goto_2d

    .line 1484
    :cond_51
    const/4 v7, 0x1

    .line 1485
    const/4 v14, 0x1

    .line 1486
    goto/16 :goto_24

    .line 1487
    .line 1488
    :goto_2f
    iget-object v0, v11, LB0/X;->H0:LB0/A;

    .line 1489
    .line 1490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1491
    .line 1492
    .line 1493
    :goto_30
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 1494
    .line 1495
    iget v0, v0, LB0/v0;->e:I

    .line 1496
    .line 1497
    const/4 v1, 0x1

    .line 1498
    if-eq v0, v1, :cond_84

    .line 1499
    .line 1500
    const/4 v1, 0x4

    .line 1501
    if-ne v0, v1, :cond_52

    .line 1502
    .line 1503
    goto/16 :goto_49

    .line 1504
    .line 1505
    :cond_52
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 1506
    .line 1507
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 1508
    .line 1509
    if-nez v0, :cond_53

    .line 1510
    .line 1511
    invoke-virtual {v11, v12, v13}, LB0/X;->T(J)V

    .line 1512
    .line 1513
    .line 1514
    return-void

    .line 1515
    :cond_53
    const-string v1, "doSomeWork"

    .line 1516
    .line 1517
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual/range {p0 .. p0}, LB0/X;->y0()V

    .line 1521
    .line 1522
    .line 1523
    iget-boolean v1, v0, LB0/f0;->e:Z

    .line 1524
    .line 1525
    if-eqz v1, :cond_5e

    .line 1526
    .line 1527
    iget-object v1, v11, LB0/X;->W:Lp0/f;

    .line 1528
    .line 1529
    check-cast v1, Lp0/G;

    .line 1530
    .line 1531
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1532
    .line 1533
    .line 1534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1535
    .line 1536
    .line 1537
    move-result-wide v1

    .line 1538
    invoke-static {v1, v2}, Lp0/M;->R(J)J

    .line 1539
    .line 1540
    .line 1541
    move-result-wide v1

    .line 1542
    iput-wide v1, v11, LB0/X;->C0:J

    .line 1543
    .line 1544
    iget-object v1, v0, LB0/f0;->a:LO0/w;

    .line 1545
    .line 1546
    iget-object v2, v11, LB0/X;->m0:LB0/v0;

    .line 1547
    .line 1548
    iget-wide v2, v2, LB0/v0;->s:J

    .line 1549
    .line 1550
    iget-wide v4, v11, LB0/X;->S:J

    .line 1551
    .line 1552
    sub-long/2addr v2, v4

    .line 1553
    iget-boolean v4, v11, LB0/X;->T:Z

    .line 1554
    .line 1555
    invoke-interface {v1, v2, v3, v4}, LO0/w;->v(JZ)V

    .line 1556
    .line 1557
    .line 1558
    const/4 v1, 0x1

    .line 1559
    const/4 v2, 0x0

    .line 1560
    const/4 v7, 0x1

    .line 1561
    :goto_31
    iget-object v3, v11, LB0/X;->G:[LB0/F0;

    .line 1562
    .line 1563
    array-length v4, v3

    .line 1564
    if-ge v2, v4, :cond_5f

    .line 1565
    .line 1566
    aget-object v3, v3, v2

    .line 1567
    .line 1568
    invoke-virtual {v3}, LB0/F0;->b()I

    .line 1569
    .line 1570
    .line 1571
    move-result v4

    .line 1572
    if-nez v4, :cond_54

    .line 1573
    .line 1574
    const/4 v4, 0x0

    .line 1575
    invoke-virtual {v11, v2, v4}, LB0/X;->G(IZ)V

    .line 1576
    .line 1577
    .line 1578
    goto/16 :goto_37

    .line 1579
    .line 1580
    :cond_54
    iget-wide v4, v11, LB0/X;->B0:J

    .line 1581
    .line 1582
    iget-wide v8, v11, LB0/X;->C0:J

    .line 1583
    .line 1584
    iget-object v6, v3, LB0/F0;->a:LB0/h;

    .line 1585
    .line 1586
    invoke-static {v6}, LB0/F0;->h(LB0/h;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v10

    .line 1590
    if-eqz v10, :cond_55

    .line 1591
    .line 1592
    invoke-virtual {v6, v4, v5, v8, v9}, LB0/h;->render(JJ)V

    .line 1593
    .line 1594
    .line 1595
    :cond_55
    iget-object v6, v3, LB0/F0;->c:LB0/h;

    .line 1596
    .line 1597
    if-eqz v6, :cond_56

    .line 1598
    .line 1599
    invoke-virtual {v6}, LB0/h;->getState()I

    .line 1600
    .line 1601
    .line 1602
    move-result v10

    .line 1603
    if-eqz v10, :cond_56

    .line 1604
    .line 1605
    invoke-virtual {v6, v4, v5, v8, v9}, LB0/h;->render(JJ)V

    .line 1606
    .line 1607
    .line 1608
    :cond_56
    if-eqz v7, :cond_59

    .line 1609
    .line 1610
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 1611
    .line 1612
    invoke-static {v4}, LB0/F0;->h(LB0/h;)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v5

    .line 1616
    if-eqz v5, :cond_57

    .line 1617
    .line 1618
    invoke-virtual {v4}, LB0/h;->isEnded()Z

    .line 1619
    .line 1620
    .line 1621
    move-result v4

    .line 1622
    const/4 v5, 0x1

    .line 1623
    and-int/lit8 v7, v4, 0x1

    .line 1624
    .line 1625
    goto :goto_32

    .line 1626
    :cond_57
    const/4 v7, 0x1

    .line 1627
    :goto_32
    iget-object v4, v3, LB0/F0;->c:LB0/h;

    .line 1628
    .line 1629
    if-eqz v4, :cond_58

    .line 1630
    .line 1631
    invoke-virtual {v4}, LB0/h;->getState()I

    .line 1632
    .line 1633
    .line 1634
    move-result v5

    .line 1635
    if-eqz v5, :cond_58

    .line 1636
    .line 1637
    invoke-virtual {v4}, LB0/h;->isEnded()Z

    .line 1638
    .line 1639
    .line 1640
    move-result v4

    .line 1641
    and-int/2addr v7, v4

    .line 1642
    :cond_58
    if-eqz v7, :cond_59

    .line 1643
    .line 1644
    const/4 v7, 0x1

    .line 1645
    goto :goto_33

    .line 1646
    :cond_59
    const/4 v7, 0x0

    .line 1647
    :goto_33
    invoke-virtual {v3, v0}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v3

    .line 1651
    if-eqz v3, :cond_5b

    .line 1652
    .line 1653
    invoke-virtual {v3}, LB0/h;->hasReadStreamToEnd()Z

    .line 1654
    .line 1655
    .line 1656
    move-result v4

    .line 1657
    if-nez v4, :cond_5b

    .line 1658
    .line 1659
    invoke-virtual {v3}, LB0/h;->isReady()Z

    .line 1660
    .line 1661
    .line 1662
    move-result v4

    .line 1663
    if-nez v4, :cond_5b

    .line 1664
    .line 1665
    invoke-virtual {v3}, LB0/h;->isEnded()Z

    .line 1666
    .line 1667
    .line 1668
    move-result v3

    .line 1669
    if-eqz v3, :cond_5a

    .line 1670
    .line 1671
    goto :goto_34

    .line 1672
    :cond_5a
    const/4 v3, 0x0

    .line 1673
    goto :goto_35

    .line 1674
    :cond_5b
    :goto_34
    const/4 v3, 0x1

    .line 1675
    :goto_35
    invoke-virtual {v11, v2, v3}, LB0/X;->G(IZ)V

    .line 1676
    .line 1677
    .line 1678
    if-eqz v1, :cond_5c

    .line 1679
    .line 1680
    if-eqz v3, :cond_5c

    .line 1681
    .line 1682
    const/4 v1, 0x1

    .line 1683
    goto :goto_36

    .line 1684
    :cond_5c
    const/4 v1, 0x0

    .line 1685
    :goto_36
    if-nez v3, :cond_5d

    .line 1686
    .line 1687
    invoke-virtual {v11, v2}, LB0/X;->F(I)V

    .line 1688
    .line 1689
    .line 1690
    :cond_5d
    :goto_37
    add-int/lit8 v2, v2, 0x1

    .line 1691
    .line 1692
    goto/16 :goto_31

    .line 1693
    .line 1694
    :cond_5e
    iget-object v1, v0, LB0/f0;->a:LO0/w;

    .line 1695
    .line 1696
    invoke-interface {v1}, LO0/w;->h()V

    .line 1697
    .line 1698
    .line 1699
    const/4 v1, 0x1

    .line 1700
    const/4 v7, 0x1

    .line 1701
    :cond_5f
    iget-object v2, v0, LB0/f0;->g:LB0/g0;

    .line 1702
    .line 1703
    iget-wide v2, v2, LB0/g0;->e:J

    .line 1704
    .line 1705
    if-eqz v7, :cond_61

    .line 1706
    .line 1707
    iget-boolean v4, v0, LB0/f0;->e:Z

    .line 1708
    .line 1709
    if-eqz v4, :cond_61

    .line 1710
    .line 1711
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    cmp-long v6, v2, v4

    .line 1717
    .line 1718
    if-eqz v6, :cond_60

    .line 1719
    .line 1720
    iget-object v6, v11, LB0/X;->m0:LB0/v0;

    .line 1721
    .line 1722
    iget-wide v6, v6, LB0/v0;->s:J

    .line 1723
    .line 1724
    cmp-long v8, v2, v6

    .line 1725
    .line 1726
    if-gtz v8, :cond_62

    .line 1727
    .line 1728
    :cond_60
    const/4 v7, 0x1

    .line 1729
    goto :goto_38

    .line 1730
    :cond_61
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    :cond_62
    const/4 v7, 0x0

    .line 1736
    :goto_38
    if-eqz v7, :cond_63

    .line 1737
    .line 1738
    iget-boolean v2, v11, LB0/X;->q0:Z

    .line 1739
    .line 1740
    if-eqz v2, :cond_63

    .line 1741
    .line 1742
    const/4 v2, 0x0

    .line 1743
    iput-boolean v2, v11, LB0/X;->q0:Z

    .line 1744
    .line 1745
    iget-object v3, v11, LB0/X;->m0:LB0/v0;

    .line 1746
    .line 1747
    iget v3, v3, LB0/v0;->n:I

    .line 1748
    .line 1749
    iget-object v6, v11, LB0/X;->n0:LB0/U;

    .line 1750
    .line 1751
    invoke-virtual {v6, v2}, LB0/U;->d(I)V

    .line 1752
    .line 1753
    .line 1754
    iget-object v6, v11, LB0/X;->m0:LB0/v0;

    .line 1755
    .line 1756
    iget v6, v6, LB0/v0;->e:I

    .line 1757
    .line 1758
    iget-object v8, v11, LB0/X;->g0:LB0/g;

    .line 1759
    .line 1760
    invoke-virtual {v8, v6, v2}, LB0/g;->d(IZ)I

    .line 1761
    .line 1762
    .line 1763
    move-result v6

    .line 1764
    const/4 v8, 0x5

    .line 1765
    invoke-virtual {v11, v6, v3, v8, v2}, LB0/X;->x0(IIIZ)V

    .line 1766
    .line 1767
    .line 1768
    :cond_63
    if-eqz v7, :cond_65

    .line 1769
    .line 1770
    iget-object v2, v0, LB0/f0;->g:LB0/g0;

    .line 1771
    .line 1772
    iget-boolean v2, v2, LB0/g0;->j:Z

    .line 1773
    .line 1774
    if-eqz v2, :cond_65

    .line 1775
    .line 1776
    const/4 v2, 0x4

    .line 1777
    invoke-virtual {v11, v2}, LB0/X;->l0(I)V

    .line 1778
    .line 1779
    .line 1780
    invoke-virtual/range {p0 .. p0}, LB0/X;->t0()V

    .line 1781
    .line 1782
    .line 1783
    :cond_64
    const/4 v2, 0x1

    .line 1784
    goto/16 :goto_43

    .line 1785
    .line 1786
    :cond_65
    iget-object v2, v11, LB0/X;->m0:LB0/v0;

    .line 1787
    .line 1788
    iget v3, v2, LB0/v0;->e:I

    .line 1789
    .line 1790
    const/4 v6, 0x2

    .line 1791
    if-ne v3, v6, :cond_6f

    .line 1792
    .line 1793
    iget v3, v11, LB0/X;->z0:I

    .line 1794
    .line 1795
    if-nez v3, :cond_66

    .line 1796
    .line 1797
    invoke-virtual/range {p0 .. p0}, LB0/X;->B()Z

    .line 1798
    .line 1799
    .line 1800
    move-result v2

    .line 1801
    if-eqz v2, :cond_6f

    .line 1802
    .line 1803
    goto/16 :goto_3e

    .line 1804
    .line 1805
    :cond_66
    if-nez v1, :cond_67

    .line 1806
    .line 1807
    goto/16 :goto_3d

    .line 1808
    .line 1809
    :cond_67
    iget-boolean v3, v2, LB0/v0;->g:Z

    .line 1810
    .line 1811
    if-nez v3, :cond_68

    .line 1812
    .line 1813
    goto/16 :goto_3e

    .line 1814
    .line 1815
    :cond_68
    iget-object v3, v11, LB0/X;->Y:LB0/i0;

    .line 1816
    .line 1817
    iget-object v6, v3, LB0/i0;->i:LB0/f0;

    .line 1818
    .line 1819
    iget-object v2, v2, LB0/v0;->a:Lm0/f0;

    .line 1820
    .line 1821
    iget-object v7, v6, LB0/f0;->g:LB0/g0;

    .line 1822
    .line 1823
    iget-object v7, v7, LB0/g0;->a:LO0/y;

    .line 1824
    .line 1825
    invoke-virtual {v11, v2, v7}, LB0/X;->q0(Lm0/f0;LO0/y;)Z

    .line 1826
    .line 1827
    .line 1828
    move-result v2

    .line 1829
    if-eqz v2, :cond_69

    .line 1830
    .line 1831
    iget-object v2, v11, LB0/X;->a0:LB0/k;

    .line 1832
    .line 1833
    iget-wide v9, v2, LB0/k;->i:J

    .line 1834
    .line 1835
    goto :goto_39

    .line 1836
    :cond_69
    move-wide v9, v4

    .line 1837
    :goto_39
    iget-object v2, v3, LB0/i0;->l:LB0/f0;

    .line 1838
    .line 1839
    invoke-virtual {v2}, LB0/f0;->g()Z

    .line 1840
    .line 1841
    .line 1842
    move-result v3

    .line 1843
    if-eqz v3, :cond_6a

    .line 1844
    .line 1845
    iget-object v3, v2, LB0/f0;->g:LB0/g0;

    .line 1846
    .line 1847
    iget-boolean v3, v3, LB0/g0;->j:Z

    .line 1848
    .line 1849
    if-eqz v3, :cond_6a

    .line 1850
    .line 1851
    const/4 v7, 0x1

    .line 1852
    goto :goto_3a

    .line 1853
    :cond_6a
    const/4 v7, 0x0

    .line 1854
    :goto_3a
    iget-object v3, v2, LB0/f0;->g:LB0/g0;

    .line 1855
    .line 1856
    iget-object v3, v3, LB0/g0;->a:LO0/y;

    .line 1857
    .line 1858
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 1859
    .line 1860
    .line 1861
    move-result v3

    .line 1862
    if-eqz v3, :cond_6b

    .line 1863
    .line 1864
    iget-boolean v3, v2, LB0/f0;->e:Z

    .line 1865
    .line 1866
    if-nez v3, :cond_6b

    .line 1867
    .line 1868
    const/4 v3, 0x1

    .line 1869
    goto :goto_3b

    .line 1870
    :cond_6b
    const/4 v3, 0x0

    .line 1871
    :goto_3b
    if-nez v7, :cond_70

    .line 1872
    .line 1873
    if-eqz v3, :cond_6c

    .line 1874
    .line 1875
    goto :goto_3e

    .line 1876
    :cond_6c
    invoke-virtual {v2}, LB0/f0;->d()J

    .line 1877
    .line 1878
    .line 1879
    move-result-wide v2

    .line 1880
    invoke-virtual {v11, v2, v3}, LB0/X;->n(J)J

    .line 1881
    .line 1882
    .line 1883
    move-result-wide v2

    .line 1884
    iget-object v7, v11, LB0/X;->m0:LB0/v0;

    .line 1885
    .line 1886
    iget-object v7, v7, LB0/v0;->a:Lm0/f0;

    .line 1887
    .line 1888
    iget-object v6, v6, LB0/f0;->g:LB0/g0;

    .line 1889
    .line 1890
    iget-object v6, v6, LB0/g0;->a:LO0/y;

    .line 1891
    .line 1892
    iget-object v6, v11, LB0/X;->U:LB0/o;

    .line 1893
    .line 1894
    invoke-virtual {v6}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v6

    .line 1898
    iget v6, v6, Lm0/S;->a:F

    .line 1899
    .line 1900
    iget-object v7, v11, LB0/X;->m0:LB0/v0;

    .line 1901
    .line 1902
    iget-boolean v7, v7, LB0/v0;->l:Z

    .line 1903
    .line 1904
    iget-boolean v7, v11, LB0/X;->r0:Z

    .line 1905
    .line 1906
    iget-object v8, v11, LB0/X;->L:LB0/b0;

    .line 1907
    .line 1908
    check-cast v8, LB0/m;

    .line 1909
    .line 1910
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1911
    .line 1912
    .line 1913
    invoke-static {v2, v3, v6}, Lp0/M;->C(JF)J

    .line 1914
    .line 1915
    .line 1916
    move-result-wide v2

    .line 1917
    if-eqz v7, :cond_6d

    .line 1918
    .line 1919
    iget-wide v6, v8, LB0/m;->e:J

    .line 1920
    .line 1921
    goto :goto_3c

    .line 1922
    :cond_6d
    iget-wide v6, v8, LB0/m;->d:J

    .line 1923
    .line 1924
    :goto_3c
    cmp-long v15, v9, v4

    .line 1925
    .line 1926
    if-eqz v15, :cond_6e

    .line 1927
    .line 1928
    const-wide/16 v18, 0x2

    .line 1929
    .line 1930
    div-long v9, v9, v18

    .line 1931
    .line 1932
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 1933
    .line 1934
    .line 1935
    move-result-wide v6

    .line 1936
    :cond_6e
    const-wide/16 v9, 0x0

    .line 1937
    .line 1938
    cmp-long v15, v6, v9

    .line 1939
    .line 1940
    if-lez v15, :cond_70

    .line 1941
    .line 1942
    cmp-long v9, v2, v6

    .line 1943
    .line 1944
    if-gez v9, :cond_70

    .line 1945
    .line 1946
    iget-boolean v2, v8, LB0/m;->g:Z

    .line 1947
    .line 1948
    if-nez v2, :cond_6f

    .line 1949
    .line 1950
    iget-object v2, v8, LB0/m;->a:LS0/d;

    .line 1951
    .line 1952
    monitor-enter v2

    .line 1953
    :try_start_0
    iget v3, v2, LS0/d;->d:I

    .line 1954
    .line 1955
    iget v6, v2, LS0/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    .line 1957
    mul-int v3, v3, v6

    .line 1958
    .line 1959
    monitor-exit v2

    .line 1960
    invoke-virtual {v8}, LB0/m;->b()I

    .line 1961
    .line 1962
    .line 1963
    move-result v2

    .line 1964
    if-lt v3, v2, :cond_6f

    .line 1965
    .line 1966
    goto :goto_3e

    .line 1967
    :catchall_0
    move-exception v0

    .line 1968
    monitor-exit v2

    .line 1969
    throw v0

    .line 1970
    :cond_6f
    :goto_3d
    const/4 v2, 0x1

    .line 1971
    goto :goto_3f

    .line 1972
    :cond_70
    :goto_3e
    invoke-virtual {v11, v14}, LB0/X;->l0(I)V

    .line 1973
    .line 1974
    .line 1975
    const/4 v1, 0x0

    .line 1976
    iput-object v1, v11, LB0/X;->F0:LB0/w;

    .line 1977
    .line 1978
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 1979
    .line 1980
    .line 1981
    move-result v1

    .line 1982
    if-eqz v1, :cond_64

    .line 1983
    .line 1984
    const/4 v1, 0x0

    .line 1985
    invoke-virtual {v11, v1, v1}, LB0/X;->A0(ZZ)V

    .line 1986
    .line 1987
    .line 1988
    iget-object v1, v11, LB0/X;->U:LB0/o;

    .line 1989
    .line 1990
    const/4 v2, 0x1

    .line 1991
    iput-boolean v2, v1, LB0/o;->L:Z

    .line 1992
    .line 1993
    iget-object v1, v1, LB0/o;->G:LB0/J0;

    .line 1994
    .line 1995
    invoke-virtual {v1}, LB0/J0;->b()V

    .line 1996
    .line 1997
    .line 1998
    invoke-virtual/range {p0 .. p0}, LB0/X;->r0()V

    .line 1999
    .line 2000
    .line 2001
    goto :goto_43

    .line 2002
    :goto_3f
    iget-object v3, v11, LB0/X;->m0:LB0/v0;

    .line 2003
    .line 2004
    iget v3, v3, LB0/v0;->e:I

    .line 2005
    .line 2006
    if-ne v3, v14, :cond_78

    .line 2007
    .line 2008
    iget v3, v11, LB0/X;->z0:I

    .line 2009
    .line 2010
    if-nez v3, :cond_71

    .line 2011
    .line 2012
    invoke-virtual/range {p0 .. p0}, LB0/X;->B()Z

    .line 2013
    .line 2014
    .line 2015
    move-result v1

    .line 2016
    if-eqz v1, :cond_72

    .line 2017
    .line 2018
    goto :goto_43

    .line 2019
    :cond_71
    if-nez v1, :cond_78

    .line 2020
    .line 2021
    :cond_72
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 2022
    .line 2023
    .line 2024
    move-result v1

    .line 2025
    const/4 v3, 0x0

    .line 2026
    invoke-virtual {v11, v1, v3}, LB0/X;->A0(ZZ)V

    .line 2027
    .line 2028
    .line 2029
    const/4 v1, 0x2

    .line 2030
    invoke-virtual {v11, v1}, LB0/X;->l0(I)V

    .line 2031
    .line 2032
    .line 2033
    iget-boolean v1, v11, LB0/X;->r0:Z

    .line 2034
    .line 2035
    if-eqz v1, :cond_77

    .line 2036
    .line 2037
    iget-object v1, v11, LB0/X;->Y:LB0/i0;

    .line 2038
    .line 2039
    iget-object v1, v1, LB0/i0;->i:LB0/f0;

    .line 2040
    .line 2041
    :goto_40
    if-eqz v1, :cond_74

    .line 2042
    .line 2043
    iget-object v3, v1, LB0/f0;->o:LR0/y;

    .line 2044
    .line 2045
    iget-object v3, v3, LR0/y;->c:[LR0/t;

    .line 2046
    .line 2047
    array-length v6, v3

    .line 2048
    const/4 v7, 0x0

    .line 2049
    :goto_41
    if-ge v7, v6, :cond_73

    .line 2050
    .line 2051
    aget-object v8, v3, v7

    .line 2052
    .line 2053
    add-int/lit8 v7, v7, 0x1

    .line 2054
    .line 2055
    goto :goto_41

    .line 2056
    :cond_73
    iget-object v1, v1, LB0/f0;->m:LB0/f0;

    .line 2057
    .line 2058
    goto :goto_40

    .line 2059
    :cond_74
    iget-object v1, v11, LB0/X;->a0:LB0/k;

    .line 2060
    .line 2061
    iget-wide v6, v1, LB0/k;->i:J

    .line 2062
    .line 2063
    cmp-long v3, v6, v4

    .line 2064
    .line 2065
    if-nez v3, :cond_75

    .line 2066
    .line 2067
    goto :goto_42

    .line 2068
    :cond_75
    iget-wide v8, v1, LB0/k;->b:J

    .line 2069
    .line 2070
    add-long/2addr v6, v8

    .line 2071
    iput-wide v6, v1, LB0/k;->i:J

    .line 2072
    .line 2073
    iget-wide v8, v1, LB0/k;->h:J

    .line 2074
    .line 2075
    cmp-long v3, v8, v4

    .line 2076
    .line 2077
    if-eqz v3, :cond_76

    .line 2078
    .line 2079
    cmp-long v3, v6, v8

    .line 2080
    .line 2081
    if-lez v3, :cond_76

    .line 2082
    .line 2083
    iput-wide v8, v1, LB0/k;->i:J

    .line 2084
    .line 2085
    :cond_76
    iput-wide v4, v1, LB0/k;->m:J

    .line 2086
    .line 2087
    :cond_77
    :goto_42
    invoke-virtual/range {p0 .. p0}, LB0/X;->t0()V

    .line 2088
    .line 2089
    .line 2090
    :cond_78
    :goto_43
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 2091
    .line 2092
    iget v1, v1, LB0/v0;->e:I

    .line 2093
    .line 2094
    const/4 v3, 0x2

    .line 2095
    if-ne v1, v3, :cond_7d

    .line 2096
    .line 2097
    const/4 v1, 0x0

    .line 2098
    :goto_44
    iget-object v3, v11, LB0/X;->G:[LB0/F0;

    .line 2099
    .line 2100
    array-length v6, v3

    .line 2101
    if-ge v1, v6, :cond_7a

    .line 2102
    .line 2103
    aget-object v3, v3, v1

    .line 2104
    .line 2105
    invoke-virtual {v3, v0}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v3

    .line 2109
    if-eqz v3, :cond_79

    .line 2110
    .line 2111
    invoke-virtual {v11, v1}, LB0/X;->F(I)V

    .line 2112
    .line 2113
    .line 2114
    :cond_79
    add-int/lit8 v1, v1, 0x1

    .line 2115
    .line 2116
    goto :goto_44

    .line 2117
    :cond_7a
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 2118
    .line 2119
    iget-boolean v1, v0, LB0/v0;->g:Z

    .line 2120
    .line 2121
    if-nez v1, :cond_7d

    .line 2122
    .line 2123
    iget-wide v0, v0, LB0/v0;->r:J

    .line 2124
    .line 2125
    const-wide/32 v6, 0x7a120

    .line 2126
    .line 2127
    .line 2128
    cmp-long v3, v0, v6

    .line 2129
    .line 2130
    if-gez v3, :cond_7d

    .line 2131
    .line 2132
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 2133
    .line 2134
    iget-object v0, v0, LB0/i0;->l:LB0/f0;

    .line 2135
    .line 2136
    invoke-static {v0}, LB0/X;->z(LB0/f0;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v0

    .line 2140
    if-eqz v0, :cond_7d

    .line 2141
    .line 2142
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 2143
    .line 2144
    .line 2145
    move-result v0

    .line 2146
    if-eqz v0, :cond_7d

    .line 2147
    .line 2148
    iget-wide v0, v11, LB0/X;->G0:J

    .line 2149
    .line 2150
    cmp-long v3, v0, v4

    .line 2151
    .line 2152
    if-nez v3, :cond_7b

    .line 2153
    .line 2154
    iget-object v0, v11, LB0/X;->W:Lp0/f;

    .line 2155
    .line 2156
    check-cast v0, Lp0/G;

    .line 2157
    .line 2158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2159
    .line 2160
    .line 2161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2162
    .line 2163
    .line 2164
    move-result-wide v0

    .line 2165
    iput-wide v0, v11, LB0/X;->G0:J

    .line 2166
    .line 2167
    goto :goto_45

    .line 2168
    :cond_7b
    iget-object v0, v11, LB0/X;->W:Lp0/f;

    .line 2169
    .line 2170
    check-cast v0, Lp0/G;

    .line 2171
    .line 2172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2173
    .line 2174
    .line 2175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2176
    .line 2177
    .line 2178
    move-result-wide v0

    .line 2179
    iget-wide v3, v11, LB0/X;->G0:J

    .line 2180
    .line 2181
    sub-long/2addr v0, v3

    .line 2182
    const-wide/16 v3, 0xfa0

    .line 2183
    .line 2184
    cmp-long v5, v0, v3

    .line 2185
    .line 2186
    if-gez v5, :cond_7c

    .line 2187
    .line 2188
    goto :goto_45

    .line 2189
    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2190
    .line 2191
    const-string v1, "Playback stuck buffering and not loading"

    .line 2192
    .line 2193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2194
    .line 2195
    .line 2196
    throw v0

    .line 2197
    :cond_7d
    iput-wide v4, v11, LB0/X;->G0:J

    .line 2198
    .line 2199
    :goto_45
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 2200
    .line 2201
    .line 2202
    move-result v0

    .line 2203
    if-eqz v0, :cond_7e

    .line 2204
    .line 2205
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 2206
    .line 2207
    iget v0, v0, LB0/v0;->e:I

    .line 2208
    .line 2209
    if-ne v0, v14, :cond_7e

    .line 2210
    .line 2211
    const/4 v7, 0x1

    .line 2212
    goto :goto_46

    .line 2213
    :cond_7e
    const/4 v7, 0x0

    .line 2214
    :goto_46
    iget-boolean v0, v11, LB0/X;->y0:Z

    .line 2215
    .line 2216
    if-eqz v0, :cond_7f

    .line 2217
    .line 2218
    iget-boolean v0, v11, LB0/X;->x0:Z

    .line 2219
    .line 2220
    if-eqz v0, :cond_7f

    .line 2221
    .line 2222
    if-eqz v7, :cond_7f

    .line 2223
    .line 2224
    goto :goto_47

    .line 2225
    :cond_7f
    const/4 v2, 0x0

    .line 2226
    :goto_47
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 2227
    .line 2228
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 2229
    .line 2230
    if-eq v1, v2, :cond_80

    .line 2231
    .line 2232
    invoke-virtual {v0, v2}, LB0/v0;->i(Z)LB0/v0;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v0

    .line 2236
    iput-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 2237
    .line 2238
    :cond_80
    const/4 v0, 0x0

    .line 2239
    iput-boolean v0, v11, LB0/X;->x0:Z

    .line 2240
    .line 2241
    if-nez v2, :cond_83

    .line 2242
    .line 2243
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 2244
    .line 2245
    iget v0, v0, LB0/v0;->e:I

    .line 2246
    .line 2247
    const/4 v1, 0x4

    .line 2248
    if-ne v0, v1, :cond_81

    .line 2249
    .line 2250
    goto :goto_48

    .line 2251
    :cond_81
    if-nez v7, :cond_82

    .line 2252
    .line 2253
    const/4 v1, 0x2

    .line 2254
    if-eq v0, v1, :cond_82

    .line 2255
    .line 2256
    if-ne v0, v14, :cond_83

    .line 2257
    .line 2258
    iget v0, v11, LB0/X;->z0:I

    .line 2259
    .line 2260
    if-eqz v0, :cond_83

    .line 2261
    .line 2262
    :cond_82
    invoke-virtual {v11, v12, v13}, LB0/X;->T(J)V

    .line 2263
    .line 2264
    .line 2265
    :cond_83
    :goto_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2266
    .line 2267
    .line 2268
    :cond_84
    :goto_49
    return-void
.end method

.method public final h0(LB0/H0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB0/X;->i0:LB0/H0;

    .line 2
    .line 3
    invoke-virtual {p0}, LB0/X;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v12, "Playback error"

    .line 6
    .line 7
    const-string v13, "ExoPlayerImplInternal"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v14, 0x1

    .line 12
    const/16 v4, 0x3e8

    .line 13
    .line 14
    const/4 v15, 0x0

    .line 15
    :try_start_0
    iget v5, v1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    packed-switch v5, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    return v15

    .line 22
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, LB0/H0;

    .line 25
    .line 26
    invoke-virtual {v11, v1}, LB0/X;->h0(LB0/H0;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object v1, v0

    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :catch_1
    move-exception v0

    .line 36
    move-object v1, v0

    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :catch_2
    move-exception v0

    .line 40
    move-object v1, v0

    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :catch_3
    move-exception v0

    .line 44
    move-object v1, v0

    .line 45
    goto/16 :goto_9

    .line 46
    .line 47
    :catch_4
    move-exception v0

    .line 48
    move-object v1, v0

    .line 49
    goto/16 :goto_a

    .line 50
    .line 51
    :catch_5
    move-exception v0

    .line 52
    move-object v1, v0

    .line 53
    goto/16 :goto_c

    .line 54
    .line 55
    :catch_6
    move-exception v0

    .line 56
    move-object v1, v0

    .line 57
    goto/16 :goto_d

    .line 58
    .line 59
    :pswitch_2
    iput-boolean v15, v11, LB0/X;->k0:Z

    .line 60
    .line 61
    iget-object v1, v11, LB0/X;->l0:LB0/W;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {v11, v1, v15}, LB0/X;->V(LB0/W;Z)V

    .line 66
    .line 67
    .line 68
    iput-object v6, v11, LB0/X;->l0:LB0/W;

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v11, v1}, LB0/X;->g0(Z)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, LU0/B;

    .line 88
    .line 89
    invoke-virtual {v11, v1}, LB0/X;->m0(LU0/B;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, LB0/X;->p()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :pswitch_6
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 100
    .line 101
    invoke-virtual {v11, v1}, LB0/X;->o(I)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v11, v1}, LB0/X;->o0(F)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :pswitch_8
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v5, Lm0/d;

    .line 122
    .line 123
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 124
    .line 125
    if-eqz v1, :cond_0

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    :goto_0
    invoke-virtual {v11, v5, v1}, LB0/X;->Z(Lm0/d;Z)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_5

    .line 134
    .line 135
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v1, Landroid/util/Pair;

    .line 138
    .line 139
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 140
    .line 141
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Lp0/i;

    .line 144
    .line 145
    invoke-virtual {v11, v5, v1}, LB0/X;->n0(Ljava/lang/Object;Lp0/i;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, LB0/X;->J()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, LB0/A;

    .line 158
    .line 159
    invoke-virtual {v11, v1}, LB0/X;->e0(LB0/A;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :pswitch_c
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 165
    .line 166
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 167
    .line 168
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {v11, v5, v6, v1}, LB0/X;->w0(IILjava/util/List;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, LB0/X;->M()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v14}, LB0/X;->U(Z)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, LB0/X;->e()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_5

    .line 189
    .line 190
    :pswitch_f
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 191
    .line 192
    if-eqz v1, :cond_1

    .line 193
    .line 194
    const/4 v1, 0x1

    .line 195
    goto :goto_1

    .line 196
    :cond_1
    const/4 v1, 0x0

    .line 197
    :goto_1
    invoke-virtual {v11, v1}, LB0/X;->c0(Z)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_5

    .line 201
    .line 202
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, LB0/X;->H()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, LO0/X;

    .line 210
    .line 211
    invoke-virtual {v11, v1}, LB0/X;->k0(LO0/X;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :pswitch_12
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 217
    .line 218
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 219
    .line 220
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, LO0/X;

    .line 223
    .line 224
    invoke-virtual {v11, v5, v6, v1}, LB0/X;->L(IILO0/X;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_5

    .line 228
    .line 229
    :pswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    .line 231
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, LB0/X;->I()V

    .line 235
    .line 236
    .line 237
    throw v6

    .line 238
    :pswitch_14
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v5, LB0/T;

    .line 241
    .line 242
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 243
    .line 244
    invoke-virtual {v11, v5, v1}, LB0/X;->a(LB0/T;I)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_5

    .line 248
    .line 249
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v1, LB0/T;

    .line 252
    .line 253
    invoke-virtual {v11, v1}, LB0/X;->b0(LB0/T;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_5

    .line 257
    .line 258
    :pswitch_16
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v1, Lm0/S;

    .line 261
    .line 262
    iget v5, v1, Lm0/S;->a:F

    .line 263
    .line 264
    invoke-virtual {v11, v1, v5, v14, v15}, LB0/X;->x(Lm0/S;FZZ)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_5

    .line 268
    .line 269
    :pswitch_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v1, LB0/z0;

    .line 272
    .line 273
    invoke-virtual {v11, v1}, LB0/X;->Y(LB0/z0;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_5

    .line 277
    .line 278
    :pswitch_18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, LB0/z0;

    .line 281
    .line 282
    invoke-virtual {v11, v1}, LB0/X;->X(LB0/z0;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :pswitch_19
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 288
    .line 289
    if-eqz v5, :cond_2

    .line 290
    .line 291
    const/4 v5, 0x1

    .line 292
    goto :goto_2

    .line 293
    :cond_2
    const/4 v5, 0x0

    .line 294
    :goto_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v1, Lp0/i;

    .line 297
    .line 298
    invoke-virtual {v11, v5, v1}, LB0/X;->a0(ZLp0/i;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_5

    .line 302
    .line 303
    :pswitch_1a
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 304
    .line 305
    if-eqz v1, :cond_3

    .line 306
    .line 307
    const/4 v1, 0x1

    .line 308
    goto :goto_3

    .line 309
    :cond_3
    const/4 v1, 0x0

    .line 310
    :goto_3
    invoke-virtual {v11, v1}, LB0/X;->j0(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :pswitch_1b
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 315
    .line 316
    invoke-virtual {v11, v1}, LB0/X;->f0(I)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, LB0/X;->M()V

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :pswitch_1d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v1, LO0/w;

    .line 327
    .line 328
    invoke-virtual {v11, v1}, LB0/X;->q(LO0/w;)V

    .line 329
    .line 330
    .line 331
    goto :goto_5

    .line 332
    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v1, LO0/w;

    .line 335
    .line 336
    invoke-virtual {v11, v1}, LB0/X;->w(LO0/w;)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :pswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lp0/i;

    .line 343
    .line 344
    invoke-virtual {v11, v1}, LB0/X;->K(Lp0/i;)V

    .line 345
    .line 346
    .line 347
    return v14

    .line 348
    :pswitch_20
    invoke-virtual {v11, v15, v14}, LB0/X;->s0(ZZ)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :pswitch_21
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v1, LB0/I0;

    .line 355
    .line 356
    invoke-virtual {v11, v1}, LB0/X;->i0(LB0/I0;)V

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :pswitch_22
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v1, Lm0/S;

    .line 363
    .line 364
    invoke-virtual {v11, v1}, LB0/X;->d0(Lm0/S;)V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :pswitch_23
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v1, LB0/W;

    .line 371
    .line 372
    invoke-virtual {v11, v1, v14}, LB0/X;->V(LB0/W;Z)V

    .line 373
    .line 374
    .line 375
    goto :goto_5

    .line 376
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, LB0/X;->h()V

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :pswitch_25
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 381
    .line 382
    if-eqz v5, :cond_4

    .line 383
    .line 384
    const/4 v5, 0x1

    .line 385
    goto :goto_4

    .line 386
    :cond_4
    const/4 v5, 0x0

    .line 387
    :goto_4
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 388
    .line 389
    shr-int/lit8 v6, v1, 0x4

    .line 390
    .line 391
    and-int/lit8 v1, v1, 0xf

    .line 392
    .line 393
    iget-object v7, v11, LB0/X;->n0:LB0/U;

    .line 394
    .line 395
    invoke-virtual {v7, v14}, LB0/U;->d(I)V

    .line 396
    .line 397
    .line 398
    iget-object v7, v11, LB0/X;->m0:LB0/v0;

    .line 399
    .line 400
    iget v7, v7, LB0/v0;->e:I

    .line 401
    .line 402
    iget-object v8, v11, LB0/X;->g0:LB0/g;

    .line 403
    .line 404
    invoke-virtual {v8, v7, v5}, LB0/g;->d(IZ)I

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    invoke-virtual {v11, v7, v6, v1, v5}, LB0/X;->x0(IIIZ)V
    :try_end_0
    .catch LB0/w; {:try_start_0 .. :try_end_0} :catch_6
    .catch LG0/k; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ls0/j; {:try_start_0 .. :try_end_0} :catch_3
    .catch LO0/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .line 410
    .line 411
    :cond_5
    :goto_5
    const/4 v1, 0x1

    .line 412
    goto/16 :goto_11

    .line 413
    .line 414
    :goto_6
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    .line 415
    .line 416
    if-nez v3, :cond_6

    .line 417
    .line 418
    instance-of v3, v1, Ljava/lang/IllegalArgumentException;

    .line 419
    .line 420
    if-eqz v3, :cond_7

    .line 421
    .line 422
    :cond_6
    const/16 v4, 0x3ec

    .line 423
    .line 424
    :cond_7
    new-instance v3, LB0/w;

    .line 425
    .line 426
    invoke-direct {v3, v2, v1, v4}, LB0/w;-><init>(ILjava/lang/Throwable;I)V

    .line 427
    .line 428
    .line 429
    invoke-static {v13, v12, v3}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v11, v14, v15}, LB0/X;->s0(ZZ)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 436
    .line 437
    invoke-virtual {v1, v3}, LB0/v0;->f(LB0/w;)LB0/v0;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    iput-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :goto_7
    const/16 v2, 0x7d0

    .line 445
    .line 446
    invoke-virtual {v11, v1, v2}, LB0/X;->s(Ljava/io/IOException;I)V

    .line 447
    .line 448
    .line 449
    goto :goto_5

    .line 450
    :goto_8
    const/16 v2, 0x3ea

    .line 451
    .line 452
    invoke-virtual {v11, v1, v2}, LB0/X;->s(Ljava/io/IOException;I)V

    .line 453
    .line 454
    .line 455
    goto :goto_5

    .line 456
    :goto_9
    iget v2, v1, Ls0/j;->G:I

    .line 457
    .line 458
    invoke-virtual {v11, v1, v2}, LB0/X;->s(Ljava/io/IOException;I)V

    .line 459
    .line 460
    .line 461
    goto :goto_5

    .line 462
    :goto_a
    iget-boolean v2, v1, Lm0/P;->G:Z

    .line 463
    .line 464
    iget v5, v1, Lm0/P;->H:I

    .line 465
    .line 466
    if-ne v5, v14, :cond_9

    .line 467
    .line 468
    if-eqz v2, :cond_8

    .line 469
    .line 470
    const/16 v2, 0xbb9

    .line 471
    .line 472
    const/16 v4, 0xbb9

    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_8
    const/16 v2, 0xbbb

    .line 476
    .line 477
    const/16 v4, 0xbbb

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_9
    if-ne v5, v3, :cond_b

    .line 481
    .line 482
    if-eqz v2, :cond_a

    .line 483
    .line 484
    const/16 v2, 0xbba

    .line 485
    .line 486
    const/16 v4, 0xbba

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_a
    const/16 v2, 0xbbc

    .line 490
    .line 491
    const/16 v4, 0xbbc

    .line 492
    .line 493
    :cond_b
    :goto_b
    invoke-virtual {v11, v1, v4}, LB0/X;->s(Ljava/io/IOException;I)V

    .line 494
    .line 495
    .line 496
    goto :goto_5

    .line 497
    :goto_c
    iget v2, v1, LG0/k;->G:I

    .line 498
    .line 499
    invoke-virtual {v11, v1, v2}, LB0/X;->s(Ljava/io/IOException;I)V

    .line 500
    .line 501
    .line 502
    goto :goto_5

    .line 503
    :goto_d
    iget v4, v1, LB0/w;->I:I

    .line 504
    .line 505
    iget-object v5, v11, LB0/X;->Y:LB0/i0;

    .line 506
    .line 507
    if-ne v4, v14, :cond_c

    .line 508
    .line 509
    iget-object v4, v5, LB0/i0;->j:LB0/f0;

    .line 510
    .line 511
    if-eqz v4, :cond_c

    .line 512
    .line 513
    iget-object v6, v1, LB0/w;->N:LO0/y;

    .line 514
    .line 515
    if-nez v6, :cond_c

    .line 516
    .line 517
    iget-object v4, v4, LB0/f0;->g:LB0/g0;

    .line 518
    .line 519
    iget-object v4, v4, LB0/g0;->a:LO0/y;

    .line 520
    .line 521
    invoke-virtual {v1, v4}, LB0/w;->a(LO0/y;)LB0/w;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    :cond_c
    iget v4, v1, LB0/w;->I:I

    .line 526
    .line 527
    iget-object v10, v11, LB0/X;->N:Lp0/I;

    .line 528
    .line 529
    if-ne v4, v14, :cond_e

    .line 530
    .line 531
    iget-object v4, v1, LB0/w;->N:LO0/y;

    .line 532
    .line 533
    if-eqz v4, :cond_e

    .line 534
    .line 535
    iget v6, v1, LB0/w;->K:I

    .line 536
    .line 537
    invoke-virtual {v11, v6, v4}, LB0/X;->A(ILO0/y;)Z

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    if-eqz v4, :cond_e

    .line 542
    .line 543
    iput-boolean v14, v11, LB0/X;->J0:Z

    .line 544
    .line 545
    invoke-virtual/range {p0 .. p0}, LB0/X;->f()V

    .line 546
    .line 547
    .line 548
    iget-object v1, v5, LB0/i0;->k:LB0/f0;

    .line 549
    .line 550
    iget-object v4, v5, LB0/i0;->i:LB0/f0;

    .line 551
    .line 552
    if-eq v4, v1, :cond_d

    .line 553
    .line 554
    :goto_e
    if-eqz v4, :cond_d

    .line 555
    .line 556
    iget-object v6, v4, LB0/f0;->m:LB0/f0;

    .line 557
    .line 558
    if-eq v6, v1, :cond_d

    .line 559
    .line 560
    move-object v4, v6

    .line 561
    goto :goto_e

    .line 562
    :cond_d
    invoke-virtual {v5, v4}, LB0/i0;->n(LB0/f0;)I

    .line 563
    .line 564
    .line 565
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 566
    .line 567
    iget v1, v1, LB0/v0;->e:I

    .line 568
    .line 569
    if-eq v1, v3, :cond_5

    .line 570
    .line 571
    invoke-virtual/range {p0 .. p0}, LB0/X;->C()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v10, v2}, Lp0/I;->e(I)Z

    .line 575
    .line 576
    .line 577
    goto/16 :goto_5

    .line 578
    .line 579
    :cond_e
    iget-object v2, v11, LB0/X;->F0:LB0/w;

    .line 580
    .line 581
    if-eqz v2, :cond_f

    .line 582
    .line 583
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 584
    .line 585
    .line 586
    iget-object v1, v11, LB0/X;->F0:LB0/w;

    .line 587
    .line 588
    :cond_f
    move-object v9, v1

    .line 589
    iget v1, v9, LB0/w;->I:I

    .line 590
    .line 591
    if-ne v1, v14, :cond_11

    .line 592
    .line 593
    iget-object v1, v5, LB0/i0;->i:LB0/f0;

    .line 594
    .line 595
    iget-object v2, v5, LB0/i0;->j:LB0/f0;

    .line 596
    .line 597
    if-eq v1, v2, :cond_11

    .line 598
    .line 599
    :goto_f
    iget-object v1, v5, LB0/i0;->i:LB0/f0;

    .line 600
    .line 601
    iget-object v2, v5, LB0/i0;->j:LB0/f0;

    .line 602
    .line 603
    if-eq v1, v2, :cond_10

    .line 604
    .line 605
    invoke-virtual {v5}, LB0/i0;->a()LB0/f0;

    .line 606
    .line 607
    .line 608
    goto :goto_f

    .line 609
    :cond_10
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->f(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual/range {p0 .. p0}, LB0/X;->E()V

    .line 613
    .line 614
    .line 615
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 616
    .line 617
    iget-object v2, v1, LB0/g0;->a:LO0/y;

    .line 618
    .line 619
    const/16 v16, 0x1

    .line 620
    .line 621
    const/16 v17, 0x0

    .line 622
    .line 623
    iget-wide v7, v1, LB0/g0;->b:J

    .line 624
    .line 625
    iget-wide v5, v1, LB0/g0;->c:J

    .line 626
    .line 627
    move-object/from16 v1, p0

    .line 628
    .line 629
    move-wide v3, v7

    .line 630
    move-object v14, v9

    .line 631
    move/from16 v9, v16

    .line 632
    .line 633
    move-object v15, v10

    .line 634
    move/from16 v10, v17

    .line 635
    .line 636
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    iput-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 641
    .line 642
    goto :goto_10

    .line 643
    :cond_11
    move-object v14, v9

    .line 644
    move-object v15, v10

    .line 645
    :goto_10
    iget-boolean v1, v14, LB0/w;->O:Z

    .line 646
    .line 647
    if-eqz v1, :cond_14

    .line 648
    .line 649
    iget-object v1, v11, LB0/X;->F0:LB0/w;

    .line 650
    .line 651
    if-eqz v1, :cond_12

    .line 652
    .line 653
    const/16 v1, 0x138c

    .line 654
    .line 655
    iget v2, v14, Lm0/Q;->G:I

    .line 656
    .line 657
    if-eq v2, v1, :cond_12

    .line 658
    .line 659
    const/16 v1, 0x138b

    .line 660
    .line 661
    if-ne v2, v1, :cond_14

    .line 662
    .line 663
    :cond_12
    const-string v1, "Recoverable renderer error"

    .line 664
    .line 665
    invoke-static {v13, v1, v14}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    .line 667
    .line 668
    iget-object v1, v11, LB0/X;->F0:LB0/w;

    .line 669
    .line 670
    if-nez v1, :cond_13

    .line 671
    .line 672
    iput-object v14, v11, LB0/X;->F0:LB0/w;

    .line 673
    .line 674
    :cond_13
    const/16 v1, 0x19

    .line 675
    .line 676
    invoke-virtual {v15, v1, v14}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    iget-object v2, v1, Lp0/H;->a:Landroid/os/Message;

    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    iget-object v3, v15, Lp0/I;->a:Landroid/os/Handler;

    .line 689
    .line 690
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Lp0/H;->a()V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_5

    .line 697
    .line 698
    :cond_14
    invoke-static {v13, v12, v14}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    .line 700
    .line 701
    const/4 v1, 0x1

    .line 702
    const/4 v2, 0x0

    .line 703
    invoke-virtual {v11, v1, v2}, LB0/X;->s0(ZZ)V

    .line 704
    .line 705
    .line 706
    iget-object v2, v11, LB0/X;->m0:LB0/v0;

    .line 707
    .line 708
    invoke-virtual {v2, v14}, LB0/v0;->f(LB0/w;)LB0/v0;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    iput-object v2, v11, LB0/X;->m0:LB0/v0;

    .line 713
    .line 714
    :goto_11
    invoke-virtual/range {p0 .. p0}, LB0/X;->E()V

    .line 715
    .line 716
    .line 717
    return v1

    .line 718
    nop

    .line 719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i(LB0/f0;IZJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LB0/X;->G:[LB0/F0;

    .line 6
    .line 7
    aget-object v2, v2, p2

    .line 8
    .line 9
    invoke-virtual {v2}, LB0/F0;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v3, v0, LB0/X;->Y:LB0/i0;

    .line 17
    .line 18
    iget-object v3, v3, LB0/i0;->i:LB0/f0;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v6, v1, LB0/f0;->o:LR0/y;

    .line 28
    .line 29
    iget-object v7, v6, LR0/y;->b:[LB0/E0;

    .line 30
    .line 31
    aget-object v7, v7, p2

    .line 32
    .line 33
    iget-object v6, v6, LR0/y;->c:[LR0/t;

    .line 34
    .line 35
    aget-object v6, v6, p2

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, LB0/X;->p0()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_2

    .line 42
    .line 43
    iget-object v8, v0, LB0/X;->m0:LB0/v0;

    .line 44
    .line 45
    iget v8, v8, LB0/v0;->e:I

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    if-ne v8, v9, :cond_2

    .line 49
    .line 50
    const/16 v19, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/16 v19, 0x0

    .line 54
    .line 55
    :goto_1
    if-nez p3, :cond_3

    .line 56
    .line 57
    if-eqz v19, :cond_3

    .line 58
    .line 59
    const/4 v12, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/4 v12, 0x0

    .line 62
    :goto_2
    iget v4, v0, LB0/X;->z0:I

    .line 63
    .line 64
    add-int/2addr v4, v5

    .line 65
    iput v4, v0, LB0/X;->z0:I

    .line 66
    .line 67
    iget-object v4, v1, LB0/f0;->c:[LO0/U;

    .line 68
    .line 69
    aget-object v9, v4, p2

    .line 70
    .line 71
    iget-wide v10, v0, LB0/X;->B0:J

    .line 72
    .line 73
    iget-wide v14, v1, LB0/f0;->p:J

    .line 74
    .line 75
    iget-object v4, v1, LB0/f0;->g:LB0/g0;

    .line 76
    .line 77
    iget-object v4, v4, LB0/g0;->a:LO0/y;

    .line 78
    .line 79
    invoke-static {v6}, LB0/F0;->c(LR0/t;)[Lm0/t;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iget v6, v2, LB0/F0;->d:I

    .line 84
    .line 85
    iget-object v13, v0, LB0/X;->U:LB0/o;

    .line 86
    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    const/4 v5, 0x2

    .line 90
    if-eq v6, v5, :cond_4

    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    if-ne v6, v5, :cond_5

    .line 94
    .line 95
    :cond_4
    move-object v1, v13

    .line 96
    move-wide/from16 v17, v14

    .line 97
    .line 98
    const/4 v5, 0x1

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    const/4 v5, 0x1

    .line 101
    iput-boolean v5, v2, LB0/F0;->f:Z

    .line 102
    .line 103
    iget-object v5, v2, LB0/F0;->c:LB0/h;

    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-object v6, v5

    .line 109
    move-object v1, v13

    .line 110
    move v13, v3

    .line 111
    move-wide/from16 v17, v14

    .line 112
    .line 113
    move-wide/from16 v14, p4

    .line 114
    .line 115
    move-wide/from16 v16, v17

    .line 116
    .line 117
    move-object/from16 v18, v4

    .line 118
    .line 119
    invoke-virtual/range {v6 .. v18}, LB0/h;->enable(LB0/E0;[Lm0/t;LO0/U;JZZJJLO0/y;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v5}, LB0/o;->a(LB0/h;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    move-object v1, v13

    .line 127
    move-wide/from16 v17, v14

    .line 128
    .line 129
    :goto_3
    iput-boolean v5, v2, LB0/F0;->e:Z

    .line 130
    .line 131
    iget-object v6, v2, LB0/F0;->a:LB0/h;

    .line 132
    .line 133
    move v13, v3

    .line 134
    move-wide/from16 v14, p4

    .line 135
    .line 136
    move-wide/from16 v16, v17

    .line 137
    .line 138
    move-object/from16 v18, v4

    .line 139
    .line 140
    invoke-virtual/range {v6 .. v18}, LB0/h;->enable(LB0/E0;[Lm0/t;LO0/U;JZZJJLO0/y;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v2, LB0/F0;->a:LB0/h;

    .line 144
    .line 145
    invoke-virtual {v1, v4}, LB0/o;->a(LB0/h;)V

    .line 146
    .line 147
    .line 148
    :goto_4
    new-instance v1, LB0/S;

    .line 149
    .line 150
    invoke-direct {v1, v0}, LB0/S;-><init>(LB0/X;)V

    .line 151
    .line 152
    .line 153
    move-object/from16 v4, p1

    .line 154
    .line 155
    invoke-virtual {v2, v4}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/16 v5, 0xb

    .line 163
    .line 164
    invoke-interface {v4, v5, v1}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    if-eqz v19, :cond_7

    .line 168
    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    invoke-virtual {v2}, LB0/F0;->m()V

    .line 172
    .line 173
    .line 174
    :cond_7
    return-void
.end method

.method public final i0(LB0/I0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB0/X;->h0:LB0/I0;

    .line 2
    .line 3
    return-void
.end method

.method public final j([ZJ)V
    .locals 10

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->j:LB0/f0;

    .line 4
    .line 5
    iget-object v7, v0, LB0/f0;->o:LR0/y;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v8, p0, LB0/X;->G:[LB0/F0;

    .line 10
    .line 11
    array-length v3, v8

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v7, v2}, LR0/y;->b(I)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    aget-object v3, v8, v2

    .line 21
    .line 22
    invoke-virtual {v3}, LB0/F0;->k()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v9, 0x0

    .line 29
    :goto_1
    array-length v1, v8

    .line 30
    if-ge v9, v1, :cond_4

    .line 31
    .line 32
    invoke-virtual {v7, v9}, LR0/y;->b(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    aget-object v1, v8, v9

    .line 39
    .line 40
    invoke-virtual {v1, v0}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    aget-boolean v4, p1, v9

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    move-object v2, v0

    .line 51
    move v3, v9

    .line 52
    move-wide v5, p2

    .line 53
    invoke-virtual/range {v1 .. v6}, LB0/X;->i(LB0/f0;IZJ)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    return-void
.end method

.method public final j0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, LB0/X;->v0:Z

    .line 2
    .line 3
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 4
    .line 5
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 6
    .line 7
    iget-object v1, p0, LB0/X;->Y:LB0/i0;

    .line 8
    .line 9
    iput-boolean p1, v1, LB0/i0;->h:Z

    .line 10
    .line 11
    invoke-virtual {v1, v0}, LB0/i0;->r(Lm0/f0;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, LB0/X;->U(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, LB0/X;->f()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, LB0/X;->u(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final k(Lm0/f0;Ljava/lang/Object;J)J
    .locals 5

    .line 1
    iget-object v0, p0, LB0/X;->R:Lm0/d0;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Lm0/d0;->c:I

    .line 8
    .line 9
    iget-object v1, p0, LB0/X;->Q:Lm0/e0;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v1}, Lm0/f0;->o(ILm0/e0;)V

    .line 12
    .line 13
    .line 14
    iget-wide p1, v1, Lm0/e0;->f:J

    .line 15
    .line 16
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v4, p1, v2

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lm0/e0;->a()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-boolean p1, v1, Lm0/e0;->i:Z

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-wide p1, v1, Lm0/e0;->g:J

    .line 37
    .line 38
    invoke-static {p1, p2}, Lp0/M;->z(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iget-wide v1, v1, Lm0/e0;->f:J

    .line 43
    .line 44
    sub-long/2addr p1, v1

    .line 45
    invoke-static {p1, p2}, Lp0/M;->R(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    iget-wide v0, v0, Lm0/d0;->e:J

    .line 50
    .line 51
    add-long/2addr p3, v0

    .line 52
    sub-long/2addr p1, p3

    .line 53
    return-wide p1

    .line 54
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final k0(LO0/X;)V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LB0/X;->Z:LB0/u0;

    .line 8
    .line 9
    iget-object v1, v0, LB0/u0;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p1, LO0/X;->b:[I

    .line 16
    .line 17
    array-length v2, v2

    .line 18
    if-eq v2, v1, :cond_0

    .line 19
    .line 20
    new-instance v2, LO0/X;

    .line 21
    .line 22
    new-instance v3, Ljava/util/Random;

    .line 23
    .line 24
    iget-object p1, p1, LO0/X;->a:Ljava/util/Random;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, LO0/X;-><init>(Ljava/util/Random;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, LO0/X;->a(I)LO0/X;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_0
    iput-object p1, v0, LB0/u0;->j:LO0/X;

    .line 41
    .line 42
    invoke-virtual {v0}, LB0/u0;->b()Lm0/f0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, LB0/X;->v(Lm0/f0;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final l(LB0/f0;)J
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    iget-wide v0, p1, LB0/f0;->p:J

    .line 7
    .line 8
    iget-boolean v2, p1, LB0/f0;->e:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, LB0/X;->G:[LB0/F0;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v2, v4, :cond_4

    .line 18
    .line 19
    aget-object v4, v3, v2

    .line 20
    .line 21
    invoke-virtual {v4, p1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    invoke-virtual {v3, p1}, LB0/F0;->d(LB0/f0;)LB0/h;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, LB0/h;->getReadingPositionUs()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const-wide/high16 v5, -0x8000000000000000L

    .line 41
    .line 42
    cmp-long v7, v3, v5

    .line 43
    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    return-wide v5

    .line 47
    :cond_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    return-wide v0
.end method

.method public final l0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 2
    .line 3
    iget v1, v0, LB0/v0;->e:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v1, p0, LB0/X;->G0:J

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    iget-boolean v1, v0, LB0/v0;->p:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, LB0/v0;->i(Z)LB0/v0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, LB0/v0;->h(I)LB0/v0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final m(Lm0/f0;)Landroid/util/Pair;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lm0/f0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, LB0/v0;->u:LO0/y;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-boolean v0, p0, LB0/X;->v0:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lm0/f0;->a(Z)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-object v5, p0, LB0/X;->R:Lm0/d0;

    .line 27
    .line 28
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iget-object v4, p0, LB0/X;->Q:Lm0/e0;

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    invoke-virtual/range {v3 .. v8}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, p0, LB0/X;->Y:LB0/i0;

    .line 41
    .line 42
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v3, p1, v4, v1, v2}, LB0/i0;->p(Lm0/f0;Ljava/lang/Object;J)LO0/y;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, v3, LO0/y;->a:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v4, p0, LB0/X;->R:Lm0/d0;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v4}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 67
    .line 68
    .line 69
    iget p1, v3, LO0/y;->b:I

    .line 70
    .line 71
    invoke-virtual {v4, p1}, Lm0/d0;->f(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget v0, v3, LO0/y;->c:I

    .line 76
    .line 77
    if-ne v0, p1, :cond_2

    .line 78
    .line 79
    iget-object p1, v4, Lm0/d0;->g:Lm0/c;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-wide v1, v4

    .line 86
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method

.method public final m0(LU0/B;)V
    .locals 7

    .line 1
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

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
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 10
    .line 11
    invoke-virtual {v4}, LB0/h;->getTrackType()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x2

    .line 16
    if-eq v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v5, 0x7

    .line 20
    invoke-interface {v4, v5, p1}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v3, LB0/F0;->c:LB0/h;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v3, v5, p1}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method

.method public final n(J)J
    .locals 7

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->l:LB0/f0;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-wide v3, p0, LB0/X;->B0:J

    .line 11
    .line 12
    iget-wide v5, v0, LB0/f0;->p:J

    .line 13
    .line 14
    sub-long/2addr v3, v5

    .line 15
    sub-long/2addr p1, v3

    .line 16
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    return-wide p1
.end method

.method public final n0(Ljava/lang/Object;Lp0/i;)V
    .locals 8

    .line 1
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x2

    .line 6
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    iget-object v5, v4, LB0/F0;->a:LB0/h;

    .line 11
    .line 12
    invoke-virtual {v5}, LB0/h;->getTrackType()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-eq v6, v3, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget v3, v4, LB0/F0;->d:I

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v3, v6, :cond_2

    .line 24
    .line 25
    if-ne v3, v7, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v5, v7, p1}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    iget-object v3, v4, LB0/F0;->c:LB0/h;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v7, p1}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 44
    .line 45
    iget p1, p1, LB0/v0;->e:I

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-eq p1, v0, :cond_4

    .line 49
    .line 50
    if-ne p1, v3, :cond_5

    .line 51
    .line 52
    :cond_4
    iget-object p1, p0, LB0/X;->N:Lp0/I;

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Lp0/I;->e(I)Z

    .line 55
    .line 56
    .line 57
    :cond_5
    if-eqz p2, :cond_6

    .line 58
    .line 59
    invoke-virtual {p2}, Lp0/i;->f()Z

    .line 60
    .line 61
    .line 62
    :cond_6
    return-void
.end method

.method public final o(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 2
    .line 3
    iget-boolean v1, v0, LB0/v0;->l:Z

    .line 4
    .line 5
    iget v2, v0, LB0/v0;->n:I

    .line 6
    .line 7
    iget v0, v0, LB0/v0;->m:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v2, v0, v1}, LB0/X;->x0(IIIZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final o0(F)V
    .locals 7

    .line 1
    iput p1, p0, LB0/X;->K0:F

    .line 2
    .line 3
    iget-object v0, p0, LB0/X;->g0:LB0/g;

    .line 4
    .line 5
    iget v0, v0, LB0/g;->g:F

    .line 6
    .line 7
    mul-float p1, p1, v0

    .line 8
    .line 9
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 18
    .line 19
    invoke-virtual {v4}, LB0/h;->getTrackType()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eq v5, v6, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x2

    .line 32
    invoke-interface {v4, v6, v5}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v3, LB0/F0;->c:LB0/h;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v3, v6, v4}, LB0/y0;->handleMessage(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget v0, p0, LB0/X;->K0:F

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LB0/X;->o0(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p0()Z
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 2
    .line 3
    iget-boolean v1, v0, LB0/v0;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, LB0/v0;->n:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final q(LO0/w;)V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v1, v0, LB0/i0;->l:LB0/f0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, LB0/f0;->a:LO0/w;

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    iget-wide v1, p0, LB0/X;->B0:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, LB0/i0;->m(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LB0/X;->C()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, LB0/i0;->m:LB0/f0;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, LB0/f0;->a:LO0/w;

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, LB0/X;->D()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final q0(Lm0/f0;LO0/y;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, LO0/y;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p2, LO0/y;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, LB0/X;->R:Lm0/d0;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p2, p2, Lm0/d0;->c:I

    .line 24
    .line 25
    iget-object v0, p0, LB0/X;->Q:Lm0/e0;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lm0/f0;->o(ILm0/e0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lm0/e0;->a()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-boolean p1, v0, Lm0/e0;->i:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-wide p1, v0, Lm0/e0;->f:J

    .line 41
    .line 42
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v0, p1, v2

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    :goto_0
    return v1
.end method

.method public final r(LO0/W;)V
    .locals 2

    .line 1
    check-cast p1, LO0/w;

    .line 2
    .line 3
    iget-object v0, p0, LB0/X;->N:Lp0/I;

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lp0/H;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final r0()V
    .locals 4

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, LB0/f0;->o:LR0/y;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, LB0/X;->G:[LB0/F0;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, LR0/y;->b(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    aget-object v2, v2, v1

    .line 24
    .line 25
    invoke-virtual {v2}, LB0/F0;->m()V

    .line 26
    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method

.method public final s(Ljava/io/IOException;I)V
    .locals 2

    .line 1
    new-instance v0, LB0/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, LB0/w;-><init>(ILjava/lang/Throwable;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, LB0/X;->Y:LB0/i0;

    .line 8
    .line 9
    iget-object p1, p1, LB0/i0;->i:LB0/f0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, LB0/f0;->g:LB0/g0;

    .line 14
    .line 15
    iget-object p1, p1, LB0/g0;->a:LO0/y;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, LB0/w;->a(LO0/y;)LB0/w;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    .line 22
    .line 23
    const-string p2, "Playback error"

    .line 24
    .line 25
    invoke-static {p1, p2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v1}, LB0/X;->s0(ZZ)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, LB0/v0;->f(LB0/w;)LB0/v0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 38
    .line 39
    return-void
.end method

.method public final s0(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, LB0/X;->w0:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, LB0/X;->N(ZZZZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, LB0/X;->n0:LB0/U;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LB0/U;->d(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, LB0/X;->L:LB0/b0;

    .line 22
    .line 23
    check-cast p1, LB0/m;

    .line 24
    .line 25
    iget-object p2, p1, LB0/m;->j:Ljava/util/HashMap;

    .line 26
    .line 27
    iget-object v0, p0, LB0/X;->c0:LC0/I;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, LB0/m;->d()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 39
    .line 40
    iget-boolean p1, p1, LB0/v0;->l:Z

    .line 41
    .line 42
    iget-object p2, p0, LB0/X;->g0:LB0/g;

    .line 43
    .line 44
    invoke-virtual {p2, v1, p1}, LB0/g;->d(IZ)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, LB0/X;->l0(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final t(LO0/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/X;->N:Lp0/I;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lp0/H;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t0()V
    .locals 7

    .line 1
    iget-object v0, p0, LB0/X;->U:LB0/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, LB0/o;->L:Z

    .line 5
    .line 6
    iget-object v0, v0, LB0/o;->G:LB0/J0;

    .line 7
    .line 8
    iget-boolean v2, v0, LB0/J0;->H:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, LB0/J0;->getPositionUs()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v2, v3}, LB0/J0;->a(J)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, v0, LB0/J0;->H:Z

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, LB0/X;->G:[LB0/F0;

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    :goto_0
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    aget-object v3, v0, v1

    .line 27
    .line 28
    iget-object v4, v3, LB0/F0;->a:LB0/h;

    .line 29
    .line 30
    invoke-static {v4}, LB0/F0;->h(LB0/h;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x2

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4}, LB0/h;->getState()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4}, LB0/h;->stop()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v3, v3, LB0/F0;->c:LB0/h;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v3}, LB0/h;->getState()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3}, LB0/h;->getState()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, LB0/h;->stop()V

    .line 63
    .line 64
    .line 65
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-void
.end method

.method public final u(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->l:LB0/f0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 8
    .line 9
    iget-object v1, v1, LB0/v0;->b:LO0/y;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, LB0/f0;->g:LB0/g0;

    .line 13
    .line 14
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, LB0/X;->m0:LB0/v0;

    .line 17
    .line 18
    iget-object v2, v2, LB0/v0;->k:LO0/y;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, LB0/X;->m0:LB0/v0;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, LB0/v0;->c(LO0/y;)LB0/v0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-wide v3, v1, LB0/v0;->s:J

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, LB0/f0;->d()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    :goto_1
    iput-wide v3, v1, LB0/v0;->q:J

    .line 48
    .line 49
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 50
    .line 51
    iget-wide v3, v1, LB0/v0;->q:J

    .line 52
    .line 53
    invoke-virtual {p0, v3, v4}, LB0/X;->n(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    iput-wide v3, v1, LB0/v0;->r:J

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    :cond_3
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-boolean p1, v0, LB0/f0;->e:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object p1, v0, LB0/f0;->g:LB0/g0;

    .line 70
    .line 71
    iget-object p1, p1, LB0/g0;->a:LO0/y;

    .line 72
    .line 73
    iget-object p1, v0, LB0/f0;->o:LR0/y;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, LB0/X;->v0(LR0/y;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method public final u0()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/i0;->l:LB0/f0;

    .line 4
    .line 5
    iget-boolean v1, p0, LB0/X;->t0:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, LB0/f0;->a:LO0/w;

    .line 12
    .line 13
    invoke-interface {v0}, LO0/W;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    iget-object v1, p0, LB0/X;->m0:LB0/v0;

    .line 24
    .line 25
    iget-boolean v2, v1, LB0/v0;->g:Z

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v0}, LB0/v0;->b(Z)LB0/v0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final v(Lm0/f0;Z)V
    .locals 42

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 6
    .line 7
    iget-object v8, v11, LB0/X;->A0:LB0/W;

    .line 8
    .line 9
    iget-object v9, v11, LB0/X;->Y:LB0/i0;

    .line 10
    .line 11
    iget v4, v11, LB0/X;->u0:I

    .line 12
    .line 13
    iget-boolean v10, v11, LB0/X;->v0:Z

    .line 14
    .line 15
    iget-object v13, v11, LB0/X;->Q:Lm0/e0;

    .line 16
    .line 17
    iget-object v14, v11, LB0/X;->R:Lm0/d0;

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lm0/f0;->q()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v6, -0x1

    .line 25
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v0, LB0/V;

    .line 34
    .line 35
    sget-object v19, LB0/v0;->u:LO0/y;

    .line 36
    .line 37
    const/16 v25, 0x1

    .line 38
    .line 39
    const/16 v26, 0x0

    .line 40
    .line 41
    const-wide/16 v20, 0x0

    .line 42
    .line 43
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const/16 v24, 0x0

    .line 49
    .line 50
    move-object/from16 v18, v0

    .line 51
    .line 52
    invoke-direct/range {v18 .. v26}, LB0/V;-><init>(LO0/y;JJZZZ)V

    .line 53
    .line 54
    .line 55
    move-object v9, v0

    .line 56
    const/4 v8, -0x1

    .line 57
    const/4 v13, 0x2

    .line 58
    const-wide/16 v30, 0x0

    .line 59
    .line 60
    goto/16 :goto_16

    .line 61
    .line 62
    :cond_0
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 63
    .line 64
    iget-object v15, v1, LO0/y;->a:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 67
    .line 68
    invoke-virtual {v2}, Lm0/f0;->q()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    iget-object v3, v1, LO0/y;->a:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {v2, v3, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-boolean v2, v2, Lm0/d0;->f:Z

    .line 81
    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/16 v21, 0x0

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    const/16 v21, 0x1

    .line 89
    .line 90
    :goto_1
    iget-object v2, v0, LB0/v0;->b:LO0/y;

    .line 91
    .line 92
    invoke-virtual {v2}, LO0/y;->b()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    if-eqz v21, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    iget-wide v2, v0, LB0/v0;->s:J

    .line 102
    .line 103
    :goto_2
    move-wide/from16 v28, v2

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    :goto_3
    iget-wide v2, v0, LB0/v0;->c:J

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_4
    if-eqz v8, :cond_8

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    move-object v2, v1

    .line 113
    move-object/from16 v1, p1

    .line 114
    .line 115
    move-object v11, v2

    .line 116
    move-object v2, v8

    .line 117
    move v5, v10

    .line 118
    move-object v6, v13

    .line 119
    move-object v7, v14

    .line 120
    invoke-static/range {v1 .. v7}, LB0/X;->R(Lm0/f0;LB0/W;ZIZLm0/e0;Lm0/d0;)Landroid/util/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_5

    .line 125
    .line 126
    invoke-virtual {v12, v10}, Lm0/f0;->a(Z)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    move v6, v1

    .line 131
    move-wide/from16 v1, v28

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    const/4 v4, 0x0

    .line 135
    const/4 v7, 0x1

    .line 136
    goto :goto_7

    .line 137
    :cond_5
    iget-wide v2, v8, LB0/W;->c:J

    .line 138
    .line 139
    cmp-long v4, v2, v16

    .line 140
    .line 141
    if-nez v4, :cond_6

    .line 142
    .line 143
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v12, v1, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget v6, v1, Lm0/d0;->c:I

    .line 150
    .line 151
    move-wide/from16 v1, v28

    .line 152
    .line 153
    const/4 v7, 0x0

    .line 154
    goto :goto_5

    .line 155
    :cond_6
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 156
    .line 157
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v1, Ljava/lang/Long;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    const/4 v6, -0x1

    .line 166
    const/4 v7, 0x1

    .line 167
    :goto_5
    iget v3, v0, LB0/v0;->e:I

    .line 168
    .line 169
    const/4 v4, 0x4

    .line 170
    if-ne v3, v4, :cond_7

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    goto :goto_6

    .line 174
    :cond_7
    const/4 v3, 0x0

    .line 175
    :goto_6
    move v4, v3

    .line 176
    move v3, v7

    .line 177
    const/4 v7, 0x0

    .line 178
    :goto_7
    move/from16 v41, v3

    .line 179
    .line 180
    move/from16 v39, v4

    .line 181
    .line 182
    move v4, v6

    .line 183
    move/from16 v40, v7

    .line 184
    .line 185
    const/4 v8, -0x1

    .line 186
    const-wide/16 v30, 0x0

    .line 187
    .line 188
    goto/16 :goto_d

    .line 189
    .line 190
    :cond_8
    move-object v11, v1

    .line 191
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 192
    .line 193
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    invoke-virtual {v12, v10}, Lm0/f0;->a(Z)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    move v4, v1

    .line 204
    move-wide/from16 v1, v28

    .line 205
    .line 206
    const/4 v8, -0x1

    .line 207
    :goto_8
    const-wide/16 v30, 0x0

    .line 208
    .line 209
    :goto_9
    const/16 v39, 0x0

    .line 210
    .line 211
    const/16 v40, 0x0

    .line 212
    .line 213
    :goto_a
    const/16 v41, 0x0

    .line 214
    .line 215
    goto/16 :goto_d

    .line 216
    .line 217
    :cond_9
    invoke-virtual {v12, v15}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const/4 v8, -0x1

    .line 222
    if-ne v1, v8, :cond_b

    .line 223
    .line 224
    iget-object v6, v0, LB0/v0;->a:Lm0/f0;

    .line 225
    .line 226
    move-object v1, v13

    .line 227
    move-object v2, v14

    .line 228
    move v3, v4

    .line 229
    move v4, v10

    .line 230
    move-object v5, v15

    .line 231
    move-object/from16 v7, p1

    .line 232
    .line 233
    invoke-static/range {v1 .. v7}, LB0/X;->S(Lm0/e0;Lm0/d0;IZLjava/lang/Object;Lm0/f0;Lm0/f0;)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-ne v1, v8, :cond_a

    .line 238
    .line 239
    invoke-virtual {v12, v10}, Lm0/f0;->a(Z)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    const/4 v7, 0x1

    .line 244
    goto :goto_b

    .line 245
    :cond_a
    const/4 v7, 0x0

    .line 246
    :goto_b
    move v4, v1

    .line 247
    move/from16 v40, v7

    .line 248
    .line 249
    move-wide/from16 v1, v28

    .line 250
    .line 251
    const-wide/16 v30, 0x0

    .line 252
    .line 253
    const/16 v39, 0x0

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_b
    cmp-long v1, v28, v16

    .line 257
    .line 258
    if-nez v1, :cond_c

    .line 259
    .line 260
    invoke-virtual {v12, v15, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget v1, v1, Lm0/d0;->c:I

    .line 265
    .line 266
    move v4, v1

    .line 267
    move-wide/from16 v1, v28

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_c
    if-eqz v21, :cond_f

    .line 271
    .line 272
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 273
    .line 274
    iget-object v2, v11, LO0/y;->a:Ljava/lang/Object;

    .line 275
    .line 276
    invoke-virtual {v1, v2, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 280
    .line 281
    iget v2, v14, Lm0/d0;->c:I

    .line 282
    .line 283
    const-wide/16 v5, 0x0

    .line 284
    .line 285
    invoke-virtual {v1, v2, v13, v5, v6}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget v1, v1, Lm0/e0;->n:I

    .line 290
    .line 291
    iget-object v2, v0, LB0/v0;->a:Lm0/f0;

    .line 292
    .line 293
    iget-object v3, v11, LO0/y;->a:Ljava/lang/Object;

    .line 294
    .line 295
    invoke-virtual {v2, v3}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-ne v1, v2, :cond_d

    .line 300
    .line 301
    iget-wide v1, v14, Lm0/d0;->e:J

    .line 302
    .line 303
    add-long v19, v28, v1

    .line 304
    .line 305
    invoke-virtual {v12, v15, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget v4, v1, Lm0/d0;->c:I

    .line 310
    .line 311
    move-object/from16 v1, p1

    .line 312
    .line 313
    move-object v2, v13

    .line 314
    move-object v3, v14

    .line 315
    move-wide/from16 v30, v5

    .line 316
    .line 317
    move-wide/from16 v5, v19

    .line 318
    .line 319
    invoke-virtual/range {v1 .. v6}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 324
    .line 325
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v1, Ljava/lang/Long;

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    goto :goto_c

    .line 334
    :cond_d
    move-wide/from16 v30, v5

    .line 335
    .line 336
    invoke-virtual {v12, v15, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget-wide v1, v1, Lm0/d0;->d:J

    .line 341
    .line 342
    cmp-long v3, v1, v16

    .line 343
    .line 344
    if-eqz v3, :cond_e

    .line 345
    .line 346
    iget-wide v1, v14, Lm0/d0;->d:J

    .line 347
    .line 348
    const-wide/16 v3, 0x1

    .line 349
    .line 350
    sub-long v26, v1, v3

    .line 351
    .line 352
    const-wide/16 v24, 0x0

    .line 353
    .line 354
    move-wide/from16 v22, v28

    .line 355
    .line 356
    invoke-static/range {v22 .. v27}, Lp0/M;->j(JJJ)J

    .line 357
    .line 358
    .line 359
    move-result-wide v1

    .line 360
    goto :goto_c

    .line 361
    :cond_e
    move-wide/from16 v1, v28

    .line 362
    .line 363
    :goto_c
    const/4 v4, -0x1

    .line 364
    const/16 v39, 0x0

    .line 365
    .line 366
    const/16 v40, 0x0

    .line 367
    .line 368
    const/16 v41, 0x1

    .line 369
    .line 370
    goto :goto_d

    .line 371
    :cond_f
    const-wide/16 v30, 0x0

    .line 372
    .line 373
    move-wide/from16 v1, v28

    .line 374
    .line 375
    const/4 v4, -0x1

    .line 376
    goto/16 :goto_9

    .line 377
    .line 378
    :goto_d
    if-eq v4, v8, :cond_10

    .line 379
    .line 380
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    move-object/from16 v1, p1

    .line 386
    .line 387
    move-object v2, v13

    .line 388
    move-object v3, v14

    .line 389
    invoke-virtual/range {v1 .. v6}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 394
    .line 395
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Ljava/lang/Long;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 400
    .line 401
    .line 402
    move-result-wide v1

    .line 403
    move-wide v2, v1

    .line 404
    move-wide/from16 v37, v16

    .line 405
    .line 406
    goto :goto_e

    .line 407
    :cond_10
    move-wide/from16 v37, v1

    .line 408
    .line 409
    move-wide/from16 v2, v37

    .line 410
    .line 411
    :goto_e
    invoke-virtual {v9, v12, v15, v2, v3}, LB0/i0;->p(Lm0/f0;Ljava/lang/Object;J)LO0/y;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    iget v4, v1, LO0/y;->e:I

    .line 416
    .line 417
    if-eq v4, v8, :cond_12

    .line 418
    .line 419
    iget v5, v11, LO0/y;->e:I

    .line 420
    .line 421
    if-eq v5, v8, :cond_11

    .line 422
    .line 423
    if-lt v4, v5, :cond_11

    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_11
    const/4 v7, 0x0

    .line 427
    goto :goto_10

    .line 428
    :cond_12
    :goto_f
    const/4 v7, 0x1

    .line 429
    :goto_10
    iget-object v4, v11, LO0/y;->a:Ljava/lang/Object;

    .line 430
    .line 431
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_13

    .line 436
    .line 437
    invoke-virtual {v11}, LO0/y;->b()Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-nez v4, :cond_13

    .line 442
    .line 443
    invoke-virtual {v1}, LO0/y;->b()Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-nez v4, :cond_13

    .line 448
    .line 449
    if-eqz v7, :cond_13

    .line 450
    .line 451
    const/4 v7, 0x1

    .line 452
    goto :goto_11

    .line 453
    :cond_13
    const/4 v7, 0x0

    .line 454
    :goto_11
    invoke-virtual {v12, v15, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    if-nez v21, :cond_14

    .line 459
    .line 460
    cmp-long v5, v28, v37

    .line 461
    .line 462
    if-nez v5, :cond_14

    .line 463
    .line 464
    iget-object v5, v11, LO0/y;->a:Ljava/lang/Object;

    .line 465
    .line 466
    iget-object v6, v1, LO0/y;->a:Ljava/lang/Object;

    .line 467
    .line 468
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-nez v5, :cond_15

    .line 473
    .line 474
    :cond_14
    const/4 v13, 0x2

    .line 475
    goto :goto_13

    .line 476
    :cond_15
    invoke-virtual {v11}, LO0/y;->b()Z

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    if-eqz v5, :cond_16

    .line 481
    .line 482
    iget v5, v11, LO0/y;->b:I

    .line 483
    .line 484
    invoke-virtual {v4, v5}, Lm0/d0;->i(I)Z

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    if-eqz v6, :cond_16

    .line 489
    .line 490
    iget v6, v11, LO0/y;->c:I

    .line 491
    .line 492
    invoke-virtual {v4, v5, v6}, Lm0/d0;->e(II)I

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    const/4 v10, 0x4

    .line 497
    if-eq v9, v10, :cond_14

    .line 498
    .line 499
    invoke-virtual {v4, v5, v6}, Lm0/d0;->e(II)I

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    const/4 v13, 0x2

    .line 504
    if-eq v4, v13, :cond_17

    .line 505
    .line 506
    :goto_12
    const/4 v4, 0x1

    .line 507
    goto :goto_14

    .line 508
    :cond_16
    const/4 v13, 0x2

    .line 509
    invoke-virtual {v1}, LO0/y;->b()Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_17

    .line 514
    .line 515
    iget v5, v1, LO0/y;->b:I

    .line 516
    .line 517
    invoke-virtual {v4, v5}, Lm0/d0;->i(I)Z

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    if-eqz v4, :cond_17

    .line 522
    .line 523
    goto :goto_12

    .line 524
    :cond_17
    :goto_13
    const/4 v4, 0x0

    .line 525
    :goto_14
    if-nez v7, :cond_18

    .line 526
    .line 527
    if-eqz v4, :cond_19

    .line 528
    .line 529
    :cond_18
    move-object v1, v11

    .line 530
    :cond_19
    invoke-virtual {v1}, LO0/y;->b()Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_1a

    .line 535
    .line 536
    invoke-virtual {v1, v11}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-eqz v2, :cond_1b

    .line 541
    .line 542
    iget-wide v2, v0, LB0/v0;->s:J

    .line 543
    .line 544
    :cond_1a
    move-wide/from16 v35, v2

    .line 545
    .line 546
    goto :goto_15

    .line 547
    :cond_1b
    iget-object v0, v1, LO0/y;->a:Ljava/lang/Object;

    .line 548
    .line 549
    invoke-virtual {v12, v0, v14}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 550
    .line 551
    .line 552
    iget v0, v1, LO0/y;->c:I

    .line 553
    .line 554
    iget v2, v1, LO0/y;->b:I

    .line 555
    .line 556
    invoke-virtual {v14, v2}, Lm0/d0;->f(I)I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-ne v0, v2, :cond_1c

    .line 561
    .line 562
    iget-object v0, v14, Lm0/d0;->g:Lm0/c;

    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    :cond_1c
    move-wide/from16 v35, v30

    .line 568
    .line 569
    :goto_15
    new-instance v0, LB0/V;

    .line 570
    .line 571
    move-object/from16 v33, v0

    .line 572
    .line 573
    move-object/from16 v34, v1

    .line 574
    .line 575
    invoke-direct/range {v33 .. v41}, LB0/V;-><init>(LO0/y;JJZZZ)V

    .line 576
    .line 577
    .line 578
    move-object v9, v0

    .line 579
    :goto_16
    iget-object v10, v9, LB0/V;->a:LO0/y;

    .line 580
    .line 581
    iget-wide v14, v9, LB0/V;->c:J

    .line 582
    .line 583
    iget-boolean v6, v9, LB0/V;->d:Z

    .line 584
    .line 585
    iget-wide v3, v9, LB0/V;->b:J

    .line 586
    .line 587
    move-object/from16 v11, p0

    .line 588
    .line 589
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 590
    .line 591
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 592
    .line 593
    invoke-virtual {v0, v10}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-eqz v0, :cond_1e

    .line 598
    .line 599
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 600
    .line 601
    iget-wide v0, v0, LB0/v0;->s:J

    .line 602
    .line 603
    cmp-long v2, v3, v0

    .line 604
    .line 605
    if-eqz v2, :cond_1d

    .line 606
    .line 607
    goto :goto_17

    .line 608
    :cond_1d
    const/16 v19, 0x0

    .line 609
    .line 610
    goto :goto_18

    .line 611
    :cond_1e
    :goto_17
    const/16 v19, 0x1

    .line 612
    .line 613
    :goto_18
    const/16 v20, 0x3

    .line 614
    .line 615
    :try_start_0
    iget-boolean v0, v9, LB0/V;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .line 617
    if-eqz v0, :cond_20

    .line 618
    .line 619
    :try_start_1
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 620
    .line 621
    iget v0, v0, LB0/v0;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    .line 623
    const/4 v5, 0x1

    .line 624
    if-eq v0, v5, :cond_1f

    .line 625
    .line 626
    const/4 v2, 0x4

    .line 627
    :try_start_2
    invoke-virtual {v11, v2}, LB0/X;->l0(I)V

    .line 628
    .line 629
    .line 630
    :goto_19
    const/4 v1, 0x0

    .line 631
    goto :goto_1b

    .line 632
    :catchall_0
    move-exception v0

    .line 633
    :goto_1a
    move-wide/from16 v23, v3

    .line 634
    .line 635
    move-object v1, v9

    .line 636
    const/4 v8, 0x0

    .line 637
    const/4 v9, -0x1

    .line 638
    const/16 v18, 0x4

    .line 639
    .line 640
    goto/16 :goto_28

    .line 641
    .line 642
    :cond_1f
    const/4 v2, 0x4

    .line 643
    goto :goto_19

    .line 644
    :goto_1b
    invoke-virtual {v11, v1, v1, v1, v5}, LB0/X;->N(ZZZZ)V

    .line 645
    .line 646
    .line 647
    goto :goto_1c

    .line 648
    :catchall_1
    move-exception v0

    .line 649
    const/4 v2, 0x4

    .line 650
    const/4 v5, 0x1

    .line 651
    goto :goto_1a

    .line 652
    :cond_20
    const/4 v2, 0x4

    .line 653
    const/4 v5, 0x1

    .line 654
    :goto_1c
    iget-object v0, v11, LB0/X;->G:[LB0/F0;

    .line 655
    .line 656
    array-length v1, v0

    .line 657
    const/4 v2, 0x0

    .line 658
    :goto_1d
    if-ge v2, v1, :cond_22

    .line 659
    .line 660
    aget-object v5, v0, v2

    .line 661
    .line 662
    iget-object v7, v5, LB0/F0;->a:LB0/h;

    .line 663
    .line 664
    invoke-virtual {v7, v12}, LB0/h;->setTimeline(Lm0/f0;)V

    .line 665
    .line 666
    .line 667
    iget-object v5, v5, LB0/F0;->c:LB0/h;

    .line 668
    .line 669
    if-eqz v5, :cond_21

    .line 670
    .line 671
    invoke-virtual {v5, v12}, LB0/h;->setTimeline(Lm0/f0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    .line 673
    .line 674
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 675
    .line 676
    const/4 v5, 0x1

    .line 677
    goto :goto_1d

    .line 678
    :cond_22
    if-nez v19, :cond_27

    .line 679
    .line 680
    :try_start_3
    iget-object v0, v11, LB0/X;->Y:LB0/i0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 681
    .line 682
    :try_start_4
    iget-object v0, v0, LB0/i0;->j:LB0/f0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 683
    .line 684
    if-nez v0, :cond_23

    .line 685
    .line 686
    move-wide/from16 v5, v30

    .line 687
    .line 688
    goto :goto_1e

    .line 689
    :cond_23
    :try_start_5
    invoke-virtual {v11, v0}, LB0/X;->l(LB0/f0;)J

    .line 690
    .line 691
    .line 692
    move-result-wide v0

    .line 693
    move-wide v5, v0

    .line 694
    :goto_1e
    invoke-virtual/range {p0 .. p0}, LB0/X;->d()Z

    .line 695
    .line 696
    .line 697
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 698
    if-eqz v0, :cond_25

    .line 699
    .line 700
    :try_start_6
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 701
    .line 702
    iget-object v0, v0, LB0/i0;->k:LB0/f0;

    .line 703
    .line 704
    if-nez v0, :cond_24

    .line 705
    .line 706
    goto :goto_1f

    .line 707
    :cond_24
    invoke-virtual {v11, v0}, LB0/X;->l(LB0/f0;)J

    .line 708
    .line 709
    .line 710
    move-result-wide v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 711
    move-wide/from16 v30, v0

    .line 712
    .line 713
    :cond_25
    :goto_1f
    :try_start_7
    iget-object v1, v11, LB0/X;->Y:LB0/i0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 714
    .line 715
    move-object/from16 v22, v9

    .line 716
    .line 717
    :try_start_8
    iget-wide v8, v11, LB0/X;->B0:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 718
    .line 719
    const/16 v18, 0x4

    .line 720
    .line 721
    move-object/from16 v2, p1

    .line 722
    .line 723
    move-wide/from16 v23, v3

    .line 724
    .line 725
    move-wide v3, v8

    .line 726
    const/4 v9, 0x1

    .line 727
    const/4 v9, -0x1

    .line 728
    move-wide/from16 v7, v30

    .line 729
    .line 730
    :try_start_9
    invoke-virtual/range {v1 .. v8}, LB0/i0;->s(Lm0/f0;JJJ)I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    and-int/lit8 v1, v0, 0x1

    .line 735
    .line 736
    if-eqz v1, :cond_26

    .line 737
    .line 738
    const/4 v1, 0x0

    .line 739
    invoke-virtual {v11, v1}, LB0/X;->U(Z)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_24

    .line 743
    .line 744
    :catchall_2
    move-exception v0

    .line 745
    :goto_20
    move-object/from16 v1, v22

    .line 746
    .line 747
    const/4 v8, 0x0

    .line 748
    goto/16 :goto_28

    .line 749
    .line 750
    :cond_26
    and-int/2addr v0, v13

    .line 751
    if-eqz v0, :cond_2b

    .line 752
    .line 753
    invoke-virtual/range {p0 .. p0}, LB0/X;->f()V

    .line 754
    .line 755
    .line 756
    goto :goto_24

    .line 757
    :catchall_3
    move-exception v0

    .line 758
    move-wide/from16 v23, v3

    .line 759
    .line 760
    :goto_21
    const/4 v9, -0x1

    .line 761
    const/16 v18, 0x4

    .line 762
    .line 763
    goto :goto_20

    .line 764
    :catchall_4
    move-exception v0

    .line 765
    move-wide/from16 v23, v3

    .line 766
    .line 767
    move-object/from16 v22, v9

    .line 768
    .line 769
    goto :goto_21

    .line 770
    :catchall_5
    move-exception v0

    .line 771
    move-wide/from16 v23, v3

    .line 772
    .line 773
    move-object/from16 v22, v9

    .line 774
    .line 775
    goto :goto_21

    .line 776
    :cond_27
    move-wide/from16 v23, v3

    .line 777
    .line 778
    move-object/from16 v22, v9

    .line 779
    .line 780
    const/4 v9, -0x1

    .line 781
    const/16 v18, 0x4

    .line 782
    .line 783
    invoke-virtual/range {p1 .. p1}, Lm0/f0;->q()Z

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-nez v0, :cond_2b

    .line 788
    .line 789
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 790
    .line 791
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 792
    .line 793
    :goto_22
    if-eqz v0, :cond_29

    .line 794
    .line 795
    iget-object v1, v0, LB0/f0;->g:LB0/g0;

    .line 796
    .line 797
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 798
    .line 799
    invoke-virtual {v1, v10}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    if-eqz v1, :cond_28

    .line 804
    .line 805
    iget-object v1, v11, LB0/X;->Y:LB0/i0;

    .line 806
    .line 807
    iget-object v2, v0, LB0/f0;->g:LB0/g0;

    .line 808
    .line 809
    invoke-virtual {v1, v12, v2}, LB0/i0;->h(Lm0/f0;LB0/g0;)LB0/g0;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    iput-object v1, v0, LB0/f0;->g:LB0/g0;

    .line 814
    .line 815
    invoke-virtual {v0}, LB0/f0;->k()V

    .line 816
    .line 817
    .line 818
    :cond_28
    iget-object v0, v0, LB0/f0;->m:LB0/f0;

    .line 819
    .line 820
    goto :goto_22

    .line 821
    :cond_29
    iget-object v0, v11, LB0/X;->Y:LB0/i0;

    .line 822
    .line 823
    iget-object v1, v0, LB0/i0;->i:LB0/f0;

    .line 824
    .line 825
    iget-object v0, v0, LB0/i0;->j:LB0/f0;

    .line 826
    .line 827
    if-eq v1, v0, :cond_2a

    .line 828
    .line 829
    const/4 v5, 0x1

    .line 830
    goto :goto_23

    .line 831
    :cond_2a
    const/4 v5, 0x0

    .line 832
    :goto_23
    move-object/from16 v1, p0

    .line 833
    .line 834
    move-object v2, v10

    .line 835
    move-wide/from16 v3, v23

    .line 836
    .line 837
    invoke-virtual/range {v1 .. v6}, LB0/X;->W(LO0/y;JZZ)J

    .line 838
    .line 839
    .line 840
    move-result-wide v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 841
    move-wide/from16 v23, v0

    .line 842
    .line 843
    :cond_2b
    :goto_24
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 844
    .line 845
    iget-object v4, v0, LB0/v0;->a:Lm0/f0;

    .line 846
    .line 847
    iget-object v5, v0, LB0/v0;->b:LO0/y;

    .line 848
    .line 849
    move-object/from16 v1, v22

    .line 850
    .line 851
    iget-boolean v0, v1, LB0/V;->f:Z

    .line 852
    .line 853
    if-eqz v0, :cond_2c

    .line 854
    .line 855
    move-wide/from16 v6, v23

    .line 856
    .line 857
    goto :goto_25

    .line 858
    :cond_2c
    move-wide/from16 v6, v16

    .line 859
    .line 860
    :goto_25
    const/4 v8, 0x0

    .line 861
    move-object/from16 v1, p0

    .line 862
    .line 863
    move-object/from16 v2, p1

    .line 864
    .line 865
    move-object v3, v10

    .line 866
    invoke-virtual/range {v1 .. v8}, LB0/X;->z0(Lm0/f0;LO0/y;Lm0/f0;LO0/y;JZ)V

    .line 867
    .line 868
    .line 869
    if-nez v19, :cond_2d

    .line 870
    .line 871
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 872
    .line 873
    iget-wide v0, v0, LB0/v0;->c:J

    .line 874
    .line 875
    cmp-long v2, v14, v0

    .line 876
    .line 877
    if-eqz v2, :cond_30

    .line 878
    .line 879
    :cond_2d
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 880
    .line 881
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 882
    .line 883
    iget-object v1, v1, LO0/y;->a:Ljava/lang/Object;

    .line 884
    .line 885
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 886
    .line 887
    if-eqz v19, :cond_2e

    .line 888
    .line 889
    if-eqz p2, :cond_2e

    .line 890
    .line 891
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    if-nez v2, :cond_2e

    .line 896
    .line 897
    iget-object v2, v11, LB0/X;->R:Lm0/d0;

    .line 898
    .line 899
    invoke-virtual {v0, v1, v2}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    iget-boolean v0, v0, Lm0/d0;->f:Z

    .line 904
    .line 905
    if-nez v0, :cond_2e

    .line 906
    .line 907
    const/16 v32, 0x1

    .line 908
    .line 909
    goto :goto_26

    .line 910
    :cond_2e
    const/16 v32, 0x0

    .line 911
    .line 912
    :goto_26
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 913
    .line 914
    iget-wide v7, v0, LB0/v0;->d:J

    .line 915
    .line 916
    invoke-virtual {v12, v1}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-ne v0, v9, :cond_2f

    .line 921
    .line 922
    goto :goto_27

    .line 923
    :cond_2f
    const/16 v18, 0x3

    .line 924
    .line 925
    :goto_27
    move-object/from16 v1, p0

    .line 926
    .line 927
    move-object v2, v10

    .line 928
    move-wide/from16 v3, v23

    .line 929
    .line 930
    move-wide v5, v14

    .line 931
    move/from16 v9, v32

    .line 932
    .line 933
    move/from16 v10, v18

    .line 934
    .line 935
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    iput-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 940
    .line 941
    :cond_30
    invoke-virtual/range {p0 .. p0}, LB0/X;->O()V

    .line 942
    .line 943
    .line 944
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 945
    .line 946
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 947
    .line 948
    invoke-virtual {v11, v12, v0}, LB0/X;->Q(Lm0/f0;Lm0/f0;)V

    .line 949
    .line 950
    .line 951
    iget-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 952
    .line 953
    invoke-virtual {v0, v12}, LB0/v0;->j(Lm0/f0;)LB0/v0;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    iput-object v0, v11, LB0/X;->m0:LB0/v0;

    .line 958
    .line 959
    invoke-virtual/range {p1 .. p1}, Lm0/f0;->q()Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    if-nez v0, :cond_31

    .line 964
    .line 965
    const/4 v8, 0x0

    .line 966
    iput-object v8, v11, LB0/X;->A0:LB0/W;

    .line 967
    .line 968
    :cond_31
    const/4 v1, 0x0

    .line 969
    invoke-virtual {v11, v1}, LB0/X;->u(Z)V

    .line 970
    .line 971
    .line 972
    iget-object v0, v11, LB0/X;->N:Lp0/I;

    .line 973
    .line 974
    invoke-virtual {v0, v13}, Lp0/I;->e(I)Z

    .line 975
    .line 976
    .line 977
    return-void

    .line 978
    :goto_28
    iget-object v2, v11, LB0/X;->m0:LB0/v0;

    .line 979
    .line 980
    iget-object v4, v2, LB0/v0;->a:Lm0/f0;

    .line 981
    .line 982
    iget-object v5, v2, LB0/v0;->b:LO0/y;

    .line 983
    .line 984
    iget-boolean v1, v1, LB0/V;->f:Z

    .line 985
    .line 986
    if-eqz v1, :cond_32

    .line 987
    .line 988
    move-wide/from16 v6, v23

    .line 989
    .line 990
    goto :goto_29

    .line 991
    :cond_32
    move-wide/from16 v6, v16

    .line 992
    .line 993
    :goto_29
    const/16 v16, 0x0

    .line 994
    .line 995
    move-object/from16 v1, p0

    .line 996
    .line 997
    move-object/from16 v2, p1

    .line 998
    .line 999
    move-object v3, v10

    .line 1000
    move-object v13, v8

    .line 1001
    move/from16 v8, v16

    .line 1002
    .line 1003
    invoke-virtual/range {v1 .. v8}, LB0/X;->z0(Lm0/f0;LO0/y;Lm0/f0;LO0/y;JZ)V

    .line 1004
    .line 1005
    .line 1006
    if-nez v19, :cond_33

    .line 1007
    .line 1008
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1009
    .line 1010
    iget-wide v1, v1, LB0/v0;->c:J

    .line 1011
    .line 1012
    cmp-long v3, v14, v1

    .line 1013
    .line 1014
    if-eqz v3, :cond_36

    .line 1015
    .line 1016
    :cond_33
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1017
    .line 1018
    iget-object v2, v1, LB0/v0;->b:LO0/y;

    .line 1019
    .line 1020
    iget-object v2, v2, LO0/y;->a:Ljava/lang/Object;

    .line 1021
    .line 1022
    iget-object v1, v1, LB0/v0;->a:Lm0/f0;

    .line 1023
    .line 1024
    if-eqz v19, :cond_34

    .line 1025
    .line 1026
    if-eqz p2, :cond_34

    .line 1027
    .line 1028
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v3

    .line 1032
    if-nez v3, :cond_34

    .line 1033
    .line 1034
    iget-object v3, v11, LB0/X;->R:Lm0/d0;

    .line 1035
    .line 1036
    invoke-virtual {v1, v2, v3}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    iget-boolean v1, v1, Lm0/d0;->f:Z

    .line 1041
    .line 1042
    if-nez v1, :cond_34

    .line 1043
    .line 1044
    const/16 v32, 0x1

    .line 1045
    .line 1046
    goto :goto_2a

    .line 1047
    :cond_34
    const/16 v32, 0x0

    .line 1048
    .line 1049
    :goto_2a
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1050
    .line 1051
    iget-wide v7, v1, LB0/v0;->d:J

    .line 1052
    .line 1053
    invoke-virtual {v12, v2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 1054
    .line 1055
    .line 1056
    move-result v1

    .line 1057
    if-ne v1, v9, :cond_35

    .line 1058
    .line 1059
    goto :goto_2b

    .line 1060
    :cond_35
    const/16 v18, 0x3

    .line 1061
    .line 1062
    :goto_2b
    move-object/from16 v1, p0

    .line 1063
    .line 1064
    move-object v2, v10

    .line 1065
    move-wide/from16 v3, v23

    .line 1066
    .line 1067
    move-wide v5, v14

    .line 1068
    move/from16 v9, v32

    .line 1069
    .line 1070
    move/from16 v10, v18

    .line 1071
    .line 1072
    invoke-virtual/range {v1 .. v10}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    iput-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1077
    .line 1078
    :cond_36
    invoke-virtual/range {p0 .. p0}, LB0/X;->O()V

    .line 1079
    .line 1080
    .line 1081
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1082
    .line 1083
    iget-object v1, v1, LB0/v0;->a:Lm0/f0;

    .line 1084
    .line 1085
    invoke-virtual {v11, v12, v1}, LB0/X;->Q(Lm0/f0;Lm0/f0;)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1089
    .line 1090
    invoke-virtual {v1, v12}, LB0/v0;->j(Lm0/f0;)LB0/v0;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    iput-object v1, v11, LB0/X;->m0:LB0/v0;

    .line 1095
    .line 1096
    invoke-virtual/range {p1 .. p1}, Lm0/f0;->q()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v1

    .line 1100
    if-nez v1, :cond_37

    .line 1101
    .line 1102
    iput-object v13, v11, LB0/X;->A0:LB0/W;

    .line 1103
    .line 1104
    :cond_37
    const/4 v1, 0x0

    .line 1105
    invoke-virtual {v11, v1}, LB0/X;->u(Z)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v1, v11, LB0/X;->N:Lp0/I;

    .line 1109
    .line 1110
    const/4 v2, 0x2

    .line 1111
    invoke-virtual {v1, v2}, Lp0/I;->e(I)Z

    .line 1112
    .line 1113
    .line 1114
    throw v0
.end method

.method public final v0(LR0/y;)V
    .locals 9

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v1, v0, LB0/i0;->l:LB0/f0;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v1, LB0/f0;->g:LB0/g0;

    .line 14
    .line 15
    iget-wide v2, v0, LB0/g0;->b:J

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v1}, LB0/f0;->d()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {p0, v2, v3}, LB0/X;->n(J)J

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 25
    .line 26
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 27
    .line 28
    iget-object v1, v1, LB0/f0;->g:LB0/g0;

    .line 29
    .line 30
    iget-object v1, v1, LB0/g0;->a:LO0/y;

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, LB0/X;->q0(Lm0/f0;LO0/y;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, LB0/X;->a0:LB0/k;

    .line 39
    .line 40
    iget-wide v0, v0, LB0/k;->i:J

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 43
    .line 44
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 45
    .line 46
    iget-object v0, p0, LB0/X;->U:LB0/o;

    .line 47
    .line 48
    invoke-virtual {v0}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Lm0/S;->a:F

    .line 53
    .line 54
    iget-object v0, p0, LB0/X;->m0:LB0/v0;

    .line 55
    .line 56
    iget-boolean v0, v0, LB0/v0;->l:Z

    .line 57
    .line 58
    iget-object p1, p1, LR0/y;->c:[LR0/t;

    .line 59
    .line 60
    iget-object v0, p0, LB0/X;->L:LB0/b0;

    .line 61
    .line 62
    check-cast v0, LB0/m;

    .line 63
    .line 64
    iget-object v1, v0, LB0/m;->j:Ljava/util/HashMap;

    .line 65
    .line 66
    iget-object v2, p0, LB0/X;->c0:LC0/I;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, LB0/l;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const/4 v2, -0x1

    .line 78
    iget v3, v0, LB0/m;->f:I

    .line 79
    .line 80
    if-ne v3, v2, :cond_4

    .line 81
    .line 82
    array-length v2, p1

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    :goto_1
    const/high16 v6, 0xc80000

    .line 87
    .line 88
    if-ge v4, v2, :cond_3

    .line 89
    .line 90
    aget-object v7, p1, v4

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    check-cast v7, LR0/c;

    .line 95
    .line 96
    iget-object v7, v7, LR0/c;->a:Lm0/g0;

    .line 97
    .line 98
    iget v7, v7, Lm0/g0;->c:I

    .line 99
    .line 100
    const/high16 v8, 0x20000

    .line 101
    .line 102
    packed-switch v7, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :pswitch_0
    const/high16 v6, 0x20000

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :pswitch_1
    const/high16 v6, 0x1900000

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_2
    const/high16 v6, 0x7d00000

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_3
    const/high16 v6, 0x89a0000

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_4
    const/4 v6, 0x0

    .line 124
    :goto_2
    :pswitch_5
    add-int/2addr v5, v6

    .line 125
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    :cond_4
    iput v3, v1, LB0/l;->b:I

    .line 133
    .line 134
    invoke-virtual {v0}, LB0/m;->d()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final w(LO0/w;)V
    .locals 12

    .line 1
    iget-object v0, p0, LB0/X;->Y:LB0/i0;

    .line 2
    .line 3
    iget-object v1, v0, LB0/i0;->l:LB0/f0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v4, v1, LB0/f0;->a:LO0/w;

    .line 10
    .line 11
    if-ne v4, p1, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_0
    iget-object v5, p0, LB0/X;->U:LB0/o;

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-boolean p1, v1, LB0/f0;->e:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v5}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget p1, p1, Lm0/S;->a:F

    .line 32
    .line 33
    iget-object v2, p0, LB0/X;->m0:LB0/v0;

    .line 34
    .line 35
    iget-object v4, v2, LB0/v0;->a:Lm0/f0;

    .line 36
    .line 37
    iget-boolean v2, v2, LB0/v0;->l:Z

    .line 38
    .line 39
    invoke-virtual {v1, p1, v4, v2}, LB0/f0;->f(FLm0/f0;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, v1, LB0/f0;->g:LB0/g0;

    .line 43
    .line 44
    iget-object p1, p1, LB0/g0;->a:LO0/y;

    .line 45
    .line 46
    iget-object p1, v1, LB0/f0;->o:LR0/y;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, LB0/X;->v0(LR0/y;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, LB0/i0;->i:LB0/f0;

    .line 52
    .line 53
    if-ne v1, p1, :cond_2

    .line 54
    .line 55
    iget-object p1, v1, LB0/f0;->g:LB0/g0;

    .line 56
    .line 57
    iget-wide v4, p1, LB0/g0;->b:J

    .line 58
    .line 59
    invoke-virtual {p0, v4, v5}, LB0/X;->P(J)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, LB0/X;->G:[LB0/F0;

    .line 63
    .line 64
    array-length p1, p1

    .line 65
    new-array p1, p1, [Z

    .line 66
    .line 67
    iget-object v0, v0, LB0/i0;->j:LB0/f0;

    .line 68
    .line 69
    invoke-virtual {v0}, LB0/f0;->e()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-virtual {p0, p1, v4, v5}, LB0/X;->j([ZJ)V

    .line 74
    .line 75
    .line 76
    iput-boolean v3, v1, LB0/f0;->h:Z

    .line 77
    .line 78
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 79
    .line 80
    iget-object v3, p1, LB0/v0;->b:LO0/y;

    .line 81
    .line 82
    iget-object v0, v1, LB0/f0;->g:LB0/g0;

    .line 83
    .line 84
    iget-wide v8, v0, LB0/g0;->b:J

    .line 85
    .line 86
    const/4 v11, 0x5

    .line 87
    iget-wide v6, p1, LB0/v0;->c:J

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    move-object v2, p0

    .line 91
    move-wide v4, v8

    .line 92
    invoke-virtual/range {v2 .. v11}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0}, LB0/X;->C()V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    :goto_1
    iget-object v1, v0, LB0/i0;->q:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ge v2, v1, :cond_5

    .line 109
    .line 110
    iget-object v1, v0, LB0/i0;->q:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, LB0/f0;

    .line 117
    .line 118
    iget-object v4, v1, LB0/f0;->a:LO0/w;

    .line 119
    .line 120
    if-ne v4, p1, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v1, 0x0

    .line 127
    :goto_2
    if-eqz v1, :cond_6

    .line 128
    .line 129
    iget-boolean v2, v1, LB0/f0;->e:Z

    .line 130
    .line 131
    xor-int/2addr v2, v3

    .line 132
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget v2, v2, Lm0/S;->a:F

    .line 140
    .line 141
    iget-object v3, p0, LB0/X;->m0:LB0/v0;

    .line 142
    .line 143
    iget-object v4, v3, LB0/v0;->a:Lm0/f0;

    .line 144
    .line 145
    iget-boolean v3, v3, LB0/v0;->l:Z

    .line 146
    .line 147
    invoke-virtual {v1, v2, v4, v3}, LB0/f0;->f(FLm0/f0;Z)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, LB0/i0;->m:LB0/f0;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    iget-object v0, v0, LB0/f0;->a:LO0/w;

    .line 155
    .line 156
    if-ne v0, p1, :cond_6

    .line 157
    .line 158
    invoke-virtual {p0}, LB0/X;->D()V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_3
    return-void
.end method

.method public final w0(IILjava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/X;->n0:LB0/U;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LB0/U;->d(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LB0/X;->Z:LB0/u0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, LB0/u0;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    if-gt p1, p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gt p2, v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int v5, p2, p1

    .line 36
    .line 37
    if-ne v4, v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 42
    .line 43
    .line 44
    move v1, p1

    .line 45
    :goto_2
    if-ge v1, p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, LB0/s0;

    .line 52
    .line 53
    iget-object v4, v4, LB0/s0;->a:LO0/t;

    .line 54
    .line 55
    sub-int v5, v1, p1

    .line 56
    .line 57
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lm0/I;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, LO0/t;->s(Lm0/I;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0}, LB0/u0;->b()Lm0/f0;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1, v3}, LB0/X;->v(Lm0/f0;Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final x(Lm0/S;FZZ)V
    .locals 4

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, LB0/X;->n0:LB0/U;

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p4}, LB0/U;->d(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, LB0/X;->m0:LB0/v0;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, LB0/v0;->g(Lm0/S;)LB0/v0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, LB0/X;->m0:LB0/v0;

    .line 18
    .line 19
    :cond_1
    iget p3, p1, Lm0/S;->a:F

    .line 20
    .line 21
    iget-object p4, p0, LB0/X;->Y:LB0/i0;

    .line 22
    .line 23
    iget-object p4, p4, LB0/i0;->i:LB0/f0;

    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    if-eqz p4, :cond_4

    .line 27
    .line 28
    iget-object v1, p4, LB0/f0;->o:LR0/y;

    .line 29
    .line 30
    iget-object v1, v1, LR0/y;->c:[LR0/t;

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    :goto_1
    if-ge v0, v2, :cond_3

    .line 34
    .line 35
    aget-object v3, v1, v0

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v3, p3}, LR0/t;->g(F)V

    .line 40
    .line 41
    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object p4, p4, LB0/f0;->m:LB0/f0;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    iget-object p3, p0, LB0/X;->G:[LB0/F0;

    .line 49
    .line 50
    array-length p4, p3

    .line 51
    :goto_2
    if-ge v0, p4, :cond_6

    .line 52
    .line 53
    aget-object v1, p3, v0

    .line 54
    .line 55
    iget-object v2, v1, LB0/F0;->a:LB0/h;

    .line 56
    .line 57
    iget v3, p1, Lm0/S;->a:F

    .line 58
    .line 59
    invoke-virtual {v2, p2, v3}, LB0/h;->setPlaybackSpeed(FF)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v1, LB0/F0;->c:LB0/h;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {v1, p2, v3}, LB0/h;->setPlaybackSpeed(FF)V

    .line 67
    .line 68
    .line 69
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    return-void
.end method

.method public final x0(IIIZ)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p4, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p4, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x2

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-ne p3, v3, :cond_2

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    goto :goto_2

    .line 23
    :cond_3
    if-ne p2, v1, :cond_4

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    :cond_4
    :goto_2
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 27
    .line 28
    iget-boolean v0, p1, LB0/v0;->l:Z

    .line 29
    .line 30
    if-ne v0, p4, :cond_5

    .line 31
    .line 32
    iget v0, p1, LB0/v0;->n:I

    .line 33
    .line 34
    if-ne v0, p2, :cond_5

    .line 35
    .line 36
    iget v0, p1, LB0/v0;->m:I

    .line 37
    .line 38
    if-ne v0, p3, :cond_5

    .line 39
    .line 40
    return-void

    .line 41
    :cond_5
    invoke-virtual {p1, p4, p3, p2}, LB0/v0;->e(ZII)LB0/v0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 46
    .line 47
    invoke-virtual {p0, v2, v2}, LB0/X;->A0(ZZ)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, LB0/X;->Y:LB0/i0;

    .line 51
    .line 52
    iget-object p2, p1, LB0/i0;->i:LB0/f0;

    .line 53
    .line 54
    :goto_3
    if-eqz p2, :cond_7

    .line 55
    .line 56
    iget-object p3, p2, LB0/f0;->o:LR0/y;

    .line 57
    .line 58
    iget-object p3, p3, LR0/y;->c:[LR0/t;

    .line 59
    .line 60
    array-length p4, p3

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_4
    if-ge v0, p4, :cond_6

    .line 63
    .line 64
    aget-object v4, p3, v0

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    iget-object p2, p2, LB0/f0;->m:LB0/f0;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_7
    invoke-virtual {p0}, LB0/X;->p0()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_9

    .line 77
    .line 78
    invoke-virtual {p0}, LB0/X;->t0()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, LB0/X;->y0()V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, LB0/X;->m0:LB0/v0;

    .line 85
    .line 86
    iget-boolean p3, p2, LB0/v0;->p:Z

    .line 87
    .line 88
    if-eqz p3, :cond_8

    .line 89
    .line 90
    invoke-virtual {p2, v2}, LB0/v0;->i(Z)LB0/v0;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, LB0/X;->m0:LB0/v0;

    .line 95
    .line 96
    :cond_8
    iget-wide p2, p0, LB0/X;->B0:J

    .line 97
    .line 98
    invoke-virtual {p1, p2, p3}, LB0/i0;->m(J)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_9
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 103
    .line 104
    iget p1, p1, LB0/v0;->e:I

    .line 105
    .line 106
    const/4 p2, 0x3

    .line 107
    iget-object p3, p0, LB0/X;->N:Lp0/I;

    .line 108
    .line 109
    if-ne p1, p2, :cond_a

    .line 110
    .line 111
    iget-object p1, p0, LB0/X;->U:LB0/o;

    .line 112
    .line 113
    iput-boolean v1, p1, LB0/o;->L:Z

    .line 114
    .line 115
    iget-object p1, p1, LB0/o;->G:LB0/J0;

    .line 116
    .line 117
    invoke-virtual {p1}, LB0/J0;->b()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, LB0/X;->r0()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v3}, Lp0/I;->e(I)Z

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_a
    if-ne p1, v3, :cond_b

    .line 128
    .line 129
    invoke-virtual {p3, v3}, Lp0/I;->e(I)Z

    .line 130
    .line 131
    .line 132
    :cond_b
    :goto_5
    return-void
.end method

.method public final y(LO0/y;JJJZI)LB0/v0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v5, p4

    .line 6
    .line 7
    move/from16 v1, p9

    .line 8
    .line 9
    iget-boolean v3, v0, LB0/X;->E0:Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, LB0/X;->m0:LB0/v0;

    .line 15
    .line 16
    iget-wide v8, v3, LB0/v0;->s:J

    .line 17
    .line 18
    cmp-long v3, p2, v8

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v0, LB0/X;->m0:LB0/v0;

    .line 23
    .line 24
    iget-object v3, v3, LB0/v0;->b:LO0/y;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 36
    :goto_1
    iput-boolean v3, v0, LB0/X;->E0:Z

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, LB0/X;->O()V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, LB0/X;->m0:LB0/v0;

    .line 42
    .line 43
    iget-object v8, v3, LB0/v0;->h:LO0/Z;

    .line 44
    .line 45
    iget-object v9, v3, LB0/v0;->i:LR0/y;

    .line 46
    .line 47
    iget-object v10, v3, LB0/v0;->j:Ljava/util/List;

    .line 48
    .line 49
    iget-object v11, v0, LB0/X;->Z:LB0/u0;

    .line 50
    .line 51
    iget-boolean v11, v11, LB0/u0;->k:Z

    .line 52
    .line 53
    if-eqz v11, :cond_10

    .line 54
    .line 55
    iget-object v3, v0, LB0/X;->Y:LB0/i0;

    .line 56
    .line 57
    iget-object v3, v3, LB0/i0;->i:LB0/f0;

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    sget-object v8, LO0/Z;->d:LO0/Z;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v8, v3, LB0/f0;->n:LO0/Z;

    .line 65
    .line 66
    :goto_2
    if-nez v3, :cond_3

    .line 67
    .line 68
    iget-object v9, v0, LB0/X;->K:LR0/y;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v9, v3, LB0/f0;->o:LR0/y;

    .line 72
    .line 73
    :goto_3
    iget-object v10, v9, LR0/y;->c:[LR0/t;

    .line 74
    .line 75
    new-instance v11, Lz4/E;

    .line 76
    .line 77
    const/4 v12, 0x4

    .line 78
    invoke-direct {v11, v12}, Lz4/B;-><init>(I)V

    .line 79
    .line 80
    .line 81
    array-length v12, v10

    .line 82
    const/4 v13, 0x0

    .line 83
    const/4 v14, 0x0

    .line 84
    :goto_4
    if-ge v13, v12, :cond_6

    .line 85
    .line 86
    aget-object v15, v10, v13

    .line 87
    .line 88
    if-eqz v15, :cond_5

    .line 89
    .line 90
    check-cast v15, LR0/c;

    .line 91
    .line 92
    iget-object v15, v15, LR0/c;->d:[Lm0/t;

    .line 93
    .line 94
    aget-object v15, v15, v4

    .line 95
    .line 96
    iget-object v15, v15, Lm0/t;->l:Lm0/N;

    .line 97
    .line 98
    if-nez v15, :cond_4

    .line 99
    .line 100
    new-instance v15, Lm0/N;

    .line 101
    .line 102
    new-array v7, v4, [Lm0/M;

    .line 103
    .line 104
    invoke-direct {v15, v7}, Lm0/N;-><init>([Lm0/M;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11, v15}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_4
    invoke-virtual {v11, v15}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/4 v14, 0x1

    .line 115
    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    if-eqz v14, :cond_7

    .line 119
    .line 120
    invoke-virtual {v11}, Lz4/E;->m0()Lz4/d0;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    goto :goto_6

    .line 125
    :cond_7
    sget-object v7, Lz4/H;->H:Lz4/F;

    .line 126
    .line 127
    sget-object v7, Lz4/d0;->K:Lz4/d0;

    .line 128
    .line 129
    :goto_6
    if-eqz v3, :cond_8

    .line 130
    .line 131
    iget-object v10, v3, LB0/f0;->g:LB0/g0;

    .line 132
    .line 133
    iget-wide v11, v10, LB0/g0;->c:J

    .line 134
    .line 135
    cmp-long v13, v11, v5

    .line 136
    .line 137
    if-eqz v13, :cond_8

    .line 138
    .line 139
    invoke-virtual {v10, v5, v6}, LB0/g0;->a(J)LB0/g0;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    iput-object v10, v3, LB0/f0;->g:LB0/g0;

    .line 144
    .line 145
    :cond_8
    iget-object v3, v0, LB0/X;->Y:LB0/i0;

    .line 146
    .line 147
    iget-object v10, v3, LB0/i0;->i:LB0/f0;

    .line 148
    .line 149
    iget-object v3, v3, LB0/i0;->j:LB0/f0;

    .line 150
    .line 151
    if-eq v10, v3, :cond_9

    .line 152
    .line 153
    goto :goto_a

    .line 154
    :cond_9
    if-eqz v10, :cond_f

    .line 155
    .line 156
    iget-object v3, v10, LB0/f0;->o:LR0/y;

    .line 157
    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    :goto_7
    iget-object v12, v0, LB0/X;->G:[LB0/F0;

    .line 161
    .line 162
    array-length v13, v12

    .line 163
    if-ge v10, v13, :cond_c

    .line 164
    .line 165
    invoke-virtual {v3, v10}, LR0/y;->b(I)Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_b

    .line 170
    .line 171
    aget-object v12, v12, v10

    .line 172
    .line 173
    iget-object v12, v12, LB0/F0;->a:LB0/h;

    .line 174
    .line 175
    invoke-virtual {v12}, LB0/h;->getTrackType()I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    const/4 v13, 0x1

    .line 180
    if-eq v12, v13, :cond_a

    .line 181
    .line 182
    const/4 v13, 0x0

    .line 183
    goto :goto_8

    .line 184
    :cond_a
    iget-object v12, v3, LR0/y;->b:[LB0/E0;

    .line 185
    .line 186
    aget-object v12, v12, v10

    .line 187
    .line 188
    iget v12, v12, LB0/E0;->a:I

    .line 189
    .line 190
    if-eqz v12, :cond_b

    .line 191
    .line 192
    const/4 v11, 0x1

    .line 193
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_c
    const/4 v13, 0x1

    .line 197
    :goto_8
    if-eqz v11, :cond_d

    .line 198
    .line 199
    if-eqz v13, :cond_d

    .line 200
    .line 201
    const/4 v13, 0x1

    .line 202
    goto :goto_9

    .line 203
    :cond_d
    const/4 v13, 0x0

    .line 204
    :goto_9
    iget-boolean v3, v0, LB0/X;->y0:Z

    .line 205
    .line 206
    if-ne v13, v3, :cond_e

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_e
    iput-boolean v13, v0, LB0/X;->y0:Z

    .line 210
    .line 211
    if-nez v13, :cond_f

    .line 212
    .line 213
    iget-object v3, v0, LB0/X;->m0:LB0/v0;

    .line 214
    .line 215
    iget-boolean v3, v3, LB0/v0;->p:Z

    .line 216
    .line 217
    if-eqz v3, :cond_f

    .line 218
    .line 219
    iget-object v3, v0, LB0/X;->N:Lp0/I;

    .line 220
    .line 221
    const/4 v10, 0x2

    .line 222
    invoke-virtual {v3, v10}, Lp0/I;->e(I)Z

    .line 223
    .line 224
    .line 225
    :cond_f
    :goto_a
    move-object v13, v7

    .line 226
    move-object v11, v8

    .line 227
    move-object v12, v9

    .line 228
    goto :goto_b

    .line 229
    :cond_10
    iget-object v3, v3, LB0/v0;->b:LO0/y;

    .line 230
    .line 231
    invoke-virtual {v2, v3}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_11

    .line 236
    .line 237
    sget-object v3, LO0/Z;->d:LO0/Z;

    .line 238
    .line 239
    iget-object v7, v0, LB0/X;->K:LR0/y;

    .line 240
    .line 241
    sget-object v8, Lz4/d0;->K:Lz4/d0;

    .line 242
    .line 243
    move-object v11, v3

    .line 244
    move-object v12, v7

    .line 245
    move-object v13, v8

    .line 246
    goto :goto_b

    .line 247
    :cond_11
    move-object v11, v8

    .line 248
    move-object v12, v9

    .line 249
    move-object v13, v10

    .line 250
    :goto_b
    if-eqz p8, :cond_14

    .line 251
    .line 252
    iget-object v3, v0, LB0/X;->n0:LB0/U;

    .line 253
    .line 254
    iget-boolean v7, v3, LB0/U;->e:Z

    .line 255
    .line 256
    if-eqz v7, :cond_13

    .line 257
    .line 258
    iget v7, v3, LB0/U;->c:I

    .line 259
    .line 260
    const/4 v8, 0x5

    .line 261
    if-eq v7, v8, :cond_13

    .line 262
    .line 263
    if-ne v1, v8, :cond_12

    .line 264
    .line 265
    const/4 v4, 0x1

    .line 266
    :cond_12
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_c

    .line 270
    :cond_13
    const/4 v4, 0x1

    .line 271
    iput-boolean v4, v3, LB0/U;->d:Z

    .line 272
    .line 273
    iput-boolean v4, v3, LB0/U;->e:Z

    .line 274
    .line 275
    iput v1, v3, LB0/U;->c:I

    .line 276
    .line 277
    :cond_14
    :goto_c
    iget-object v1, v0, LB0/X;->m0:LB0/v0;

    .line 278
    .line 279
    iget-wide v3, v1, LB0/v0;->q:J

    .line 280
    .line 281
    invoke-virtual {v0, v3, v4}, LB0/X;->n(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide v9

    .line 285
    move-object/from16 v2, p1

    .line 286
    .line 287
    move-wide/from16 v3, p2

    .line 288
    .line 289
    move-wide/from16 v5, p4

    .line 290
    .line 291
    move-wide/from16 v7, p6

    .line 292
    .line 293
    invoke-virtual/range {v1 .. v13}, LB0/v0;->d(LO0/y;JJJJLO0/Z;LR0/y;Ljava/util/List;)LB0/v0;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    return-object v1
.end method

.method public final y0()V
    .locals 24

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const/4 v11, 0x3

    .line 4
    const/4 v12, 0x2

    .line 5
    const/4 v13, 0x0

    .line 6
    const/4 v14, 0x1

    .line 7
    iget-object v0, v10, LB0/X;->Y:LB0/i0;

    .line 8
    .line 9
    iget-object v0, v0, LB0/i0;->i:LB0/f0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v1, v0, LB0/f0;->e:Z

    .line 15
    .line 16
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, LB0/f0;->a:LO0/w;

    .line 24
    .line 25
    invoke-interface {v1}, LO0/w;->q()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    move-wide v6, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-wide v6, v15

    .line 32
    :goto_0
    const/16 v9, 0x10

    .line 33
    .line 34
    cmp-long v1, v6, v15

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, LB0/f0;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, v10, LB0/X;->Y:LB0/i0;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, LB0/i0;->n(LB0/f0;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v13}, LB0/X;->u(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, LB0/X;->C()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v10, v6, v7}, LB0/X;->P(J)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 59
    .line 60
    iget-wide v0, v0, LB0/v0;->s:J

    .line 61
    .line 62
    cmp-long v2, v6, v0

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 67
    .line 68
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 69
    .line 70
    iget-wide v4, v0, LB0/v0;->c:J

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    const/16 v17, 0x5

    .line 74
    .line 75
    move-object/from16 v0, p0

    .line 76
    .line 77
    move-wide v2, v6

    .line 78
    const/16 v15, 0x10

    .line 79
    .line 80
    move/from16 v9, v17

    .line 81
    .line 82
    invoke-virtual/range {v0 .. v9}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_3
    const/16 v15, 0x10

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_4
    const/16 v15, 0x10

    .line 95
    .line 96
    iget-object v1, v10, LB0/X;->U:LB0/o;

    .line 97
    .line 98
    iget-object v2, v10, LB0/X;->Y:LB0/i0;

    .line 99
    .line 100
    iget-object v2, v2, LB0/i0;->j:LB0/f0;

    .line 101
    .line 102
    if-eq v0, v2, :cond_5

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/4 v2, 0x0

    .line 107
    :goto_1
    iget-object v3, v1, LB0/o;->I:LB0/h;

    .line 108
    .line 109
    iget-object v4, v1, LB0/o;->G:LB0/J0;

    .line 110
    .line 111
    if-eqz v3, :cond_a

    .line 112
    .line 113
    invoke-virtual {v3}, LB0/h;->isEnded()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_a

    .line 118
    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    iget-object v3, v1, LB0/o;->I:LB0/h;

    .line 122
    .line 123
    invoke-virtual {v3}, LB0/h;->getState()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ne v3, v12, :cond_a

    .line 128
    .line 129
    :cond_6
    iget-object v3, v1, LB0/o;->I:LB0/h;

    .line 130
    .line 131
    invoke-virtual {v3}, LB0/h;->isReady()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_7

    .line 136
    .line 137
    if-nez v2, :cond_a

    .line 138
    .line 139
    iget-object v2, v1, LB0/o;->I:LB0/h;

    .line 140
    .line 141
    invoke-virtual {v2}, LB0/h;->hasReadStreamToEnd()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_7

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object v2, v1, LB0/o;->J:LB0/e0;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, LB0/e0;->getPositionUs()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    iget-boolean v3, v1, LB0/o;->K:Z

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-virtual {v4}, LB0/J0;->getPositionUs()J

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    cmp-long v3, v5, v7

    .line 166
    .line 167
    if-gez v3, :cond_8

    .line 168
    .line 169
    iget-boolean v2, v4, LB0/J0;->H:Z

    .line 170
    .line 171
    if-eqz v2, :cond_b

    .line 172
    .line 173
    invoke-virtual {v4}, LB0/J0;->getPositionUs()J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    invoke-virtual {v4, v2, v3}, LB0/J0;->a(J)V

    .line 178
    .line 179
    .line 180
    iput-boolean v13, v4, LB0/J0;->H:Z

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    iput-boolean v13, v1, LB0/o;->K:Z

    .line 184
    .line 185
    iget-boolean v3, v1, LB0/o;->L:Z

    .line 186
    .line 187
    if-eqz v3, :cond_9

    .line 188
    .line 189
    invoke-virtual {v4}, LB0/J0;->b()V

    .line 190
    .line 191
    .line 192
    :cond_9
    invoke-virtual {v4, v5, v6}, LB0/J0;->a(J)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v2}, LB0/e0;->getPlaybackParameters()Lm0/S;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iget-object v3, v4, LB0/J0;->K:Lm0/S;

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Lm0/S;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_b

    .line 206
    .line 207
    invoke-virtual {v4, v2}, LB0/J0;->setPlaybackParameters(Lm0/S;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v1, LB0/o;->H:LB0/n;

    .line 211
    .line 212
    check-cast v3, LB0/X;

    .line 213
    .line 214
    iget-object v3, v3, LB0/X;->N:Lp0/I;

    .line 215
    .line 216
    invoke-virtual {v3, v15, v2}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lp0/H;->b()V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_a
    :goto_2
    iput-boolean v14, v1, LB0/o;->K:Z

    .line 225
    .line 226
    iget-boolean v2, v1, LB0/o;->L:Z

    .line 227
    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    invoke-virtual {v4}, LB0/J0;->b()V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_3
    invoke-virtual {v1}, LB0/o;->getPositionUs()J

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    iput-wide v1, v10, LB0/X;->B0:J

    .line 238
    .line 239
    iget-wide v3, v0, LB0/f0;->p:J

    .line 240
    .line 241
    sub-long v6, v1, v3

    .line 242
    .line 243
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 244
    .line 245
    iget-wide v0, v0, LB0/v0;->s:J

    .line 246
    .line 247
    iget-object v0, v10, LB0/X;->V:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_10

    .line 254
    .line 255
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 256
    .line 257
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 258
    .line 259
    invoke-virtual {v0}, LO0/y;->b()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_c

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_c
    iget-boolean v0, v10, LB0/X;->E0:Z

    .line 267
    .line 268
    if-eqz v0, :cond_d

    .line 269
    .line 270
    iput-boolean v13, v10, LB0/X;->E0:Z

    .line 271
    .line 272
    :cond_d
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 273
    .line 274
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 275
    .line 276
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 277
    .line 278
    iget-object v0, v0, LO0/y;->a:Ljava/lang/Object;

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 281
    .line 282
    .line 283
    iget v0, v10, LB0/X;->D0:I

    .line 284
    .line 285
    iget-object v1, v10, LB0/X;->V:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-lez v0, :cond_e

    .line 296
    .line 297
    iget-object v1, v10, LB0/X;->V:Ljava/util/ArrayList;

    .line 298
    .line 299
    add-int/lit8 v2, v0, -0x1

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_e
    iget-object v1, v10, LB0/X;->V:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-ge v0, v1, :cond_f

    .line 315
    .line 316
    iget-object v1, v10, LB0/X;->V:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    iput v0, v10, LB0/X;->D0:I

    .line 326
    .line 327
    :cond_10
    :goto_4
    iget-object v0, v10, LB0/X;->U:LB0/o;

    .line 328
    .line 329
    invoke-virtual {v0}, LB0/o;->hasSkippedSilenceSinceLastCall()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_11

    .line 334
    .line 335
    iget-object v0, v10, LB0/X;->n0:LB0/U;

    .line 336
    .line 337
    iget-boolean v0, v0, LB0/U;->e:Z

    .line 338
    .line 339
    xor-int/lit8 v8, v0, 0x1

    .line 340
    .line 341
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 342
    .line 343
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 344
    .line 345
    iget-wide v4, v0, LB0/v0;->c:J

    .line 346
    .line 347
    const/4 v9, 0x6

    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    move-wide v2, v6

    .line 351
    invoke-virtual/range {v0 .. v9}, LB0/X;->y(LO0/y;JJJZI)LB0/v0;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iput-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_11
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 359
    .line 360
    iput-wide v6, v0, LB0/v0;->s:J

    .line 361
    .line 362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 363
    .line 364
    .line 365
    move-result-wide v1

    .line 366
    iput-wide v1, v0, LB0/v0;->t:J

    .line 367
    .line 368
    :goto_5
    iget-object v0, v10, LB0/X;->Y:LB0/i0;

    .line 369
    .line 370
    iget-object v0, v0, LB0/i0;->l:LB0/f0;

    .line 371
    .line 372
    iget-object v1, v10, LB0/X;->m0:LB0/v0;

    .line 373
    .line 374
    invoke-virtual {v0}, LB0/f0;->d()J

    .line 375
    .line 376
    .line 377
    move-result-wide v2

    .line 378
    iput-wide v2, v1, LB0/v0;->q:J

    .line 379
    .line 380
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 381
    .line 382
    iget-wide v1, v0, LB0/v0;->q:J

    .line 383
    .line 384
    invoke-virtual {v10, v1, v2}, LB0/X;->n(J)J

    .line 385
    .line 386
    .line 387
    move-result-wide v1

    .line 388
    iput-wide v1, v0, LB0/v0;->r:J

    .line 389
    .line 390
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 391
    .line 392
    iget-boolean v1, v0, LB0/v0;->l:Z

    .line 393
    .line 394
    if-eqz v1, :cond_1a

    .line 395
    .line 396
    iget v1, v0, LB0/v0;->e:I

    .line 397
    .line 398
    if-ne v1, v11, :cond_1a

    .line 399
    .line 400
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 401
    .line 402
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 403
    .line 404
    invoke-virtual {v10, v1, v0}, LB0/X;->q0(Lm0/f0;LO0/y;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_1a

    .line 409
    .line 410
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 411
    .line 412
    iget-object v1, v0, LB0/v0;->o:Lm0/S;

    .line 413
    .line 414
    iget v1, v1, Lm0/S;->a:F

    .line 415
    .line 416
    const/high16 v2, 0x3f800000    # 1.0f

    .line 417
    .line 418
    cmpl-float v1, v1, v2

    .line 419
    .line 420
    if-nez v1, :cond_1a

    .line 421
    .line 422
    iget-object v1, v10, LB0/X;->a0:LB0/k;

    .line 423
    .line 424
    iget-object v3, v0, LB0/v0;->a:Lm0/f0;

    .line 425
    .line 426
    iget-object v4, v0, LB0/v0;->b:LO0/y;

    .line 427
    .line 428
    iget-object v4, v4, LO0/y;->a:Ljava/lang/Object;

    .line 429
    .line 430
    iget-wide v5, v0, LB0/v0;->s:J

    .line 431
    .line 432
    invoke-virtual {v10, v3, v4, v5, v6}, LB0/X;->k(Lm0/f0;Ljava/lang/Object;J)J

    .line 433
    .line 434
    .line 435
    move-result-wide v3

    .line 436
    iget-object v0, v10, LB0/X;->m0:LB0/v0;

    .line 437
    .line 438
    iget-wide v5, v0, LB0/v0;->r:J

    .line 439
    .line 440
    iget-wide v7, v1, LB0/k;->d:J

    .line 441
    .line 442
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    cmp-long v0, v7, v16

    .line 448
    .line 449
    if-nez v0, :cond_12

    .line 450
    .line 451
    goto/16 :goto_a

    .line 452
    .line 453
    :cond_12
    sub-long v5, v3, v5

    .line 454
    .line 455
    iget-wide v7, v1, LB0/k;->n:J

    .line 456
    .line 457
    cmp-long v0, v7, v16

    .line 458
    .line 459
    if-nez v0, :cond_13

    .line 460
    .line 461
    iput-wide v5, v1, LB0/k;->n:J

    .line 462
    .line 463
    const-wide/16 v5, 0x0

    .line 464
    .line 465
    iput-wide v5, v1, LB0/k;->o:J

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_13
    iget v0, v1, LB0/k;->c:F

    .line 469
    .line 470
    long-to-float v7, v7

    .line 471
    mul-float v7, v7, v0

    .line 472
    .line 473
    sub-float v8, v2, v0

    .line 474
    .line 475
    long-to-float v9, v5

    .line 476
    mul-float v9, v9, v8

    .line 477
    .line 478
    add-float/2addr v9, v7

    .line 479
    float-to-long v14, v9

    .line 480
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 481
    .line 482
    .line 483
    move-result-wide v14

    .line 484
    iput-wide v14, v1, LB0/k;->n:J

    .line 485
    .line 486
    sub-long/2addr v5, v14

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    iget-wide v14, v1, LB0/k;->o:J

    .line 492
    .line 493
    long-to-float v9, v14

    .line 494
    mul-float v0, v0, v9

    .line 495
    .line 496
    long-to-float v5, v5

    .line 497
    mul-float v8, v8, v5

    .line 498
    .line 499
    add-float/2addr v8, v0

    .line 500
    float-to-long v5, v8

    .line 501
    iput-wide v5, v1, LB0/k;->o:J

    .line 502
    .line 503
    :goto_6
    iget-wide v5, v1, LB0/k;->m:J

    .line 504
    .line 505
    const-wide/16 v8, 0x3e8

    .line 506
    .line 507
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    cmp-long v0, v5, v14

    .line 513
    .line 514
    if-eqz v0, :cond_14

    .line 515
    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 517
    .line 518
    .line 519
    move-result-wide v5

    .line 520
    iget-wide v14, v1, LB0/k;->m:J

    .line 521
    .line 522
    sub-long/2addr v5, v14

    .line 523
    cmp-long v0, v5, v8

    .line 524
    .line 525
    if-gez v0, :cond_14

    .line 526
    .line 527
    iget v2, v1, LB0/k;->l:F

    .line 528
    .line 529
    goto/16 :goto_a

    .line 530
    .line 531
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 532
    .line 533
    .line 534
    move-result-wide v5

    .line 535
    iput-wide v5, v1, LB0/k;->m:J

    .line 536
    .line 537
    iget-wide v5, v1, LB0/k;->n:J

    .line 538
    .line 539
    const-wide/16 v14, 0x3

    .line 540
    .line 541
    iget-wide v12, v1, LB0/k;->o:J

    .line 542
    .line 543
    mul-long v12, v12, v14

    .line 544
    .line 545
    add-long v22, v12, v5

    .line 546
    .line 547
    iget-wide v5, v1, LB0/k;->i:J

    .line 548
    .line 549
    const v12, 0x33d6bf95    # 1.0E-7f

    .line 550
    .line 551
    .line 552
    cmp-long v13, v5, v22

    .line 553
    .line 554
    if-lez v13, :cond_17

    .line 555
    .line 556
    invoke-static {v8, v9}, Lp0/M;->R(J)J

    .line 557
    .line 558
    .line 559
    move-result-wide v5

    .line 560
    iget v8, v1, LB0/k;->l:F

    .line 561
    .line 562
    sub-float/2addr v8, v2

    .line 563
    long-to-float v5, v5

    .line 564
    mul-float v8, v8, v5

    .line 565
    .line 566
    float-to-long v8, v8

    .line 567
    iget v6, v1, LB0/k;->j:F

    .line 568
    .line 569
    sub-float/2addr v6, v2

    .line 570
    mul-float v6, v6, v5

    .line 571
    .line 572
    float-to-long v5, v6

    .line 573
    add-long/2addr v8, v5

    .line 574
    iget-wide v5, v1, LB0/k;->f:J

    .line 575
    .line 576
    iget-wide v13, v1, LB0/k;->i:J

    .line 577
    .line 578
    sub-long/2addr v13, v8

    .line 579
    new-array v8, v11, [J

    .line 580
    .line 581
    const/4 v0, 0x0

    .line 582
    aput-wide v22, v8, v0

    .line 583
    .line 584
    const/4 v7, 0x1

    .line 585
    aput-wide v5, v8, v7

    .line 586
    .line 587
    const/4 v5, 0x2

    .line 588
    aput-wide v13, v8, v5

    .line 589
    .line 590
    aget-wide v5, v8, v0

    .line 591
    .line 592
    const/4 v9, 0x1

    .line 593
    :goto_7
    if-ge v9, v11, :cond_16

    .line 594
    .line 595
    aget-wide v13, v8, v9

    .line 596
    .line 597
    cmp-long v15, v13, v5

    .line 598
    .line 599
    if-lez v15, :cond_15

    .line 600
    .line 601
    move-wide v5, v13

    .line 602
    :cond_15
    add-int/2addr v9, v7

    .line 603
    goto :goto_7

    .line 604
    :cond_16
    iput-wide v5, v1, LB0/k;->i:J

    .line 605
    .line 606
    goto :goto_8

    .line 607
    :cond_17
    iget v5, v1, LB0/k;->l:F

    .line 608
    .line 609
    sub-float/2addr v5, v2

    .line 610
    const/4 v6, 0x0

    .line 611
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    div-float/2addr v5, v12

    .line 616
    float-to-long v5, v5

    .line 617
    sub-long v18, v3, v5

    .line 618
    .line 619
    iget-wide v5, v1, LB0/k;->i:J

    .line 620
    .line 621
    move-wide/from16 v20, v5

    .line 622
    .line 623
    invoke-static/range {v18 .. v23}, Lp0/M;->j(JJJ)J

    .line 624
    .line 625
    .line 626
    move-result-wide v5

    .line 627
    iput-wide v5, v1, LB0/k;->i:J

    .line 628
    .line 629
    iget-wide v7, v1, LB0/k;->h:J

    .line 630
    .line 631
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    cmp-long v9, v7, v13

    .line 637
    .line 638
    if-eqz v9, :cond_18

    .line 639
    .line 640
    cmp-long v9, v5, v7

    .line 641
    .line 642
    if-lez v9, :cond_18

    .line 643
    .line 644
    iput-wide v7, v1, LB0/k;->i:J

    .line 645
    .line 646
    :cond_18
    :goto_8
    iget-wide v5, v1, LB0/k;->i:J

    .line 647
    .line 648
    sub-long/2addr v3, v5

    .line 649
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 650
    .line 651
    .line 652
    move-result-wide v5

    .line 653
    iget-wide v7, v1, LB0/k;->a:J

    .line 654
    .line 655
    cmp-long v9, v5, v7

    .line 656
    .line 657
    if-gez v9, :cond_19

    .line 658
    .line 659
    iput v2, v1, LB0/k;->l:F

    .line 660
    .line 661
    goto :goto_9

    .line 662
    :cond_19
    long-to-float v3, v3

    .line 663
    mul-float v12, v12, v3

    .line 664
    .line 665
    add-float/2addr v12, v2

    .line 666
    iget v2, v1, LB0/k;->k:F

    .line 667
    .line 668
    iget v3, v1, LB0/k;->j:F

    .line 669
    .line 670
    invoke-static {v12, v2, v3}, Lp0/M;->h(FFF)F

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    iput v2, v1, LB0/k;->l:F

    .line 675
    .line 676
    :goto_9
    iget v2, v1, LB0/k;->l:F

    .line 677
    .line 678
    :goto_a
    iget-object v1, v10, LB0/X;->U:LB0/o;

    .line 679
    .line 680
    invoke-virtual {v1}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    iget v1, v1, Lm0/S;->a:F

    .line 685
    .line 686
    cmpl-float v1, v1, v2

    .line 687
    .line 688
    if-eqz v1, :cond_1a

    .line 689
    .line 690
    iget-object v1, v10, LB0/X;->m0:LB0/v0;

    .line 691
    .line 692
    iget-object v1, v1, LB0/v0;->o:Lm0/S;

    .line 693
    .line 694
    new-instance v3, Lm0/S;

    .line 695
    .line 696
    iget v1, v1, Lm0/S;->b:F

    .line 697
    .line 698
    invoke-direct {v3, v2, v1}, Lm0/S;-><init>(FF)V

    .line 699
    .line 700
    .line 701
    iget-object v1, v10, LB0/X;->N:Lp0/I;

    .line 702
    .line 703
    const/16 v2, 0x10

    .line 704
    .line 705
    invoke-virtual {v1, v2}, Lp0/I;->d(I)V

    .line 706
    .line 707
    .line 708
    iget-object v1, v10, LB0/X;->U:LB0/o;

    .line 709
    .line 710
    invoke-virtual {v1, v3}, LB0/o;->setPlaybackParameters(Lm0/S;)V

    .line 711
    .line 712
    .line 713
    iget-object v1, v10, LB0/X;->m0:LB0/v0;

    .line 714
    .line 715
    iget-object v1, v1, LB0/v0;->o:Lm0/S;

    .line 716
    .line 717
    iget-object v2, v10, LB0/X;->U:LB0/o;

    .line 718
    .line 719
    invoke-virtual {v2}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    iget v2, v2, Lm0/S;->a:F

    .line 724
    .line 725
    const/4 v0, 0x0

    .line 726
    invoke-virtual {v10, v1, v2, v0, v0}, LB0/X;->x(Lm0/S;FZZ)V

    .line 727
    .line 728
    .line 729
    :cond_1a
    return-void
.end method

.method public final z0(Lm0/f0;LO0/y;Lm0/f0;LO0/y;JZ)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, LB0/X;->q0(Lm0/f0;LO0/y;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, LO0/y;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lm0/S;->d:Lm0/S;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, LB0/X;->m0:LB0/v0;

    .line 17
    .line 18
    iget-object p1, p1, LB0/v0;->o:Lm0/S;

    .line 19
    .line 20
    :goto_0
    iget-object p2, p0, LB0/X;->U:LB0/o;

    .line 21
    .line 22
    invoke-virtual {p2}, LB0/o;->getPlaybackParameters()Lm0/S;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p1}, Lm0/S;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, LB0/X;->N:Lp0/I;

    .line 33
    .line 34
    const/16 p4, 0x10

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Lp0/I;->d(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, LB0/o;->setPlaybackParameters(Lm0/S;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, LB0/X;->m0:LB0/v0;

    .line 43
    .line 44
    iget-object p2, p2, LB0/v0;->o:Lm0/S;

    .line 45
    .line 46
    iget p1, p1, Lm0/S;->a:F

    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0, p2, p1, p3, p3}, LB0/X;->x(Lm0/S;FZZ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object p2, p2, LO0/y;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v0, p0, LB0/X;->R:Lm0/d0;

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget v1, v1, Lm0/d0;->c:I

    .line 62
    .line 63
    iget-object v2, p0, LB0/X;->Q:Lm0/e0;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Lm0/f0;->o(ILm0/e0;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v2, Lm0/e0;->j:Lm0/D;

    .line 69
    .line 70
    iget-object v3, p0, LB0/X;->a0:LB0/k;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-wide v4, v1, Lm0/D;->a:J

    .line 76
    .line 77
    invoke-static {v4, v5}, Lp0/M;->R(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    iput-wide v4, v3, LB0/k;->d:J

    .line 82
    .line 83
    iget-wide v4, v1, Lm0/D;->b:J

    .line 84
    .line 85
    invoke-static {v4, v5}, Lp0/M;->R(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    iput-wide v4, v3, LB0/k;->g:J

    .line 90
    .line 91
    iget-wide v4, v1, Lm0/D;->c:J

    .line 92
    .line 93
    invoke-static {v4, v5}, Lp0/M;->R(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    iput-wide v4, v3, LB0/k;->h:J

    .line 98
    .line 99
    iget v4, v1, Lm0/D;->d:F

    .line 100
    .line 101
    const v5, -0x800001

    .line 102
    .line 103
    .line 104
    cmpl-float v6, v4, v5

    .line 105
    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const v4, 0x3f7851ec    # 0.97f

    .line 110
    .line 111
    .line 112
    :goto_1
    iput v4, v3, LB0/k;->k:F

    .line 113
    .line 114
    iget v1, v1, Lm0/D;->e:F

    .line 115
    .line 116
    cmpl-float v5, v1, v5

    .line 117
    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    const v1, 0x3f83d70a    # 1.03f

    .line 122
    .line 123
    .line 124
    :goto_2
    iput v1, v3, LB0/k;->j:F

    .line 125
    .line 126
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    const/high16 v7, 0x3f800000    # 1.0f

    .line 132
    .line 133
    cmpl-float v4, v4, v7

    .line 134
    .line 135
    if-nez v4, :cond_5

    .line 136
    .line 137
    cmpl-float v1, v1, v7

    .line 138
    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    iput-wide v5, v3, LB0/k;->d:J

    .line 142
    .line 143
    :cond_5
    invoke-virtual {v3}, LB0/k;->a()V

    .line 144
    .line 145
    .line 146
    cmp-long v1, p5, v5

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0, p1, p2, p5, p6}, LB0/X;->k(Lm0/f0;Ljava/lang/Object;J)J

    .line 151
    .line 152
    .line 153
    move-result-wide p1

    .line 154
    iput-wide p1, v3, LB0/k;->e:J

    .line 155
    .line 156
    invoke-virtual {v3}, LB0/k;->a()V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    iget-object p1, v2, Lm0/e0;->a:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {p3}, Lm0/f0;->q()Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-nez p2, :cond_7

    .line 167
    .line 168
    iget-object p2, p4, LO0/y;->a:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {p3, p2, v0}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget p2, p2, Lm0/d0;->c:I

    .line 175
    .line 176
    const-wide/16 p4, 0x0

    .line 177
    .line 178
    invoke-virtual {p3, p2, v2, p4, p5}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget-object p2, p2, Lm0/e0;->a:Ljava/lang/Object;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    const/4 p2, 0x0

    .line 186
    :goto_3
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_8

    .line 191
    .line 192
    if-eqz p7, :cond_9

    .line 193
    .line 194
    :cond_8
    iput-wide v5, v3, LB0/k;->e:J

    .line 195
    .line 196
    invoke-virtual {v3}, LB0/k;->a()V

    .line 197
    .line 198
    .line 199
    :cond_9
    :goto_4
    return-void
.end method
