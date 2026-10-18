.class public abstract Lcom/google/android/gms/internal/ads/VM;
.super Lcom/google/android/gms/internal/ads/aK;
.source "SourceFile"


# static fields
.field public static final w0:[B


# instance fields
.field public final A:Lcom/google/android/gms/internal/ads/pM;

.field public B:Lcom/google/android/gms/internal/ads/p0;

.field public C:Lcom/google/android/gms/internal/ads/p0;

.field public D:Lcom/google/android/gms/internal/ads/yK;

.field public E:F

.field public F:F

.field public G:Lcom/google/android/gms/internal/ads/MM;

.field public H:Lcom/google/android/gms/internal/ads/p0;

.field public I:Landroid/media/MediaFormat;

.field public J:Z

.field public K:F

.field public L:Ljava/util/ArrayDeque;

.field public M:Lcom/google/android/gms/internal/ads/SM;

.field public N:Lcom/google/android/gms/internal/ads/PM;

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:J

.field public W:I

.field public X:I

.field public Y:Ljava/nio/ByteBuffer;

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:J

.field public m0:J

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Lcom/google/android/gms/internal/ads/cK;

.field public final r:Lcom/google/android/gms/internal/ads/LM;

.field public r0:Lcom/google/android/gms/internal/ads/UM;

.field public final s:Lcom/google/android/gms/internal/ads/WM;

.field public s0:J

.field public final t:F

.field public t0:Z

.field public final u:Lcom/google/android/gms/internal/ads/VJ;

.field public u0:Lcom/google/android/gms/internal/ads/yM;

.field public final v:Lcom/google/android/gms/internal/ads/VJ;

.field public v0:Lcom/google/android/gms/internal/ads/yM;

.field public final w:Lcom/google/android/gms/internal/ads/VJ;

.field public final x:Lcom/google/android/gms/internal/ads/HM;

.field public final y:Landroid/media/MediaCodec$BufferInfo;

.field public final z:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/VM;->w0:[B

    return-void

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

.method public constructor <init>(ILcom/google/android/gms/internal/ads/I7;F)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/WM;->r:Lcom/google/android/gms/internal/ads/y1;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aK;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->r:Lcom/google/android/gms/internal/ads/LM;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->s:Lcom/google/android/gms/internal/ads/WM;

    .line 9
    .line 10
    iput p3, p0, Lcom/google/android/gms/internal/ads/VM;->t:F

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/VJ;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/VJ;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->u:Lcom/google/android/gms/internal/ads/VJ;

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/VJ;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/VJ;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->v:Lcom/google/android/gms/internal/ads/VJ;

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/VJ;

    .line 28
    .line 29
    const/4 p3, 0x2

    .line 30
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/VJ;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/HM;

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/VJ;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    iput v0, p1, Lcom/google/android/gms/internal/ads/HM;->l:I

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 45
    .line 46
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    .line 55
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->E:F

    .line 56
    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->F:F

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->z:Ljava/util/ArrayDeque;

    .line 65
    .line 66
    sget-object v0, Lcom/google/android/gms/internal/ads/UM;->e:Lcom/google/android/gms/internal/ads/UM;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/VJ;->f(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/google/android/gms/internal/ads/pM;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    iput p2, p1, Lcom/google/android/gms/internal/ads/pM;->c:I

    .line 92
    .line 93
    iput p3, p1, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 94
    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->A:Lcom/google/android/gms/internal/ads/pM;

    .line 96
    .line 97
    const/high16 p1, -0x40800000    # -1.0f

    .line 98
    .line 99
    iput p1, p0, Lcom/google/android/gms/internal/ads/VM;->K:F

    .line 100
    .line 101
    iput p2, p0, Lcom/google/android/gms/internal/ads/VM;->O:I

    .line 102
    .line 103
    iput p2, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 104
    .line 105
    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 107
    .line 108
    iput p1, p0, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 109
    .line 110
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->V:J

    .line 116
    .line 117
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 118
    .line 119
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 120
    .line 121
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->s0:J

    .line 122
    .line 123
    iput p2, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 124
    .line 125
    iput p2, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 126
    .line 127
    new-instance p1, Lcom/google/android/gms/internal/ads/cK;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public A(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/HM;->e()V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VM;->c0:Z

    .line 21
    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->A:Lcom/google/android/gms/internal/ads/pM;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object p3, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    iput p1, p2, Lcom/google/android/gms/internal/ads/pM;->c:I

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    iput p1, p2, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->K()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/UM;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    iget p2, p1, Lcom/google/android/gms/internal/ads/Ks;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit p1

    .line 54
    if-lez p2, :cond_2

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/VM;->p0:Z

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ks;->e()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->z:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p2

    .line 69
    monitor-exit p1

    .line 70
    throw p2
.end method

.method public abstract B(F[Lcom/google/android/gms/internal/ads/p0;)F
.end method

.method public C(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/PM;)Lcom/google/android/gms/internal/ads/OM;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/OM;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/OM;-><init>(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/PM;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final D()V
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const-string v8, "MediaCodecRenderer"

    .line 4
    .line 5
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 6
    .line 7
    if-nez v0, :cond_44

    .line 8
    .line 9
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 10
    .line 11
    if-nez v0, :cond_44

    .line 12
    .line 13
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 14
    .line 15
    if-nez v9, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1f

    .line 18
    .line 19
    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x1

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/VM;->k0(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->W()V

    .line 39
    .line 40
    .line 41
    const-string v0, "audio/mp4a-latm"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string v0, "audio/mpeg"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "audio/opus"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iput v11, v2, Lcom/google/android/gms/internal/ads/HM;->l:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/16 v0, 0x20

    .line 71
    .line 72
    iput v0, v2, Lcom/google/android/gms/internal/ads/HM;->l:I

    .line 73
    .line 74
    :goto_1
    iput-boolean v11, v7, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 78
    .line 79
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    sget v2, Lcom/google/android/gms/internal/ads/zM;->a:I

    .line 84
    .line 85
    :cond_4
    if-eqz v0, :cond_5

    .line 86
    .line 87
    :try_start_0
    invoke-static {v1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    move-object/from16 v20, v9

    .line 93
    .line 94
    goto/16 :goto_1e

    .line 95
    .line 96
    :cond_5
    :goto_2
    iget-object v12, v7, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    :try_start_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    const/4 v13, 0x0

    .line 104
    if-nez v0, :cond_7

    .line 105
    .line 106
    :try_start_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->s:Lcom/google/android/gms/internal/ads/WM;

    .line 107
    .line 108
    invoke-virtual {v7, v0, v12}, Lcom/google/android/gms/internal/ads/VM;->Z(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    new-instance v1, Ljava/util/ArrayDeque;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_6

    .line 127
    .line 128
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;

    .line 129
    .line 130
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/google/android/gms/internal/ads/PM;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    :goto_3
    iput-object v13, v7, Lcom/google/android/gms/internal/ads/VM;->M:Lcom/google/android/gms/internal/ads/SM;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/ZM; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :goto_4
    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/ads/SM;

    .line 146
    .line 147
    const v2, -0xc34e

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v2, v12, v0}, Lcom/google/android/gms/internal/ads/SM;-><init>(ILcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/ZM;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_7
    :goto_5
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_43

    .line 161
    .line 162
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    .line 164
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    :goto_6
    :try_start_4
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 168
    .line 169
    if-nez v0, :cond_42

    .line 170
    .line 171
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v15, v0

    .line 176
    check-cast v15, Lcom/google/android/gms/internal/ads/PM;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    .line 178
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object v5, v15, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 182
    .line 183
    :try_start_5
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/VM;->L(Lcom/google/android/gms/internal/ads/PM;)Z

    .line 184
    .line 185
    .line 186
    move-result v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_5 .. :try_end_5} :catch_0

    .line 187
    if-eqz v0, :cond_44

    .line 188
    .line 189
    :try_start_6
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p0;->c:Ljava/util/List;

    .line 195
    .line 196
    :try_start_7
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 197
    .line 198
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 199
    .line 200
    const/16 v4, 0x17

    .line 201
    .line 202
    if-ge v3, v4, :cond_8

    .line 203
    .line 204
    const/high16 v10, -0x40800000    # -1.0f

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_8
    iget v10, v7, Lcom/google/android/gms/internal/ads/VM;->F:F

    .line 208
    .line 209
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/aK;->j:[Lcom/google/android/gms/internal/ads/p0;

    .line 210
    .line 211
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v10, v13}, Lcom/google/android/gms/internal/ads/VM;->B(F[Lcom/google/android/gms/internal/ads/p0;)F

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    :goto_7
    iget v13, v7, Lcom/google/android/gms/internal/ads/VM;->t:F

    .line 219
    .line 220
    cmpg-float v13, v10, v13

    .line 221
    .line 222
    if-gtz v13, :cond_9

    .line 223
    .line 224
    const/high16 v10, -0x40800000    # -1.0f

    .line 225
    .line 226
    :cond_9
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/VM;->G(Lcom/google/android/gms/internal/ads/p0;)V

    .line 227
    .line 228
    .line 229
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 230
    .line 231
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 235
    .line 236
    .line 237
    move-result-wide v16

    .line 238
    invoke-virtual {v7, v15, v0, v10}, Lcom/google/android/gms/internal/ads/VM;->Y(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;F)Lcom/google/android/gms/internal/ads/KM;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    const/16 v11, 0x1f

    .line 243
    .line 244
    if-lt v3, v11, :cond_a

    .line 245
    .line 246
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/aK;->f:Lcom/google/android/gms/internal/ads/zL;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/RM;->a(Lcom/google/android/gms/internal/ads/KM;Lcom/google/android/gms/internal/ads/zL;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 252
    .line 253
    .line 254
    goto :goto_a

    .line 255
    :catch_2
    move-exception v0

    .line 256
    move-object/from16 v20, v9

    .line 257
    .line 258
    :goto_8
    move-object/from16 v22, v12

    .line 259
    .line 260
    const/4 v9, 0x1

    .line 261
    :goto_9
    move-object v12, v5

    .line 262
    goto/16 :goto_1c

    .line 263
    .line 264
    :cond_a
    :goto_a
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v11, "createCodec:"

    .line 270
    .line 271
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/VM;->r:Lcom/google/android/gms/internal/ads/LM;

    .line 285
    .line 286
    invoke-interface {v3, v13}, Lcom/google/android/gms/internal/ads/LM;->a(Lcom/google/android/gms/internal/ads/KM;)Lcom/google/android/gms/internal/ads/MM;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    iput-object v3, v7, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 291
    .line 292
    new-instance v11, Lcom/google/android/gms/internal/ads/TM;

    .line 293
    .line 294
    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/ads/TM;-><init>(Lcom/google/android/gms/internal/ads/VM;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v3, v11}, Lcom/google/android/gms/internal/ads/MM;->c(Lcom/google/android/gms/internal/ads/TM;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 298
    .line 299
    .line 300
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 301
    .line 302
    .line 303
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 309
    .line 310
    .line 311
    move-result-wide v18

    .line 312
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/PM;->c(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 313
    .line 314
    .line 315
    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 316
    if-nez v3, :cond_32

    .line 317
    .line 318
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v11, "id="

    .line 324
    .line 325
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/p0;->a:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v11, ", mimeType="

    .line 334
    .line 335
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 341
    .line 342
    .line 343
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/p0;->l:Ljava/lang/String;

    .line 344
    .line 345
    if-eqz v11, :cond_b

    .line 346
    .line 347
    :try_start_b
    const-string v13, ", container="

    .line 348
    .line 349
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 353
    .line 354
    .line 355
    :cond_b
    const/4 v11, -0x1

    .line 356
    iget v13, v0, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 357
    .line 358
    if-eq v13, v11, :cond_c

    .line 359
    .line 360
    :try_start_c
    const-string v4, ", bitrate="

    .line 361
    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 366
    .line 367
    .line 368
    :cond_c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 369
    .line 370
    if-eqz v4, :cond_d

    .line 371
    .line 372
    :try_start_d
    const-string v13, ", codecs="

    .line 373
    .line 374
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 378
    .line 379
    .line 380
    :cond_d
    const-string v4, ","

    .line 381
    .line 382
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 383
    .line 384
    if-eqz v13, :cond_14

    .line 385
    .line 386
    :try_start_e
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 387
    .line 388
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 389
    .line 390
    .line 391
    move-object/from16 v20, v9

    .line 392
    .line 393
    const/4 v11, 0x0

    .line 394
    :goto_b
    :try_start_f
    iget v9, v13, Lcom/google/android/gms/internal/ads/mO;->J:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 395
    .line 396
    if-ge v11, v9, :cond_13

    .line 397
    .line 398
    :try_start_10
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/mO;->G:[Lcom/google/android/gms/internal/ads/cO;

    .line 399
    .line 400
    aget-object v9, v9, v11
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 401
    .line 402
    :try_start_11
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/cO;->H:Ljava/util/UUID;

    .line 403
    .line 404
    move-object/from16 v21, v13

    .line 405
    .line 406
    sget-object v13, Lcom/google/android/gms/internal/ads/wK;->b:Ljava/util/UUID;

    .line 407
    .line 408
    invoke-virtual {v9, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v13
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 412
    if-eqz v13, :cond_e

    .line 413
    .line 414
    :try_start_12
    const-string v9, "cenc"

    .line 415
    .line 416
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 417
    .line 418
    .line 419
    :goto_c
    move-object/from16 v22, v12

    .line 420
    .line 421
    goto :goto_d

    .line 422
    :catch_3
    move-exception v0

    .line 423
    goto/16 :goto_8

    .line 424
    .line 425
    :cond_e
    :try_start_13
    sget-object v13, Lcom/google/android/gms/internal/ads/wK;->c:Ljava/util/UUID;

    .line 426
    .line 427
    invoke-virtual {v9, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v13
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    .line 431
    if-eqz v13, :cond_f

    .line 432
    .line 433
    :try_start_14
    const-string v9, "clearkey"

    .line 434
    .line 435
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 436
    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_f
    :try_start_15
    sget-object v13, Lcom/google/android/gms/internal/ads/wK;->e:Ljava/util/UUID;

    .line 440
    .line 441
    invoke-virtual {v9, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v13
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 445
    if-eqz v13, :cond_10

    .line 446
    .line 447
    :try_start_16
    const-string v9, "playready"

    .line 448
    .line 449
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    .line 450
    .line 451
    .line 452
    goto :goto_c

    .line 453
    :cond_10
    :try_start_17
    sget-object v13, Lcom/google/android/gms/internal/ads/wK;->d:Ljava/util/UUID;

    .line 454
    .line 455
    invoke-virtual {v9, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v13
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    .line 459
    if-eqz v13, :cond_11

    .line 460
    .line 461
    :try_start_18
    const-string v9, "widevine"

    .line 462
    .line 463
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_11
    :try_start_19
    sget-object v13, Lcom/google/android/gms/internal/ads/wK;->a:Ljava/util/UUID;

    .line 468
    .line 469
    invoke-virtual {v9, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v13
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    .line 473
    if-eqz v13, :cond_12

    .line 474
    .line 475
    :try_start_1a
    const-string v9, "universal"

    .line 476
    .line 477
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_12
    :try_start_1b
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    new-instance v13, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    .line 488
    .line 489
    .line 490
    move-object/from16 v22, v12

    .line 491
    .line 492
    :try_start_1c
    const-string v12, "unknown ("

    .line 493
    .line 494
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v9, ")"

    .line 501
    .line 502
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v9

    .line 509
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 513
    .line 514
    move-object/from16 v13, v21

    .line 515
    .line 516
    move-object/from16 v12, v22

    .line 517
    .line 518
    goto :goto_b

    .line 519
    :catch_4
    move-exception v0

    .line 520
    :goto_e
    move-object v12, v5

    .line 521
    const/4 v9, 0x1

    .line 522
    goto/16 :goto_1c

    .line 523
    .line 524
    :catch_5
    move-exception v0

    .line 525
    :goto_f
    move-object/from16 v22, v12

    .line 526
    .line 527
    goto :goto_e

    .line 528
    :catch_6
    move-exception v0

    .line 529
    goto :goto_f

    .line 530
    :cond_13
    move-object/from16 v22, v12

    .line 531
    .line 532
    const-string v9, ", drm=["

    .line 533
    .line 534
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-static {v3, v6, v4}, La7/b;->t(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    const/16 v6, 0x5d

    .line 545
    .line 546
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    .line 547
    .line 548
    .line 549
    goto :goto_10

    .line 550
    :catch_7
    move-exception v0

    .line 551
    move-object/from16 v20, v9

    .line 552
    .line 553
    goto :goto_f

    .line 554
    :cond_14
    move-object/from16 v20, v9

    .line 555
    .line 556
    move-object/from16 v22, v12

    .line 557
    .line 558
    :goto_10
    iget v6, v0, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 559
    .line 560
    const/4 v9, -0x1

    .line 561
    if-eq v6, v9, :cond_15

    .line 562
    .line 563
    iget v11, v0, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 564
    .line 565
    if-eq v11, v9, :cond_15

    .line 566
    .line 567
    :try_start_1d
    const-string v9, ", res="

    .line 568
    .line 569
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v6, "x"

    .line 576
    .line 577
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4

    .line 581
    .line 582
    .line 583
    :cond_15
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 584
    .line 585
    if-eqz v6, :cond_17

    .line 586
    .line 587
    :try_start_1e
    iget v9, v6, Lcom/google/android/gms/internal/ads/rL;->e:I

    .line 588
    .line 589
    const/4 v11, -0x1

    .line 590
    if-eq v9, v11, :cond_16

    .line 591
    .line 592
    iget v9, v6, Lcom/google/android/gms/internal/ads/rL;->f:I

    .line 593
    .line 594
    if-eq v9, v11, :cond_16

    .line 595
    .line 596
    goto :goto_11

    .line 597
    :cond_16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/rL;->d()Z

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-eqz v9, :cond_17

    .line 602
    .line 603
    :goto_11
    const-string v9, ", color="

    .line 604
    .line 605
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/rL;->c()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4

    .line 613
    .line 614
    .line 615
    :cond_17
    iget v6, v0, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 616
    .line 617
    const/high16 v9, -0x40800000    # -1.0f

    .line 618
    .line 619
    cmpl-float v9, v6, v9

    .line 620
    .line 621
    if-eqz v9, :cond_18

    .line 622
    .line 623
    :try_start_1f
    const-string v9, ", fps="

    .line 624
    .line 625
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4

    .line 629
    .line 630
    .line 631
    :cond_18
    iget v6, v0, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 632
    .line 633
    const/4 v9, -0x1

    .line 634
    if-eq v6, v9, :cond_19

    .line 635
    .line 636
    :try_start_20
    const-string v9, ", channels="

    .line 637
    .line 638
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4

    .line 642
    .line 643
    .line 644
    :cond_19
    iget v6, v0, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 645
    .line 646
    const/4 v9, -0x1

    .line 647
    if-eq v6, v9, :cond_1a

    .line 648
    .line 649
    :try_start_21
    const-string v9, ", sample_rate="

    .line 650
    .line 651
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_4

    .line 655
    .line 656
    .line 657
    :cond_1a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 658
    .line 659
    if-eqz v6, :cond_1b

    .line 660
    .line 661
    :try_start_22
    const-string v9, ", language="

    .line 662
    .line 663
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 670
    .line 671
    .line 672
    move-result v6
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_4

    .line 673
    const-string v9, "]"

    .line 674
    .line 675
    if-nez v6, :cond_1c

    .line 676
    .line 677
    :try_start_23
    const-string v6, ", labels=["

    .line 678
    .line 679
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-static {v3, v1, v4}, La7/b;->t(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4

    .line 690
    .line 691
    .line 692
    :cond_1c
    iget v1, v0, Lcom/google/android/gms/internal/ads/p0;->e:I

    .line 693
    .line 694
    if-eqz v1, :cond_1f

    .line 695
    .line 696
    :try_start_24
    const-string v6, ", selectionFlags=["

    .line 697
    .line 698
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    new-instance v6, Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .line 705
    .line 706
    and-int/lit8 v11, v1, 0x1

    .line 707
    .line 708
    if-eqz v11, :cond_1d

    .line 709
    .line 710
    const-string v11, "default"

    .line 711
    .line 712
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    :cond_1d
    and-int/lit8 v1, v1, 0x2

    .line 716
    .line 717
    if-eqz v1, :cond_1e

    .line 718
    .line 719
    const-string v1, "forced"

    .line 720
    .line 721
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    :cond_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    invoke-static {v3, v1, v4}, La7/b;->t(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_4

    .line 732
    .line 733
    .line 734
    :cond_1f
    const v1, 0x8000

    .line 735
    .line 736
    .line 737
    iget v6, v0, Lcom/google/android/gms/internal/ads/p0;->f:I

    .line 738
    .line 739
    if-eqz v6, :cond_30

    .line 740
    .line 741
    :try_start_25
    const-string v11, ", roleFlags=["

    .line 742
    .line 743
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    new-instance v11, Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .line 750
    .line 751
    and-int/lit8 v12, v6, 0x1

    .line 752
    .line 753
    if-eqz v12, :cond_20

    .line 754
    .line 755
    const-string v12, "main"

    .line 756
    .line 757
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    :cond_20
    and-int/lit8 v12, v6, 0x2

    .line 761
    .line 762
    if-eqz v12, :cond_21

    .line 763
    .line 764
    const-string v12, "alt"

    .line 765
    .line 766
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    :cond_21
    and-int/lit8 v12, v6, 0x4

    .line 770
    .line 771
    if-eqz v12, :cond_22

    .line 772
    .line 773
    const-string v12, "supplementary"

    .line 774
    .line 775
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    :cond_22
    and-int/lit8 v12, v6, 0x8

    .line 779
    .line 780
    if-eqz v12, :cond_23

    .line 781
    .line 782
    const-string v12, "commentary"

    .line 783
    .line 784
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    :cond_23
    and-int/lit8 v12, v6, 0x10

    .line 788
    .line 789
    if-eqz v12, :cond_24

    .line 790
    .line 791
    const-string v12, "dub"

    .line 792
    .line 793
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    :cond_24
    and-int/lit8 v12, v6, 0x20

    .line 797
    .line 798
    if-eqz v12, :cond_25

    .line 799
    .line 800
    const-string v12, "emergency"

    .line 801
    .line 802
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    :cond_25
    and-int/lit8 v12, v6, 0x40

    .line 806
    .line 807
    if-eqz v12, :cond_26

    .line 808
    .line 809
    const-string v12, "caption"

    .line 810
    .line 811
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    :cond_26
    and-int/lit16 v12, v6, 0x80

    .line 815
    .line 816
    if-eqz v12, :cond_27

    .line 817
    .line 818
    const-string v12, "subtitle"

    .line 819
    .line 820
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    :cond_27
    and-int/lit16 v12, v6, 0x100

    .line 824
    .line 825
    if-eqz v12, :cond_28

    .line 826
    .line 827
    const-string v12, "sign"

    .line 828
    .line 829
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    :cond_28
    and-int/lit16 v12, v6, 0x200

    .line 833
    .line 834
    if-eqz v12, :cond_29

    .line 835
    .line 836
    const-string v12, "describes-video"

    .line 837
    .line 838
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    :cond_29
    and-int/lit16 v12, v6, 0x400

    .line 842
    .line 843
    if-eqz v12, :cond_2a

    .line 844
    .line 845
    const-string v12, "describes-music"

    .line 846
    .line 847
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    :cond_2a
    and-int/lit16 v12, v6, 0x800

    .line 851
    .line 852
    if-eqz v12, :cond_2b

    .line 853
    .line 854
    const-string v12, "enhanced-intelligibility"

    .line 855
    .line 856
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    :cond_2b
    and-int/lit16 v12, v6, 0x1000

    .line 860
    .line 861
    if-eqz v12, :cond_2c

    .line 862
    .line 863
    const-string v12, "transcribes-dialog"

    .line 864
    .line 865
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    :cond_2c
    and-int/lit16 v12, v6, 0x2000

    .line 869
    .line 870
    if-eqz v12, :cond_2d

    .line 871
    .line 872
    const-string v12, "easy-read"

    .line 873
    .line 874
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    :cond_2d
    and-int/lit16 v12, v6, 0x4000

    .line 878
    .line 879
    if-eqz v12, :cond_2e

    .line 880
    .line 881
    const-string v12, "trick-play"

    .line 882
    .line 883
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    :cond_2e
    and-int v12, v6, v1

    .line 887
    .line 888
    if-eqz v12, :cond_2f

    .line 889
    .line 890
    const-string v12, "auxiliary"

    .line 891
    .line 892
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    :cond_2f
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 896
    .line 897
    .line 898
    move-result-object v11

    .line 899
    invoke-static {v3, v11, v4}, La7/b;->t(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    :cond_30
    and-int/2addr v1, v6

    .line 906
    if-eqz v1, :cond_31

    .line 907
    .line 908
    const-string v1, ", auxiliaryTrackType="

    .line 909
    .line 910
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    const-string v1, "undefined"

    .line 914
    .line 915
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 923
    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    .line 925
    .line 926
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .line 928
    .line 929
    const-string v4, "Format exceeds selected codec\'s capabilities ["

    .line 930
    .line 931
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    const-string v1, ", "

    .line 938
    .line 939
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    goto :goto_12

    .line 956
    :cond_32
    move-object/from16 v20, v9

    .line 957
    .line 958
    move-object/from16 v22, v12

    .line 959
    .line 960
    :goto_12
    iput-object v15, v7, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;

    .line 961
    .line 962
    iput v10, v7, Lcom/google/android/gms/internal/ads/VM;->K:F

    .line 963
    .line 964
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 965
    .line 966
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 967
    .line 968
    const/16 v1, 0x19

    .line 969
    .line 970
    const/4 v3, 0x2

    .line 971
    if-gt v0, v1, :cond_34

    .line 972
    .line 973
    const-string v4, "OMX.Exynos.avc.dec.secure"

    .line 974
    .line 975
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v4

    .line 979
    if-eqz v4, :cond_34

    .line 980
    .line 981
    sget-object v4, Lcom/google/android/gms/internal/ads/Et;->d:Ljava/lang/String;

    .line 982
    .line 983
    const-string v6, "SM-T585"

    .line 984
    .line 985
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 986
    .line 987
    .line 988
    move-result v6

    .line 989
    if-nez v6, :cond_33

    .line 990
    .line 991
    const-string v6, "SM-A510"

    .line 992
    .line 993
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 994
    .line 995
    .line 996
    move-result v6

    .line 997
    if-nez v6, :cond_33

    .line 998
    .line 999
    const-string v6, "SM-A520"

    .line 1000
    .line 1001
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v6

    .line 1005
    if-nez v6, :cond_33

    .line 1006
    .line 1007
    const-string v6, "SM-J700"

    .line 1008
    .line 1009
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v4

    .line 1013
    if-eqz v4, :cond_34

    .line 1014
    .line 1015
    :cond_33
    const/4 v4, 0x2

    .line 1016
    goto :goto_14

    .line 1017
    :cond_34
    const/16 v4, 0x18

    .line 1018
    .line 1019
    if-ge v0, v4, :cond_35

    .line 1020
    .line 1021
    const-string v4, "OMX.Nvidia.h264.decode"

    .line 1022
    .line 1023
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    if-nez v4, :cond_36

    .line 1028
    .line 1029
    const-string v4, "OMX.Nvidia.h264.decode.secure"

    .line 1030
    .line 1031
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v4

    .line 1035
    if-eqz v4, :cond_35

    .line 1036
    .line 1037
    goto :goto_13

    .line 1038
    :cond_35
    const/4 v4, 0x0

    .line 1039
    goto :goto_14

    .line 1040
    :cond_36
    :goto_13
    const-string v4, "flounder"

    .line 1041
    .line 1042
    sget-object v6, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 1043
    .line 1044
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v4

    .line 1048
    if-nez v4, :cond_37

    .line 1049
    .line 1050
    const-string v4, "flounder_lte"

    .line 1051
    .line 1052
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v4

    .line 1056
    if-nez v4, :cond_37

    .line 1057
    .line 1058
    const-string v4, "grouper"

    .line 1059
    .line 1060
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v4

    .line 1064
    if-nez v4, :cond_37

    .line 1065
    .line 1066
    const-string v4, "tilapia"

    .line 1067
    .line 1068
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v4

    .line 1072
    if-eqz v4, :cond_35

    .line 1073
    .line 1074
    :cond_37
    const/4 v4, 0x1

    .line 1075
    :goto_14
    iput v4, v7, Lcom/google/android/gms/internal/ads/VM;->O:I

    .line 1076
    .line 1077
    const/16 v4, 0x1d

    .line 1078
    .line 1079
    if-ne v0, v4, :cond_38

    .line 1080
    .line 1081
    const-string v6, "c2.android.aac.decoder"

    .line 1082
    .line 1083
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v6

    .line 1087
    if-eqz v6, :cond_38

    .line 1088
    .line 1089
    const/4 v6, 0x1

    .line 1090
    goto :goto_15

    .line 1091
    :cond_38
    const/4 v6, 0x0

    .line 1092
    :goto_15
    iput-boolean v6, v7, Lcom/google/android/gms/internal/ads/VM;->P:Z

    .line 1093
    .line 1094
    const/16 v6, 0x17

    .line 1095
    .line 1096
    if-gt v0, v6, :cond_39

    .line 1097
    .line 1098
    const-string v6, "OMX.google.vorbis.decoder"

    .line 1099
    .line 1100
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v6

    .line 1104
    if-eqz v6, :cond_39

    .line 1105
    .line 1106
    const/4 v6, 0x1

    .line 1107
    goto :goto_16

    .line 1108
    :cond_39
    const/4 v6, 0x0

    .line 1109
    :goto_16
    iput-boolean v6, v7, Lcom/google/android/gms/internal/ads/VM;->Q:Z

    .line 1110
    .line 1111
    const/16 v6, 0x15

    .line 1112
    .line 1113
    if-ne v0, v6, :cond_3a

    .line 1114
    .line 1115
    const-string v6, "OMX.google.aac.decoder"

    .line 1116
    .line 1117
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v6

    .line 1121
    if-eqz v6, :cond_3a

    .line 1122
    .line 1123
    const/4 v6, 0x1

    .line 1124
    goto :goto_17

    .line 1125
    :cond_3a
    const/4 v6, 0x0

    .line 1126
    :goto_17
    iput-boolean v6, v7, Lcom/google/android/gms/internal/ads/VM;->R:Z

    .line 1127
    .line 1128
    if-gt v0, v1, :cond_3c

    .line 1129
    .line 1130
    const-string v1, "OMX.rk.video_decoder.avc"

    .line 1131
    .line 1132
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v1

    .line 1136
    if-nez v1, :cond_3b

    .line 1137
    .line 1138
    goto :goto_19

    .line 1139
    :cond_3b
    :goto_18
    const/4 v0, 0x1

    .line 1140
    goto :goto_1a

    .line 1141
    :cond_3c
    :goto_19
    if-gt v0, v4, :cond_3d

    .line 1142
    .line 1143
    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    .line 1144
    .line 1145
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v0

    .line 1149
    if-nez v0, :cond_3b

    .line 1150
    .line 1151
    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 1152
    .line 1153
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    if-nez v0, :cond_3b

    .line 1158
    .line 1159
    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    .line 1160
    .line 1161
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v0

    .line 1165
    if-nez v0, :cond_3b

    .line 1166
    .line 1167
    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 1168
    .line 1169
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v0

    .line 1173
    if-nez v0, :cond_3b

    .line 1174
    .line 1175
    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    .line 1176
    .line 1177
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v0

    .line 1181
    if-nez v0, :cond_3b

    .line 1182
    .line 1183
    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 1184
    .line 1185
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    if-nez v0, :cond_3b

    .line 1190
    .line 1191
    :cond_3d
    const-string v0, "Amazon"

    .line 1192
    .line 1193
    sget-object v1, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 1194
    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-eqz v0, :cond_3e

    .line 1200
    .line 1201
    const-string v0, "AFTS"

    .line 1202
    .line 1203
    sget-object v1, Lcom/google/android/gms/internal/ads/Et;->d:Ljava/lang/String;

    .line 1204
    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    if-eqz v0, :cond_3e

    .line 1210
    .line 1211
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/PM;->f:Z

    .line 1212
    .line 1213
    if-eqz v0, :cond_3e

    .line 1214
    .line 1215
    goto :goto_18

    .line 1216
    :cond_3e
    const/4 v0, 0x0

    .line 1217
    :goto_1a
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/VM;->U:Z

    .line 1218
    .line 1219
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4

    .line 1220
    .line 1221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    :try_start_26
    iget v0, v7, Lcom/google/android/gms/internal/ads/aK;->h:I

    .line 1225
    .line 1226
    if-ne v0, v3, :cond_3f

    .line 1227
    .line 1228
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 1229
    .line 1230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    .line 1232
    .line 1233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v0

    .line 1237
    const-wide/16 v3, 0x3e8

    .line 1238
    .line 1239
    add-long/2addr v0, v3

    .line 1240
    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/VM;->V:J

    .line 1241
    .line 1242
    :cond_3f
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 1243
    .line 1244
    iget v1, v0, Lcom/google/android/gms/internal/ads/cK;->a:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_4

    .line 1245
    .line 1246
    const/4 v9, 0x1

    .line 1247
    add-int/2addr v1, v9

    .line 1248
    :try_start_27
    iput v1, v0, Lcom/google/android/gms/internal/ads/cK;->a:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9

    .line 1249
    .line 1250
    sub-long v10, v18, v16

    .line 1251
    .line 1252
    move-object/from16 v1, p0

    .line 1253
    .line 1254
    move-wide/from16 v3, v18

    .line 1255
    .line 1256
    move-object v12, v5

    .line 1257
    move-wide v5, v10

    .line 1258
    :try_start_28
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/VM;->e0(Ljava/lang/String;JJ)V

    .line 1259
    .line 1260
    .line 1261
    move-object/from16 v9, v20

    .line 1262
    .line 1263
    move-object/from16 v12, v22

    .line 1264
    .line 1265
    :goto_1b
    const/4 v10, 0x0

    .line 1266
    const/4 v11, 0x1

    .line 1267
    const/4 v13, 0x0

    .line 1268
    goto/16 :goto_6

    .line 1269
    .line 1270
    :catch_8
    move-exception v0

    .line 1271
    goto :goto_1c

    .line 1272
    :catch_9
    move-exception v0

    .line 1273
    goto/16 :goto_9

    .line 1274
    .line 1275
    :catchall_0
    move-exception v0

    .line 1276
    move-object/from16 v20, v9

    .line 1277
    .line 1278
    move-object/from16 v22, v12

    .line 1279
    .line 1280
    const/4 v9, 0x1

    .line 1281
    move-object v12, v5

    .line 1282
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1283
    .line 1284
    .line 1285
    throw v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_8

    .line 1286
    :goto_1c
    :try_start_29
    const-string v1, "Failed to initialize decoder: "

    .line 1287
    .line 1288
    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v1

    .line 1292
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    new-instance v1, Lcom/google/android/gms/internal/ads/SM;

    .line 1299
    .line 1300
    move-object/from16 v2, v22

    .line 1301
    .line 1302
    invoke-direct {v1, v2, v0, v15}, Lcom/google/android/gms/internal/ads/SM;-><init>(Lcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/PM;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/VM;->d0(Ljava/lang/Exception;)V

    .line 1306
    .line 1307
    .line 1308
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->M:Lcom/google/android/gms/internal/ads/SM;

    .line 1309
    .line 1310
    if-nez v0, :cond_40

    .line 1311
    .line 1312
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/VM;->M:Lcom/google/android/gms/internal/ads/SM;

    .line 1313
    .line 1314
    goto :goto_1d

    .line 1315
    :catch_a
    move-exception v0

    .line 1316
    goto :goto_1e

    .line 1317
    :cond_40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/SM;->a(Lcom/google/android/gms/internal/ads/SM;)Lcom/google/android/gms/internal/ads/SM;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->M:Lcom/google/android/gms/internal/ads/SM;

    .line 1322
    .line 1323
    :goto_1d
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    if-nez v0, :cond_41

    .line 1328
    .line 1329
    move-object v12, v2

    .line 1330
    move-object/from16 v9, v20

    .line 1331
    .line 1332
    goto :goto_1b

    .line 1333
    :cond_41
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/VM;->M:Lcom/google/android/gms/internal/ads/SM;

    .line 1334
    .line 1335
    throw v0

    .line 1336
    :cond_42
    move-object/from16 v20, v9

    .line 1337
    .line 1338
    move-object v1, v13

    .line 1339
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;

    .line 1340
    .line 1341
    return-void

    .line 1342
    :cond_43
    move-object/from16 v20, v9

    .line 1343
    .line 1344
    move-object v2, v12

    .line 1345
    new-instance v0, Lcom/google/android/gms/internal/ads/SM;

    .line 1346
    .line 1347
    const v1, -0xc34f

    .line 1348
    .line 1349
    .line 1350
    const/4 v3, 0x0

    .line 1351
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/SM;-><init>(ILcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/ZM;)V

    .line 1352
    .line 1353
    .line 1354
    throw v0
    :try_end_29
    .catch Lcom/google/android/gms/internal/ads/SM; {:try_start_29 .. :try_end_29} :catch_a

    .line 1355
    :goto_1e
    const/16 v1, 0xfa1

    .line 1356
    .line 1357
    move-object/from16 v2, v20

    .line 1358
    .line 1359
    const/4 v3, 0x0

    .line 1360
    invoke-virtual {v7, v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    throw v0

    .line 1365
    :cond_44
    :goto_1f
    return-void
.end method

.method public E(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/VM;->s0:J

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->z:Ljava/util/ArrayDeque;

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
    check-cast v1, Lcom/google/android/gms/internal/ads/UM;

    .line 16
    .line 17
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/UM;->a:J

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
    check-cast v0, Lcom/google/android/gms/internal/ads/UM;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VM;->N(Lcom/google/android/gms/internal/ads/UM;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->h0()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public F()V
    .locals 0

    .line 1
    return-void
.end method

.method public G(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/MM;->zzm()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 10
    .line 11
    iget v2, v1, Lcom/google/android/gms/internal/ads/cK;->b:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    iput v2, v1, Lcom/google/android/gms/internal/ads/cK;->b:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/VM;->f0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->J()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->J()V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public I()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->v:Lcom/google/android/gms/internal/ads/VJ;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->Y:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->V:J

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->j0:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->S:Z

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->T:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->Z:Z

    .line 30
    .line 31
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->a0:Z

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->s0:J

    .line 38
    .line 39
    iput v2, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 40
    .line 41
    iput v2, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->e0:Z

    .line 44
    .line 45
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 46
    .line 47
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->I()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->I:Landroid/media/MediaFormat;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->J:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->k0:Z

    .line 17
    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 19
    .line 20
    iput v1, p0, Lcom/google/android/gms/internal/ads/VM;->K:F

    .line 21
    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->O:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->P:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->Q:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->R:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->U:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->e0:Z

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 35
    .line 36
    return-void
.end method

.method public final K()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v2, :cond_5

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->P:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->k0:Z

    .line 18
    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->Q:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->j0:Z

    .line 26
    .line 27
    if-nez v2, :cond_5

    .line 28
    .line 29
    :cond_2
    const/4 v2, 0x2

    .line 30
    if-ne v0, v2, :cond_4

    .line 31
    .line 32
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 33
    .line 34
    const/16 v2, 0x17

    .line 35
    .line 36
    if-lt v0, v2, :cond_3

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 v4, 0x0

    .line 41
    :goto_0
    invoke-static {v4}, Lo3/r;->M(Z)V

    .line 42
    .line 43
    .line 44
    if-lt v0, v2, :cond_4

    .line 45
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 52
    .line 53
    iput v1, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 54
    .line 55
    iput v1, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/jK; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "MediaCodecRenderer"

    .line 60
    .line 61
    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 62
    .line 63
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 67
    .line 68
    .line 69
    return v3

    .line 70
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->a0()V

    .line 71
    .line 72
    .line 73
    return v1

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 75
    .line 76
    .line 77
    return v3
.end method

.method public L(Lcom/google/android/gms/internal/ads/PM;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public M(Lcom/google/android/gms/internal/ads/VJ;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final N(Lcom/google/android/gms/internal/ads/UM;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/UM;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VM;->t0:Z

    :cond_0
    return-void
.end method

.method public final O()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->Q:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 29
    .line 30
    iput v1, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 31
    .line 32
    :goto_0
    return v2
.end method

.method public final P()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v0, :cond_1c

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 7
    .line 8
    const/4 v7, 0x2

    .line 9
    if-eq v1, v7, :cond_1c

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 18
    .line 19
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/VM;->v:Lcom/google/android/gms/internal/ads/VJ;

    .line 20
    .line 21
    if-gez v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/MM;->zza()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    return v6

    .line 32
    :cond_1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/MM;->a(I)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    const/4 v10, -0x1

    .line 45
    const/4 v11, 0x0

    .line 46
    if-ne v1, v9, :cond_4

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->U:Z

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/VM;->j0:Z

    .line 53
    .line 54
    iget v3, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 55
    .line 56
    const/4 v5, 0x4

    .line 57
    const/4 v4, 0x0

    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/MM;->h(JIII)V

    .line 61
    .line 62
    .line 63
    iput v10, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 64
    .line 65
    iput-object v11, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    :cond_3
    iput v7, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 68
    .line 69
    return v6

    .line 70
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->S:Z

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/VM;->S:Z

    .line 75
    .line 76
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/google/android/gms/internal/ads/VM;->w0:[B

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    iget v3, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    const/16 v4, 0x26

    .line 90
    .line 91
    const-wide/16 v1, 0x0

    .line 92
    .line 93
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/MM;->h(JIII)V

    .line 94
    .line 95
    .line 96
    iput v10, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 97
    .line 98
    iput-object v11, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 101
    .line 102
    return v9

    .line 103
    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 104
    .line 105
    if-ne v1, v9, :cond_7

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ge v1, v2, :cond_6

    .line 120
    .line 121
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 122
    .line 123
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, [B

    .line 130
    .line 131
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    iput v7, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 143
    .line 144
    :cond_7
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aK;->c:Lcom/google/android/gms/internal/ads/Om;

    .line 154
    .line 155
    iput-object v11, v2, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v11, v2, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 158
    .line 159
    :try_start_0
    invoke-virtual {p0, v2, v8, v6}, Lcom/google/android/gms/internal/ads/aK;->r(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I

    .line 160
    .line 161
    .line 162
    move-result v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/UJ; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    const/4 v4, -0x3

    .line 164
    if-ne v3, v4, :cond_9

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->l()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 173
    .line 174
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 175
    .line 176
    :cond_8
    return v6

    .line 177
    :cond_9
    const/4 v4, -0x5

    .line 178
    if-ne v3, v4, :cond_b

    .line 179
    .line 180
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 181
    .line 182
    if-ne v0, v7, :cond_a

    .line 183
    .line 184
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 185
    .line 186
    .line 187
    iput v9, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 188
    .line 189
    :cond_a
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/VM;->V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;

    .line 190
    .line 191
    .line 192
    return v9

    .line 193
    :cond_b
    const/4 v2, 0x4

    .line 194
    invoke-virtual {v8, v2}, Lq0/e;->b(I)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_f

    .line 199
    .line 200
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 201
    .line 202
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 203
    .line 204
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 205
    .line 206
    if-ne v1, v7, :cond_c

    .line 207
    .line 208
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 209
    .line 210
    .line 211
    iput v9, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 212
    .line 213
    :cond_c
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 214
    .line 215
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 216
    .line 217
    if-nez v1, :cond_d

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V

    .line 220
    .line 221
    .line 222
    return v6

    .line 223
    :cond_d
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->U:Z

    .line 224
    .line 225
    if-nez v1, :cond_e

    .line 226
    .line 227
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/VM;->j0:Z

    .line 228
    .line 229
    iget v3, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 230
    .line 231
    const/4 v5, 0x4

    .line 232
    const/4 v4, 0x0

    .line 233
    const-wide/16 v1, 0x0

    .line 234
    .line 235
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/MM;->h(JIII)V

    .line 236
    .line 237
    .line 238
    iput v10, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 239
    .line 240
    iput-object v11, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    goto :goto_2

    .line 245
    :cond_e
    :goto_1
    return v6

    .line 246
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->p(I)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {p0, v2, v1, v0, v6}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    throw v0

    .line 261
    :cond_f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 262
    .line 263
    if-nez v2, :cond_11

    .line 264
    .line 265
    invoke-virtual {v8, v9}, Lq0/e;->b(I)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_11

    .line 270
    .line 271
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 272
    .line 273
    .line 274
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 275
    .line 276
    if-ne v0, v7, :cond_10

    .line 277
    .line 278
    iput v9, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 279
    .line 280
    :cond_10
    return v9

    .line 281
    :cond_11
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/VM;->M(Lcom/google/android/gms/internal/ads/VJ;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_12

    .line 286
    .line 287
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 288
    .line 289
    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 291
    .line 292
    iget v1, v0, Lcom/google/android/gms/internal/ads/cK;->d:I

    .line 293
    .line 294
    add-int/2addr v1, v9

    .line 295
    iput v1, v0, Lcom/google/android/gms/internal/ads/cK;->d:I

    .line 296
    .line 297
    return v9

    .line 298
    :cond_12
    const/high16 v2, 0x40000000    # 2.0f

    .line 299
    .line 300
    invoke-virtual {v8, v2}, Lq0/e;->b(I)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/VJ;->d:Lw0/c;

    .line 305
    .line 306
    if-eqz v2, :cond_15

    .line 307
    .line 308
    if-nez v1, :cond_13

    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_13
    iget-object v4, v3, Lw0/c;->d:[I

    .line 315
    .line 316
    if-nez v4, :cond_14

    .line 317
    .line 318
    new-array v4, v9, [I

    .line 319
    .line 320
    iput-object v4, v3, Lw0/c;->d:[I

    .line 321
    .line 322
    iget-object v5, v3, Lw0/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 323
    .line 324
    iput-object v4, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 325
    .line 326
    :cond_14
    iget-object v4, v3, Lw0/c;->d:[I

    .line 327
    .line 328
    aget v5, v4, v6

    .line 329
    .line 330
    add-int/2addr v5, v1

    .line 331
    aput v5, v4, v6

    .line 332
    .line 333
    :cond_15
    :goto_3
    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 334
    .line 335
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->p0:Z

    .line 336
    .line 337
    if-eqz v1, :cond_17

    .line 338
    .line 339
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->z:Ljava/util/ArrayDeque;

    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    if-nez v7, :cond_16

    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Lcom/google/android/gms/internal/ads/UM;

    .line 352
    .line 353
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/UM;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 354
    .line 355
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v7, v4, v5}, Lcom/google/android/gms/internal/ads/Ks;->d(Ljava/lang/Object;J)V

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/UM;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 367
    .line 368
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 369
    .line 370
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v7, v4, v5}, Lcom/google/android/gms/internal/ads/Ks;->d(Ljava/lang/Object;J)V

    .line 374
    .line 375
    .line 376
    :goto_4
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/VM;->p0:Z

    .line 377
    .line 378
    :cond_17
    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 379
    .line 380
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 381
    .line 382
    .line 383
    move-result-wide v12

    .line 384
    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 385
    .line 386
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->l()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_18

    .line 391
    .line 392
    const/high16 v1, 0x20000000

    .line 393
    .line 394
    invoke-virtual {v8, v1}, Lq0/e;->b(I)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_19

    .line 399
    .line 400
    :cond_18
    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 401
    .line 402
    :cond_19
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/VJ;->g()V

    .line 403
    .line 404
    .line 405
    const/high16 v1, 0x10000000

    .line 406
    .line 407
    invoke-virtual {v8, v1}, Lq0/e;->b(I)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_1a

    .line 412
    .line 413
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/VM;->c0(Lcom/google/android/gms/internal/ads/VJ;)V

    .line 414
    .line 415
    .line 416
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->F()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->l0()V

    .line 420
    .line 421
    .line 422
    if-eqz v2, :cond_1b

    .line 423
    .line 424
    :try_start_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 425
    .line 426
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/MM;->f(ILw0/c;J)V

    .line 427
    .line 428
    .line 429
    goto :goto_5

    .line 430
    :catch_1
    move-exception v0

    .line 431
    goto :goto_6

    .line 432
    :cond_1b
    iget v3, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 433
    .line 434
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    const/4 v12, 0x0

    .line 444
    move-wide v1, v4

    .line 445
    move v4, v7

    .line 446
    move v5, v12

    .line 447
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/MM;->h(JIII)V
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 448
    .line 449
    .line 450
    :goto_5
    iput v10, p0, Lcom/google/android/gms/internal/ads/VM;->W:I

    .line 451
    .line 452
    iput-object v11, v8, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 453
    .line 454
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 455
    .line 456
    iput v6, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 457
    .line 458
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 459
    .line 460
    iget v1, v0, Lcom/google/android/gms/internal/ads/cK;->c:I

    .line 461
    .line 462
    add-int/2addr v1, v9

    .line 463
    iput v1, v0, Lcom/google/android/gms/internal/ads/cK;->c:I

    .line 464
    .line 465
    return v9

    .line 466
    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 467
    .line 468
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Et;->p(I)I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-virtual {p0, v2, v1, v0, v6}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    throw v0

    .line 481
    :catch_2
    move-exception v0

    .line 482
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VM;->d0(Ljava/lang/Exception;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/VM;->R(I)Z

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->a0()V

    .line 489
    .line 490
    .line 491
    return v9

    .line 492
    :cond_1c
    :goto_7
    return v6
.end method

.method public final Q(JJ)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmp-long v1, p3, p1

    .line 3
    .line 4
    if-gez v1, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "audio/opus"

    .line 14
    .line 15
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    sub-long/2addr p1, p3

    .line 22
    const-wide/32 p3, 0x13880

    .line 23
    .line 24
    .line 25
    cmp-long v1, p1, p3

    .line 26
    .line 27
    if-gtz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v2

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    :cond_2
    :goto_0
    return v0
.end method

.method public final R(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->u:Lcom/google/android/gms/internal/ads/VJ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aK;->c:Lcom/google/android/gms/internal/ads/Om;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    or-int/2addr p1, v2

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/aK;->r(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v3, -0x5

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne p1, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/VM;->V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;

    .line 24
    .line 25
    .line 26
    return v4

    .line 27
    :cond_0
    const/4 v1, -0x4

    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lq0/e;->b(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final S(Lcom/google/android/gms/internal/ads/p0;)Z
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

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
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/aK;->h:I

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->F:F

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aK;->j:[Lcom/google/android/gms/internal/ads/p0;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/VM;->B(F[Lcom/google/android/gms/internal/ads/p0;)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->K:F

    .line 37
    .line 38
    cmpl-float v1, v0, p1

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const/high16 v1, -0x40800000    # -1.0f

    .line 43
    .line 44
    cmpl-float v3, p1, v1

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->X()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_1
    cmpl-float v0, v0, v1

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->t:F

    .line 58
    .line 59
    cmpl-float v0, p1, v0

    .line 60
    .line 61
    if-lez v0, :cond_3

    .line 62
    .line 63
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "operating-rate"

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/MM;->i(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    iput p1, p0, Lcom/google/android/gms/internal/ads/VM;->K:F

    .line 82
    .line 83
    :cond_3
    :goto_0
    return v2
.end method

.method public abstract T(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)I
.end method

.method public abstract U(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;
.end method

.method public V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->p0:Z

    .line 3
    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/p0;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v3, :cond_14

    .line 15
    .line 16
    const-string v4, "video/av01"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 36
    .line 37
    .line 38
    iput-object v4, v3, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 39
    .line 40
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 41
    .line 42
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    move-object v8, v1

    .line 46
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/google/android/gms/internal/ads/yM;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 51
    .line 52
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->d0:Z

    .line 59
    .line 60
    return-object v4

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/VM;->L:Ljava/util/ArrayDeque;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 68
    .line 69
    .line 70
    return-object v4

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 84
    .line 85
    if-ne v3, v4, :cond_13

    .line 86
    .line 87
    if-eq v4, v3, :cond_3

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/4 v3, 0x0

    .line 92
    :goto_0
    if-eqz v3, :cond_4

    .line 93
    .line 94
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 95
    .line 96
    const/16 v5, 0x17

    .line 97
    .line 98
    if-lt v4, v5, :cond_5

    .line 99
    .line 100
    :cond_4
    const/4 v4, 0x1

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const/4 v4, 0x0

    .line 103
    :goto_1
    invoke-static {v4}, Lo3/r;->M(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/gms/internal/ads/VM;->U(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget v5, v4, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 111
    .line 112
    const/4 v6, 0x3

    .line 113
    if-eqz v5, :cond_10

    .line 114
    .line 115
    const/16 v9, 0x10

    .line 116
    .line 117
    const/4 v10, 0x2

    .line 118
    if-eq v5, v0, :cond_c

    .line 119
    .line 120
    if-eq v5, v10, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/VM;->S(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    :goto_2
    const/16 v10, 0x10

    .line 129
    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_6
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->O()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_7

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_7
    :goto_3
    const/4 v10, 0x0

    .line 144
    goto :goto_5

    .line 145
    :cond_8
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/VM;->S(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-nez v11, :cond_9

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->e0:Z

    .line 153
    .line 154
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->f0:I

    .line 155
    .line 156
    iget v9, p0, Lcom/google/android/gms/internal/ads/VM;->O:I

    .line 157
    .line 158
    if-eq v9, v10, :cond_b

    .line 159
    .line 160
    if-ne v9, v0, :cond_a

    .line 161
    .line 162
    iget v9, v8, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 163
    .line 164
    iget v11, v7, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 165
    .line 166
    if-ne v9, v11, :cond_a

    .line 167
    .line 168
    iget v9, v8, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 169
    .line 170
    iget v11, v7, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 171
    .line 172
    if-ne v9, v11, :cond_a

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_a
    const/4 v0, 0x0

    .line 176
    :cond_b
    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->S:Z

    .line 177
    .line 178
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 179
    .line 180
    if-eqz v3, :cond_7

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->O()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_7

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_c
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/VM;->S(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-nez v11, :cond_d

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_d
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 197
    .line 198
    if-eqz v3, :cond_e

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->O()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_7

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_e
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 208
    .line 209
    if-eqz v3, :cond_7

    .line 210
    .line 211
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 212
    .line 213
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/VM;->Q:Z

    .line 214
    .line 215
    if-eqz v3, :cond_f

    .line 216
    .line 217
    iput v6, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_f
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->X()V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :goto_5
    if-eqz v5, :cond_12

    .line 228
    .line 229
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 230
    .line 231
    if-ne v0, p1, :cond_11

    .line 232
    .line 233
    iget p1, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 234
    .line 235
    if-ne p1, v6, :cond_12

    .line 236
    .line 237
    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/ads/dK;

    .line 238
    .line 239
    const/4 v9, 0x0

    .line 240
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 241
    .line 242
    move-object v5, p1

    .line 243
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dK;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;II)V

    .line 244
    .line 245
    .line 246
    return-object p1

    .line 247
    :cond_12
    return-object v4

    .line 248
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->X()V

    .line 249
    .line 250
    .line 251
    new-instance p1, Lcom/google/android/gms/internal/ads/dK;

    .line 252
    .line 253
    const/16 v10, 0x80

    .line 254
    .line 255
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 256
    .line 257
    const/4 v9, 0x0

    .line 258
    move-object v5, p1

    .line 259
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dK;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;II)V

    .line 260
    .line 261
    .line 262
    return-object p1

    .line 263
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 264
    .line 265
    const-string v0, "Sample MIME type is null."

    .line 266
    .line 267
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const/16 v0, 0xfa5

    .line 271
    .line 272
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    throw p1
.end method

.method public final W()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->d0:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/HM;->e()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->c0:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->A:Lcom/google/android/gms/internal/ads/pM;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    iput v0, v1, Lcom/google/android/gms/internal/ads/pM;->c:I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, v1, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 31
    .line 32
    return-void
.end method

.method public final X()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->i0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public abstract Y(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;F)Lcom/google/android/gms/internal/ads/KM;
.end method

.method public abstract Z(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)Ljava/util/ArrayList;
.end method

.method public final a0()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/MM;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->I()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->I()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final b0()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

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
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->i0()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->a0()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->u0:Lcom/google/android/gms/internal/ads/yM;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 37
    .line 38
    iput v0, p0, Lcom/google/android/gms/internal/ads/VM;->h0:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->a0()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public abstract c0(Lcom/google/android/gms/internal/ads/VJ;)V
.end method

.method public abstract d0(Ljava/lang/Exception;)V
.end method

.method public abstract e0(Ljava/lang/String;JJ)V
.end method

.method public abstract f0(Ljava/lang/String;)V
.end method

.method public g([Lcom/google/android/gms/internal/ads/p0;JJLcom/google/android/gms/internal/ads/wN;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 3
    .line 4
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/UM;->c:J

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
    new-instance v1, Lcom/google/android/gms/internal/ads/UM;

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
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/UM;-><init>(JJJ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/VM;->N(Lcom/google/android/gms/internal/ads/UM;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/VM;->z:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 42
    .line 43
    cmp-long v2, v5, v3

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/VM;->s0:J

    .line 48
    .line 49
    cmp-long v2, v7, v3

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    cmp-long v2, v7, v5

    .line 54
    .line 55
    if-ltz v2, :cond_3

    .line 56
    .line 57
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/UM;

    .line 58
    .line 59
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    move-object v5, v1

    .line 65
    move-wide v8, p2

    .line 66
    move-wide/from16 v10, p4

    .line 67
    .line 68
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/UM;-><init>(JJJ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/VM;->N(Lcom/google/android/gms/internal/ads/UM;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 75
    .line 76
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/UM;->c:J

    .line 77
    .line 78
    cmp-long v5, v1, v3

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->h0()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void

    .line 86
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/UM;

    .line 87
    .line 88
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 89
    .line 90
    move-object v6, v2

    .line 91
    move-wide v9, p2

    .line 92
    move-wide/from16 v11, p4

    .line 93
    .line 94
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/UM;-><init>(JJJ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public abstract g0(Lcom/google/android/gms/internal/ads/p0;Landroid/media/MediaFormat;)V
.end method

.method public abstract h0()V
.end method

.method public i0()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract j0(JJLcom/google/android/gms/internal/ads/MM;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/p0;)Z
.end method

.method public k(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/VM;->E:F

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/VM;->F:F

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/VM;->S(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public k0(Lcom/google/android/gms/internal/ads/p0;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public l0()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(JJ)V
    .locals 22

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    const/4 v14, 0x1

    .line 4
    :try_start_0
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->i0()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    :goto_0
    move-object v1, v15

    .line 14
    const/4 v2, 0x1

    .line 15
    const/16 v19, 0x0

    .line 16
    .line 17
    goto/16 :goto_16

    .line 18
    .line 19
    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 20
    .line 21
    const/4 v11, 0x2

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/VM;->R(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->b0:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    if-eqz v0, :cond_19

    .line 39
    .line 40
    :try_start_1
    const-string v0, "bypassRender"

    .line 41
    .line 42
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_2
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 46
    .line 47
    xor-int/2addr v0, v14

    .line 48
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HM;->j()Z

    .line 54
    .line 55
    .line 56
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    :try_start_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    iget v8, v15, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 62
    .line 63
    iget v11, v0, Lcom/google/android/gms/internal/ads/HM;->k:I

    .line 64
    .line 65
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 66
    .line 67
    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 68
    .line 69
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/HM;->j:J

    .line 70
    .line 71
    invoke-virtual {v15, v1, v2, v12, v13}, Lcom/google/android/gms/internal/ads/VM;->Q(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 76
    .line 77
    invoke-virtual {v0, v10}, Lq0/e;->b(I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    .line 83
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v9, 0x0

    .line 88
    move-object/from16 v1, p0

    .line 89
    .line 90
    move-wide/from16 v2, p1

    .line 91
    .line 92
    move-wide/from16 v18, v4

    .line 93
    .line 94
    move-wide/from16 v4, p3

    .line 95
    .line 96
    move v10, v11

    .line 97
    move-object/from16 v17, v12

    .line 98
    .line 99
    move-wide/from16 v11, v18

    .line 100
    .line 101
    move v14, v0

    .line 102
    move-object/from16 v15, v17

    .line 103
    .line 104
    :try_start_3
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/VM;->j0(JJLcom/google/android/gms/internal/ads/MM;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/p0;)Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    move-object/from16 v15, p0

    .line 111
    .line 112
    :try_start_4
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 113
    .line 114
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/HM;->j:J

    .line 115
    .line 116
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/VM;->E(J)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HM;->e()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    move-object/from16 v15, p0

    .line 126
    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v14, 0x1

    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :catch_1
    move-exception v0

    .line 132
    move-object/from16 v15, p0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    :goto_3
    :try_start_5
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->n0:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    const/4 v14, 0x1

    .line 140
    :try_start_6
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->o0:Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    goto/16 :goto_8

    .line 144
    .line 145
    :cond_6
    const/4 v14, 0x1

    .line 146
    :try_start_7
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->c0:Z

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 151
    .line 152
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/HM;->i(Lcom/google/android/gms/internal/ads/VJ;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-static {v0}, Lo3/r;->M(Z)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    .line 159
    .line 160
    .line 161
    const/4 v13, 0x0

    .line 162
    :try_start_8
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->c0:Z

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catch_2
    move-exception v0

    .line 166
    const/4 v13, 0x0

    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_7
    const/4 v13, 0x0

    .line 170
    :goto_4
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->d0:Z

    .line 171
    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HM;->j()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_8

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->W()V

    .line 183
    .line 184
    .line 185
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->d0:Z

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 188
    .line 189
    .line 190
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 191
    .line 192
    if-eqz v0, :cond_18

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_8
    const/4 v10, 0x4

    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_9
    :goto_5
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 199
    .line 200
    xor-int/2addr v0, v14

    .line 201
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/aK;->c:Lcom/google/android/gms/internal/ads/Om;

    .line 205
    .line 206
    const/4 v12, 0x0

    .line 207
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 210
    .line 211
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 214
    .line 215
    .line 216
    :cond_a
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 219
    .line 220
    .line 221
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 222
    .line 223
    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/gms/internal/ads/aK;->r(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    const/4 v2, -0x5

    .line 228
    if-eq v1, v2, :cond_16

    .line 229
    .line 230
    const/4 v2, -0x4

    .line 231
    if-eq v1, v2, :cond_c

    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aK;->l()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_b

    .line 238
    .line 239
    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 240
    .line 241
    iput-wide v0, v15, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 242
    .line 243
    :cond_b
    const/4 v10, 0x4

    .line 244
    goto/16 :goto_7

    .line 245
    .line 246
    :cond_c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 247
    .line 248
    const/4 v10, 0x4

    .line 249
    invoke-virtual {v1, v10}, Lq0/e;->b(I)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_d

    .line 254
    .line 255
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 256
    .line 257
    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 258
    .line 259
    iput-wide v0, v15, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 260
    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_d
    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 264
    .line 265
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 266
    .line 267
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    iput-wide v1, v15, Lcom/google/android/gms/internal/ads/VM;->l0:J

    .line 272
    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aK;->l()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v3, :cond_e

    .line 278
    .line 279
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/VM;->v:Lcom/google/android/gms/internal/ads/VJ;

    .line 280
    .line 281
    const/high16 v4, 0x20000000

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Lq0/e;->b(I)Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_f

    .line 288
    .line 289
    :cond_e
    iput-wide v1, v15, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 290
    .line 291
    :cond_f
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/VM;->p0:Z

    .line 292
    .line 293
    if-eqz v1, :cond_11

    .line 294
    .line 295
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0

    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    :try_start_9
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 303
    .line 304
    const-string v2, "audio/opus"

    .line 305
    .line 306
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_10

    .line 311
    .line 312
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 313
    .line 314
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_10

    .line 321
    .line 322
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 323
    .line 324
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 325
    .line 326
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    check-cast v1, [B

    .line 331
    .line 332
    const/16 v2, 0xb

    .line 333
    .line 334
    aget-byte v2, v1, v2

    .line 335
    .line 336
    and-int/lit16 v2, v2, 0xff

    .line 337
    .line 338
    const/16 v3, 0xa

    .line 339
    .line 340
    aget-byte v1, v1, v3

    .line 341
    .line 342
    and-int/lit16 v1, v1, 0xff

    .line 343
    .line 344
    shl-int/lit8 v2, v2, 0x8

    .line 345
    .line 346
    or-int/2addr v1, v2

    .line 347
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0

    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    :try_start_a
    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 353
    .line 354
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 355
    .line 356
    .line 357
    iput v1, v3, Lcom/google/android/gms/internal/ads/K;->C:I

    .line 358
    .line 359
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 360
    .line 361
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 362
    .line 363
    .line 364
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 365
    .line 366
    :cond_10
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 367
    .line 368
    invoke-virtual {v15, v1, v12}, Lcom/google/android/gms/internal/ads/VM;->g0(Lcom/google/android/gms/internal/ads/p0;Landroid/media/MediaFormat;)V

    .line 369
    .line 370
    .line 371
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->p0:Z

    .line 372
    .line 373
    :cond_11
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/VJ;->g()V

    .line 376
    .line 377
    .line 378
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 379
    .line 380
    if-eqz v1, :cond_13

    .line 381
    .line 382
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 383
    .line 384
    const-string v2, "audio/opus"

    .line 385
    .line 386
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_13

    .line 391
    .line 392
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 393
    .line 394
    const/high16 v2, 0x10000000

    .line 395
    .line 396
    invoke-virtual {v1, v2}, Lq0/e;->b(I)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-eqz v2, :cond_12

    .line 401
    .line 402
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 403
    .line 404
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/VJ;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 405
    .line 406
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/VM;->c0(Lcom/google/android/gms/internal/ads/VJ;)V

    .line 407
    .line 408
    .line 409
    :cond_12
    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 410
    .line 411
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 412
    .line 413
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 414
    .line 415
    sub-long/2addr v1, v4

    .line 416
    const-wide/32 v4, 0x13880

    .line 417
    .line 418
    .line 419
    cmp-long v6, v1, v4

    .line 420
    .line 421
    if-gtz v6, :cond_13

    .line 422
    .line 423
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->A:Lcom/google/android/gms/internal/ads/pM;

    .line 424
    .line 425
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0

    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    :try_start_b
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 431
    .line 432
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/pM;->a(Lcom/google/android/gms/internal/ads/VJ;Ljava/util/List;)V

    .line 433
    .line 434
    .line 435
    :cond_13
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 436
    .line 437
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/HM;->j()Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-nez v2, :cond_14

    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_14
    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 445
    .line 446
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/HM;->j:J

    .line 447
    .line 448
    invoke-virtual {v15, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/VM;->Q(JJ)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 453
    .line 454
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 455
    .line 456
    invoke-virtual {v15, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/VM;->Q(JJ)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-ne v1, v2, :cond_15

    .line 461
    .line 462
    :goto_6
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 463
    .line 464
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/VM;->w:Lcom/google/android/gms/internal/ads/VJ;

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/HM;->i(Lcom/google/android/gms/internal/ads/VJ;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-nez v1, :cond_a

    .line 471
    .line 472
    :cond_15
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->c0:Z

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_16
    const/4 v10, 0x4

    .line 476
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/VM;->V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;

    .line 477
    .line 478
    .line 479
    :goto_7
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HM;->j()Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_17

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/VJ;->g()V

    .line 488
    .line 489
    .line 490
    :cond_17
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->x:Lcom/google/android/gms/internal/ads/HM;

    .line 491
    .line 492
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HM;->j()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-nez v0, :cond_3

    .line 497
    .line 498
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 499
    .line 500
    if-nez v0, :cond_3

    .line 501
    .line 502
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->d0:Z

    .line 503
    .line 504
    if-eqz v0, :cond_18

    .line 505
    .line 506
    goto/16 :goto_2

    .line 507
    .line 508
    :cond_18
    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 509
    .line 510
    .line 511
    move-object v1, v15

    .line 512
    const/4 v2, 0x1

    .line 513
    const/16 v19, 0x0

    .line 514
    .line 515
    goto/16 :goto_15

    .line 516
    .line 517
    :catch_3
    move-exception v0

    .line 518
    const/4 v13, 0x0

    .line 519
    const/4 v14, 0x1

    .line 520
    goto/16 :goto_0

    .line 521
    .line 522
    :cond_19
    const/4 v12, 0x0

    .line 523
    const/4 v13, 0x0

    .line 524
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0

    .line 525
    .line 526
    if-eqz v0, :cond_2f

    .line 527
    .line 528
    :try_start_c
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 534
    .line 535
    .line 536
    const-string v0, "drainAndFeed"

    .line 537
    .line 538
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    :goto_9
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_c

    .line 542
    .line 543
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    :try_start_d
    iget v0, v15, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 547
    .line 548
    if-ltz v0, :cond_1a

    .line 549
    .line 550
    goto/16 :goto_f

    .line 551
    .line 552
    :cond_1a
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->R:Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_c

    .line 553
    .line 554
    if-eqz v0, :cond_1c

    .line 555
    .line 556
    :try_start_e
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->j0:Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0

    .line 557
    .line 558
    if-eqz v0, :cond_1c

    .line 559
    .line 560
    :try_start_f
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 561
    .line 562
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/MM;->g(Landroid/media/MediaCodec$BufferInfo;)I

    .line 563
    .line 564
    .line 565
    move-result v0
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_4

    .line 566
    goto :goto_b

    .line 567
    :catch_4
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V

    .line 568
    .line 569
    .line 570
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 571
    .line 572
    if-eqz v0, :cond_1b

    .line 573
    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->H()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_0

    .line 575
    .line 576
    .line 577
    :cond_1b
    :goto_a
    move-object v1, v15

    .line 578
    const/16 v19, 0x0

    .line 579
    .line 580
    goto/16 :goto_14

    .line 581
    .line 582
    :cond_1c
    :try_start_11
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 583
    .line 584
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/MM;->g(Landroid/media/MediaCodec$BufferInfo;)I

    .line 585
    .line 586
    .line 587
    move-result v0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_c

    .line 588
    :goto_b
    if-gez v0, :cond_21

    .line 589
    .line 590
    const/4 v1, -0x2

    .line 591
    if-ne v0, v1, :cond_1e

    .line 592
    .line 593
    :try_start_12
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->k0:Z

    .line 594
    .line 595
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0

    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    :try_start_13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/MM;->zzc()Landroid/media/MediaFormat;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    iget v1, v15, Lcom/google/android/gms/internal/ads/VM;->O:I

    .line 605
    .line 606
    if-eqz v1, :cond_1d

    .line 607
    .line 608
    const-string v1, "width"

    .line 609
    .line 610
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    const/16 v2, 0x20

    .line 615
    .line 616
    if-ne v1, v2, :cond_1d

    .line 617
    .line 618
    const-string v1, "height"

    .line 619
    .line 620
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-ne v1, v2, :cond_1d

    .line 625
    .line 626
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->T:Z

    .line 627
    .line 628
    goto :goto_9

    .line 629
    :cond_1d
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->I:Landroid/media/MediaFormat;

    .line 630
    .line 631
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->J:Z

    .line 632
    .line 633
    goto :goto_9

    .line 634
    :cond_1e
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->U:Z

    .line 635
    .line 636
    if-nez v0, :cond_1f

    .line 637
    .line 638
    goto :goto_a

    .line 639
    :cond_1f
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->n0:Z

    .line 640
    .line 641
    if-nez v0, :cond_20

    .line 642
    .line 643
    iget v0, v15, Lcom/google/android/gms/internal/ads/VM;->g0:I

    .line 644
    .line 645
    if-ne v0, v11, :cond_1b

    .line 646
    .line 647
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_0

    .line 648
    .line 649
    .line 650
    goto :goto_a

    .line 651
    :cond_21
    :try_start_14
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/VM;->T:Z
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_c

    .line 652
    .line 653
    if-eqz v1, :cond_22

    .line 654
    .line 655
    :try_start_15
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->T:Z

    .line 656
    .line 657
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/MM;->O(I)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_0

    .line 658
    .line 659
    .line 660
    goto :goto_9

    .line 661
    :cond_22
    :try_start_16
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 662
    .line 663
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_c

    .line 664
    .line 665
    if-nez v2, :cond_23

    .line 666
    .line 667
    :try_start_17
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 668
    .line 669
    and-int/2addr v1, v10

    .line 670
    if-eqz v1, :cond_23

    .line 671
    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_0

    .line 673
    .line 674
    .line 675
    goto :goto_a

    .line 676
    :cond_23
    :try_start_18
    iput v0, v15, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 677
    .line 678
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/MM;->zzg(I)Ljava/nio/ByteBuffer;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->Y:Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_c

    .line 683
    .line 684
    if-eqz v0, :cond_24

    .line 685
    .line 686
    :try_start_19
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 687
    .line 688
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 689
    .line 690
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 691
    .line 692
    .line 693
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->Y:Ljava/nio/ByteBuffer;

    .line 694
    .line 695
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 696
    .line 697
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 698
    .line 699
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 700
    .line 701
    add-int/2addr v2, v1

    .line 702
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_0

    .line 703
    .line 704
    .line 705
    :cond_24
    :try_start_1a
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 706
    .line 707
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 708
    .line 709
    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 710
    .line 711
    cmp-long v4, v0, v2

    .line 712
    .line 713
    if-gez v4, :cond_25

    .line 714
    .line 715
    const/4 v2, 0x1

    .line 716
    goto :goto_c

    .line 717
    :cond_25
    const/4 v2, 0x0

    .line 718
    :goto_c
    iput-boolean v2, v15, Lcom/google/android/gms/internal/ads/VM;->Z:Z

    .line 719
    .line 720
    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/VM;->m0:J

    .line 721
    .line 722
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    cmp-long v7, v2, v4

    .line 728
    .line 729
    if-eqz v7, :cond_26

    .line 730
    .line 731
    cmp-long v4, v2, v0

    .line 732
    .line 733
    if-gtz v4, :cond_26

    .line 734
    .line 735
    const/4 v2, 0x1

    .line 736
    goto :goto_d

    .line 737
    :cond_26
    const/4 v2, 0x0

    .line 738
    :goto_d
    iput-boolean v2, v15, Lcom/google/android/gms/internal/ads/VM;->a0:Z

    .line 739
    .line 740
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 741
    .line 742
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/UM;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 743
    .line 744
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Ks;->c(J)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    check-cast v0, Lcom/google/android/gms/internal/ads/p0;
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_c

    .line 749
    .line 750
    if-nez v0, :cond_27

    .line 751
    .line 752
    :try_start_1b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/VM;->t0:Z

    .line 753
    .line 754
    if-eqz v1, :cond_27

    .line 755
    .line 756
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->I:Landroid/media/MediaFormat;

    .line 757
    .line 758
    if-eqz v1, :cond_27

    .line 759
    .line 760
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 761
    .line 762
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/UM;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 763
    .line 764
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ks;->b()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    check-cast v0, Lcom/google/android/gms/internal/ads/p0;

    .line 769
    .line 770
    :cond_27
    if-eqz v0, :cond_28

    .line 771
    .line 772
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_0

    .line 773
    .line 774
    goto :goto_e

    .line 775
    :cond_28
    :try_start_1c
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->J:Z
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_c

    .line 776
    .line 777
    if-eqz v0, :cond_29

    .line 778
    .line 779
    :try_start_1d
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;

    .line 780
    .line 781
    if-eqz v0, :cond_29

    .line 782
    .line 783
    :goto_e
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_0

    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    :try_start_1e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/VM;->I:Landroid/media/MediaFormat;

    .line 789
    .line 790
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/VM;->g0(Lcom/google/android/gms/internal/ads/p0;Landroid/media/MediaFormat;)V

    .line 791
    .line 792
    .line 793
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->J:Z

    .line 794
    .line 795
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->t0:Z
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_0

    .line 796
    .line 797
    :cond_29
    :goto_f
    :try_start_1f
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->R:Z
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_c

    .line 798
    .line 799
    if-eqz v0, :cond_2b

    .line 800
    .line 801
    :try_start_20
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->j0:Z
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_9

    .line 802
    .line 803
    if-eqz v0, :cond_2b

    .line 804
    .line 805
    :try_start_21
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/VM;->Y:Ljava/nio/ByteBuffer;

    .line 806
    .line 807
    iget v8, v15, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 808
    .line 809
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 810
    .line 811
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 812
    .line 813
    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 814
    .line 815
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->Z:Z

    .line 816
    .line 817
    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/VM;->a0:Z

    .line 818
    .line 819
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_5

    .line 820
    .line 821
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    const/16 v16, 0x1

    .line 825
    .line 826
    move-object/from16 v1, p0

    .line 827
    .line 828
    move/from16 v17, v2

    .line 829
    .line 830
    move-object/from16 v18, v3

    .line 831
    .line 832
    move-wide/from16 v2, p1

    .line 833
    .line 834
    move-wide/from16 v19, v4

    .line 835
    .line 836
    move-wide/from16 v4, p3

    .line 837
    .line 838
    const/16 v21, 0x4

    .line 839
    .line 840
    move/from16 v10, v16

    .line 841
    .line 842
    const/16 v16, 0x2

    .line 843
    .line 844
    move-wide/from16 v11, v19

    .line 845
    .line 846
    const/16 v19, 0x0

    .line 847
    .line 848
    move v13, v0

    .line 849
    move/from16 v14, v17

    .line 850
    .line 851
    move-object/from16 v15, v18

    .line 852
    .line 853
    :try_start_22
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/VM;->j0(JJLcom/google/android/gms/internal/ads/MM;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/p0;)Z

    .line 854
    .line 855
    .line 856
    move-result v0
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_6

    .line 857
    goto :goto_13

    .line 858
    :catch_5
    const/16 v19, 0x0

    .line 859
    .line 860
    :catch_6
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_8

    .line 861
    .line 862
    .line 863
    move-object/from16 v15, p0

    .line 864
    .line 865
    :try_start_24
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 866
    .line 867
    if-eqz v0, :cond_2a

    .line 868
    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 870
    .line 871
    .line 872
    :cond_2a
    move-object v1, v15

    .line 873
    goto :goto_14

    .line 874
    :catch_7
    move-exception v0

    .line 875
    :goto_10
    move-object v1, v15

    .line 876
    :goto_11
    const/4 v2, 0x1

    .line 877
    goto/16 :goto_16

    .line 878
    .line 879
    :catch_8
    move-exception v0

    .line 880
    move-object/from16 v15, p0

    .line 881
    .line 882
    goto :goto_10

    .line 883
    :cond_2b
    const/16 v16, 0x2

    .line 884
    .line 885
    const/16 v19, 0x0

    .line 886
    .line 887
    const/16 v21, 0x4

    .line 888
    .line 889
    goto :goto_12

    .line 890
    :catch_9
    move-exception v0

    .line 891
    const/16 v19, 0x0

    .line 892
    .line 893
    goto :goto_10

    .line 894
    :goto_12
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/VM;->Y:Ljava/nio/ByteBuffer;

    .line 895
    .line 896
    iget v8, v15, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 897
    .line 898
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 899
    .line 900
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 901
    .line 902
    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 903
    .line 904
    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/VM;->Z:Z

    .line 905
    .line 906
    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/VM;->a0:Z

    .line 907
    .line 908
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/VM;->C:Lcom/google/android/gms/internal/ads/p0;
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_7

    .line 909
    .line 910
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    .line 912
    .line 913
    const/4 v10, 0x1

    .line 914
    move-object/from16 v1, p0

    .line 915
    .line 916
    move-wide/from16 v2, p1

    .line 917
    .line 918
    move-wide/from16 v4, p3

    .line 919
    .line 920
    move-object v15, v0

    .line 921
    :try_start_25
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/VM;->j0(JJLcom/google/android/gms/internal/ads/MM;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/p0;)Z

    .line 922
    .line 923
    .line 924
    move-result v0
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_b

    .line 925
    :goto_13
    if-eqz v0, :cond_2d

    .line 926
    .line 927
    move-object/from16 v1, p0

    .line 928
    .line 929
    :try_start_26
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 930
    .line 931
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 932
    .line 933
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/VM;->E(J)V

    .line 934
    .line 935
    .line 936
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/VM;->y:Landroid/media/MediaCodec$BufferInfo;

    .line 937
    .line 938
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 939
    .line 940
    and-int/lit8 v0, v0, 0x4

    .line 941
    .line 942
    const/4 v2, -0x1

    .line 943
    iput v2, v1, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 944
    .line 945
    const/4 v2, 0x0

    .line 946
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/VM;->Y:Ljava/nio/ByteBuffer;

    .line 947
    .line 948
    if-eqz v0, :cond_2c

    .line 949
    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->b0()V

    .line 951
    .line 952
    .line 953
    goto :goto_14

    .line 954
    :catch_a
    move-exception v0

    .line 955
    goto :goto_11

    .line 956
    :cond_2c
    move-object v15, v1

    .line 957
    move-object v12, v2

    .line 958
    const/4 v10, 0x4

    .line 959
    const/4 v11, 0x2

    .line 960
    const/4 v13, 0x0

    .line 961
    const/4 v14, 0x1

    .line 962
    goto/16 :goto_9

    .line 963
    .line 964
    :cond_2d
    move-object/from16 v1, p0

    .line 965
    .line 966
    :cond_2e
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->P()Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    if-nez v0, :cond_2e

    .line 971
    .line 972
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 973
    .line 974
    .line 975
    const/4 v2, 0x1

    .line 976
    goto :goto_15

    .line 977
    :catch_b
    move-exception v0

    .line 978
    move-object/from16 v1, p0

    .line 979
    .line 980
    goto :goto_11

    .line 981
    :catch_c
    move-exception v0

    .line 982
    move-object v1, v15

    .line 983
    const/16 v19, 0x0

    .line 984
    .line 985
    goto :goto_11

    .line 986
    :cond_2f
    move-object v1, v15

    .line 987
    const/16 v19, 0x0

    .line 988
    .line 989
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 990
    .line 991
    iget v2, v0, Lcom/google/android/gms/internal/ads/cK;->d:I

    .line 992
    .line 993
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/aK;->i:Lcom/google/android/gms/internal/ads/UN;

    .line 994
    .line 995
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/aK;->k:J

    .line 999
    .line 1000
    sub-long v4, p1, v4

    .line 1001
    .line 1002
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/UN;->a(J)I

    .line 1003
    .line 1004
    .line 1005
    move-result v3

    .line 1006
    add-int/2addr v2, v3

    .line 1007
    iput v2, v0, Lcom/google/android/gms/internal/ads/cK;->d:I
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_a

    .line 1008
    .line 1009
    const/4 v2, 0x1

    .line 1010
    :try_start_27
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/VM;->R(I)Z

    .line 1011
    .line 1012
    .line 1013
    :goto_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 1014
    .line 1015
    monitor-enter v0

    .line 1016
    monitor-exit v0
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_27} :catch_d

    .line 1017
    return-void

    .line 1018
    :catch_d
    move-exception v0

    .line 1019
    :goto_16
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    .line 1020
    .line 1021
    if-eqz v3, :cond_30

    .line 1022
    .line 1023
    goto :goto_17

    .line 1024
    :cond_30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v4

    .line 1028
    array-length v5, v4

    .line 1029
    if-lez v5, :cond_34

    .line 1030
    .line 1031
    aget-object v4, v4, v19

    .line 1032
    .line 1033
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v4

    .line 1037
    const-string v5, "android.media.MediaCodec"

    .line 1038
    .line 1039
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v4

    .line 1043
    if-eqz v4, :cond_34

    .line 1044
    .line 1045
    :goto_17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/VM;->d0(Ljava/lang/Exception;)V

    .line 1046
    .line 1047
    .line 1048
    if-eqz v3, :cond_31

    .line 1049
    .line 1050
    move-object v3, v0

    .line 1051
    check-cast v3, Landroid/media/MediaCodec$CodecException;

    .line 1052
    .line 1053
    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 1054
    .line 1055
    .line 1056
    move-result v3

    .line 1057
    if-eqz v3, :cond_31

    .line 1058
    .line 1059
    const/4 v14, 0x1

    .line 1060
    goto :goto_18

    .line 1061
    :cond_31
    const/4 v14, 0x0

    .line 1062
    :goto_18
    if-eqz v14, :cond_32

    .line 1063
    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 1065
    .line 1066
    .line 1067
    :cond_32
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;

    .line 1068
    .line 1069
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/VM;->C(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/PM;)Lcom/google/android/gms/internal/ads/OM;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    iget v2, v0, Lcom/google/android/gms/internal/ads/OM;->G:I

    .line 1074
    .line 1075
    const/16 v3, 0x44d

    .line 1076
    .line 1077
    if-ne v2, v3, :cond_33

    .line 1078
    .line 1079
    const/16 v2, 0xfa6

    .line 1080
    .line 1081
    goto :goto_19

    .line 1082
    :cond_33
    const/16 v2, 0xfa3

    .line 1083
    .line 1084
    :goto_19
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 1085
    .line 1086
    invoke-virtual {v1, v2, v3, v0, v14}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    throw v0

    .line 1091
    :cond_34
    throw v0
.end method

.method public p()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aK;->n:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aK;->i:Lcom/google/android/gms/internal/ads/UN;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/UN;->zze()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    const/4 v2, 0x1

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/VM;->X:I

    .line 28
    .line 29
    if-ltz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/VM;->V:J

    .line 34
    .line 35
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmp-long v0, v3, v5

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/VM;->V:J

    .line 54
    .line 55
    cmp-long v0, v3, v5

    .line 56
    .line 57
    if-ltz v0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    return v2

    .line 61
    :cond_4
    :goto_1
    return v1
.end method

.method public final q(Lcom/google/android/gms/internal/ads/p0;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->s:Lcom/google/android/gms/internal/ads/WM;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/VM;->T(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/ZM; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0xfa2

    .line 11
    .line 12
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    throw p1
.end method

.method public y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->B:Lcom/google/android/gms/internal/ads/p0;

    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/UM;->e:Lcom/google/android/gms/internal/ads/UM;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VM;->N(Lcom/google/android/gms/internal/ads/UM;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->z:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->K()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
