.class public abstract LK0/r;
.super LB0/h;
.source "SourceFile"


# static fields
.field public static final V0:[B


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:Z

.field public E0:Z

.field public F0:Z

.field public final G:LK0/k;

.field public G0:J

.field public final H:LK0/s;

.field public H0:J

.field public final I:Z

.field public I0:Z

.field public final J:F

.field public J0:Z

.field public final K:Lw0/g;

.field public K0:Z

.field public final L:Lw0/g;

.field public L0:Z

.field public final M:Lw0/g;

.field public M0:LB0/w;

.field public final N:LK0/f;

.field public N0:LB0/i;

.field public final O:Landroid/media/MediaCodec$BufferInfo;

.field public O0:LK0/q;

.field public final P:Ljava/util/ArrayDeque;

.field public P0:J

.field public final Q:LD0/W;

.field public Q0:Z

.field public R:Lm0/t;

.field public R0:Z

.field public S:Lm0/t;

.field public S0:Z

.field public T:LG0/l;

.field public T0:J

.field public U:LG0/l;

.field public U0:J

.field public V:LB0/S;

.field public W:Landroid/media/MediaCrypto;

.field public final X:J

.field public Y:F

.field public Z:F

.field public a0:LK0/l;

.field public b0:Lm0/t;

.field public c0:Landroid/media/MediaFormat;

.field public d0:Z

.field public e0:F

.field public f0:Ljava/util/ArrayDeque;

.field public g0:LK0/p;

.field public h0:LK0/o;

.field public i0:I

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:Z

.field public p0:J

.field public q0:J

.field public r0:I

.field public s0:I

.field public t0:Ljava/nio/ByteBuffer;

.field public u0:Z

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LK0/r;->V0:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILK0/k;LK0/s;ZF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LB0/h;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LK0/r;->G:LK0/k;

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, LK0/r;->H:LK0/s;

    .line 10
    .line 11
    iput-boolean p4, p0, LK0/r;->I:Z

    .line 12
    .line 13
    iput p5, p0, LK0/r;->J:F

    .line 14
    .line 15
    new-instance p1, Lw0/g;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2, p2}, Lw0/g;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LK0/r;->K:Lw0/g;

    .line 22
    .line 23
    new-instance p1, Lw0/g;

    .line 24
    .line 25
    invoke-direct {p1, p2, p2}, Lw0/g;-><init>(II)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LK0/r;->L:Lw0/g;

    .line 29
    .line 30
    new-instance p1, Lw0/g;

    .line 31
    .line 32
    const/4 p3, 0x2

    .line 33
    invoke-direct {p1, p3, p2}, Lw0/g;-><init>(II)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LK0/r;->M:Lw0/g;

    .line 37
    .line 38
    new-instance p1, LK0/f;

    .line 39
    .line 40
    invoke-direct {p1, p3, p2}, Lw0/g;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const/16 p4, 0x20

    .line 44
    .line 45
    iput p4, p1, LK0/f;->Q:I

    .line 46
    .line 47
    iput-object p1, p0, LK0/r;->N:LK0/f;

    .line 48
    .line 49
    new-instance p4, Landroid/media/MediaCodec$BufferInfo;

    .line 50
    .line 51
    invoke-direct {p4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p4, p0, LK0/r;->O:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    .line 56
    const/high16 p4, 0x3f800000    # 1.0f

    .line 57
    .line 58
    iput p4, p0, LK0/r;->Y:F

    .line 59
    .line 60
    iput p4, p0, LK0/r;->Z:F

    .line 61
    .line 62
    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide p4, p0, LK0/r;->X:J

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, LK0/r;->P:Ljava/util/ArrayDeque;

    .line 75
    .line 76
    sget-object v0, LK0/q;->e:LK0/q;

    .line 77
    .line 78
    iput-object v0, p0, LK0/r;->O0:LK0/q;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lw0/g;->f(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    new-instance p1, LD0/W;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    sget-object v0, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    iput-object v0, p1, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    iput p2, p1, LD0/W;->c:I

    .line 102
    .line 103
    iput p3, p1, LD0/W;->b:I

    .line 104
    .line 105
    iput-object p1, p0, LK0/r;->Q:LD0/W;

    .line 106
    .line 107
    const/high16 p1, -0x40800000    # -1.0f

    .line 108
    .line 109
    iput p1, p0, LK0/r;->e0:F

    .line 110
    .line 111
    iput p2, p0, LK0/r;->i0:I

    .line 112
    .line 113
    iput p2, p0, LK0/r;->A0:I

    .line 114
    .line 115
    const/4 p1, -0x1

    .line 116
    iput p1, p0, LK0/r;->r0:I

    .line 117
    .line 118
    iput p1, p0, LK0/r;->s0:I

    .line 119
    .line 120
    iput-wide p4, p0, LK0/r;->q0:J

    .line 121
    .line 122
    iput-wide p4, p0, LK0/r;->G0:J

    .line 123
    .line 124
    iput-wide p4, p0, LK0/r;->H0:J

    .line 125
    .line 126
    iput-wide p4, p0, LK0/r;->P0:J

    .line 127
    .line 128
    iput-wide p4, p0, LK0/r;->p0:J

    .line 129
    .line 130
    iput p2, p0, LK0/r;->B0:I

    .line 131
    .line 132
    iput p2, p0, LK0/r;->C0:I

    .line 133
    .line 134
    new-instance p1, LB0/i;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, LK0/r;->N0:LB0/i;

    .line 140
    .line 141
    iput-wide p4, p0, LK0/r;->T0:J

    .line 142
    .line 143
    iput-wide p4, p0, LK0/r;->U0:J

    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    return-void
.end method

.method public B(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, LK0/r;->P0:J

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, LK0/r;->P:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, LK0/q;

    .line 16
    .line 17
    iget-wide v1, v1, LK0/q;->a:J

    .line 18
    .line 19
    cmp-long v3, p1, v1

    .line 20
    .line 21
    if-ltz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, LK0/q;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, LK0/r;->N(LK0/q;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, LK0/r;->C()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public abstract C()V
.end method

.method public D(Lw0/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget v0, p0, LK0/r;->C0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, LK0/r;->J0:Z

    .line 13
    .line 14
    invoke-virtual {p0}, LK0/r;->I()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, LK0/r;->H()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LK0/r;->s()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, LK0/r;->g()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, LK0/r;->W()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, LK0/r;->g()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public abstract F(JJLK0/l;Ljava/nio/ByteBuffer;IIIJZZLm0/t;)Z
.end method

.method public final G(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LK0/r;->K:Lw0/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Lw0/g;->clear()V

    .line 8
    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x4

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, p1}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v2, -0x5

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne p1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, LK0/r;->y(LB0/Z;)LB0/j;

    .line 21
    .line 22
    .line 23
    return v3

    .line 24
    :cond_0
    const/4 v0, -0x4

    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lw0/a;->isEndOfStream()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iput-boolean v3, p0, LK0/r;->I0:Z

    .line 34
    .line 35
    invoke-virtual {p0}, LK0/r;->E()V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, LK0/r;->a0:LK0/l;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, LK0/l;->release()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LK0/r;->N0:LB0/i;

    .line 10
    .line 11
    iget v2, v1, LB0/i;->b:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    iput v2, v1, LB0/i;->b:I

    .line 16
    .line 17
    iget-object v1, p0, LK0/r;->h0:LK0/o;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, LK0/o;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, LK0/r;->x(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    :goto_0
    iput-object v0, p0, LK0/r;->a0:LK0/l;

    .line 31
    .line 32
    :try_start_1
    iget-object v1, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    iput-object v0, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, LK0/r;->M(LG0/l;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, LK0/r;->L()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_2
    iput-object v0, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, LK0/r;->M(LG0/l;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, LK0/r;->L()V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :goto_3
    iput-object v0, p0, LK0/r;->a0:LK0/l;

    .line 61
    .line 62
    :try_start_2
    iget-object v2, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_2
    move-exception v1

    .line 71
    goto :goto_5

    .line 72
    :cond_2
    :goto_4
    iput-object v0, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, LK0/r;->M(LG0/l;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, LK0/r;->L()V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :goto_5
    iput-object v0, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, LK0/r;->M(LG0/l;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, LK0/r;->L()V

    .line 87
    .line 88
    .line 89
    throw v1
.end method

.method public abstract I()V
.end method

.method public final J()V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, LK0/r;->G0:J

    .line 7
    .line 8
    iput-wide v0, p0, LK0/r;->H0:J

    .line 9
    .line 10
    iput-wide v0, p0, LK0/r;->P0:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, LK0/r;->y0:Z

    .line 14
    .line 15
    iget-object v1, p0, LK0/r;->N:LK0/f;

    .line 16
    .line 17
    invoke-virtual {v1}, LK0/f;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, LK0/r;->M:Lw0/g;

    .line 21
    .line 22
    invoke-virtual {v1}, Lw0/g;->clear()V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, LK0/r;->x0:Z

    .line 26
    .line 27
    iget-object v1, p0, LK0/r;->Q:LD0/W;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v2, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    iput-object v2, v1, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    iput v0, v1, LD0/W;->c:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    iput v0, v1, LD0/W;->b:I

    .line 40
    .line 41
    return-void
.end method

.method public K()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, LK0/r;->r0:I

    .line 3
    .line 4
    iget-object v1, p0, LK0/r;->L:Lw0/g;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput v0, p0, LK0/r;->s0:I

    .line 10
    .line 11
    iput-object v2, p0, LK0/r;->t0:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, LK0/r;->G0:J

    .line 19
    .line 20
    iput-wide v0, p0, LK0/r;->H0:J

    .line 21
    .line 22
    iput-wide v0, p0, LK0/r;->P0:J

    .line 23
    .line 24
    iput-wide v0, p0, LK0/r;->q0:J

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, p0, LK0/r;->E0:Z

    .line 28
    .line 29
    iput-wide v0, p0, LK0/r;->p0:J

    .line 30
    .line 31
    iput-boolean v2, p0, LK0/r;->D0:Z

    .line 32
    .line 33
    iput-boolean v2, p0, LK0/r;->m0:Z

    .line 34
    .line 35
    iput-boolean v2, p0, LK0/r;->n0:Z

    .line 36
    .line 37
    iput-boolean v2, p0, LK0/r;->u0:Z

    .line 38
    .line 39
    iput-boolean v2, p0, LK0/r;->v0:Z

    .line 40
    .line 41
    iput v2, p0, LK0/r;->B0:I

    .line 42
    .line 43
    iput v2, p0, LK0/r;->C0:I

    .line 44
    .line 45
    iget-boolean v3, p0, LK0/r;->z0:Z

    .line 46
    .line 47
    iput v3, p0, LK0/r;->A0:I

    .line 48
    .line 49
    iput-boolean v2, p0, LK0/r;->S0:Z

    .line 50
    .line 51
    iput-wide v0, p0, LK0/r;->T0:J

    .line 52
    .line 53
    iput-wide v0, p0, LK0/r;->U0:J

    .line 54
    .line 55
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LK0/r;->K()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LK0/r;->M0:LB0/w;

    .line 6
    .line 7
    iput-object v0, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iput-object v0, p0, LK0/r;->h0:LK0/o;

    .line 10
    .line 11
    iput-object v0, p0, LK0/r;->b0:Lm0/t;

    .line 12
    .line 13
    iput-object v0, p0, LK0/r;->c0:Landroid/media/MediaFormat;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, LK0/r;->d0:Z

    .line 17
    .line 18
    iput-boolean v0, p0, LK0/r;->F0:Z

    .line 19
    .line 20
    const/high16 v1, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput v1, p0, LK0/r;->e0:F

    .line 23
    .line 24
    iput v0, p0, LK0/r;->i0:I

    .line 25
    .line 26
    iput-boolean v0, p0, LK0/r;->j0:Z

    .line 27
    .line 28
    iput-boolean v0, p0, LK0/r;->k0:Z

    .line 29
    .line 30
    iput-boolean v0, p0, LK0/r;->l0:Z

    .line 31
    .line 32
    iput-boolean v0, p0, LK0/r;->o0:Z

    .line 33
    .line 34
    iput-boolean v0, p0, LK0/r;->z0:Z

    .line 35
    .line 36
    iput v0, p0, LK0/r;->A0:I

    .line 37
    .line 38
    return-void
.end method

.method public final M(LG0/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK0/r;->T:LG0/l;

    .line 2
    .line 3
    invoke-static {v0, p1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LK0/r;->T:LG0/l;

    .line 7
    .line 8
    return-void
.end method

.method public final N(LK0/q;)V
    .locals 4

    .line 1
    iput-object p1, p0, LK0/r;->O0:LK0/q;

    .line 2
    .line 3
    iget-wide v0, p1, LK0/q;->c:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, LK0/r;->Q0:Z

    .line 16
    .line 17
    invoke-virtual {p0}, LK0/r;->A()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final O(J)Z
    .locals 5

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iget-wide v2, p0, LK0/r;->X:J

    .line 7
    .line 8
    cmp-long v4, v2, v0

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lp0/G;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sub-long/2addr v0, p1

    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-gez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 34
    :goto_1
    return p1
.end method

.method public P(Lw0/g;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public Q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public R(LK0/o;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public S()Z
    .locals 5

    .line 1
    iget v0, p0, LK0/r;->C0:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    iget-boolean v1, p0, LK0/r;->j0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, LK0/r;->F0:Z

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, LK0/r;->k0:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, LK0/r;->E0:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v1, 0x17

    .line 31
    .line 32
    if-lt v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 38
    .line 39
    .line 40
    if-lt v0, v1, :cond_3

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p0}, LK0/r;->W()V
    :try_end_0
    .catch LB0/w; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "MediaCodecRenderer"

    .line 48
    .line 49
    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    .line 50
    .line 51
    invoke-static {v1, v3, v0}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    :goto_1
    return v3

    .line 56
    :cond_4
    :goto_2
    return v2
.end method

.method public T(Lm0/t;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract U(LK0/s;Lm0/t;)I
.end method

.method public final V(Lm0/t;)Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, LK0/r;->a0:LK0/l;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    iget v0, p0, LK0/r;->C0:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_7

    .line 17
    .line 18
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget v0, p0, LK0/r;->Z:F

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, LB0/h;->getStreamFormats()[Lm0/t;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p0, v0, p1, v3}, LK0/r;->l(FLm0/t;[Lm0/t;)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget v0, p0, LK0/r;->e0:F

    .line 39
    .line 40
    cmpl-float v3, v0, p1

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    .line 46
    .line 47
    cmpl-float v4, p1, v3

    .line 48
    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    iget-boolean p1, p0, LK0/r;->D0:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iput v2, p0, LK0/r;->B0:I

    .line 56
    .line 57
    iput v1, p0, LK0/r;->C0:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, LK0/r;->H()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, LK0/r;->s()V

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 p1, 0x0

    .line 67
    return p1

    .line 68
    :cond_4
    cmpl-float v0, v0, v3

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    iget v0, p0, LK0/r;->J:F

    .line 73
    .line 74
    cmpl-float v0, p1, v0

    .line 75
    .line 76
    if-lez v0, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    return v2

    .line 80
    :cond_6
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "operating-rate"

    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, LK0/r;->a0:LK0/l;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v0}, LK0/l;->d(Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    iput p1, p0, LK0/r;->e0:F

    .line 99
    .line 100
    :cond_7
    :goto_2
    return v2
.end method

.method public final W()V
    .locals 3

    .line 1
    iget-object v0, p0, LK0/r;->U:LG0/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, LG0/l;->f()Landroidx/media3/decoder/CryptoConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, LG0/x;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast v0, LG0/x;

    .line 20
    .line 21
    iget-object v0, v0, LG0/x;->b:[B

    .line 22
    .line 23
    invoke-static {v1, v0}, LF2/D;->n(Landroid/media/MediaCrypto;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v1, p0, LK0/r;->R:Lm0/t;

    .line 29
    .line 30
    const/16 v2, 0x1776

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    throw v0

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, LK0/r;->U:LG0/l;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, LK0/r;->M(LG0/l;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, LK0/r;->B0:I

    .line 44
    .line 45
    iput v0, p0, LK0/r;->C0:I

    .line 46
    .line 47
    return-void
.end method

.method public final X(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LK0/r;->O0:LK0/q;

    .line 2
    .line 3
    iget-object v0, v0, LK0/q;->d:Lc/g;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lc/g;->k(J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lm0/t;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p2, p0, LK0/r;->Q0:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, LK0/r;->c0:Landroid/media/MediaFormat;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, LK0/r;->O0:LK0/q;

    .line 22
    .line 23
    iget-object p1, p1, LK0/q;->d:Lc/g;

    .line 24
    .line 25
    invoke-virtual {p1}, Lc/g;->j()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lm0/t;

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iput-object p1, p0, LK0/r;->S:Lm0/t;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p1, p0, LK0/r;->d0:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, LK0/r;->S:Lm0/t;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, LK0/r;->S:Lm0/t;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, LK0/r;->c0:Landroid/media/MediaFormat;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, LK0/r;->z(Lm0/t;Landroid/media/MediaFormat;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, LK0/r;->d0:Z

    .line 56
    .line 57
    iput-boolean p1, p0, LK0/r;->Q0:Z

    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public final a(JJ)Z
    .locals 23

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-boolean v0, v15, LK0/r;->J0:Z

    .line 4
    .line 5
    const/4 v14, 0x1

    .line 6
    xor-int/2addr v0, v14

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v13, v15, LK0/r;->N:LK0/f;

    .line 11
    .line 12
    invoke-virtual {v13}, LK0/f;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v12, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v6, v13, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iget v7, v15, LK0/r;->s0:I

    .line 22
    .line 23
    iget v9, v13, LK0/f;->P:I

    .line 24
    .line 25
    iget-wide v10, v13, Lw0/g;->K:J

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, LB0/h;->getLastResetPositionUs()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-wide v2, v13, LK0/f;->O:J

    .line 32
    .line 33
    invoke-virtual {v15, v0, v1, v2, v3}, LK0/r;->r(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result v16

    .line 37
    invoke-virtual {v13}, Lw0/a;->isEndOfStream()Z

    .line 38
    .line 39
    .line 40
    move-result v17

    .line 41
    iget-object v8, v15, LK0/r;->S:Lm0/t;

    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    move-wide/from16 v1, p1

    .line 52
    .line 53
    move-wide/from16 v3, p3

    .line 54
    .line 55
    move-object/from16 v19, v8

    .line 56
    .line 57
    move/from16 v8, v18

    .line 58
    .line 59
    move/from16 v12, v16

    .line 60
    .line 61
    move-object/from16 v21, v13

    .line 62
    .line 63
    move/from16 v13, v17

    .line 64
    .line 65
    move-object/from16 v14, v19

    .line 66
    .line 67
    invoke-virtual/range {v0 .. v14}, LK0/r;->F(JJLK0/l;Ljava/nio/ByteBuffer;IIIJZZLm0/t;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    move-object/from16 v0, v21

    .line 74
    .line 75
    iget-wide v1, v0, LK0/f;->O:J

    .line 76
    .line 77
    invoke-virtual {v15, v1, v2}, LK0/r;->B(J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, LK0/f;->clear()V

    .line 81
    .line 82
    .line 83
    :goto_0
    const/4 v1, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    return v1

    .line 87
    :cond_1
    move-object v0, v13

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    iget-boolean v2, v15, LK0/r;->I0:Z

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    iput-boolean v2, v15, LK0/r;->J0:Z

    .line 95
    .line 96
    return v1

    .line 97
    :cond_2
    const/4 v2, 0x1

    .line 98
    iget-boolean v3, v15, LK0/r;->x0:Z

    .line 99
    .line 100
    iget-object v4, v15, LK0/r;->M:Lw0/g;

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0, v4}, LK0/f;->h(Lw0/g;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 109
    .line 110
    .line 111
    iput-boolean v1, v15, LK0/r;->x0:Z

    .line 112
    .line 113
    :cond_3
    iget-boolean v3, v15, LK0/r;->y0:Z

    .line 114
    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, LK0/f;->i()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    return v2

    .line 124
    :cond_4
    iput-boolean v1, v15, LK0/r;->w0:Z

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, LK0/r;->J()V

    .line 127
    .line 128
    .line 129
    iput-boolean v1, v15, LK0/r;->y0:Z

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, LK0/r;->s()V

    .line 132
    .line 133
    .line 134
    iget-boolean v3, v15, LK0/r;->w0:Z

    .line 135
    .line 136
    if-nez v3, :cond_5

    .line 137
    .line 138
    return v1

    .line 139
    :cond_5
    iget-boolean v3, v15, LK0/r;->I0:Z

    .line 140
    .line 141
    xor-int/2addr v3, v2

    .line 142
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {p0 .. p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v4}, Lw0/g;->clear()V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-virtual {v4}, Lw0/g;->clear()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v15, v3, v4, v1}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    const/4 v6, -0x5

    .line 160
    if-eq v5, v6, :cond_20

    .line 161
    .line 162
    const/4 v6, -0x4

    .line 163
    if-eq v5, v6, :cond_8

    .line 164
    .line 165
    const/4 v3, -0x3

    .line 166
    if-ne v5, v3, :cond_7

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    iget-wide v3, v15, LK0/r;->G0:J

    .line 175
    .line 176
    iput-wide v3, v15, LK0/r;->H0:J

    .line 177
    .line 178
    :cond_6
    :goto_3
    const/4 v1, 0x1

    .line 179
    const/4 v9, 0x0

    .line 180
    goto/16 :goto_13

    .line 181
    .line 182
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_8
    invoke-virtual {v4}, Lw0/a;->isEndOfStream()Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_9

    .line 193
    .line 194
    iput-boolean v2, v15, LK0/r;->I0:Z

    .line 195
    .line 196
    iget-wide v3, v15, LK0/r;->G0:J

    .line 197
    .line 198
    iput-wide v3, v15, LK0/r;->H0:J

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_9
    iget-wide v5, v15, LK0/r;->G0:J

    .line 202
    .line 203
    iget-wide v7, v4, Lw0/g;->K:J

    .line 204
    .line 205
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 206
    .line 207
    .line 208
    move-result-wide v5

    .line 209
    iput-wide v5, v15, LK0/r;->G0:J

    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_a

    .line 216
    .line 217
    iget-object v5, v15, LK0/r;->L:Lw0/g;

    .line 218
    .line 219
    invoke-virtual {v5}, Lw0/a;->isLastSample()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_b

    .line 224
    .line 225
    :cond_a
    iget-wide v5, v15, LK0/r;->G0:J

    .line 226
    .line 227
    iput-wide v5, v15, LK0/r;->H0:J

    .line 228
    .line 229
    :cond_b
    iget-boolean v5, v15, LK0/r;->K0:Z

    .line 230
    .line 231
    const/16 v6, 0xff

    .line 232
    .line 233
    const/4 v7, 0x0

    .line 234
    const-string v8, "audio/opus"

    .line 235
    .line 236
    if-eqz v5, :cond_d

    .line 237
    .line 238
    iget-object v5, v15, LK0/r;->R:Lm0/t;

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iput-object v5, v15, LK0/r;->S:Lm0/t;

    .line 244
    .line 245
    iget-object v5, v5, Lm0/t;->o:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_c

    .line 252
    .line 253
    iget-object v5, v15, LK0/r;->S:Lm0/t;

    .line 254
    .line 255
    iget-object v5, v5, Lm0/t;->r:Ljava/util/List;

    .line 256
    .line 257
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-nez v5, :cond_c

    .line 262
    .line 263
    iget-object v5, v15, LK0/r;->S:Lm0/t;

    .line 264
    .line 265
    iget-object v5, v5, Lm0/t;->r:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    check-cast v5, [B

    .line 272
    .line 273
    const/16 v9, 0xb

    .line 274
    .line 275
    aget-byte v9, v5, v9

    .line 276
    .line 277
    and-int/2addr v9, v6

    .line 278
    shl-int/lit8 v9, v9, 0x8

    .line 279
    .line 280
    const/16 v10, 0xa

    .line 281
    .line 282
    aget-byte v5, v5, v10

    .line 283
    .line 284
    and-int/2addr v5, v6

    .line 285
    or-int/2addr v5, v9

    .line 286
    iget-object v9, v15, LK0/r;->S:Lm0/t;

    .line 287
    .line 288
    invoke-virtual {v9}, Lm0/t;->a()Lm0/s;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    iput v5, v9, Lm0/s;->I:I

    .line 293
    .line 294
    new-instance v5, Lm0/t;

    .line 295
    .line 296
    invoke-direct {v5, v9}, Lm0/t;-><init>(Lm0/s;)V

    .line 297
    .line 298
    .line 299
    iput-object v5, v15, LK0/r;->S:Lm0/t;

    .line 300
    .line 301
    :cond_c
    iget-object v5, v15, LK0/r;->S:Lm0/t;

    .line 302
    .line 303
    invoke-virtual {v15, v5, v7}, LK0/r;->z(Lm0/t;Landroid/media/MediaFormat;)V

    .line 304
    .line 305
    .line 306
    iput-boolean v1, v15, LK0/r;->K0:Z

    .line 307
    .line 308
    :cond_d
    invoke-virtual {v4}, Lw0/g;->g()V

    .line 309
    .line 310
    .line 311
    iget-object v5, v15, LK0/r;->S:Lm0/t;

    .line 312
    .line 313
    if-eqz v5, :cond_1c

    .line 314
    .line 315
    iget-object v5, v5, Lm0/t;->o:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_1c

    .line 322
    .line 323
    invoke-virtual {v4}, Lw0/a;->hasSupplementalData()Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_e

    .line 328
    .line 329
    iget-object v5, v15, LK0/r;->S:Lm0/t;

    .line 330
    .line 331
    iput-object v5, v4, Lw0/g;->G:Lm0/t;

    .line 332
    .line 333
    invoke-virtual {v15, v4}, LK0/r;->p(Lw0/g;)V

    .line 334
    .line 335
    .line 336
    :cond_e
    invoke-virtual/range {p0 .. p0}, LB0/h;->getLastResetPositionUs()J

    .line 337
    .line 338
    .line 339
    move-result-wide v8

    .line 340
    iget-wide v10, v4, Lw0/g;->K:J

    .line 341
    .line 342
    sub-long/2addr v8, v10

    .line 343
    const-wide/32 v10, 0x13880

    .line 344
    .line 345
    .line 346
    cmp-long v5, v8, v10

    .line 347
    .line 348
    if-gtz v5, :cond_1c

    .line 349
    .line 350
    iget-object v5, v15, LK0/r;->S:Lm0/t;

    .line 351
    .line 352
    iget-object v5, v5, Lm0/t;->r:Ljava/util/List;

    .line 353
    .line 354
    iget-object v8, v15, LK0/r;->Q:LD0/W;

    .line 355
    .line 356
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    iget-object v9, v4, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 360
    .line 361
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v9, v4, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 365
    .line 366
    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    iget-object v10, v4, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 371
    .line 372
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    sub-int/2addr v9, v10

    .line 377
    if-nez v9, :cond_f

    .line 378
    .line 379
    goto/16 :goto_f

    .line 380
    .line 381
    :cond_f
    iget v9, v8, LD0/W;->b:I

    .line 382
    .line 383
    const/4 v10, 0x2

    .line 384
    if-ne v9, v10, :cond_11

    .line 385
    .line 386
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    if-eq v9, v2, :cond_10

    .line 391
    .line 392
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    const/4 v11, 0x3

    .line 397
    if-ne v9, v11, :cond_11

    .line 398
    .line 399
    :cond_10
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    move-object v7, v5

    .line 404
    check-cast v7, [B

    .line 405
    .line 406
    :cond_11
    iget-object v5, v4, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    sub-int v12, v11, v9

    .line 417
    .line 418
    add-int/lit16 v13, v12, 0xff

    .line 419
    .line 420
    div-int/2addr v13, v6

    .line 421
    add-int/lit8 v14, v13, 0x1b

    .line 422
    .line 423
    add-int/2addr v14, v12

    .line 424
    iget v6, v8, LD0/W;->b:I

    .line 425
    .line 426
    if-ne v6, v10, :cond_13

    .line 427
    .line 428
    if-eqz v7, :cond_12

    .line 429
    .line 430
    array-length v6, v7

    .line 431
    add-int/lit8 v6, v6, 0x1c

    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_12
    const/16 v6, 0x2f

    .line 435
    .line 436
    :goto_4
    add-int/lit8 v16, v6, 0x2c

    .line 437
    .line 438
    add-int v14, v16, v14

    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_13
    const/4 v6, 0x0

    .line 442
    :goto_5
    iget-object v2, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-ge v2, v14, :cond_14

    .line 449
    .line 450
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 455
    .line 456
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    iput-object v2, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 461
    .line 462
    goto :goto_6

    .line 463
    :cond_14
    iget-object v2, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 466
    .line 467
    .line 468
    :goto_6
    iget-object v2, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 469
    .line 470
    iget v14, v8, LD0/W;->b:I

    .line 471
    .line 472
    const/16 v1, 0x16

    .line 473
    .line 474
    if-ne v14, v10, :cond_16

    .line 475
    .line 476
    if-eqz v7, :cond_15

    .line 477
    .line 478
    const-wide/16 v17, 0x0

    .line 479
    .line 480
    const/16 v19, 0x0

    .line 481
    .line 482
    const/16 v20, 0x1

    .line 483
    .line 484
    const/16 v21, 0x1

    .line 485
    .line 486
    move-object/from16 v16, v2

    .line 487
    .line 488
    invoke-static/range {v16 .. v21}, LD0/W;->a(Ljava/nio/ByteBuffer;JIIZ)V

    .line 489
    .line 490
    .line 491
    array-length v14, v7

    .line 492
    move/from16 p4, v11

    .line 493
    .line 494
    int-to-long v10, v14

    .line 495
    invoke-static {v10, v11}, Lz4/q0;->j(J)B

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 510
    .line 511
    .line 512
    move-result v11

    .line 513
    array-length v14, v7

    .line 514
    add-int/lit8 v14, v14, 0x1c

    .line 515
    .line 516
    move/from16 v22, v9

    .line 517
    .line 518
    const/4 v9, 0x0

    .line 519
    invoke-static {v11, v10, v14, v9}, Lp0/M;->m(I[BII)I

    .line 520
    .line 521
    .line 522
    move-result v10

    .line 523
    invoke-virtual {v2, v1, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 524
    .line 525
    .line 526
    array-length v7, v7

    .line 527
    add-int/lit8 v7, v7, 0x1c

    .line 528
    .line 529
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 530
    .line 531
    .line 532
    goto :goto_7

    .line 533
    :cond_15
    move/from16 v22, v9

    .line 534
    .line 535
    move/from16 p4, v11

    .line 536
    .line 537
    sget-object v7, LD0/W;->d:[B

    .line 538
    .line 539
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 540
    .line 541
    .line 542
    :goto_7
    sget-object v7, LD0/W;->e:[B

    .line 543
    .line 544
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 545
    .line 546
    .line 547
    :goto_8
    const/4 v7, 0x0

    .line 548
    goto :goto_9

    .line 549
    :cond_16
    move/from16 v22, v9

    .line 550
    .line 551
    move/from16 p4, v11

    .line 552
    .line 553
    goto :goto_8

    .line 554
    :goto_9
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 555
    .line 556
    .line 557
    move-result v9

    .line 558
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    const/4 v10, 0x1

    .line 563
    if-le v7, v10, :cond_17

    .line 564
    .line 565
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 566
    .line 567
    .line 568
    move-result v7

    .line 569
    goto :goto_a

    .line 570
    :cond_17
    const/4 v7, 0x0

    .line 571
    :goto_a
    invoke-static {v9, v7}, LZ3/H;->h(BB)J

    .line 572
    .line 573
    .line 574
    move-result-wide v9

    .line 575
    const-wide/32 v16, 0xbb80

    .line 576
    .line 577
    .line 578
    mul-long v9, v9, v16

    .line 579
    .line 580
    const-wide/32 v16, 0xf4240

    .line 581
    .line 582
    .line 583
    div-long v9, v9, v16

    .line 584
    .line 585
    long-to-int v7, v9

    .line 586
    iget v9, v8, LD0/W;->c:I

    .line 587
    .line 588
    add-int/2addr v9, v7

    .line 589
    iput v9, v8, LD0/W;->c:I

    .line 590
    .line 591
    int-to-long v9, v9

    .line 592
    iget v7, v8, LD0/W;->b:I

    .line 593
    .line 594
    const/16 v21, 0x0

    .line 595
    .line 596
    move-object/from16 v16, v2

    .line 597
    .line 598
    move-wide/from16 v17, v9

    .line 599
    .line 600
    move/from16 v19, v7

    .line 601
    .line 602
    move/from16 v20, v13

    .line 603
    .line 604
    invoke-static/range {v16 .. v21}, LD0/W;->a(Ljava/nio/ByteBuffer;JIIZ)V

    .line 605
    .line 606
    .line 607
    move v7, v12

    .line 608
    const/4 v12, 0x0

    .line 609
    :goto_b
    if-ge v12, v13, :cond_19

    .line 610
    .line 611
    const/16 v9, 0xff

    .line 612
    .line 613
    if-lt v7, v9, :cond_18

    .line 614
    .line 615
    const/4 v10, -0x1

    .line 616
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 617
    .line 618
    .line 619
    add-int/lit16 v7, v7, -0xff

    .line 620
    .line 621
    goto :goto_c

    .line 622
    :cond_18
    int-to-byte v7, v7

    .line 623
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 624
    .line 625
    .line 626
    const/4 v7, 0x0

    .line 627
    :goto_c
    add-int/lit8 v12, v12, 0x1

    .line 628
    .line 629
    goto :goto_b

    .line 630
    :cond_19
    move/from16 v7, p4

    .line 631
    .line 632
    move/from16 v9, v22

    .line 633
    .line 634
    :goto_d
    if-ge v9, v7, :cond_1a

    .line 635
    .line 636
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 637
    .line 638
    .line 639
    move-result v10

    .line 640
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 641
    .line 642
    .line 643
    add-int/lit8 v9, v9, 0x1

    .line 644
    .line 645
    goto :goto_d

    .line 646
    :cond_1a
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 654
    .line 655
    .line 656
    iget v5, v8, LD0/W;->b:I

    .line 657
    .line 658
    const/4 v7, 0x2

    .line 659
    if-ne v5, v7, :cond_1b

    .line 660
    .line 661
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 666
    .line 667
    .line 668
    move-result v5

    .line 669
    add-int/2addr v5, v6

    .line 670
    add-int/lit8 v5, v5, 0x2c

    .line 671
    .line 672
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 677
    .line 678
    .line 679
    move-result v9

    .line 680
    sub-int/2addr v7, v9

    .line 681
    const/4 v9, 0x0

    .line 682
    invoke-static {v5, v1, v7, v9}, Lp0/M;->m(I[BII)I

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    add-int/lit8 v6, v6, 0x42

    .line 687
    .line 688
    invoke-virtual {v2, v6, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 689
    .line 690
    .line 691
    goto :goto_e

    .line 692
    :cond_1b
    const/4 v9, 0x0

    .line 693
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 698
    .line 699
    .line 700
    move-result v6

    .line 701
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 706
    .line 707
    .line 708
    move-result v10

    .line 709
    sub-int/2addr v7, v10

    .line 710
    invoke-static {v6, v5, v7, v9}, Lp0/M;->m(I[BII)I

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    invoke-virtual {v2, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 715
    .line 716
    .line 717
    :goto_e
    iget v1, v8, LD0/W;->b:I

    .line 718
    .line 719
    const/4 v5, 0x1

    .line 720
    add-int/2addr v1, v5

    .line 721
    iput v1, v8, LD0/W;->b:I

    .line 722
    .line 723
    iput-object v2, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 724
    .line 725
    invoke-virtual {v4}, Lw0/g;->clear()V

    .line 726
    .line 727
    .line 728
    iget-object v1, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    invoke-virtual {v4, v1}, Lw0/g;->f(I)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v4, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 738
    .line 739
    iget-object v2, v8, LD0/W;->a:Ljava/nio/ByteBuffer;

    .line 740
    .line 741
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v4}, Lw0/g;->g()V

    .line 745
    .line 746
    .line 747
    goto :goto_10

    .line 748
    :cond_1c
    :goto_f
    const/4 v9, 0x0

    .line 749
    :goto_10
    invoke-virtual {v0}, LK0/f;->i()Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-nez v1, :cond_1d

    .line 754
    .line 755
    goto :goto_11

    .line 756
    :cond_1d
    invoke-virtual/range {p0 .. p0}, LB0/h;->getLastResetPositionUs()J

    .line 757
    .line 758
    .line 759
    move-result-wide v1

    .line 760
    iget-wide v5, v0, LK0/f;->O:J

    .line 761
    .line 762
    invoke-virtual {v15, v1, v2, v5, v6}, LK0/r;->r(JJ)Z

    .line 763
    .line 764
    .line 765
    move-result v5

    .line 766
    iget-wide v6, v4, Lw0/g;->K:J

    .line 767
    .line 768
    invoke-virtual {v15, v1, v2, v6, v7}, LK0/r;->r(JJ)Z

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    if-ne v5, v1, :cond_1e

    .line 773
    .line 774
    :goto_11
    invoke-virtual {v0, v4}, LK0/f;->h(Lw0/g;)Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    if-nez v1, :cond_1f

    .line 779
    .line 780
    :cond_1e
    const/4 v1, 0x1

    .line 781
    goto :goto_12

    .line 782
    :cond_1f
    const/4 v1, 0x0

    .line 783
    const/4 v2, 0x1

    .line 784
    goto/16 :goto_2

    .line 785
    .line 786
    :goto_12
    iput-boolean v1, v15, LK0/r;->x0:Z

    .line 787
    .line 788
    goto :goto_13

    .line 789
    :cond_20
    const/4 v1, 0x1

    .line 790
    const/4 v9, 0x0

    .line 791
    invoke-virtual {v15, v3}, LK0/r;->y(LB0/Z;)LB0/j;

    .line 792
    .line 793
    .line 794
    :goto_13
    invoke-virtual {v0}, LK0/f;->i()Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-eqz v2, :cond_21

    .line 799
    .line 800
    invoke-virtual {v0}, Lw0/g;->g()V

    .line 801
    .line 802
    .line 803
    :cond_21
    invoke-virtual {v0}, LK0/f;->i()Z

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-nez v0, :cond_23

    .line 808
    .line 809
    iget-boolean v0, v15, LK0/r;->I0:Z

    .line 810
    .line 811
    if-nez v0, :cond_23

    .line 812
    .line 813
    iget-boolean v0, v15, LK0/r;->y0:Z

    .line 814
    .line 815
    if-eqz v0, :cond_22

    .line 816
    .line 817
    goto :goto_14

    .line 818
    :cond_22
    const/4 v14, 0x0

    .line 819
    goto :goto_15

    .line 820
    :cond_23
    :goto_14
    const/4 v14, 0x1

    .line 821
    :goto_15
    return v14
.end method

.method public abstract b(LK0/o;Lm0/t;Lm0/t;)LB0/j;
.end method

.method public c(Ljava/lang/IllegalStateException;LK0/o;)LK0/n;
    .locals 1

    .line 1
    new-instance v0, LK0/n;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, LK0/n;-><init>(Ljava/lang/IllegalStateException;LK0/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LK0/r;->D0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput v1, p0, LK0/r;->B0:I

    .line 7
    .line 8
    iget-boolean v0, p0, LK0/r;->k0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, LK0/r;->C0:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    iput v0, p0, LK0/r;->C0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, LK0/r;->W()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return v1
.end method

.method public final e(JJ)Z
    .locals 21

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-object v5, v15, LK0/r;->a0:LK0/l;

    .line 4
    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v0, v15, LK0/r;->s0:I

    .line 9
    .line 10
    const/4 v14, 0x0

    .line 11
    const/4 v13, 0x1

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    iget-object v12, v15, LK0/r;->O:Landroid/media/MediaCodec$BufferInfo;

    .line 23
    .line 24
    if-nez v0, :cond_c

    .line 25
    .line 26
    iget-boolean v0, v15, LK0/r;->l0:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-boolean v0, v15, LK0/r;->E0:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-interface {v5, v12}, LK0/l;->l(Landroid/media/MediaCodec$BufferInfo;)I

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, v15, LK0/r;->J0:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, LK0/r;->H()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return v14

    .line 50
    :cond_2
    invoke-interface {v5, v12}, LK0/l;->l(Landroid/media/MediaCodec$BufferInfo;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_1
    if-gez v0, :cond_8

    .line 55
    .line 56
    const/4 v3, -0x2

    .line 57
    if-ne v0, v3, :cond_4

    .line 58
    .line 59
    iput-boolean v13, v15, LK0/r;->F0:Z

    .line 60
    .line 61
    iget-object v0, v15, LK0/r;->a0:LK0/l;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, LK0/l;->h()Landroid/media/MediaFormat;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget v1, v15, LK0/r;->i0:I

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const-string v1, "width"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0x20

    .line 81
    .line 82
    if-ne v1, v2, :cond_3

    .line 83
    .line 84
    const-string v1, "height"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ne v1, v2, :cond_3

    .line 91
    .line 92
    iput-boolean v13, v15, LK0/r;->n0:Z

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iput-object v0, v15, LK0/r;->c0:Landroid/media/MediaFormat;

    .line 96
    .line 97
    iput-boolean v13, v15, LK0/r;->d0:Z

    .line 98
    .line 99
    :goto_2
    return v13

    .line 100
    :cond_4
    iget-boolean v0, v15, LK0/r;->o0:Z

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget-boolean v0, v15, LK0/r;->I0:Z

    .line 105
    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    iget v0, v15, LK0/r;->B0:I

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    if-ne v0, v3, :cond_6

    .line 112
    .line 113
    :cond_5
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-wide v3, v15, LK0/r;->p0:J

    .line 117
    .line 118
    cmp-long v0, v3, v1

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    const-wide/16 v0, 0x64

    .line 123
    .line 124
    add-long/2addr v3, v0

    .line 125
    invoke-virtual/range {p0 .. p0}, LB0/h;->getClock()Lp0/f;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lp0/G;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    cmp-long v2, v3, v0

    .line 139
    .line 140
    if-gez v2, :cond_7

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 143
    .line 144
    .line 145
    :cond_7
    return v14

    .line 146
    :cond_8
    iget-boolean v3, v15, LK0/r;->n0:Z

    .line 147
    .line 148
    if-eqz v3, :cond_9

    .line 149
    .line 150
    iput-boolean v14, v15, LK0/r;->n0:Z

    .line 151
    .line 152
    invoke-interface {v5, v0}, LK0/l;->f(I)V

    .line 153
    .line 154
    .line 155
    return v13

    .line 156
    :cond_9
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 157
    .line 158
    if-nez v3, :cond_a

    .line 159
    .line 160
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 161
    .line 162
    and-int/lit8 v3, v3, 0x4

    .line 163
    .line 164
    if-eqz v3, :cond_a

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 167
    .line 168
    .line 169
    return v14

    .line 170
    :cond_a
    iput v0, v15, LK0/r;->s0:I

    .line 171
    .line 172
    invoke-interface {v5, v0}, LK0/l;->q(I)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, v15, LK0/r;->t0:Ljava/nio/ByteBuffer;

    .line 177
    .line 178
    if-eqz v0, :cond_b

    .line 179
    .line 180
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    .line 184
    .line 185
    iget-object v0, v15, LK0/r;->t0:Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 188
    .line 189
    iget v4, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 190
    .line 191
    add-int/2addr v3, v4

    .line 192
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 193
    .line 194
    .line 195
    :cond_b
    iget-wide v3, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 196
    .line 197
    invoke-virtual {v15, v3, v4}, LK0/r;->X(J)V

    .line 198
    .line 199
    .line 200
    :cond_c
    iget-wide v3, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 201
    .line 202
    invoke-virtual/range {p0 .. p0}, LB0/h;->getLastResetPositionUs()J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    cmp-long v0, v3, v6

    .line 207
    .line 208
    if-gez v0, :cond_d

    .line 209
    .line 210
    const/4 v0, 0x1

    .line 211
    goto :goto_3

    .line 212
    :cond_d
    const/4 v0, 0x0

    .line 213
    :goto_3
    iput-boolean v0, v15, LK0/r;->u0:Z

    .line 214
    .line 215
    iget-wide v3, v15, LK0/r;->H0:J

    .line 216
    .line 217
    cmp-long v0, v3, v1

    .line 218
    .line 219
    if-eqz v0, :cond_e

    .line 220
    .line 221
    iget-wide v6, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 222
    .line 223
    cmp-long v0, v3, v6

    .line 224
    .line 225
    if-gtz v0, :cond_e

    .line 226
    .line 227
    const/4 v0, 0x1

    .line 228
    goto :goto_4

    .line 229
    :cond_e
    const/4 v0, 0x0

    .line 230
    :goto_4
    iput-boolean v0, v15, LK0/r;->v0:Z

    .line 231
    .line 232
    iget-boolean v0, v15, LK0/r;->S0:Z

    .line 233
    .line 234
    if-eqz v0, :cond_10

    .line 235
    .line 236
    iget-wide v3, v15, LK0/r;->T0:J

    .line 237
    .line 238
    cmp-long v0, v3, v1

    .line 239
    .line 240
    if-eqz v0, :cond_f

    .line 241
    .line 242
    iget-wide v6, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 243
    .line 244
    cmp-long v0, v6, v3

    .line 245
    .line 246
    if-gtz v0, :cond_f

    .line 247
    .line 248
    iput-boolean v14, v15, LK0/r;->S0:Z

    .line 249
    .line 250
    iput-wide v1, v15, LK0/r;->T0:J

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_f
    iget-wide v0, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 254
    .line 255
    iput-wide v0, v15, LK0/r;->T0:J

    .line 256
    .line 257
    iput-boolean v13, v15, LK0/r;->u0:Z

    .line 258
    .line 259
    iput-boolean v14, v15, LK0/r;->v0:Z

    .line 260
    .line 261
    :cond_10
    :goto_5
    iget-boolean v0, v15, LK0/r;->l0:Z

    .line 262
    .line 263
    if-eqz v0, :cond_12

    .line 264
    .line 265
    iget-boolean v0, v15, LK0/r;->E0:Z

    .line 266
    .line 267
    if-eqz v0, :cond_12

    .line 268
    .line 269
    :try_start_1
    iget-object v6, v15, LK0/r;->t0:Ljava/nio/ByteBuffer;

    .line 270
    .line 271
    iget v7, v15, LK0/r;->s0:I

    .line 272
    .line 273
    iget v8, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 274
    .line 275
    iget-wide v10, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 276
    .line 277
    iget-boolean v9, v15, LK0/r;->u0:Z

    .line 278
    .line 279
    iget-boolean v3, v15, LK0/r;->v0:Z

    .line 280
    .line 281
    iget-object v4, v15, LK0/r;->S:Lm0/t;

    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 284
    .line 285
    .line 286
    const/16 v16, 0x1

    .line 287
    .line 288
    move-object/from16 v0, p0

    .line 289
    .line 290
    move-wide/from16 v1, p1

    .line 291
    .line 292
    move/from16 v17, v3

    .line 293
    .line 294
    move-object/from16 v18, v4

    .line 295
    .line 296
    move-wide/from16 v3, p3

    .line 297
    .line 298
    move/from16 v19, v9

    .line 299
    .line 300
    move/from16 v9, v16

    .line 301
    .line 302
    move-object/from16 v20, v12

    .line 303
    .line 304
    move/from16 v12, v19

    .line 305
    .line 306
    const/16 v16, 0x1

    .line 307
    .line 308
    move/from16 v13, v17

    .line 309
    .line 310
    const/16 v17, 0x0

    .line 311
    .line 312
    move-object/from16 v14, v18

    .line 313
    .line 314
    :try_start_2
    invoke-virtual/range {v0 .. v14}, LK0/r;->F(JJLK0/l;Ljava/nio/ByteBuffer;IIIJZZLm0/t;)Z

    .line 315
    .line 316
    .line 317
    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 318
    move-object/from16 v15, v20

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :catch_1
    :goto_6
    nop

    .line 322
    goto :goto_7

    .line 323
    :catch_2
    const/16 v17, 0x0

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :goto_7
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 327
    .line 328
    .line 329
    iget-boolean v0, v15, LK0/r;->J0:Z

    .line 330
    .line 331
    if-eqz v0, :cond_11

    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, LK0/r;->H()V

    .line 334
    .line 335
    .line 336
    :cond_11
    return v17

    .line 337
    :cond_12
    move-object/from16 v20, v12

    .line 338
    .line 339
    const/16 v16, 0x1

    .line 340
    .line 341
    const/16 v17, 0x0

    .line 342
    .line 343
    iget-object v6, v15, LK0/r;->t0:Ljava/nio/ByteBuffer;

    .line 344
    .line 345
    iget v7, v15, LK0/r;->s0:I

    .line 346
    .line 347
    move-object/from16 v14, v20

    .line 348
    .line 349
    iget v8, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 350
    .line 351
    iget-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 352
    .line 353
    iget-boolean v12, v15, LK0/r;->u0:Z

    .line 354
    .line 355
    iget-boolean v13, v15, LK0/r;->v0:Z

    .line 356
    .line 357
    iget-object v9, v15, LK0/r;->S:Lm0/t;

    .line 358
    .line 359
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    const/16 v18, 0x1

    .line 363
    .line 364
    move-object/from16 v0, p0

    .line 365
    .line 366
    move-wide/from16 v1, p1

    .line 367
    .line 368
    move-wide/from16 v3, p3

    .line 369
    .line 370
    move-object/from16 v19, v9

    .line 371
    .line 372
    move/from16 v9, v18

    .line 373
    .line 374
    move-object v15, v14

    .line 375
    move-object/from16 v14, v19

    .line 376
    .line 377
    invoke-virtual/range {v0 .. v14}, LK0/r;->F(JJLK0/l;Ljava/nio/ByteBuffer;IIIJZZLm0/t;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    :goto_8
    if-eqz v0, :cond_16

    .line 382
    .line 383
    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 384
    .line 385
    move-object/from16 v2, p0

    .line 386
    .line 387
    move-object v3, v15

    .line 388
    invoke-virtual {v2, v0, v1}, LK0/r;->B(J)V

    .line 389
    .line 390
    .line 391
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 392
    .line 393
    and-int/lit8 v0, v0, 0x4

    .line 394
    .line 395
    if-eqz v0, :cond_13

    .line 396
    .line 397
    const/4 v14, 0x1

    .line 398
    goto :goto_9

    .line 399
    :cond_13
    const/4 v14, 0x0

    .line 400
    :goto_9
    if-nez v14, :cond_14

    .line 401
    .line 402
    iget-boolean v0, v2, LK0/r;->E0:Z

    .line 403
    .line 404
    if-eqz v0, :cond_14

    .line 405
    .line 406
    iget-boolean v0, v2, LK0/r;->v0:Z

    .line 407
    .line 408
    if-eqz v0, :cond_14

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, LB0/h;->getClock()Lp0/f;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Lp0/G;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 420
    .line 421
    .line 422
    move-result-wide v0

    .line 423
    iput-wide v0, v2, LK0/r;->p0:J

    .line 424
    .line 425
    :cond_14
    const/4 v0, -0x1

    .line 426
    iput v0, v2, LK0/r;->s0:I

    .line 427
    .line 428
    const/4 v0, 0x0

    .line 429
    iput-object v0, v2, LK0/r;->t0:Ljava/nio/ByteBuffer;

    .line 430
    .line 431
    if-nez v14, :cond_15

    .line 432
    .line 433
    return v16

    .line 434
    :cond_15
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 435
    .line 436
    .line 437
    goto :goto_a

    .line 438
    :cond_16
    move-object/from16 v2, p0

    .line 439
    .line 440
    :goto_a
    return v17
.end method

.method public final f()Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, LK0/r;->a0:LK0/l;

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget v0, v1, LK0/r;->B0:I

    .line 9
    .line 10
    const/4 v9, 0x2

    .line 11
    if-eq v0, v9, :cond_0

    .line 12
    .line 13
    iget-boolean v0, v1, LK0/r;->I0:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    iget v0, v1, LK0/r;->r0:I

    .line 21
    .line 22
    iget-object v10, v1, LK0/r;->L:Lw0/g;

    .line 23
    .line 24
    if-gez v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v2}, LK0/l;->k()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, v1, LK0/r;->r0:I

    .line 31
    .line 32
    if-gez v0, :cond_2

    .line 33
    .line 34
    return v8

    .line 35
    :cond_2
    invoke-interface {v2, v0}, LK0/l;->o(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    invoke-virtual {v10}, Lw0/g;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget v0, v1, LK0/r;->B0:I

    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, -0x1

    .line 49
    if-ne v0, v11, :cond_5

    .line 50
    .line 51
    iget-boolean v0, v1, LK0/r;->o0:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iput-boolean v11, v1, LK0/r;->E0:Z

    .line 57
    .line 58
    iget v5, v1, LK0/r;->r0:I

    .line 59
    .line 60
    const/4 v7, 0x4

    .line 61
    const/4 v6, 0x0

    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    invoke-interface/range {v2 .. v7}, LK0/l;->e(JIII)V

    .line 65
    .line 66
    .line 67
    iput v13, v1, LK0/r;->r0:I

    .line 68
    .line 69
    iput-object v12, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    :goto_0
    iput v9, v1, LK0/r;->B0:I

    .line 72
    .line 73
    return v8

    .line 74
    :cond_5
    iget-boolean v0, v1, LK0/r;->m0:Z

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    iput-boolean v8, v1, LK0/r;->m0:Z

    .line 79
    .line 80
    iget-object v0, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v3, LK0/r;->V0:[B

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    iget v5, v1, LK0/r;->r0:I

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/16 v6, 0x26

    .line 94
    .line 95
    const-wide/16 v3, 0x0

    .line 96
    .line 97
    invoke-interface/range {v2 .. v7}, LK0/l;->e(JIII)V

    .line 98
    .line 99
    .line 100
    iput v13, v1, LK0/r;->r0:I

    .line 101
    .line 102
    iput-object v12, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    iput-boolean v11, v1, LK0/r;->D0:Z

    .line 105
    .line 106
    return v11

    .line 107
    :cond_6
    iget v0, v1, LK0/r;->A0:I

    .line 108
    .line 109
    if-ne v0, v11, :cond_8

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_1
    iget-object v3, v1, LK0/r;->b0:Lm0/t;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v3, v3, Lm0/t;->r:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-ge v0, v3, :cond_7

    .line 124
    .line 125
    iget-object v3, v1, LK0/r;->b0:Lm0/t;

    .line 126
    .line 127
    iget-object v3, v3, Lm0/t;->r:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, [B

    .line 134
    .line 135
    iget-object v4, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    iput v9, v1, LK0/r;->A0:I

    .line 147
    .line 148
    :cond_8
    iget-object v0, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual/range {p0 .. p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :try_start_0
    invoke-virtual {v1, v3, v10, v8}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 162
    .line 163
    .line 164
    move-result v4
    :try_end_0
    .catch Lw0/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v5, -0x3

    .line 166
    if-ne v4, v5, :cond_a

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    iget-wide v2, v1, LK0/r;->G0:J

    .line 175
    .line 176
    iput-wide v2, v1, LK0/r;->H0:J

    .line 177
    .line 178
    :cond_9
    return v8

    .line 179
    :cond_a
    const/4 v5, -0x5

    .line 180
    if-ne v4, v5, :cond_c

    .line 181
    .line 182
    iget v0, v1, LK0/r;->A0:I

    .line 183
    .line 184
    if-ne v0, v9, :cond_b

    .line 185
    .line 186
    invoke-virtual {v10}, Lw0/g;->clear()V

    .line 187
    .line 188
    .line 189
    iput v11, v1, LK0/r;->A0:I

    .line 190
    .line 191
    :cond_b
    invoke-virtual {v1, v3}, LK0/r;->y(LB0/Z;)LB0/j;

    .line 192
    .line 193
    .line 194
    return v11

    .line 195
    :cond_c
    invoke-virtual {v10}, Lw0/a;->isEndOfStream()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_10

    .line 200
    .line 201
    iget-wide v3, v1, LK0/r;->G0:J

    .line 202
    .line 203
    iput-wide v3, v1, LK0/r;->H0:J

    .line 204
    .line 205
    iget v0, v1, LK0/r;->A0:I

    .line 206
    .line 207
    if-ne v0, v9, :cond_d

    .line 208
    .line 209
    invoke-virtual {v10}, Lw0/g;->clear()V

    .line 210
    .line 211
    .line 212
    iput v11, v1, LK0/r;->A0:I

    .line 213
    .line 214
    :cond_d
    iput-boolean v11, v1, LK0/r;->I0:Z

    .line 215
    .line 216
    iget-boolean v0, v1, LK0/r;->D0:Z

    .line 217
    .line 218
    if-nez v0, :cond_e

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p0}, LK0/r;->E()V

    .line 221
    .line 222
    .line 223
    return v8

    .line 224
    :cond_e
    iget-boolean v0, v1, LK0/r;->o0:Z

    .line 225
    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_f
    iput-boolean v11, v1, LK0/r;->E0:Z

    .line 230
    .line 231
    iget v5, v1, LK0/r;->r0:I

    .line 232
    .line 233
    const/4 v7, 0x4

    .line 234
    const/4 v6, 0x0

    .line 235
    const-wide/16 v3, 0x0

    .line 236
    .line 237
    invoke-interface/range {v2 .. v7}, LK0/l;->e(JIII)V

    .line 238
    .line 239
    .line 240
    iput v13, v1, LK0/r;->r0:I

    .line 241
    .line 242
    iput-object v12, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 243
    .line 244
    :goto_2
    return v8

    .line 245
    :cond_10
    iget-boolean v3, v1, LK0/r;->D0:Z

    .line 246
    .line 247
    if-nez v3, :cond_12

    .line 248
    .line 249
    invoke-virtual {v10}, Lw0/a;->isKeyFrame()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_12

    .line 254
    .line 255
    invoke-virtual {v10}, Lw0/g;->clear()V

    .line 256
    .line 257
    .line 258
    iget v0, v1, LK0/r;->A0:I

    .line 259
    .line 260
    if-ne v0, v9, :cond_11

    .line 261
    .line 262
    iput v11, v1, LK0/r;->A0:I

    .line 263
    .line 264
    :cond_11
    return v11

    .line 265
    :cond_12
    invoke-virtual {v1, v10}, LK0/r;->P(Lw0/g;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_13

    .line 270
    .line 271
    return v11

    .line 272
    :cond_13
    const/high16 v3, 0x40000000    # 2.0f

    .line 273
    .line 274
    invoke-virtual {v10, v3}, Lw0/a;->getFlag(I)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_16

    .line 279
    .line 280
    iget-object v4, v10, Lw0/g;->H:Lw0/c;

    .line 281
    .line 282
    if-nez v0, :cond_14

    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_14
    iget-object v5, v4, Lw0/c;->d:[I

    .line 289
    .line 290
    if-nez v5, :cond_15

    .line 291
    .line 292
    new-array v5, v11, [I

    .line 293
    .line 294
    iput-object v5, v4, Lw0/c;->d:[I

    .line 295
    .line 296
    iget-object v6, v4, Lw0/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 297
    .line 298
    iput-object v5, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 299
    .line 300
    :cond_15
    iget-object v4, v4, Lw0/c;->d:[I

    .line 301
    .line 302
    aget v5, v4, v8

    .line 303
    .line 304
    add-int/2addr v5, v0

    .line 305
    aput v5, v4, v8

    .line 306
    .line 307
    :cond_16
    :goto_3
    iget-wide v5, v10, Lw0/g;->K:J

    .line 308
    .line 309
    iget-boolean v0, v1, LK0/r;->K0:Z

    .line 310
    .line 311
    if-eqz v0, :cond_18

    .line 312
    .line 313
    iget-object v0, v1, LK0/r;->P:Ljava/util/ArrayDeque;

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_17

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, LK0/q;

    .line 326
    .line 327
    iget-object v0, v0, LK0/q;->d:Lc/g;

    .line 328
    .line 329
    iget-object v4, v1, LK0/r;->R:Lm0/t;

    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v4, v5, v6}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_17
    iget-object v0, v1, LK0/r;->O0:LK0/q;

    .line 339
    .line 340
    iget-object v0, v0, LK0/q;->d:Lc/g;

    .line 341
    .line 342
    iget-object v4, v1, LK0/r;->R:Lm0/t;

    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v4, v5, v6}, Lc/g;->b(Ljava/lang/Object;J)V

    .line 348
    .line 349
    .line 350
    :goto_4
    iput-boolean v8, v1, LK0/r;->K0:Z

    .line 351
    .line 352
    :cond_18
    iget-wide v14, v1, LK0/r;->G0:J

    .line 353
    .line 354
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 355
    .line 356
    .line 357
    move-result-wide v14

    .line 358
    iput-wide v14, v1, LK0/r;->G0:J

    .line 359
    .line 360
    invoke-virtual/range {p0 .. p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_19

    .line 365
    .line 366
    invoke-virtual {v10}, Lw0/a;->isLastSample()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_1a

    .line 371
    .line 372
    :cond_19
    iget-wide v14, v1, LK0/r;->G0:J

    .line 373
    .line 374
    iput-wide v14, v1, LK0/r;->H0:J

    .line 375
    .line 376
    :cond_1a
    invoke-virtual {v10}, Lw0/g;->g()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10}, Lw0/a;->hasSupplementalData()Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz v0, :cond_1b

    .line 384
    .line 385
    invoke-virtual {v1, v10}, LK0/r;->p(Lw0/g;)V

    .line 386
    .line 387
    .line 388
    :cond_1b
    invoke-virtual {v1, v10}, LK0/r;->D(Lw0/g;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v10}, LK0/r;->j(Lw0/g;)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 396
    .line 397
    const/16 v4, 0x22

    .line 398
    .line 399
    if-lt v0, v4, :cond_1c

    .line 400
    .line 401
    and-int/lit8 v0, v7, 0x20

    .line 402
    .line 403
    if-nez v0, :cond_1d

    .line 404
    .line 405
    :cond_1c
    invoke-virtual/range {p0 .. p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    iget-boolean v0, v0, LB0/E0;->b:Z

    .line 410
    .line 411
    if-nez v0, :cond_1d

    .line 412
    .line 413
    iget-wide v14, v1, LK0/r;->U0:J

    .line 414
    .line 415
    iget-wide v8, v10, Lw0/g;->K:J

    .line 416
    .line 417
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 418
    .line 419
    .line 420
    move-result-wide v8

    .line 421
    iput-wide v8, v1, LK0/r;->U0:J

    .line 422
    .line 423
    :cond_1d
    if-eqz v3, :cond_1e

    .line 424
    .line 425
    iget v3, v1, LK0/r;->r0:I

    .line 426
    .line 427
    iget-object v4, v10, Lw0/g;->H:Lw0/c;

    .line 428
    .line 429
    invoke-interface/range {v2 .. v7}, LK0/l;->b(ILw0/c;JI)V

    .line 430
    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_1e
    iget v0, v1, LK0/r;->r0:I

    .line 434
    .line 435
    iget-object v3, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    move-wide v3, v5

    .line 445
    move v5, v0

    .line 446
    move v6, v8

    .line 447
    invoke-interface/range {v2 .. v7}, LK0/l;->e(JIII)V

    .line 448
    .line 449
    .line 450
    :goto_5
    iput v13, v1, LK0/r;->r0:I

    .line 451
    .line 452
    iput-object v12, v10, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 453
    .line 454
    iput-boolean v11, v1, LK0/r;->D0:Z

    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    iput v2, v1, LK0/r;->A0:I

    .line 458
    .line 459
    iget-object v0, v1, LK0/r;->N0:LB0/i;

    .line 460
    .line 461
    iget v2, v0, LB0/i;->c:I

    .line 462
    .line 463
    add-int/2addr v2, v11

    .line 464
    iput v2, v0, LB0/i;->c:I

    .line 465
    .line 466
    return v11

    .line 467
    :catch_0
    move-exception v0

    .line 468
    const/4 v2, 0x0

    .line 469
    move-object v3, v0

    .line 470
    invoke-virtual {v1, v3}, LK0/r;->v(Ljava/lang/Exception;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v2}, LK0/r;->G(I)Z

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, LK0/r;->g()V

    .line 477
    .line 478
    .line 479
    return v11

    .line 480
    :goto_6
    return v2
.end method

.method public final g()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, LK0/r;->a0:LK0/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, LK0/l;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, LK0/r;->K()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, LK0/r;->K()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final getDurationToProgressUs(JJ)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, LK0/r;->n(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final h()Z
    .locals 9

    .line 1
    iget-object v0, p0, LK0/r;->a0:LK0/l;

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
    invoke-virtual {p0}, LK0/r;->S()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, LK0/r;->H()V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    invoke-virtual {p0}, LK0/r;->Q()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, LK0/r;->g()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-wide v3, p0, LK0/r;->U0:J

    .line 29
    .line 30
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v0, v3, v5

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-wide v7, p0, LK0/r;->U0:J

    .line 44
    .line 45
    cmp-long v0, v3, v7

    .line 46
    .line 47
    if-gtz v0, :cond_3

    .line 48
    .line 49
    iget-wide v3, p0, LK0/r;->P0:J

    .line 50
    .line 51
    cmp-long v0, v3, v7

    .line 52
    .line 53
    if-gez v0, :cond_3

    .line 54
    .line 55
    iput-boolean v2, p0, LK0/r;->S0:Z

    .line 56
    .line 57
    iput-wide v5, p0, LK0/r;->U0:J

    .line 58
    .line 59
    :cond_3
    :goto_0
    return v1
.end method

.method public final i(Z)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, LK0/r;->R:Lm0/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK0/r;->H:LK0/s;

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0, p1}, LK0/r;->m(LK0/s;Lm0/t;Z)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, v1, v0, p1}, LK0/r;->m(LK0/s;Lm0/t;Z)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Drm session requires secure decoder for "

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", but no secure decoder available. Trying to proceed with "

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "."

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "MediaCodecRenderer"

    .line 61
    .line 62
    invoke-static {v0, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-object v2
.end method

.method public isReady()Z
    .locals 5

    .line 1
    iget-object v0, p0, LK0/r;->R:Lm0/t;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, LB0/h;->isSourceReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, LK0/r;->s0:I

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, LK0/r;->q0:J

    .line 17
    .line 18
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lp0/G;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-wide v2, p0, LK0/r;->q0:J

    .line 41
    .line 42
    cmp-long v4, v0, v2

    .line 43
    .line 44
    if-gez v4, :cond_2

    .line 45
    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_1
    return v0
.end method

.method public j(Lw0/g;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract l(FLm0/t;[Lm0/t;)F
.end method

.method public abstract m(LK0/s;Lm0/t;Z)Ljava/util/ArrayList;
.end method

.method public n(JJ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, LB0/h;->getDurationToProgressUs(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public abstract o(LK0/o;Lm0/t;Landroid/media/MediaCrypto;F)Ll/x;
.end method

.method public onDisabled()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LK0/r;->R:Lm0/t;

    .line 3
    .line 4
    sget-object v0, LK0/q;->e:LK0/q;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, LK0/r;->N(LK0/q;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LK0/r;->P:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, LK0/r;->w0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, LK0/r;->w0:Z

    .line 20
    .line 21
    invoke-virtual {p0}, LK0/r;->J()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, LK0/r;->h()Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LK0/r;->I0:Z

    .line 3
    .line 4
    iput-boolean p1, p0, LK0/r;->J0:Z

    .line 5
    .line 6
    iput-boolean p1, p0, LK0/r;->L0:Z

    .line 7
    .line 8
    iget-boolean p1, p0, LK0/r;->w0:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, LK0/r;->J()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, LK0/r;->h()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, LK0/r;->s()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, LK0/r;->O0:LK0/q;

    .line 26
    .line 27
    iget-object p1, p1, LK0/q;->d:Lc/g;

    .line 28
    .line 29
    invoke-virtual {p1}, Lc/g;->m()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-lez p1, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, LK0/r;->K0:Z

    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, LK0/r;->O0:LK0/q;

    .line 39
    .line 40
    iget-object p1, p1, LK0/q;->d:Lc/g;

    .line 41
    .line 42
    invoke-virtual {p1}, Lc/g;->f()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, LK0/r;->P:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onReset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, LK0/r;->w0:Z

    .line 4
    .line 5
    invoke-virtual {p0}, LK0/r;->J()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LK0/r;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LK0/r;->U:LG0/l;

    .line 12
    .line 13
    invoke-static {v0, v1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, LK0/r;->U:LG0/l;

    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    iget-object v2, p0, LK0/r;->U:LG0/l;

    .line 21
    .line 22
    invoke-static {v2, v1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, LK0/r;->U:LG0/l;

    .line 26
    .line 27
    throw v0
.end method

.method public onStreamChanged([Lm0/t;JJLO0/y;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, LK0/r;->O0:LK0/q;

    .line 3
    .line 4
    iget-wide v1, v1, LK0/q;->c:J

    .line 5
    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    new-instance v1, LK0/q;

    .line 16
    .line 17
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    move-object v6, v1

    .line 23
    move-wide v9, p2

    .line 24
    move-wide/from16 v11, p4

    .line 25
    .line 26
    invoke-direct/range {v6 .. v12}, LK0/q;-><init>(JJJ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, LK0/r;->N(LK0/q;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, v0, LK0/r;->R0:Z

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, LK0/r;->C()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, LK0/r;->P:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-wide v5, v0, LK0/r;->G0:J

    .line 49
    .line 50
    cmp-long v2, v5, v3

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-wide v7, v0, LK0/r;->P0:J

    .line 55
    .line 56
    cmp-long v2, v7, v3

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    cmp-long v2, v7, v5

    .line 61
    .line 62
    if-ltz v2, :cond_2

    .line 63
    .line 64
    :cond_1
    new-instance v1, LK0/q;

    .line 65
    .line 66
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    move-object v5, v1

    .line 72
    move-wide v8, p2

    .line 73
    move-wide/from16 v10, p4

    .line 74
    .line 75
    invoke-direct/range {v5 .. v11}, LK0/q;-><init>(JJJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, LK0/r;->N(LK0/q;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, LK0/r;->O0:LK0/q;

    .line 82
    .line 83
    iget-wide v1, v1, LK0/q;->c:J

    .line 84
    .line 85
    cmp-long v5, v1, v3

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, LK0/r;->C()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, LK0/q;

    .line 94
    .line 95
    iget-wide v7, v0, LK0/r;->G0:J

    .line 96
    .line 97
    move-object v6, v2

    .line 98
    move-wide v9, p2

    .line 99
    move-wide/from16 v11, p4

    .line 100
    .line 101
    invoke-direct/range {v6 .. v12}, LK0/q;-><init>(JJJ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method public abstract p(Lw0/g;)V
.end method

.method public final q(LK0/o;Landroid/media/MediaCrypto;)V
    .locals 12

    .line 1
    const-string v0, "createCodec:"

    .line 2
    .line 3
    iput-object p1, p0, LK0/r;->h0:LK0/o;

    .line 4
    .line 5
    iget-object v1, p0, LK0/r;->R:Lm0/t;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, p1, LK0/o;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/high16 v4, -0x40800000    # -1.0f

    .line 15
    .line 16
    const/16 v5, 0x17

    .line 17
    .line 18
    if-ge v2, v5, :cond_0

    .line 19
    .line 20
    const/high16 v6, -0x40800000    # -1.0f

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v6, p0, LK0/r;->Z:F

    .line 24
    .line 25
    invoke-virtual {p0}, LB0/h;->getStreamFormats()[Lm0/t;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {p0, v6, v1, v7}, LK0/r;->l(FLm0/t;[Lm0/t;)F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    :goto_0
    iget v7, p0, LK0/r;->J:F

    .line 34
    .line 35
    cmpg-float v7, v6, v7

    .line 36
    .line 37
    if-gtz v7, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v4, v6

    .line 41
    :goto_1
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lp0/G;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    invoke-virtual {p0, p1, v1, p2, v4}, LK0/r;->o(LK0/o;Lm0/t;Landroid/media/MediaCrypto;F)Ll/x;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const/16 v8, 0x1f

    .line 59
    .line 60
    if-lt v2, v8, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, LB0/h;->getPlayerId()LC0/I;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v8}, LC0/I;->a()Landroid/media/metrics/LogSessionId;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static {}, LC0/E;->h()Landroid/media/metrics/LogSessionId;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-static {v8, v9}, LC0/E;->z(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_2

    .line 79
    .line 80
    iget-object v9, p2, Ll/x;->H:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v9, Landroid/media/MediaFormat;

    .line 83
    .line 84
    const-string v10, "log-session-id"

    .line 85
    .line 86
    invoke-static {v8}, LC0/E;->n(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, LK0/r;->G:LK0/k;

    .line 109
    .line 110
    invoke-interface {v0, p2}, LK0/k;->y(Ll/x;)LK0/l;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iput-object p2, p0, LK0/r;->a0:LK0/l;

    .line 115
    .line 116
    new-instance v0, LD0/U;

    .line 117
    .line 118
    invoke-direct {v0, p0}, LD0/U;-><init>(LK0/r;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v0}, LK0/l;->n(LD0/U;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Lp0/G;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 137
    .line 138
    .line 139
    move-result-wide v8

    .line 140
    invoke-virtual {p1, v1}, LK0/o;->e(Lm0/t;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_3

    .line 145
    .line 146
    invoke-static {v1}, Lm0/t;->d(Lm0/t;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 151
    .line 152
    const-string v0, "Format exceeds selected codec\'s capabilities ["

    .line 153
    .line 154
    const-string v10, ", "

    .line 155
    .line 156
    const-string v11, "]"

    .line 157
    .line 158
    invoke-static {v0, p2, v10, v3, v11}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const-string v0, "MediaCodecRenderer"

    .line 163
    .line 164
    invoke-static {v0, p2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    iput v4, p0, LK0/r;->e0:F

    .line 168
    .line 169
    iput-object v1, p0, LK0/r;->b0:Lm0/t;

    .line 170
    .line 171
    const/4 p2, 0x2

    .line 172
    const/16 v0, 0x19

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    const/4 v4, 0x1

    .line 176
    if-gt v2, v0, :cond_5

    .line 177
    .line 178
    const-string v10, "OMX.Exynos.avc.dec.secure"

    .line 179
    .line 180
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_5

    .line 185
    .line 186
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 187
    .line 188
    const-string v11, "SM-T585"

    .line 189
    .line 190
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    if-nez v11, :cond_4

    .line 195
    .line 196
    const-string v11, "SM-A510"

    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-nez v11, :cond_4

    .line 203
    .line 204
    const-string v11, "SM-A520"

    .line 205
    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-nez v11, :cond_4

    .line 211
    .line 212
    const-string v11, "SM-J700"

    .line 213
    .line 214
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-eqz v10, :cond_5

    .line 219
    .line 220
    :cond_4
    const/4 v10, 0x2

    .line 221
    goto :goto_2

    .line 222
    :cond_5
    const/16 v10, 0x18

    .line 223
    .line 224
    if-ge v2, v10, :cond_8

    .line 225
    .line 226
    const-string v10, "OMX.Nvidia.h264.decode"

    .line 227
    .line 228
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-nez v10, :cond_6

    .line 233
    .line 234
    const-string v10, "OMX.Nvidia.h264.decode.secure"

    .line 235
    .line 236
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-eqz v10, :cond_8

    .line 241
    .line 242
    :cond_6
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 243
    .line 244
    const-string v11, "flounder"

    .line 245
    .line 246
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    if-nez v11, :cond_7

    .line 251
    .line 252
    const-string v11, "flounder_lte"

    .line 253
    .line 254
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    if-nez v11, :cond_7

    .line 259
    .line 260
    const-string v11, "grouper"

    .line 261
    .line 262
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-nez v11, :cond_7

    .line 267
    .line 268
    const-string v11, "tilapia"

    .line 269
    .line 270
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    if-eqz v10, :cond_8

    .line 275
    .line 276
    :cond_7
    const/4 v10, 0x1

    .line 277
    goto :goto_2

    .line 278
    :cond_8
    const/4 v10, 0x0

    .line 279
    :goto_2
    iput v10, p0, LK0/r;->i0:I

    .line 280
    .line 281
    const/16 v10, 0x1d

    .line 282
    .line 283
    if-ne v2, v10, :cond_9

    .line 284
    .line 285
    const-string v11, "c2.android.aac.decoder"

    .line 286
    .line 287
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_9

    .line 292
    .line 293
    const/4 v11, 0x1

    .line 294
    goto :goto_3

    .line 295
    :cond_9
    const/4 v11, 0x0

    .line 296
    :goto_3
    iput-boolean v11, p0, LK0/r;->j0:Z

    .line 297
    .line 298
    if-gt v2, v5, :cond_a

    .line 299
    .line 300
    const-string v5, "OMX.google.vorbis.decoder"

    .line 301
    .line 302
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-eqz v5, :cond_a

    .line 307
    .line 308
    const/4 v5, 0x1

    .line 309
    goto :goto_4

    .line 310
    :cond_a
    const/4 v5, 0x0

    .line 311
    :goto_4
    iput-boolean v5, p0, LK0/r;->k0:Z

    .line 312
    .line 313
    const/16 v5, 0x15

    .line 314
    .line 315
    if-ne v2, v5, :cond_b

    .line 316
    .line 317
    const-string v5, "OMX.google.aac.decoder"

    .line 318
    .line 319
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-eqz v5, :cond_b

    .line 324
    .line 325
    const/4 v5, 0x1

    .line 326
    goto :goto_5

    .line 327
    :cond_b
    const/4 v5, 0x0

    .line 328
    :goto_5
    iput-boolean v5, p0, LK0/r;->l0:Z

    .line 329
    .line 330
    iget-object v5, p1, LK0/o;->a:Ljava/lang/String;

    .line 331
    .line 332
    if-gt v2, v0, :cond_c

    .line 333
    .line 334
    const-string v0, "OMX.rk.video_decoder.avc"

    .line 335
    .line 336
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_f

    .line 341
    .line 342
    :cond_c
    if-gt v2, v10, :cond_d

    .line 343
    .line 344
    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    .line 345
    .line 346
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_f

    .line 351
    .line 352
    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 353
    .line 354
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_f

    .line 359
    .line 360
    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    .line 361
    .line 362
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_f

    .line 367
    .line 368
    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 369
    .line 370
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_f

    .line 375
    .line 376
    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    .line 377
    .line 378
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_f

    .line 383
    .line 384
    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 385
    .line 386
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-nez v0, :cond_f

    .line 391
    .line 392
    :cond_d
    const-string v0, "Amazon"

    .line 393
    .line 394
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_e

    .line 401
    .line 402
    const-string v0, "AFTS"

    .line 403
    .line 404
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_e

    .line 411
    .line 412
    iget-boolean p1, p1, LK0/o;->f:Z

    .line 413
    .line 414
    if-eqz p1, :cond_e

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_e
    invoke-virtual {p0}, LK0/r;->k()Z

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    if-eqz p1, :cond_10

    .line 422
    .line 423
    :cond_f
    :goto_6
    const/4 v1, 0x1

    .line 424
    :cond_10
    iput-boolean v1, p0, LK0/r;->o0:Z

    .line 425
    .line 426
    iget-object p1, p0, LK0/r;->a0:LK0/l;

    .line 427
    .line 428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    if-ne p1, p2, :cond_11

    .line 436
    .line 437
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    check-cast p1, Lp0/G;

    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 447
    .line 448
    .line 449
    move-result-wide p1

    .line 450
    const-wide/16 v0, 0x3e8

    .line 451
    .line 452
    add-long/2addr p1, v0

    .line 453
    iput-wide p1, p0, LK0/r;->q0:J

    .line 454
    .line 455
    :cond_11
    iget-object p1, p0, LK0/r;->N0:LB0/i;

    .line 456
    .line 457
    iget p2, p1, LB0/i;->a:I

    .line 458
    .line 459
    add-int/2addr p2, v4

    .line 460
    iput p2, p1, LB0/i;->a:I

    .line 461
    .line 462
    sub-long v6, v8, v6

    .line 463
    .line 464
    move-object v2, p0

    .line 465
    move-wide v4, v8

    .line 466
    invoke-virtual/range {v2 .. v7}, LK0/r;->w(Ljava/lang/String;JJ)V

    .line 467
    .line 468
    .line 469
    return-void

    .line 470
    :catchall_0
    move-exception p1

    .line 471
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 472
    .line 473
    .line 474
    throw p1
.end method

.method public final r(JJ)Z
    .locals 2

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LK0/r;->S:Lm0/t;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "audio/opus"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sub-long/2addr p1, p3

    .line 20
    const-wide/32 p3, 0x13880

    .line 21
    .line 22
    .line 23
    cmp-long v0, p1, p3

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 31
    :goto_1
    return p1
.end method

.method public render(JJ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LK0/r;->L0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, LK0/r;->L0:Z

    .line 7
    .line 8
    invoke-virtual {p0}, LK0/r;->E()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, LK0/r;->M0:LB0/w;

    .line 12
    .line 13
    if-nez v0, :cond_d

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    iget-boolean v2, p0, LK0/r;->J0:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, LK0/r;->I()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, LK0/r;->R:Lm0/t;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {p0, v2}, LK0/r;->G(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, LK0/r;->s()V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p0, LK0/r;->w0:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const-string v2, "bypassRender"

    .line 50
    .line 51
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, LK0/r;->a(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    iget-object v2, p0, LK0/r;->a0:LK0/l;

    .line 66
    .line 67
    if-eqz v2, :cond_7

    .line 68
    .line 69
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lp0/G;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    const-string v4, "drainAndFeed"

    .line 83
    .line 84
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, LK0/r;->e(JJ)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, v2, v3}, LK0/r;->O(J)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    :goto_2
    invoke-virtual {p0}, LK0/r;->f()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v2, v3}, LK0/r;->O(J)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    iget-object p3, p0, LK0/r;->N0:LB0/i;

    .line 118
    .line 119
    iget p4, p3, LB0/i;->d:I

    .line 120
    .line 121
    invoke-virtual {p0, p1, p2}, LB0/h;->skipSource(J)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    add-int/2addr p4, p1

    .line 126
    iput p4, p3, LB0/i;->d:I

    .line 127
    .line 128
    invoke-virtual {p0, v0}, LK0/r;->G(I)Z

    .line 129
    .line 130
    .line 131
    :goto_3
    iget-object p1, p0, LK0/r;->N0:LB0/i;

    .line 132
    .line 133
    monitor-enter p1

    .line 134
    monitor-exit p1
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 136
    :goto_4
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 137
    .line 138
    if-eqz p2, :cond_8

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    array-length p4, p3

    .line 146
    if-lez p4, :cond_c

    .line 147
    .line 148
    aget-object p3, p3, v1

    .line 149
    .line 150
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    const-string p4, "android.media.MediaCodec"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_c

    .line 161
    .line 162
    :goto_5
    invoke-virtual {p0, p1}, LK0/r;->v(Ljava/lang/Exception;)V

    .line 163
    .line 164
    .line 165
    if-eqz p2, :cond_9

    .line 166
    .line 167
    move-object p2, p1

    .line 168
    check-cast p2, Landroid/media/MediaCodec$CodecException;

    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_9

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    :cond_9
    if-eqz v1, :cond_a

    .line 178
    .line 179
    invoke-virtual {p0}, LK0/r;->H()V

    .line 180
    .line 181
    .line 182
    :cond_a
    iget-object p2, p0, LK0/r;->h0:LK0/o;

    .line 183
    .line 184
    invoke-virtual {p0, p1, p2}, LK0/r;->c(Ljava/lang/IllegalStateException;LK0/o;)LK0/n;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget p2, p1, LK0/n;->G:I

    .line 189
    .line 190
    const/16 p3, 0x44d

    .line 191
    .line 192
    if-ne p2, p3, :cond_b

    .line 193
    .line 194
    const/16 p2, 0xfa6

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_b
    const/16 p2, 0xfa3

    .line 198
    .line 199
    :goto_6
    iget-object p3, p0, LK0/r;->R:Lm0/t;

    .line 200
    .line 201
    invoke-virtual {p0, p1, p3, v1, p2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    throw p1

    .line 206
    :cond_c
    throw p1

    .line 207
    :goto_7
    iget-object p2, p0, LK0/r;->R:Lm0/t;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    invoke-static {p3}, Lp0/M;->w(I)I

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    invoke-virtual {p0, p1, p2, p3}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    throw p1

    .line 222
    :cond_d
    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, LK0/r;->M0:LB0/w;

    .line 224
    .line 225
    throw v0
.end method

.method public final s()V
    .locals 8

    .line 1
    iget-object v0, p0, LK0/r;->a0:LK0/l;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-boolean v0, p0, LK0/r;->w0:Z

    .line 6
    .line 7
    if-nez v0, :cond_d

    .line 8
    .line 9
    iget-object v0, p0, LK0/r;->R:Lm0/t;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, LK0/r;->U:LG0/l;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, LK0/r;->T(Lm0/t;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    iget-object v4, v0, Lm0/t;->o:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iput-boolean v3, p0, LK0/r;->w0:Z

    .line 35
    .line 36
    invoke-virtual {p0}, LK0/r;->J()V

    .line 37
    .line 38
    .line 39
    const-string v0, "audio/mp4a-latm"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, LK0/r;->N:LK0/f;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "audio/mpeg"

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string v0, "audio/opus"

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iput v2, v1, LK0/f;->Q:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/16 v0, 0x20

    .line 75
    .line 76
    iput v0, v1, LK0/f;->Q:I

    .line 77
    .line 78
    :goto_1
    iput-boolean v2, p0, LK0/r;->w0:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v1, p0, LK0/r;->U:LG0/l;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, LK0/r;->M(LG0/l;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, LK0/r;->T:LG0/l;

    .line 87
    .line 88
    const/4 v5, 0x4

    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    iget-object v1, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v1, 0x0

    .line 98
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, LK0/r;->T:LG0/l;

    .line 102
    .line 103
    invoke-interface {v1}, LG0/l;->f()Landroidx/media3/decoder/CryptoConfig;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-boolean v7, LG0/x;->c:Z

    .line 108
    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    instance-of v7, v6, LG0/x;

    .line 112
    .line 113
    if-eqz v7, :cond_6

    .line 114
    .line 115
    invoke-interface {v1}, LG0/l;->getState()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eq v7, v2, :cond_5

    .line 120
    .line 121
    if-eq v7, v5, :cond_6

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_5
    invoke-interface {v1}, LG0/l;->getError()LG0/k;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, LK0/r;->R:Lm0/t;

    .line 132
    .line 133
    iget v2, v0, LG0/k;->G:I

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1, v2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    throw v0

    .line 140
    :cond_6
    if-nez v6, :cond_7

    .line 141
    .line 142
    invoke-interface {v1}, LG0/l;->getError()LG0/k;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    instance-of v1, v6, LG0/x;

    .line 150
    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    check-cast v6, LG0/x;

    .line 154
    .line 155
    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    .line 156
    .line 157
    iget-object v7, v6, LG0/x;->a:Ljava/util/UUID;

    .line 158
    .line 159
    iget-object v6, v6, LG0/x;->b:[B

    .line 160
    .line 161
    invoke-direct {v1, v7, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 162
    .line 163
    .line 164
    iput-object v1, p0, LK0/r;->W:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, LK0/r;->R:Lm0/t;

    .line 169
    .line 170
    const/16 v2, 0x1776

    .line 171
    .line 172
    invoke-virtual {p0, v0, v1, v2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    throw v0

    .line 177
    :cond_8
    :goto_3
    :try_start_1
    iget-object v1, p0, LK0/r;->T:LG0/l;

    .line 178
    .line 179
    if-eqz v1, :cond_a

    .line 180
    .line 181
    invoke-interface {v1}, LG0/l;->getState()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    const/4 v6, 0x3

    .line 186
    if-eq v1, v6, :cond_9

    .line 187
    .line 188
    iget-object v1, p0, LK0/r;->T:LG0/l;

    .line 189
    .line 190
    invoke-interface {v1}, LG0/l;->getState()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-ne v1, v5, :cond_a

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :catch_1
    move-exception v1

    .line 198
    goto :goto_7

    .line 199
    :cond_9
    :goto_4
    iget-object v1, p0, LK0/r;->T:LG0/l;

    .line 200
    .line 201
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v1, v4}, LG0/l;->e(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_a

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_a
    const/4 v2, 0x0

    .line 212
    :goto_5
    iget-object v1, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 213
    .line 214
    invoke-virtual {p0, v1, v2}, LK0/r;->t(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch LK0/p; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .line 216
    .line 217
    :cond_b
    :goto_6
    iget-object v0, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 218
    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    iget-object v1, p0, LK0/r;->a0:LK0/l;

    .line 222
    .line 223
    if-nez v1, :cond_c

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 226
    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, LK0/r;->W:Landroid/media/MediaCrypto;

    .line 230
    .line 231
    :cond_c
    return-void

    .line 232
    :goto_7
    const/16 v2, 0xfa1

    .line 233
    .line 234
    invoke-virtual {p0, v1, v0, v2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    throw v0

    .line 239
    :cond_d
    :goto_8
    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0

    .line 1
    iput p1, p0, LK0/r;->Y:F

    .line 2
    .line 3
    iput p2, p0, LK0/r;->Z:F

    .line 4
    .line 5
    iget-object p1, p0, LK0/r;->b0:Lm0/t;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, LK0/r;->V(Lm0/t;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LK0/r;->H:LK0/s;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, LK0/r;->U(LK0/s;Lm0/t;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch LK0/v; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/16 v1, 0xfa2

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1, v1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    throw p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    return v0
.end method

.method public final t(Landroid/media/MediaCrypto;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, LK0/r;->R:Lm0/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, LK0/r;->i(Z)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v3, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    iget-boolean v4, p0, LK0/r;->I:Z

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, LK0/o;

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iput-object v2, p0, LK0/r;->g0:LK0/p;
    :try_end_0
    .catch LK0/v; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    new-instance v1, LK0/p;

    .line 54
    .line 55
    const v2, -0xc34e

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p1, v0, p2, v2}, LK0/p;-><init>(LK0/v;Lm0/t;ZI)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    :goto_2
    iget-object v1, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_9

    .line 69
    .line 70
    iget-object v1, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    :goto_3
    iget-object v3, p0, LK0/r;->a0:LK0/l;

    .line 76
    .line 77
    if-nez v3, :cond_8

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object v9, v3

    .line 84
    check-cast v9, LK0/o;

    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, LK0/r;->u(Lm0/t;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    invoke-virtual {p0, v9}, LK0/r;->R(LK0/o;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    :try_start_1
    invoke-virtual {p0, v9, p1}, LK0/r;->q(LK0/o;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catch_1
    move-exception v6

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v4, "Failed to initialize decoder: "

    .line 111
    .line 112
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v4, "MediaCodecRenderer"

    .line 123
    .line 124
    invoke-static {v4, v3, v6}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    new-instance v3, LK0/p;

    .line 131
    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v5, "Decoder init failed: "

    .line 135
    .line 136
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v5, v9, LK0/o;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v5, ", "

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    instance-of v4, v6, Landroid/media/MediaCodec$CodecException;

    .line 157
    .line 158
    if-eqz v4, :cond_5

    .line 159
    .line 160
    move-object v4, v6

    .line 161
    check-cast v4, Landroid/media/MediaCodec$CodecException;

    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    move-object v10, v4

    .line 168
    goto :goto_4

    .line 169
    :cond_5
    move-object v10, v2

    .line 170
    :goto_4
    iget-object v7, v0, Lm0/t;->o:Ljava/lang/String;

    .line 171
    .line 172
    move-object v4, v3

    .line 173
    move v8, p2

    .line 174
    invoke-direct/range {v4 .. v10}, LK0/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLK0/o;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v3}, LK0/r;->v(Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    iget-object v4, p0, LK0/r;->g0:LK0/p;

    .line 181
    .line 182
    if-nez v4, :cond_6

    .line 183
    .line 184
    iput-object v3, p0, LK0/r;->g0:LK0/p;

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    new-instance v3, LK0/p;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    iget-object v8, v4, LK0/p;->G:Ljava/lang/String;

    .line 198
    .line 199
    iget-boolean v9, v4, LK0/p;->H:Z

    .line 200
    .line 201
    iget-object v10, v4, LK0/p;->I:LK0/o;

    .line 202
    .line 203
    iget-object v11, v4, LK0/p;->J:Ljava/lang/String;

    .line 204
    .line 205
    move-object v5, v3

    .line 206
    invoke-direct/range {v5 .. v11}, LK0/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLK0/o;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iput-object v3, p0, LK0/r;->g0:LK0/p;

    .line 210
    .line 211
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_7

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_7
    iget-object p1, p0, LK0/r;->g0:LK0/p;

    .line 220
    .line 221
    throw p1

    .line 222
    :cond_8
    iput-object v2, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 223
    .line 224
    return-void

    .line 225
    :cond_9
    new-instance p1, LK0/p;

    .line 226
    .line 227
    const v1, -0xc34f

    .line 228
    .line 229
    .line 230
    invoke-direct {p1, v2, v0, p2, v1}, LK0/p;-><init>(LK0/v;Lm0/t;ZI)V

    .line 231
    .line 232
    .line 233
    throw p1
.end method

.method public u(Lm0/t;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public abstract v(Ljava/lang/Exception;)V
.end method

.method public abstract w(Ljava/lang/String;JJ)V
.end method

.method public abstract x(Ljava/lang/String;)V
.end method

.method public y(LB0/Z;)LB0/j;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LK0/r;->K0:Z

    .line 3
    .line 4
    iget-object v1, p1, LB0/Z;->b:Lm0/t;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Lm0/t;->o:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v2, :cond_22

    .line 12
    .line 13
    const-string v3, "video/av01"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v3, "video/x-vnd.on2.vp9"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    :cond_0
    iget-object v2, v1, Lm0/t;->r:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lm0/t;->a()Lm0/s;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v4, v1, Lm0/s;->q:Ljava/util/List;

    .line 43
    .line 44
    new-instance v2, Lm0/t;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lm0/t;-><init>(Lm0/s;)V

    .line 47
    .line 48
    .line 49
    move-object v8, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v8, v1

    .line 52
    :goto_0
    iget-object p1, p1, LB0/Z;->a:LG0/l;

    .line 53
    .line 54
    iget-object v1, p0, LK0/r;->U:LG0/l;

    .line 55
    .line 56
    invoke-static {v1, p1}, LA0/O;->M(LG0/l;LG0/l;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, LK0/r;->U:LG0/l;

    .line 60
    .line 61
    iput-object v8, p0, LK0/r;->R:Lm0/t;

    .line 62
    .line 63
    iget-boolean p1, p0, LK0/r;->w0:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iput-boolean v0, p0, LK0/r;->y0:Z

    .line 68
    .line 69
    return-object v4

    .line 70
    :cond_2
    iget-object p1, p0, LK0/r;->a0:LK0/l;

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    iput-object v4, p0, LK0/r;->f0:Ljava/util/ArrayDeque;

    .line 75
    .line 76
    invoke-virtual {p0}, LK0/r;->s()V

    .line 77
    .line 78
    .line 79
    return-object v4

    .line 80
    :cond_3
    iget-object v1, p0, LK0/r;->h0:LK0/o;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v7, p0, LK0/r;->b0:Lm0/t;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, LK0/r;->T:LG0/l;

    .line 91
    .line 92
    iget-object v3, p0, LK0/r;->U:LG0/l;

    .line 93
    .line 94
    const/4 v4, 0x3

    .line 95
    const/16 v5, 0x17

    .line 96
    .line 97
    const/4 v6, 0x2

    .line 98
    if-ne v2, v3, :cond_4

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_4
    if-eqz v3, :cond_20

    .line 103
    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_5
    invoke-interface {v3}, LG0/l;->f()Landroidx/media3/decoder/CryptoConfig;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    if-nez v9, :cond_6

    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_6
    invoke-interface {v2}, LG0/l;->f()Landroidx/media3/decoder/CryptoConfig;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    if-eqz v10, :cond_20

    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_7

    .line 135
    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_7
    instance-of v9, v9, LG0/x;

    .line 139
    .line 140
    if-nez v9, :cond_8

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    invoke-interface {v3}, LG0/l;->a()Ljava/util/UUID;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-interface {v2}, LG0/l;->a()Ljava/util/UUID;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v9, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_9

    .line 156
    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :cond_9
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .line 161
    if-ge v9, v5, :cond_a

    .line 162
    .line 163
    goto/16 :goto_9

    .line 164
    .line 165
    :cond_a
    sget-object v9, Lm0/g;->e:Ljava/util/UUID;

    .line 166
    .line 167
    invoke-interface {v2}, LG0/l;->a()Ljava/util/UUID;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v9, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_20

    .line 176
    .line 177
    invoke-interface {v3}, LG0/l;->a()Ljava/util/UUID;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v9, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_b

    .line 186
    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_b
    iget-boolean v2, v1, LK0/o;->f:Z

    .line 190
    .line 191
    if-nez v2, :cond_d

    .line 192
    .line 193
    invoke-interface {v3}, LG0/l;->getState()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eq v2, v6, :cond_20

    .line 198
    .line 199
    invoke-interface {v3}, LG0/l;->getState()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eq v2, v4, :cond_c

    .line 204
    .line 205
    invoke-interface {v3}, LG0/l;->getState()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const/4 v9, 0x4

    .line 210
    if-ne v2, v9, :cond_d

    .line 211
    .line 212
    :cond_c
    iget-object v2, v8, Lm0/t;->o:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-interface {v3, v2}, LG0/l;->e(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_d

    .line 222
    .line 223
    goto/16 :goto_9

    .line 224
    .line 225
    :cond_d
    :goto_1
    iget-object v2, p0, LK0/r;->U:LG0/l;

    .line 226
    .line 227
    iget-object v3, p0, LK0/r;->T:LG0/l;

    .line 228
    .line 229
    const/4 v9, 0x0

    .line 230
    if-eq v2, v3, :cond_e

    .line 231
    .line 232
    const/4 v2, 0x1

    .line 233
    goto :goto_2

    .line 234
    :cond_e
    const/4 v2, 0x0

    .line 235
    :goto_2
    if-eqz v2, :cond_10

    .line 236
    .line 237
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 238
    .line 239
    if-lt v3, v5, :cond_f

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_f
    const/4 v3, 0x0

    .line 243
    goto :goto_4

    .line 244
    :cond_10
    :goto_3
    const/4 v3, 0x1

    .line 245
    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v1, v7, v8}, LK0/r;->b(LK0/o;Lm0/t;Lm0/t;)LB0/j;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    iget v5, v3, LB0/j;->d:I

    .line 253
    .line 254
    if-eqz v5, :cond_1b

    .line 255
    .line 256
    const/16 v10, 0x10

    .line 257
    .line 258
    if-eq v5, v0, :cond_17

    .line 259
    .line 260
    if-eq v5, v6, :cond_13

    .line 261
    .line 262
    if-ne v5, v4, :cond_12

    .line 263
    .line 264
    invoke-virtual {p0, v8}, LK0/r;->V(Lm0/t;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_11

    .line 269
    .line 270
    goto/16 :goto_8

    .line 271
    .line 272
    :cond_11
    iput-object v8, p0, LK0/r;->b0:Lm0/t;

    .line 273
    .line 274
    if-eqz v2, :cond_1d

    .line 275
    .line 276
    invoke-virtual {p0}, LK0/r;->d()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-nez v0, :cond_1d

    .line 281
    .line 282
    :goto_5
    const/4 v10, 0x2

    .line 283
    goto/16 :goto_8

    .line 284
    .line 285
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_13
    invoke-virtual {p0, v8}, LK0/r;->V(Lm0/t;)Z

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    if-nez v11, :cond_14

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_14
    iput-boolean v0, p0, LK0/r;->z0:Z

    .line 299
    .line 300
    iput v0, p0, LK0/r;->A0:I

    .line 301
    .line 302
    iget v10, p0, LK0/r;->i0:I

    .line 303
    .line 304
    if-eq v10, v6, :cond_16

    .line 305
    .line 306
    if-ne v10, v0, :cond_15

    .line 307
    .line 308
    iget v10, v8, Lm0/t;->v:I

    .line 309
    .line 310
    iget v11, v7, Lm0/t;->v:I

    .line 311
    .line 312
    if-ne v10, v11, :cond_15

    .line 313
    .line 314
    iget v10, v8, Lm0/t;->w:I

    .line 315
    .line 316
    iget v11, v7, Lm0/t;->w:I

    .line 317
    .line 318
    if-ne v10, v11, :cond_15

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_15
    const/4 v0, 0x0

    .line 322
    :cond_16
    :goto_6
    iput-boolean v0, p0, LK0/r;->m0:Z

    .line 323
    .line 324
    iput-object v8, p0, LK0/r;->b0:Lm0/t;

    .line 325
    .line 326
    if-eqz v2, :cond_1d

    .line 327
    .line 328
    invoke-virtual {p0}, LK0/r;->d()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_1d

    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_17
    invoke-virtual {p0, v8}, LK0/r;->V(Lm0/t;)Z

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    if-nez v11, :cond_18

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_18
    iput-object v8, p0, LK0/r;->b0:Lm0/t;

    .line 343
    .line 344
    if-eqz v2, :cond_19

    .line 345
    .line 346
    invoke-virtual {p0}, LK0/r;->d()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_1d

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_19
    iget-boolean v2, p0, LK0/r;->D0:Z

    .line 354
    .line 355
    if-eqz v2, :cond_1d

    .line 356
    .line 357
    iput v0, p0, LK0/r;->B0:I

    .line 358
    .line 359
    iget-boolean v2, p0, LK0/r;->k0:Z

    .line 360
    .line 361
    if-eqz v2, :cond_1a

    .line 362
    .line 363
    iput v4, p0, LK0/r;->C0:I

    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_1a
    iput v0, p0, LK0/r;->C0:I

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_1b
    iget-boolean v2, p0, LK0/r;->D0:Z

    .line 370
    .line 371
    if-eqz v2, :cond_1c

    .line 372
    .line 373
    iput v0, p0, LK0/r;->B0:I

    .line 374
    .line 375
    iput v4, p0, LK0/r;->C0:I

    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_1c
    invoke-virtual {p0}, LK0/r;->H()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0}, LK0/r;->s()V

    .line 382
    .line 383
    .line 384
    :cond_1d
    :goto_7
    const/4 v10, 0x0

    .line 385
    :goto_8
    if-eqz v5, :cond_1f

    .line 386
    .line 387
    iget-object v0, p0, LK0/r;->a0:LK0/l;

    .line 388
    .line 389
    if-ne v0, p1, :cond_1e

    .line 390
    .line 391
    iget p1, p0, LK0/r;->C0:I

    .line 392
    .line 393
    if-ne p1, v4, :cond_1f

    .line 394
    .line 395
    :cond_1e
    new-instance p1, LB0/j;

    .line 396
    .line 397
    iget-object v6, v1, LK0/o;->a:Ljava/lang/String;

    .line 398
    .line 399
    const/4 v9, 0x0

    .line 400
    move-object v5, p1

    .line 401
    invoke-direct/range {v5 .. v10}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 402
    .line 403
    .line 404
    return-object p1

    .line 405
    :cond_1f
    return-object v3

    .line 406
    :cond_20
    :goto_9
    iget-boolean p1, p0, LK0/r;->D0:Z

    .line 407
    .line 408
    if-eqz p1, :cond_21

    .line 409
    .line 410
    iput v0, p0, LK0/r;->B0:I

    .line 411
    .line 412
    iput v4, p0, LK0/r;->C0:I

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_21
    invoke-virtual {p0}, LK0/r;->H()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, LK0/r;->s()V

    .line 419
    .line 420
    .line 421
    :goto_a
    new-instance p1, LB0/j;

    .line 422
    .line 423
    const/16 v10, 0x80

    .line 424
    .line 425
    iget-object v6, v1, LK0/o;->a:Ljava/lang/String;

    .line 426
    .line 427
    const/4 v9, 0x0

    .line 428
    move-object v5, p1

    .line 429
    invoke-direct/range {v5 .. v10}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 430
    .line 431
    .line 432
    return-object p1

    .line 433
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 434
    .line 435
    const-string v0, "Sample MIME type is null."

    .line 436
    .line 437
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const/16 v0, 0xfa5

    .line 441
    .line 442
    invoke-virtual {p0, p1, v1, v0}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    throw p1
.end method

.method public abstract z(Lm0/t;Landroid/media/MediaFormat;)V
.end method
