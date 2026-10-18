.class public final Lcom/google/android/gms/internal/ads/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# static fields
.field public static final e0:[B

.field public static final f0:[B

.field public static final g0:[B

.field public static final h0:[B

.field public static final i0:Ljava/util/UUID;

.field public static final j0:Ljava/util/Map;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Lp0/y;

.field public E:Lp0/y;

.field public F:Z

.field public G:Z

.field public H:I

.field public I:J

.field public J:J

.field public K:I

.field public L:I

.field public M:[I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:J

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:I

.field public final a:Lcom/google/android/gms/internal/ads/g1;

.field public a0:B

.field public final b:Landroid/util/SparseArray;

.field public b0:Z

.field public final c:Z

.field public c0:Lcom/google/android/gms/internal/ads/N;

.field public final d:Z

.field public final d0:Lcom/google/android/gms/internal/ads/c1;

.field public final e:Lcom/google/android/gms/internal/ads/V1;

.field public final f:Lcom/google/android/gms/internal/ads/jr;

.field public final g:Lcom/google/android/gms/internal/ads/jr;

.field public final h:Lcom/google/android/gms/internal/ads/jr;

.field public final i:Lcom/google/android/gms/internal/ads/jr;

.field public final j:Lcom/google/android/gms/internal/ads/jr;

.field public final k:Lcom/google/android/gms/internal/ads/jr;

.field public final l:Lcom/google/android/gms/internal/ads/jr;

.field public final m:Lcom/google/android/gms/internal/ads/jr;

.field public final n:Lcom/google/android/gms/internal/ads/jr;

.field public final o:Lcom/google/android/gms/internal/ads/jr;

.field public p:Ljava/nio/ByteBuffer;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:Lcom/google/android/gms/internal/ads/e1;

.field public w:Z

.field public x:I

.field public y:J

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/google/android/gms/internal/ads/f1;->e0:[B

    .line 9
    .line 10
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 11
    .line 12
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 13
    .line 14
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/ads/f1;->f0:[B

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/f1;->g0:[B

    .line 28
    .line 29
    const/16 v0, 0x26

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    fill-array-data v0, :array_2

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/f1;->h0:[B

    .line 37
    .line 38
    new-instance v0, Ljava/util/UUID;

    .line 39
    .line 40
    const-wide v1, 0x100000000001000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/google/android/gms/internal/ads/f1;->i0:Ljava/util/UUID;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const-string v2, "htc_video_rotA-000"

    .line 62
    .line 63
    const/16 v3, 0x5a

    .line 64
    .line 65
    const-string v4, "htc_video_rotA-090"

    .line 66
    .line 67
    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/protobuf/U2;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xb4

    .line 71
    .line 72
    const-string v2, "htc_video_rotA-180"

    .line 73
    .line 74
    const/16 v3, 0x10e

    .line 75
    .line 76
    const-string v4, "htc_video_rotA-270"

    .line 77
    .line 78
    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/protobuf/U2;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/google/android/gms/internal/ads/f1;->j0:Ljava/util/Map;

    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/c1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c1;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/V1;->o:Lcom/google/android/gms/internal/ads/kH;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/f1;-><init>(Lcom/google/android/gms/internal/ads/c1;ILcom/google/android/gms/internal/ads/kH;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/c1;ILcom/google/android/gms/internal/ads/kH;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f1;->r:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/f1;->s:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/f1;->t:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/f1;->u:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f1;->A:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f1;->B:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/f1;->C:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->d0:Lcom/google/android/gms/internal/ads/c1;

    new-instance v0, Lcom/google/android/gms/internal/ads/d1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/d1;-><init>(Lcom/google/android/gms/internal/ads/f1;)V

    .line 3
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/c1;->d:Lcom/google/android/gms/internal/ads/d1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f1;->e:Lcom/google/android/gms/internal/ads/V1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/f1;->c:Z

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/f1;->d:Z

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/g1;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/g1;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->a:Lcom/google/android/gms/internal/ads/g1;

    new-instance p2, Landroid/util/SparseArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->b:Landroid/util/SparseArray;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->h:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 8
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->i:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 9
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->j:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/sy;->a:[B

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->f:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 11
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->g:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 12
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->k:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 13
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->l:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    const/16 p3, 0x8

    .line 14
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->m:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 15
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->n:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 16
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->o:Lcom/google/android/gms/internal/ads/jr;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->M:[I

    return-void
.end method

.method public static q(JJLjava/lang/String;)[B
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, p0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v2}, Lo3/r;->J(Z)V

    .line 16
    .line 17
    .line 18
    const-wide v2, 0xd693a400L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-long v4, p0, v2

    .line 24
    .line 25
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    long-to-int v5, v4

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    int-to-long v7, v5

    .line 33
    mul-long v7, v7, v2

    .line 34
    .line 35
    sub-long/2addr p0, v7

    .line 36
    const-wide/32 v2, 0x3938700

    .line 37
    .line 38
    .line 39
    div-long v7, p0, v2

    .line 40
    .line 41
    long-to-int v5, v7

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    int-to-long v8, v5

    .line 47
    mul-long v8, v8, v2

    .line 48
    .line 49
    sub-long/2addr p0, v8

    .line 50
    const-wide/32 v2, 0xf4240

    .line 51
    .line 52
    .line 53
    div-long v8, p0, v2

    .line 54
    .line 55
    long-to-int v5, v8

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    int-to-long v9, v5

    .line 61
    mul-long v9, v9, v2

    .line 62
    .line 63
    sub-long/2addr p0, v9

    .line 64
    div-long/2addr p0, p2

    .line 65
    long-to-int p1, p0

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 p1, 0x4

    .line 71
    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v4, p1, v0

    .line 74
    .line 75
    aput-object v7, p1, v1

    .line 76
    .line 77
    const/4 p2, 0x2

    .line 78
    aput-object v8, p1, p2

    .line 79
    .line 80
    const/4 p2, 0x3

    .line 81
    aput-object p0, p1, p2

    .line 82
    .line 83
    invoke-static {v6, p4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 88
    .line 89
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method


# virtual methods
.method public final a(IILcom/google/android/gms/internal/ads/M;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/f1;->b:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v9, 0x1

    .line 13
    const/16 v4, 0xa1

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/16 v6, 0xa3

    .line 17
    .line 18
    const/4 v10, 0x2

    .line 19
    const/4 v11, 0x0

    .line 20
    if-eq v0, v4, :cond_b

    .line 21
    .line 22
    if-eq v0, v6, :cond_b

    .line 23
    .line 24
    const/16 v4, 0xa5

    .line 25
    .line 26
    if-eq v0, v4, :cond_8

    .line 27
    .line 28
    const/16 v2, 0x41ed

    .line 29
    .line 30
    if-eq v0, v2, :cond_5

    .line 31
    .line 32
    const/16 v2, 0x4255

    .line 33
    .line 34
    if-eq v0, v2, :cond_4

    .line 35
    .line 36
    const/16 v2, 0x47e2

    .line 37
    .line 38
    if-eq v0, v2, :cond_3

    .line 39
    .line 40
    const/16 v2, 0x53ab

    .line 41
    .line 42
    if-eq v0, v2, :cond_2

    .line 43
    .line 44
    const/16 v2, 0x63a2

    .line 45
    .line 46
    if-eq v0, v2, :cond_1

    .line 47
    .line 48
    const/16 v2, 0x7672

    .line 49
    .line 50
    if-ne v0, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 56
    .line 57
    new-array v2, v1, [B

    .line 58
    .line 59
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/e1;->w:[B

    .line 60
    .line 61
    invoke-interface {v8, v11, v2, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Unexpected id: "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    throw v0

    .line 84
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 88
    .line 89
    new-array v2, v1, [B

    .line 90
    .line 91
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/e1;->k:[B

    .line 92
    .line 93
    invoke-interface {v8, v11, v2, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->j:Lcom/google/android/gms/internal/ads/jr;

    .line 98
    .line 99
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 100
    .line 101
    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 102
    .line 103
    .line 104
    rsub-int/lit8 v2, v1, 0x4

    .line 105
    .line 106
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 107
    .line 108
    invoke-interface {v8, v2, v3, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    long-to-int v1, v0

    .line 119
    iput v1, v7, Lcom/google/android/gms/internal/ads/f1;->x:I

    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-array v2, v1, [B

    .line 123
    .line 124
    invoke-interface {v8, v11, v2, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 131
    .line 132
    new-instance v1, Lcom/google/android/gms/internal/ads/d0;

    .line 133
    .line 134
    invoke-direct {v1, v9, v2, v11, v11}, Lcom/google/android/gms/internal/ads/d0;-><init>(I[BII)V

    .line 135
    .line 136
    .line 137
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/e1;->j:Lcom/google/android/gms/internal/ads/d0;

    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 144
    .line 145
    new-array v2, v1, [B

    .line 146
    .line 147
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/e1;->i:[B

    .line 148
    .line 149
    invoke-interface {v8, v11, v2, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 157
    .line 158
    iget v2, v0, Lcom/google/android/gms/internal/ads/e1;->g:I

    .line 159
    .line 160
    const v3, 0x64767643

    .line 161
    .line 162
    .line 163
    if-eq v2, v3, :cond_7

    .line 164
    .line 165
    const v3, 0x64766343

    .line 166
    .line 167
    .line 168
    if-ne v2, v3, :cond_6

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_6
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_7
    :goto_0
    new-array v2, v1, [B

    .line 176
    .line 177
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/e1;->O:[B

    .line 178
    .line 179
    invoke-interface {v8, v11, v2, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 184
    .line 185
    if-eq v0, v10, :cond_9

    .line 186
    .line 187
    goto/16 :goto_e

    .line 188
    .line 189
    :cond_9
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->N:I

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/google/android/gms/internal/ads/e1;

    .line 196
    .line 197
    iget v2, v7, Lcom/google/android/gms/internal/ads/f1;->Q:I

    .line 198
    .line 199
    if-ne v2, v3, :cond_a

    .line 200
    .line 201
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 202
    .line 203
    const-string v2, "V_VP9"

    .line 204
    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/f1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 217
    .line 218
    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_a
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_b
    iget v4, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 227
    .line 228
    const/16 v12, 0x8

    .line 229
    .line 230
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/f1;->h:Lcom/google/android/gms/internal/ads/jr;

    .line 231
    .line 232
    if-nez v4, :cond_c

    .line 233
    .line 234
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/f1;->a:Lcom/google/android/gms/internal/ads/g1;

    .line 235
    .line 236
    invoke-virtual {v4, v8, v11, v9, v12}, Lcom/google/android/gms/internal/ads/g1;->b(Lcom/google/android/gms/internal/ads/M;ZZI)J

    .line 237
    .line 238
    .line 239
    move-result-wide v14

    .line 240
    long-to-int v15, v14

    .line 241
    iput v15, v7, Lcom/google/android/gms/internal/ads/f1;->N:I

    .line 242
    .line 243
    iget v4, v4, Lcom/google/android/gms/internal/ads/g1;->c:I

    .line 244
    .line 245
    iput v4, v7, Lcom/google/android/gms/internal/ads/f1;->O:I

    .line 246
    .line 247
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    iput-wide v14, v7, Lcom/google/android/gms/internal/ads/f1;->J:J

    .line 253
    .line 254
    iput v9, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 255
    .line 256
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 257
    .line 258
    .line 259
    :cond_c
    iget v4, v7, Lcom/google/android/gms/internal/ads/f1;->N:I

    .line 260
    .line 261
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    move-object v14, v2

    .line 266
    check-cast v14, Lcom/google/android/gms/internal/ads/e1;

    .line 267
    .line 268
    if-nez v14, :cond_d

    .line 269
    .line 270
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->O:I

    .line 271
    .line 272
    sub-int v0, v1, v0

    .line 273
    .line 274
    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 275
    .line 276
    .line 277
    iput v11, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 278
    .line 279
    return-void

    .line 280
    :cond_d
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    iget v2, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 286
    .line 287
    if-ne v2, v9, :cond_22

    .line 288
    .line 289
    const/4 v2, 0x3

    .line 290
    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/internal/ads/f1;->n(Lcom/google/android/gms/internal/ads/M;I)V

    .line 291
    .line 292
    .line 293
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 294
    .line 295
    aget-byte v4, v4, v10

    .line 296
    .line 297
    and-int/lit8 v4, v4, 0x6

    .line 298
    .line 299
    shr-int/2addr v4, v9

    .line 300
    const/16 v15, 0xff

    .line 301
    .line 302
    if-nez v4, :cond_10

    .line 303
    .line 304
    iput v9, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 305
    .line 306
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 307
    .line 308
    if-nez v2, :cond_e

    .line 309
    .line 310
    new-array v2, v9, [I

    .line 311
    .line 312
    goto :goto_1

    .line 313
    :cond_e
    array-length v3, v2

    .line 314
    if-lt v3, v9, :cond_f

    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_f
    add-int/2addr v3, v3

    .line 318
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    new-array v2, v2, [I

    .line 323
    .line 324
    :goto_1
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 325
    .line 326
    iget v3, v7, Lcom/google/android/gms/internal/ads/f1;->O:I

    .line 327
    .line 328
    sub-int/2addr v1, v3

    .line 329
    add-int/lit8 v1, v1, -0x3

    .line 330
    .line 331
    aput v1, v2, v11

    .line 332
    .line 333
    goto/16 :goto_9

    .line 334
    .line 335
    :cond_10
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/f1;->n(Lcom/google/android/gms/internal/ads/M;I)V

    .line 336
    .line 337
    .line 338
    iget-object v3, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 339
    .line 340
    aget-byte v3, v3, v2

    .line 341
    .line 342
    and-int/2addr v3, v15

    .line 343
    add-int/2addr v3, v9

    .line 344
    iput v3, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 345
    .line 346
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 347
    .line 348
    if-nez v6, :cond_11

    .line 349
    .line 350
    new-array v6, v3, [I

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_11
    array-length v5, v6

    .line 354
    if-lt v5, v3, :cond_12

    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_12
    add-int/2addr v5, v5

    .line 358
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    new-array v6, v3, [I

    .line 363
    .line 364
    :goto_2
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 365
    .line 366
    if-ne v4, v10, :cond_13

    .line 367
    .line 368
    iget v2, v7, Lcom/google/android/gms/internal/ads/f1;->O:I

    .line 369
    .line 370
    sub-int/2addr v1, v2

    .line 371
    add-int/lit8 v1, v1, -0x4

    .line 372
    .line 373
    iget v2, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 374
    .line 375
    div-int/2addr v1, v2

    .line 376
    invoke-static {v6, v11, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_9

    .line 380
    .line 381
    :cond_13
    if-ne v4, v9, :cond_16

    .line 382
    .line 383
    const/4 v2, 0x0

    .line 384
    const/4 v3, 0x4

    .line 385
    const/4 v4, 0x0

    .line 386
    :goto_3
    iget v5, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 387
    .line 388
    add-int/lit8 v5, v5, -0x1

    .line 389
    .line 390
    if-ge v2, v5, :cond_15

    .line 391
    .line 392
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 393
    .line 394
    aput v11, v5, v2

    .line 395
    .line 396
    :goto_4
    add-int/lit8 v5, v3, 0x1

    .line 397
    .line 398
    invoke-virtual {v7, v8, v5}, Lcom/google/android/gms/internal/ads/f1;->n(Lcom/google/android/gms/internal/ads/M;I)V

    .line 399
    .line 400
    .line 401
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 402
    .line 403
    aget-byte v3, v6, v3

    .line 404
    .line 405
    and-int/2addr v3, v15

    .line 406
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 407
    .line 408
    aget v16, v6, v2

    .line 409
    .line 410
    add-int v16, v16, v3

    .line 411
    .line 412
    aput v16, v6, v2

    .line 413
    .line 414
    if-eq v3, v15, :cond_14

    .line 415
    .line 416
    add-int v4, v4, v16

    .line 417
    .line 418
    add-int/lit8 v2, v2, 0x1

    .line 419
    .line 420
    move v3, v5

    .line 421
    goto :goto_3

    .line 422
    :cond_14
    move v3, v5

    .line 423
    goto :goto_4

    .line 424
    :cond_15
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 425
    .line 426
    iget v6, v7, Lcom/google/android/gms/internal/ads/f1;->O:I

    .line 427
    .line 428
    sub-int/2addr v1, v6

    .line 429
    sub-int/2addr v1, v3

    .line 430
    sub-int/2addr v1, v4

    .line 431
    aput v1, v2, v5

    .line 432
    .line 433
    goto/16 :goto_9

    .line 434
    .line 435
    :cond_16
    if-ne v4, v2, :cond_23

    .line 436
    .line 437
    const/4 v2, 0x0

    .line 438
    const/4 v3, 0x4

    .line 439
    const/4 v4, 0x0

    .line 440
    :goto_5
    iget v5, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 441
    .line 442
    add-int/lit8 v5, v5, -0x1

    .line 443
    .line 444
    if-ge v2, v5, :cond_1e

    .line 445
    .line 446
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 447
    .line 448
    aput v11, v5, v2

    .line 449
    .line 450
    add-int/lit8 v5, v3, 0x1

    .line 451
    .line 452
    invoke-virtual {v7, v8, v5}, Lcom/google/android/gms/internal/ads/f1;->n(Lcom/google/android/gms/internal/ads/M;I)V

    .line 453
    .line 454
    .line 455
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 456
    .line 457
    aget-byte v6, v6, v3

    .line 458
    .line 459
    if-eqz v6, :cond_1d

    .line 460
    .line 461
    const/4 v6, 0x0

    .line 462
    :goto_6
    if-ge v6, v12, :cond_1a

    .line 463
    .line 464
    rsub-int/lit8 v16, v6, 0x7

    .line 465
    .line 466
    shl-int v10, v9, v16

    .line 467
    .line 468
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 469
    .line 470
    aget-byte v9, v9, v3

    .line 471
    .line 472
    and-int/2addr v9, v10

    .line 473
    if-eqz v9, :cond_19

    .line 474
    .line 475
    add-int v9, v5, v6

    .line 476
    .line 477
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/f1;->n(Lcom/google/android/gms/internal/ads/M;I)V

    .line 478
    .line 479
    .line 480
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 481
    .line 482
    aget-byte v3, v11, v3

    .line 483
    .line 484
    and-int/2addr v3, v15

    .line 485
    not-int v10, v10

    .line 486
    and-int/2addr v3, v10

    .line 487
    int-to-long v10, v3

    .line 488
    :goto_7
    if-ge v5, v9, :cond_17

    .line 489
    .line 490
    shl-long/2addr v10, v12

    .line 491
    add-int/lit8 v3, v5, 0x1

    .line 492
    .line 493
    iget-object v12, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 494
    .line 495
    aget-byte v5, v12, v5

    .line 496
    .line 497
    and-int/2addr v5, v15

    .line 498
    move v12, v9

    .line 499
    int-to-long v8, v5

    .line 500
    or-long/2addr v10, v8

    .line 501
    move-object/from16 v8, p3

    .line 502
    .line 503
    move v5, v3

    .line 504
    move v9, v12

    .line 505
    const/16 v12, 0x8

    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_17
    move v12, v9

    .line 509
    if-lez v2, :cond_18

    .line 510
    .line 511
    mul-int/lit8 v6, v6, 0x7

    .line 512
    .line 513
    add-int/lit8 v6, v6, 0x6

    .line 514
    .line 515
    const-wide/16 v8, 0x1

    .line 516
    .line 517
    shl-long v5, v8, v6

    .line 518
    .line 519
    const-wide/16 v8, -0x1

    .line 520
    .line 521
    add-long/2addr v5, v8

    .line 522
    sub-long/2addr v10, v5

    .line 523
    :cond_18
    move v3, v12

    .line 524
    goto :goto_8

    .line 525
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 526
    .line 527
    move-object/from16 v8, p3

    .line 528
    .line 529
    const/4 v9, 0x1

    .line 530
    const/4 v10, 0x2

    .line 531
    const/4 v11, 0x0

    .line 532
    const/16 v12, 0x8

    .line 533
    .line 534
    goto :goto_6

    .line 535
    :cond_1a
    const-wide/16 v10, 0x0

    .line 536
    .line 537
    move v3, v5

    .line 538
    :goto_8
    const-wide/32 v5, -0x80000000

    .line 539
    .line 540
    .line 541
    cmp-long v8, v10, v5

    .line 542
    .line 543
    if-ltz v8, :cond_1c

    .line 544
    .line 545
    const-wide/32 v5, 0x7fffffff

    .line 546
    .line 547
    .line 548
    cmp-long v8, v10, v5

    .line 549
    .line 550
    if-gtz v8, :cond_1c

    .line 551
    .line 552
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 553
    .line 554
    long-to-int v6, v10

    .line 555
    if-eqz v2, :cond_1b

    .line 556
    .line 557
    add-int/lit8 v8, v2, -0x1

    .line 558
    .line 559
    aget v8, v5, v8

    .line 560
    .line 561
    add-int/2addr v6, v8

    .line 562
    :cond_1b
    aput v6, v5, v2

    .line 563
    .line 564
    add-int/2addr v4, v6

    .line 565
    add-int/lit8 v2, v2, 0x1

    .line 566
    .line 567
    move-object/from16 v8, p3

    .line 568
    .line 569
    const/4 v9, 0x1

    .line 570
    const/4 v10, 0x2

    .line 571
    const/4 v11, 0x0

    .line 572
    const/16 v12, 0x8

    .line 573
    .line 574
    goto/16 :goto_5

    .line 575
    .line 576
    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    .line 577
    .line 578
    const/4 v1, 0x0

    .line 579
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    throw v0

    .line 584
    :cond_1d
    const/4 v1, 0x0

    .line 585
    const-string v0, "No valid varint length mask found"

    .line 586
    .line 587
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    throw v0

    .line 592
    :cond_1e
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 593
    .line 594
    iget v6, v7, Lcom/google/android/gms/internal/ads/f1;->O:I

    .line 595
    .line 596
    sub-int/2addr v1, v6

    .line 597
    sub-int/2addr v1, v3

    .line 598
    sub-int/2addr v1, v4

    .line 599
    aput v1, v2, v5

    .line 600
    .line 601
    :goto_9
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 602
    .line 603
    const/4 v2, 0x0

    .line 604
    aget-byte v3, v1, v2

    .line 605
    .line 606
    const/16 v2, 0x8

    .line 607
    .line 608
    shl-int/lit8 v2, v3, 0x8

    .line 609
    .line 610
    const/4 v3, 0x1

    .line 611
    aget-byte v1, v1, v3

    .line 612
    .line 613
    and-int/2addr v1, v15

    .line 614
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/f1;->C:J

    .line 615
    .line 616
    or-int/2addr v1, v2

    .line 617
    int-to-long v1, v1

    .line 618
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/ads/f1;->j(J)J

    .line 619
    .line 620
    .line 621
    move-result-wide v1

    .line 622
    add-long/2addr v1, v3

    .line 623
    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/f1;->I:J

    .line 624
    .line 625
    iget v1, v14, Lcom/google/android/gms/internal/ads/e1;->d:I

    .line 626
    .line 627
    const/4 v2, 0x2

    .line 628
    if-eq v1, v2, :cond_1f

    .line 629
    .line 630
    const/16 v1, 0xa3

    .line 631
    .line 632
    if-ne v0, v1, :cond_21

    .line 633
    .line 634
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 635
    .line 636
    aget-byte v0, v0, v2

    .line 637
    .line 638
    const/16 v1, 0x80

    .line 639
    .line 640
    and-int/2addr v0, v1

    .line 641
    if-ne v0, v1, :cond_20

    .line 642
    .line 643
    const/16 v0, 0xa3

    .line 644
    .line 645
    :cond_1f
    const/4 v1, 0x1

    .line 646
    goto :goto_a

    .line 647
    :cond_20
    const/16 v0, 0xa3

    .line 648
    .line 649
    :cond_21
    const/4 v1, 0x0

    .line 650
    :goto_a
    iput v1, v7, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 651
    .line 652
    iput v2, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 653
    .line 654
    const/4 v1, 0x0

    .line 655
    iput v1, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 656
    .line 657
    :cond_22
    const/16 v1, 0xa3

    .line 658
    .line 659
    goto :goto_b

    .line 660
    :cond_23
    const-string v0, "Unexpected lacing value: 2"

    .line 661
    .line 662
    const/4 v1, 0x0

    .line 663
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    throw v0

    .line 668
    :goto_b
    if-ne v0, v1, :cond_25

    .line 669
    .line 670
    :goto_c
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 671
    .line 672
    iget v1, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 673
    .line 674
    if-ge v0, v1, :cond_24

    .line 675
    .line 676
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 677
    .line 678
    aget v0, v1, v0

    .line 679
    .line 680
    move-object/from16 v8, p3

    .line 681
    .line 682
    const/4 v1, 0x0

    .line 683
    invoke-virtual {v7, v8, v14, v0, v1}, Lcom/google/android/gms/internal/ads/f1;->i(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/e1;IZ)I

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/f1;->I:J

    .line 688
    .line 689
    iget v2, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 690
    .line 691
    iget v3, v14, Lcom/google/android/gms/internal/ads/e1;->e:I

    .line 692
    .line 693
    mul-int v2, v2, v3

    .line 694
    .line 695
    div-int/lit16 v2, v2, 0x3e8

    .line 696
    .line 697
    int-to-long v2, v2

    .line 698
    add-long/2addr v2, v0

    .line 699
    iget v4, v7, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 700
    .line 701
    const/4 v6, 0x0

    .line 702
    move-object/from16 v0, p0

    .line 703
    .line 704
    move-object v1, v14

    .line 705
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/f1;->m(Lcom/google/android/gms/internal/ads/e1;JIII)V

    .line 706
    .line 707
    .line 708
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 709
    .line 710
    const/4 v1, 0x1

    .line 711
    add-int/2addr v0, v1

    .line 712
    iput v0, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 713
    .line 714
    goto :goto_c

    .line 715
    :cond_24
    const/4 v0, 0x0

    .line 716
    iput v0, v7, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 717
    .line 718
    return-void

    .line 719
    :cond_25
    move-object/from16 v8, p3

    .line 720
    .line 721
    const/4 v1, 0x1

    .line 722
    :goto_d
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 723
    .line 724
    iget v2, v7, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 725
    .line 726
    if-ge v0, v2, :cond_26

    .line 727
    .line 728
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 729
    .line 730
    aget v3, v2, v0

    .line 731
    .line 732
    invoke-virtual {v7, v8, v14, v3, v1}, Lcom/google/android/gms/internal/ads/f1;->i(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/e1;IZ)I

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    aput v3, v2, v0

    .line 737
    .line 738
    iget v0, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 739
    .line 740
    add-int/2addr v0, v1

    .line 741
    iput v0, v7, Lcom/google/android/gms/internal/ads/f1;->K:I

    .line 742
    .line 743
    goto :goto_d

    .line 744
    :cond_26
    :goto_e
    return-void
.end method

.method public final b(ID)V
    .locals 1

    .line 1
    const/16 v0, 0xb5

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x4489

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    double-to-float p2, p2

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 21
    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    double-to-float p2, p2

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 30
    .line 31
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->u:F

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    double-to-float p2, p2

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 39
    .line 40
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->t:F

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_3
    double-to-float p2, p2

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 48
    .line 49
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->N:F

    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_4
    double-to-float p2, p2

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 57
    .line 58
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->M:F

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_5
    double-to-float p2, p2

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 66
    .line 67
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->L:F

    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_6
    double-to-float p2, p2

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 75
    .line 76
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->K:F

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_7
    double-to-float p2, p2

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 84
    .line 85
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->J:F

    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_8
    double-to-float p2, p2

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 93
    .line 94
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->I:F

    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_9
    double-to-float p2, p2

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 102
    .line 103
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->H:F

    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_a
    double-to-float p2, p2

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 111
    .line 112
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->G:F

    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_b
    double-to-float p2, p2

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 120
    .line 121
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->F:F

    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_c
    double-to-float p2, p2

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 129
    .line 130
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->E:F

    .line 131
    .line 132
    return-void

    .line 133
    :cond_0
    double-to-long p1, p2

    .line 134
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/f1;->t:J

    .line 135
    .line 136
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 141
    .line 142
    double-to-int p2, p2

    .line 143
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->R:I

    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x55d1
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
    .end packed-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "A_PCM/INT/BIG"

    .line 8
    .line 9
    const-string v6, "A_PCM/INT/LIT"

    .line 10
    .line 11
    const-string v8, "S_TEXT/ASS"

    .line 12
    .line 13
    const-string v10, "V_MPEGH/ISO/HEVC"

    .line 14
    .line 15
    const-string v12, "S_TEXT/WEBVTT"

    .line 16
    .line 17
    const-string v14, "S_TEXT/UTF8"

    .line 18
    .line 19
    const/16 v16, 0x1e

    .line 20
    .line 21
    const/16 v17, 0x1f

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/f1;->G:Z

    .line 25
    .line 26
    :goto_0
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/f1;->G:Z

    .line 27
    .line 28
    if-nez v11, :cond_86

    .line 29
    .line 30
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/f1;->d0:Lcom/google/android/gms/internal/ads/c1;

    .line 31
    .line 32
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/c1;->d:Lcom/google/android/gms/internal/ads/d1;

    .line 33
    .line 34
    invoke-static {v9}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/c1;->b:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v18

    .line 43
    move-object/from16 v5, v18

    .line 44
    .line 45
    check-cast v5, Lcom/google/android/gms/internal/ads/b1;

    .line 46
    .line 47
    move-object/from16 v18, v4

    .line 48
    .line 49
    move-object/from16 v22, v14

    .line 50
    .line 51
    const v3, 0x1549a966

    .line 52
    .line 53
    .line 54
    const v4, 0x1c53bb6b

    .line 55
    .line 56
    .line 57
    const v15, 0x1654ae6b

    .line 58
    .line 59
    .line 60
    if-eqz v5, :cond_6b

    .line 61
    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 63
    .line 64
    .line 65
    move-result-wide v25

    .line 66
    move-object/from16 v27, v8

    .line 67
    .line 68
    iget-wide v7, v5, Lcom/google/android/gms/internal/ads/b1;->b:J

    .line 69
    .line 70
    cmp-long v5, v25, v7

    .line 71
    .line 72
    if-gez v5, :cond_0

    .line 73
    .line 74
    move-object v14, v6

    .line 75
    move-object v7, v10

    .line 76
    move-object/from16 v8, v18

    .line 77
    .line 78
    move-object/from16 v10, v27

    .line 79
    .line 80
    const/16 v0, 0xff

    .line 81
    .line 82
    const/16 v1, 0x19

    .line 83
    .line 84
    const/16 v2, 0x18

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    const/4 v6, 0x0

    .line 88
    goto/16 :goto_3a

    .line 89
    .line 90
    :cond_0
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/c1;->d:Lcom/google/android/gms/internal/ads/d1;

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Lcom/google/android/gms/internal/ads/b1;

    .line 97
    .line 98
    iget v7, v7, Lcom/google/android/gms/internal/ads/b1;->a:I

    .line 99
    .line 100
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/d1;->a:Lcom/google/android/gms/internal/ads/f1;

    .line 101
    .line 102
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 103
    .line 104
    invoke-static {v8}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/f1;->b:Landroid/util/SparseArray;

    .line 108
    .line 109
    const/16 v9, 0xa0

    .line 110
    .line 111
    const-string v11, "A_OPUS"

    .line 112
    .line 113
    if-eq v7, v9, :cond_65

    .line 114
    .line 115
    const/16 v9, 0xae

    .line 116
    .line 117
    const-string v13, "MatroskaExtractor"

    .line 118
    .line 119
    if-eq v7, v9, :cond_14

    .line 120
    .line 121
    const/16 v9, 0x4dbb

    .line 122
    .line 123
    if-eq v7, v9, :cond_12

    .line 124
    .line 125
    const/16 v9, 0x6240

    .line 126
    .line 127
    if-eq v7, v9, :cond_10

    .line 128
    .line 129
    const/16 v9, 0x6d80

    .line 130
    .line 131
    if-eq v7, v9, :cond_e

    .line 132
    .line 133
    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    if-eq v7, v3, :cond_c

    .line 139
    .line 140
    if-eq v7, v15, :cond_a

    .line 141
    .line 142
    if-eq v7, v4, :cond_1

    .line 143
    .line 144
    :goto_2
    goto/16 :goto_7

    .line 145
    .line 146
    :cond_1
    iget-boolean v3, v5, Lcom/google/android/gms/internal/ads/f1;->w:Z

    .line 147
    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 151
    .line 152
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/f1;->D:Lp0/y;

    .line 153
    .line 154
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/f1;->E:Lp0/y;

    .line 155
    .line 156
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/f1;->r:J

    .line 157
    .line 158
    const-wide/16 v14, -0x1

    .line 159
    .line 160
    cmp-long v11, v8, v14

    .line 161
    .line 162
    if-eqz v11, :cond_6

    .line 163
    .line 164
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/f1;->u:J

    .line 165
    .line 166
    cmp-long v11, v8, v29

    .line 167
    .line 168
    if-eqz v11, :cond_6

    .line 169
    .line 170
    if-eqz v4, :cond_6

    .line 171
    .line 172
    iget v8, v4, Lp0/y;->a:I

    .line 173
    .line 174
    if-eqz v8, :cond_6

    .line 175
    .line 176
    if-eqz v7, :cond_6

    .line 177
    .line 178
    iget v9, v7, Lp0/y;->a:I

    .line 179
    .line 180
    if-eq v9, v8, :cond_2

    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :cond_2
    new-array v9, v8, [I

    .line 185
    .line 186
    new-array v11, v8, [J

    .line 187
    .line 188
    new-array v14, v8, [J

    .line 189
    .line 190
    new-array v15, v8, [J

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    :goto_3
    if-ge v2, v8, :cond_3

    .line 194
    .line 195
    invoke-virtual {v4, v2}, Lp0/y;->d(I)J

    .line 196
    .line 197
    .line 198
    move-result-wide v29

    .line 199
    aput-wide v29, v15, v2

    .line 200
    .line 201
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->r:J

    .line 202
    .line 203
    invoke-virtual {v7, v2}, Lp0/y;->d(I)J

    .line 204
    .line 205
    .line 206
    move-result-wide v29

    .line 207
    add-long v29, v29, v0

    .line 208
    .line 209
    aput-wide v29, v11, v2

    .line 210
    .line 211
    const/4 v0, 0x1

    .line 212
    add-int/2addr v2, v0

    .line 213
    move-object/from16 v0, p0

    .line 214
    .line 215
    move-object/from16 v1, p1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_3
    const/4 v0, 0x1

    .line 219
    const/4 v1, 0x0

    .line 220
    :goto_4
    const/4 v2, -0x1

    .line 221
    add-int/lit8 v4, v8, -0x1

    .line 222
    .line 223
    if-ge v1, v4, :cond_4

    .line 224
    .line 225
    add-int/lit8 v2, v1, 0x1

    .line 226
    .line 227
    aget-wide v29, v11, v2

    .line 228
    .line 229
    aget-wide v31, v11, v1

    .line 230
    .line 231
    move v0, v8

    .line 232
    sub-long v7, v29, v31

    .line 233
    .line 234
    long-to-int v4, v7

    .line 235
    aput v4, v9, v1

    .line 236
    .line 237
    aget-wide v7, v15, v2

    .line 238
    .line 239
    aget-wide v29, v15, v1

    .line 240
    .line 241
    sub-long v7, v7, v29

    .line 242
    .line 243
    aput-wide v7, v14, v1

    .line 244
    .line 245
    move v8, v0

    .line 246
    move v1, v2

    .line 247
    const/4 v0, 0x1

    .line 248
    goto :goto_4

    .line 249
    :cond_4
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->r:J

    .line 250
    .line 251
    iget-wide v7, v5, Lcom/google/android/gms/internal/ads/f1;->q:J

    .line 252
    .line 253
    add-long/2addr v0, v7

    .line 254
    aget-wide v7, v11, v4

    .line 255
    .line 256
    sub-long/2addr v0, v7

    .line 257
    long-to-int v1, v0

    .line 258
    aput v1, v9, v4

    .line 259
    .line 260
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->u:J

    .line 261
    .line 262
    aget-wide v7, v15, v4

    .line 263
    .line 264
    sub-long/2addr v0, v7

    .line 265
    aput-wide v0, v14, v4

    .line 266
    .line 267
    const-wide/16 v7, 0x0

    .line 268
    .line 269
    cmp-long v2, v0, v7

    .line 270
    .line 271
    if-gtz v2, :cond_5

    .line 272
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v7, "Discarding last cue point with unexpected duration: "

    .line 276
    .line 277
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-static {v11, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    invoke-static {v14, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    invoke-static {v15, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 303
    .line 304
    .line 305
    move-result-object v15

    .line 306
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/E;

    .line 307
    .line 308
    invoke-direct {v0, v9, v11, v14, v15}, Lcom/google/android/gms/internal/ads/E;-><init>([I[J[J[J)V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_6
    :goto_5
    new-instance v0, Lcom/google/android/gms/internal/ads/P;

    .line 313
    .line 314
    iget-wide v1, v5, Lcom/google/android/gms/internal/ads/f1;->u:J

    .line 315
    .line 316
    const-wide/16 v7, 0x0

    .line 317
    .line 318
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 319
    .line 320
    .line 321
    :goto_6
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 322
    .line 323
    .line 324
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, v5, Lcom/google/android/gms/internal/ads/f1;->w:Z

    .line 326
    .line 327
    :cond_7
    const/4 v0, 0x0

    .line 328
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/f1;->D:Lp0/y;

    .line 329
    .line 330
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/f1;->E:Lp0/y;

    .line 331
    .line 332
    :cond_8
    :goto_7
    move-object v14, v6

    .line 333
    move-object v7, v10

    .line 334
    move-object/from16 v10, v27

    .line 335
    .line 336
    :goto_8
    const/16 v0, 0xff

    .line 337
    .line 338
    :cond_9
    const/4 v5, 0x1

    .line 339
    const/4 v6, 0x0

    .line 340
    goto/16 :goto_38

    .line 341
    .line 342
    :cond_a
    const/4 v0, 0x0

    .line 343
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_b

    .line 348
    .line 349
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 350
    .line 351
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 352
    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_b
    const-string v1, "No valid tracks were found"

    .line 356
    .line 357
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    throw v0

    .line 362
    :cond_c
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->s:J

    .line 363
    .line 364
    cmp-long v2, v0, v29

    .line 365
    .line 366
    if-nez v2, :cond_d

    .line 367
    .line 368
    const-wide/32 v0, 0xf4240

    .line 369
    .line 370
    .line 371
    iput-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->s:J

    .line 372
    .line 373
    :cond_d
    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->t:J

    .line 374
    .line 375
    cmp-long v2, v0, v29

    .line 376
    .line 377
    if-eqz v2, :cond_8

    .line 378
    .line 379
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/ads/f1;->j(J)J

    .line 380
    .line 381
    .line 382
    move-result-wide v0

    .line 383
    iput-wide v0, v5, Lcom/google/android/gms/internal/ads/f1;->u:J

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_e
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 387
    .line 388
    .line 389
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 390
    .line 391
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/e1;->h:Z

    .line 392
    .line 393
    if-eqz v1, :cond_8

    .line 394
    .line 395
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/e1;->i:[B

    .line 396
    .line 397
    if-nez v0, :cond_f

    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :cond_f
    const-string v0, "Combining encryption and compression is not supported"

    .line 402
    .line 403
    const/4 v1, 0x0

    .line 404
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    throw v0

    .line 409
    :cond_10
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 410
    .line 411
    .line 412
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 413
    .line 414
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/e1;->h:Z

    .line 415
    .line 416
    if-eqz v1, :cond_8

    .line 417
    .line 418
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e1;->j:Lcom/google/android/gms/internal/ads/d0;

    .line 419
    .line 420
    if-eqz v1, :cond_11

    .line 421
    .line 422
    new-instance v2, Lcom/google/android/gms/internal/ads/mO;

    .line 423
    .line 424
    new-instance v3, Lcom/google/android/gms/internal/ads/cO;

    .line 425
    .line 426
    sget-object v4, Lcom/google/android/gms/internal/ads/wK;->a:Ljava/util/UUID;

    .line 427
    .line 428
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/d0;->b:[B

    .line 429
    .line 430
    const-string v5, "video/webm"

    .line 431
    .line 432
    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/cO;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 433
    .line 434
    .line 435
    const/4 v1, 0x1

    .line 436
    new-array v4, v1, [Lcom/google/android/gms/internal/ads/cO;

    .line 437
    .line 438
    const/4 v5, 0x0

    .line 439
    aput-object v3, v4, v5

    .line 440
    .line 441
    const/4 v3, 0x0

    .line 442
    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/mO;-><init>(Ljava/lang/String;Z[Lcom/google/android/gms/internal/ads/cO;)V

    .line 443
    .line 444
    .line 445
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/e1;->l:Lcom/google/android/gms/internal/ads/mO;

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_11
    const/4 v3, 0x0

    .line 449
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 450
    .line 451
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    throw v0

    .line 456
    :cond_12
    iget v0, v5, Lcom/google/android/gms/internal/ads/f1;->x:I

    .line 457
    .line 458
    const/4 v1, -0x1

    .line 459
    if-eq v0, v1, :cond_13

    .line 460
    .line 461
    iget-wide v1, v5, Lcom/google/android/gms/internal/ads/f1;->y:J

    .line 462
    .line 463
    const-wide/16 v7, -0x1

    .line 464
    .line 465
    cmp-long v3, v1, v7

    .line 466
    .line 467
    if-eqz v3, :cond_13

    .line 468
    .line 469
    if-ne v0, v4, :cond_8

    .line 470
    .line 471
    iput-wide v1, v5, Lcom/google/android/gms/internal/ads/f1;->A:J

    .line 472
    .line 473
    goto/16 :goto_7

    .line 474
    .line 475
    :cond_13
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 476
    .line 477
    const/4 v1, 0x0

    .line 478
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    throw v0

    .line 483
    :cond_14
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 484
    .line 485
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 489
    .line 490
    if-eqz v1, :cond_64

    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    const-string v3, "A_MPEG/L2"

    .line 497
    .line 498
    const-string v7, "A_FLAC"

    .line 499
    .line 500
    const-string v14, "A_EAC3"

    .line 501
    .line 502
    const-string v4, "V_MPEG2"

    .line 503
    .line 504
    const-string v9, "V_MPEG4/ISO/AP"

    .line 505
    .line 506
    const-string v15, "V_MPEG4/ISO/SP"

    .line 507
    .line 508
    move-object/from16 v30, v8

    .line 509
    .line 510
    const-string v8, "A_MS/ACM"

    .line 511
    .line 512
    move-object/from16 v31, v13

    .line 513
    .line 514
    const-string v13, "A_TRUEHD"

    .line 515
    .line 516
    move-object/from16 v32, v0

    .line 517
    .line 518
    const-string v0, "A_VORBIS"

    .line 519
    .line 520
    sparse-switch v2, :sswitch_data_0

    .line 521
    .line 522
    .line 523
    :goto_9
    move-object/from16 v2, v22

    .line 524
    .line 525
    :goto_a
    move-object/from16 v22, v10

    .line 526
    .line 527
    move-object/from16 v10, v27

    .line 528
    .line 529
    :goto_b
    move-object/from16 v27, v6

    .line 530
    .line 531
    :goto_c
    const/4 v6, -0x1

    .line 532
    goto/16 :goto_10

    .line 533
    .line 534
    :sswitch_0
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-nez v2, :cond_15

    .line 539
    .line 540
    goto :goto_9

    .line 541
    :cond_15
    move-object/from16 v2, v22

    .line 542
    .line 543
    move-object/from16 v22, v10

    .line 544
    .line 545
    move-object/from16 v10, v27

    .line 546
    .line 547
    move-object/from16 v27, v6

    .line 548
    .line 549
    const/16 v6, 0x20

    .line 550
    .line 551
    goto/16 :goto_10

    .line 552
    .line 553
    :sswitch_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-nez v2, :cond_16

    .line 558
    .line 559
    goto :goto_9

    .line 560
    :cond_16
    move-object/from16 v2, v22

    .line 561
    .line 562
    move-object/from16 v22, v10

    .line 563
    .line 564
    move-object/from16 v10, v27

    .line 565
    .line 566
    move-object/from16 v27, v6

    .line 567
    .line 568
    const/16 v6, 0x1f

    .line 569
    .line 570
    goto/16 :goto_10

    .line 571
    .line 572
    :sswitch_2
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    if-nez v2, :cond_17

    .line 577
    .line 578
    goto :goto_9

    .line 579
    :cond_17
    move-object/from16 v2, v22

    .line 580
    .line 581
    move-object/from16 v22, v10

    .line 582
    .line 583
    move-object/from16 v10, v27

    .line 584
    .line 585
    move-object/from16 v27, v6

    .line 586
    .line 587
    const/16 v6, 0x1e

    .line 588
    .line 589
    goto/16 :goto_10

    .line 590
    .line 591
    :sswitch_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-nez v2, :cond_18

    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_18
    move-object/from16 v2, v22

    .line 599
    .line 600
    move-object/from16 v22, v10

    .line 601
    .line 602
    move-object/from16 v10, v27

    .line 603
    .line 604
    move-object/from16 v27, v6

    .line 605
    .line 606
    const/16 v6, 0x1d

    .line 607
    .line 608
    goto/16 :goto_10

    .line 609
    .line 610
    :sswitch_4
    move-object/from16 v2, v22

    .line 611
    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v22

    .line 616
    if-nez v22, :cond_19

    .line 617
    .line 618
    :goto_d
    goto :goto_a

    .line 619
    :cond_19
    move-object/from16 v22, v10

    .line 620
    .line 621
    move-object/from16 v10, v27

    .line 622
    .line 623
    move-object/from16 v27, v6

    .line 624
    .line 625
    const/16 v6, 0x1c

    .line 626
    .line 627
    goto/16 :goto_10

    .line 628
    .line 629
    :sswitch_5
    move-object/from16 v2, v22

    .line 630
    .line 631
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v22

    .line 635
    if-nez v22, :cond_1a

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_1a
    move-object/from16 v22, v10

    .line 639
    .line 640
    move-object/from16 v10, v27

    .line 641
    .line 642
    move-object/from16 v27, v6

    .line 643
    .line 644
    const/16 v6, 0x1b

    .line 645
    .line 646
    goto/16 :goto_10

    .line 647
    .line 648
    :sswitch_6
    move-object/from16 v2, v22

    .line 649
    .line 650
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v22

    .line 654
    if-nez v22, :cond_1b

    .line 655
    .line 656
    goto :goto_d

    .line 657
    :cond_1b
    move-object/from16 v22, v10

    .line 658
    .line 659
    move-object/from16 v10, v27

    .line 660
    .line 661
    move-object/from16 v27, v6

    .line 662
    .line 663
    const/16 v6, 0x1a

    .line 664
    .line 665
    goto/16 :goto_10

    .line 666
    .line 667
    :sswitch_7
    move-object/from16 v2, v22

    .line 668
    .line 669
    move-object/from16 v22, v10

    .line 670
    .line 671
    move-object/from16 v10, v27

    .line 672
    .line 673
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v27

    .line 677
    if-nez v27, :cond_1c

    .line 678
    .line 679
    :goto_e
    goto/16 :goto_b

    .line 680
    .line 681
    :cond_1c
    move-object/from16 v27, v6

    .line 682
    .line 683
    const/16 v6, 0x19

    .line 684
    .line 685
    goto/16 :goto_10

    .line 686
    .line 687
    :sswitch_8
    move-object/from16 v2, v22

    .line 688
    .line 689
    move-object/from16 v22, v10

    .line 690
    .line 691
    move-object/from16 v10, v27

    .line 692
    .line 693
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v27

    .line 697
    if-nez v27, :cond_1d

    .line 698
    .line 699
    goto :goto_e

    .line 700
    :cond_1d
    move-object/from16 v27, v6

    .line 701
    .line 702
    const/16 v6, 0x18

    .line 703
    .line 704
    goto/16 :goto_10

    .line 705
    .line 706
    :sswitch_9
    move-object/from16 v2, v22

    .line 707
    .line 708
    move-object/from16 v22, v10

    .line 709
    .line 710
    move-object/from16 v10, v27

    .line 711
    .line 712
    move-object/from16 v27, v6

    .line 713
    .line 714
    move-object/from16 v6, v18

    .line 715
    .line 716
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v18

    .line 720
    if-nez v18, :cond_1e

    .line 721
    .line 722
    move-object/from16 v18, v6

    .line 723
    .line 724
    goto/16 :goto_c

    .line 725
    .line 726
    :cond_1e
    move-object/from16 v18, v6

    .line 727
    .line 728
    const/16 v6, 0x17

    .line 729
    .line 730
    goto/16 :goto_10

    .line 731
    .line 732
    :sswitch_a
    move-object/from16 v2, v22

    .line 733
    .line 734
    move-object/from16 v22, v10

    .line 735
    .line 736
    move-object/from16 v10, v27

    .line 737
    .line 738
    move-object/from16 v27, v6

    .line 739
    .line 740
    const-string v6, "A_PCM/FLOAT/IEEE"

    .line 741
    .line 742
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    if-nez v6, :cond_1f

    .line 747
    .line 748
    :goto_f
    goto/16 :goto_c

    .line 749
    .line 750
    :cond_1f
    const/16 v6, 0x16

    .line 751
    .line 752
    goto/16 :goto_10

    .line 753
    .line 754
    :sswitch_b
    move-object/from16 v2, v22

    .line 755
    .line 756
    move-object/from16 v22, v10

    .line 757
    .line 758
    move-object/from16 v10, v27

    .line 759
    .line 760
    move-object/from16 v27, v6

    .line 761
    .line 762
    const-string v6, "A_DTS/EXPRESS"

    .line 763
    .line 764
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    if-nez v6, :cond_20

    .line 769
    .line 770
    goto :goto_f

    .line 771
    :cond_20
    const/16 v6, 0x15

    .line 772
    .line 773
    goto/16 :goto_10

    .line 774
    .line 775
    :sswitch_c
    move-object/from16 v2, v22

    .line 776
    .line 777
    move-object/from16 v22, v10

    .line 778
    .line 779
    move-object/from16 v10, v27

    .line 780
    .line 781
    move-object/from16 v27, v6

    .line 782
    .line 783
    const-string v6, "V_THEORA"

    .line 784
    .line 785
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result v6

    .line 789
    if-nez v6, :cond_21

    .line 790
    .line 791
    goto :goto_f

    .line 792
    :cond_21
    const/16 v6, 0x14

    .line 793
    .line 794
    goto/16 :goto_10

    .line 795
    .line 796
    :sswitch_d
    move-object/from16 v2, v22

    .line 797
    .line 798
    move-object/from16 v22, v10

    .line 799
    .line 800
    move-object/from16 v10, v27

    .line 801
    .line 802
    move-object/from16 v27, v6

    .line 803
    .line 804
    const-string v6, "S_HDMV/PGS"

    .line 805
    .line 806
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v6

    .line 810
    if-nez v6, :cond_22

    .line 811
    .line 812
    goto :goto_f

    .line 813
    :cond_22
    const/16 v6, 0x13

    .line 814
    .line 815
    goto/16 :goto_10

    .line 816
    .line 817
    :sswitch_e
    move-object/from16 v2, v22

    .line 818
    .line 819
    move-object/from16 v22, v10

    .line 820
    .line 821
    move-object/from16 v10, v27

    .line 822
    .line 823
    move-object/from16 v27, v6

    .line 824
    .line 825
    const-string v6, "V_VP9"

    .line 826
    .line 827
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v6

    .line 831
    if-nez v6, :cond_23

    .line 832
    .line 833
    goto :goto_f

    .line 834
    :cond_23
    const/16 v6, 0x12

    .line 835
    .line 836
    goto/16 :goto_10

    .line 837
    .line 838
    :sswitch_f
    move-object/from16 v2, v22

    .line 839
    .line 840
    move-object/from16 v22, v10

    .line 841
    .line 842
    move-object/from16 v10, v27

    .line 843
    .line 844
    move-object/from16 v27, v6

    .line 845
    .line 846
    const-string v6, "V_VP8"

    .line 847
    .line 848
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v6

    .line 852
    if-nez v6, :cond_24

    .line 853
    .line 854
    goto :goto_f

    .line 855
    :cond_24
    const/16 v6, 0x11

    .line 856
    .line 857
    goto/16 :goto_10

    .line 858
    .line 859
    :sswitch_10
    move-object/from16 v2, v22

    .line 860
    .line 861
    move-object/from16 v22, v10

    .line 862
    .line 863
    move-object/from16 v10, v27

    .line 864
    .line 865
    move-object/from16 v27, v6

    .line 866
    .line 867
    const-string v6, "V_AV1"

    .line 868
    .line 869
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v6

    .line 873
    if-nez v6, :cond_25

    .line 874
    .line 875
    goto :goto_f

    .line 876
    :cond_25
    const/16 v6, 0x10

    .line 877
    .line 878
    goto/16 :goto_10

    .line 879
    .line 880
    :sswitch_11
    move-object/from16 v2, v22

    .line 881
    .line 882
    move-object/from16 v22, v10

    .line 883
    .line 884
    move-object/from16 v10, v27

    .line 885
    .line 886
    move-object/from16 v27, v6

    .line 887
    .line 888
    const-string v6, "A_DTS"

    .line 889
    .line 890
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v6

    .line 894
    if-nez v6, :cond_26

    .line 895
    .line 896
    goto/16 :goto_f

    .line 897
    .line 898
    :cond_26
    const/16 v6, 0xf

    .line 899
    .line 900
    goto/16 :goto_10

    .line 901
    .line 902
    :sswitch_12
    move-object/from16 v2, v22

    .line 903
    .line 904
    move-object/from16 v22, v10

    .line 905
    .line 906
    move-object/from16 v10, v27

    .line 907
    .line 908
    move-object/from16 v27, v6

    .line 909
    .line 910
    const-string v6, "A_AC3"

    .line 911
    .line 912
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v6

    .line 916
    if-nez v6, :cond_27

    .line 917
    .line 918
    goto/16 :goto_f

    .line 919
    .line 920
    :cond_27
    const/16 v6, 0xe

    .line 921
    .line 922
    goto/16 :goto_10

    .line 923
    .line 924
    :sswitch_13
    move-object/from16 v2, v22

    .line 925
    .line 926
    move-object/from16 v22, v10

    .line 927
    .line 928
    move-object/from16 v10, v27

    .line 929
    .line 930
    move-object/from16 v27, v6

    .line 931
    .line 932
    const-string v6, "A_AAC"

    .line 933
    .line 934
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    if-nez v6, :cond_28

    .line 939
    .line 940
    goto/16 :goto_f

    .line 941
    .line 942
    :cond_28
    const/16 v6, 0xd

    .line 943
    .line 944
    goto/16 :goto_10

    .line 945
    .line 946
    :sswitch_14
    move-object/from16 v2, v22

    .line 947
    .line 948
    move-object/from16 v22, v10

    .line 949
    .line 950
    move-object/from16 v10, v27

    .line 951
    .line 952
    move-object/from16 v27, v6

    .line 953
    .line 954
    const-string v6, "A_DTS/LOSSLESS"

    .line 955
    .line 956
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v6

    .line 960
    if-nez v6, :cond_29

    .line 961
    .line 962
    goto/16 :goto_f

    .line 963
    .line 964
    :cond_29
    const/16 v6, 0xc

    .line 965
    .line 966
    goto/16 :goto_10

    .line 967
    .line 968
    :sswitch_15
    move-object/from16 v2, v22

    .line 969
    .line 970
    move-object/from16 v22, v10

    .line 971
    .line 972
    move-object/from16 v10, v27

    .line 973
    .line 974
    move-object/from16 v27, v6

    .line 975
    .line 976
    const-string v6, "S_VOBSUB"

    .line 977
    .line 978
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    move-result v6

    .line 982
    if-nez v6, :cond_2a

    .line 983
    .line 984
    goto/16 :goto_f

    .line 985
    .line 986
    :cond_2a
    const/16 v6, 0xb

    .line 987
    .line 988
    goto/16 :goto_10

    .line 989
    .line 990
    :sswitch_16
    move-object/from16 v2, v22

    .line 991
    .line 992
    move-object/from16 v22, v10

    .line 993
    .line 994
    move-object/from16 v10, v27

    .line 995
    .line 996
    move-object/from16 v27, v6

    .line 997
    .line 998
    const-string v6, "V_MPEG4/ISO/AVC"

    .line 999
    .line 1000
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v6

    .line 1004
    if-nez v6, :cond_2b

    .line 1005
    .line 1006
    goto/16 :goto_f

    .line 1007
    .line 1008
    :cond_2b
    const/16 v6, 0xa

    .line 1009
    .line 1010
    goto/16 :goto_10

    .line 1011
    .line 1012
    :sswitch_17
    move-object/from16 v2, v22

    .line 1013
    .line 1014
    move-object/from16 v22, v10

    .line 1015
    .line 1016
    move-object/from16 v10, v27

    .line 1017
    .line 1018
    move-object/from16 v27, v6

    .line 1019
    .line 1020
    const-string v6, "V_MPEG4/ISO/ASP"

    .line 1021
    .line 1022
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v6

    .line 1026
    if-nez v6, :cond_2c

    .line 1027
    .line 1028
    goto/16 :goto_f

    .line 1029
    .line 1030
    :cond_2c
    const/16 v6, 0x9

    .line 1031
    .line 1032
    goto/16 :goto_10

    .line 1033
    .line 1034
    :sswitch_18
    move-object/from16 v2, v22

    .line 1035
    .line 1036
    move-object/from16 v22, v10

    .line 1037
    .line 1038
    move-object/from16 v10, v27

    .line 1039
    .line 1040
    move-object/from16 v27, v6

    .line 1041
    .line 1042
    const-string v6, "S_DVBSUB"

    .line 1043
    .line 1044
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v6

    .line 1048
    if-nez v6, :cond_2d

    .line 1049
    .line 1050
    goto/16 :goto_f

    .line 1051
    .line 1052
    :cond_2d
    const/16 v6, 0x8

    .line 1053
    .line 1054
    goto/16 :goto_10

    .line 1055
    .line 1056
    :sswitch_19
    move-object/from16 v2, v22

    .line 1057
    .line 1058
    move-object/from16 v22, v10

    .line 1059
    .line 1060
    move-object/from16 v10, v27

    .line 1061
    .line 1062
    move-object/from16 v27, v6

    .line 1063
    .line 1064
    const-string v6, "V_MS/VFW/FOURCC"

    .line 1065
    .line 1066
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v6

    .line 1070
    if-nez v6, :cond_2e

    .line 1071
    .line 1072
    goto/16 :goto_f

    .line 1073
    .line 1074
    :cond_2e
    const/4 v6, 0x7

    .line 1075
    goto/16 :goto_10

    .line 1076
    .line 1077
    :sswitch_1a
    move-object/from16 v2, v22

    .line 1078
    .line 1079
    move-object/from16 v22, v10

    .line 1080
    .line 1081
    move-object/from16 v10, v27

    .line 1082
    .line 1083
    move-object/from16 v27, v6

    .line 1084
    .line 1085
    const-string v6, "A_MPEG/L3"

    .line 1086
    .line 1087
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v6

    .line 1091
    if-nez v6, :cond_2f

    .line 1092
    .line 1093
    goto/16 :goto_f

    .line 1094
    .line 1095
    :cond_2f
    const/4 v6, 0x6

    .line 1096
    goto/16 :goto_10

    .line 1097
    .line 1098
    :sswitch_1b
    move-object/from16 v2, v22

    .line 1099
    .line 1100
    move-object/from16 v22, v10

    .line 1101
    .line 1102
    move-object/from16 v10, v27

    .line 1103
    .line 1104
    move-object/from16 v27, v6

    .line 1105
    .line 1106
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v6

    .line 1110
    if-nez v6, :cond_30

    .line 1111
    .line 1112
    goto/16 :goto_f

    .line 1113
    .line 1114
    :cond_30
    const/4 v6, 0x5

    .line 1115
    goto/16 :goto_10

    .line 1116
    .line 1117
    :sswitch_1c
    move-object/from16 v2, v22

    .line 1118
    .line 1119
    move-object/from16 v22, v10

    .line 1120
    .line 1121
    move-object/from16 v10, v27

    .line 1122
    .line 1123
    move-object/from16 v27, v6

    .line 1124
    .line 1125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v6

    .line 1129
    if-nez v6, :cond_31

    .line 1130
    .line 1131
    goto/16 :goto_f

    .line 1132
    .line 1133
    :cond_31
    const/4 v6, 0x4

    .line 1134
    goto :goto_10

    .line 1135
    :sswitch_1d
    move-object/from16 v2, v22

    .line 1136
    .line 1137
    move-object/from16 v22, v10

    .line 1138
    .line 1139
    move-object/from16 v10, v27

    .line 1140
    .line 1141
    move-object/from16 v27, v6

    .line 1142
    .line 1143
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v6

    .line 1147
    if-nez v6, :cond_32

    .line 1148
    .line 1149
    goto/16 :goto_f

    .line 1150
    .line 1151
    :cond_32
    const/4 v6, 0x3

    .line 1152
    goto :goto_10

    .line 1153
    :sswitch_1e
    move-object/from16 v2, v22

    .line 1154
    .line 1155
    move-object/from16 v22, v10

    .line 1156
    .line 1157
    move-object/from16 v10, v27

    .line 1158
    .line 1159
    move-object/from16 v27, v6

    .line 1160
    .line 1161
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v6

    .line 1165
    if-nez v6, :cond_33

    .line 1166
    .line 1167
    goto/16 :goto_f

    .line 1168
    .line 1169
    :cond_33
    const/4 v6, 0x2

    .line 1170
    goto :goto_10

    .line 1171
    :sswitch_1f
    move-object/from16 v2, v22

    .line 1172
    .line 1173
    move-object/from16 v22, v10

    .line 1174
    .line 1175
    move-object/from16 v10, v27

    .line 1176
    .line 1177
    move-object/from16 v27, v6

    .line 1178
    .line 1179
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v6

    .line 1183
    if-nez v6, :cond_34

    .line 1184
    .line 1185
    goto/16 :goto_f

    .line 1186
    .line 1187
    :cond_34
    const/4 v6, 0x1

    .line 1188
    goto :goto_10

    .line 1189
    :sswitch_20
    move-object/from16 v2, v22

    .line 1190
    .line 1191
    move-object/from16 v22, v10

    .line 1192
    .line 1193
    move-object/from16 v10, v27

    .line 1194
    .line 1195
    move-object/from16 v27, v6

    .line 1196
    .line 1197
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v6

    .line 1201
    if-nez v6, :cond_35

    .line 1202
    .line 1203
    goto/16 :goto_f

    .line 1204
    .line 1205
    :cond_35
    const/4 v6, 0x0

    .line 1206
    :goto_10
    packed-switch v6, :pswitch_data_0

    .line 1207
    .line 1208
    .line 1209
    move-object/from16 v7, v22

    .line 1210
    .line 1211
    move-object/from16 v14, v27

    .line 1212
    .line 1213
    const/4 v0, 0x0

    .line 1214
    move-object/from16 v22, v2

    .line 1215
    .line 1216
    move-object v2, v5

    .line 1217
    goto/16 :goto_34

    .line 1218
    .line 1219
    :pswitch_0
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 1220
    .line 1221
    move-object/from16 v36, v5

    .line 1222
    .line 1223
    move-object/from16 v5, v32

    .line 1224
    .line 1225
    move-object/from16 v32, v6

    .line 1226
    .line 1227
    iget v6, v5, Lcom/google/android/gms/internal/ads/e1;->c:I

    .line 1228
    .line 1229
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1230
    .line 1231
    .line 1232
    move-result v33

    .line 1233
    move/from16 v34, v6

    .line 1234
    .line 1235
    const/16 v37, 0x14

    .line 1236
    .line 1237
    const/16 v6, 0x10

    .line 1238
    .line 1239
    sparse-switch v33, :sswitch_data_1

    .line 1240
    .line 1241
    .line 1242
    :cond_36
    move-object/from16 v4, v18

    .line 1243
    .line 1244
    move-object/from16 v7, v22

    .line 1245
    .line 1246
    :goto_11
    move-object/from16 v14, v27

    .line 1247
    .line 1248
    goto/16 :goto_12

    .line 1249
    .line 1250
    :sswitch_21
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-eqz v0, :cond_36

    .line 1255
    .line 1256
    const/16 v0, 0xc

    .line 1257
    .line 1258
    move-object/from16 v4, v18

    .line 1259
    .line 1260
    move-object/from16 v7, v22

    .line 1261
    .line 1262
    move-object/from16 v14, v27

    .line 1263
    .line 1264
    goto/16 :goto_13

    .line 1265
    .line 1266
    :sswitch_22
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    if-eqz v0, :cond_36

    .line 1271
    .line 1272
    move-object/from16 v4, v18

    .line 1273
    .line 1274
    move-object/from16 v7, v22

    .line 1275
    .line 1276
    move-object/from16 v14, v27

    .line 1277
    .line 1278
    const/16 v0, 0x16

    .line 1279
    .line 1280
    goto/16 :goto_13

    .line 1281
    .line 1282
    :sswitch_23
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v0

    .line 1286
    if-eqz v0, :cond_36

    .line 1287
    .line 1288
    move-object/from16 v4, v18

    .line 1289
    .line 1290
    move-object/from16 v7, v22

    .line 1291
    .line 1292
    move-object/from16 v14, v27

    .line 1293
    .line 1294
    const/16 v0, 0x11

    .line 1295
    .line 1296
    goto/16 :goto_13

    .line 1297
    .line 1298
    :sswitch_24
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-eqz v0, :cond_36

    .line 1303
    .line 1304
    move-object/from16 v4, v18

    .line 1305
    .line 1306
    move-object/from16 v7, v22

    .line 1307
    .line 1308
    move-object/from16 v14, v27

    .line 1309
    .line 1310
    const/4 v0, 0x3

    .line 1311
    goto/16 :goto_13

    .line 1312
    .line 1313
    :sswitch_25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    if-eqz v0, :cond_36

    .line 1318
    .line 1319
    move-object/from16 v4, v18

    .line 1320
    .line 1321
    move-object/from16 v7, v22

    .line 1322
    .line 1323
    move-object/from16 v14, v27

    .line 1324
    .line 1325
    const/16 v0, 0x1b

    .line 1326
    .line 1327
    goto/16 :goto_13

    .line 1328
    .line 1329
    :sswitch_26
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v0

    .line 1333
    if-eqz v0, :cond_36

    .line 1334
    .line 1335
    move-object/from16 v4, v18

    .line 1336
    .line 1337
    move-object/from16 v7, v22

    .line 1338
    .line 1339
    move-object/from16 v14, v27

    .line 1340
    .line 1341
    const/16 v0, 0x1d

    .line 1342
    .line 1343
    goto/16 :goto_13

    .line 1344
    .line 1345
    :sswitch_27
    move-object/from16 v7, v22

    .line 1346
    .line 1347
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    if-eqz v0, :cond_37

    .line 1352
    .line 1353
    move-object/from16 v4, v18

    .line 1354
    .line 1355
    move-object/from16 v14, v27

    .line 1356
    .line 1357
    const/16 v0, 0x8

    .line 1358
    .line 1359
    goto/16 :goto_13

    .line 1360
    .line 1361
    :cond_37
    move-object/from16 v4, v18

    .line 1362
    .line 1363
    goto :goto_11

    .line 1364
    :sswitch_28
    move-object/from16 v7, v22

    .line 1365
    .line 1366
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    if-eqz v0, :cond_37

    .line 1371
    .line 1372
    move-object/from16 v4, v18

    .line 1373
    .line 1374
    move-object/from16 v14, v27

    .line 1375
    .line 1376
    const/16 v0, 0x1c

    .line 1377
    .line 1378
    goto/16 :goto_13

    .line 1379
    .line 1380
    :sswitch_29
    move-object/from16 v7, v22

    .line 1381
    .line 1382
    move-object/from16 v14, v27

    .line 1383
    .line 1384
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v0

    .line 1388
    move-object/from16 v4, v18

    .line 1389
    .line 1390
    if-eqz v0, :cond_38

    .line 1391
    .line 1392
    const/16 v0, 0x18

    .line 1393
    .line 1394
    goto/16 :goto_13

    .line 1395
    .line 1396
    :sswitch_2a
    move-object/from16 v4, v18

    .line 1397
    .line 1398
    move-object/from16 v7, v22

    .line 1399
    .line 1400
    move-object/from16 v14, v27

    .line 1401
    .line 1402
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1403
    .line 1404
    .line 1405
    move-result v0

    .line 1406
    if-eqz v0, :cond_38

    .line 1407
    .line 1408
    const/16 v0, 0x19

    .line 1409
    .line 1410
    goto/16 :goto_13

    .line 1411
    .line 1412
    :sswitch_2b
    move-object/from16 v4, v18

    .line 1413
    .line 1414
    move-object/from16 v7, v22

    .line 1415
    .line 1416
    move-object/from16 v14, v27

    .line 1417
    .line 1418
    const-string v0, "A_PCM/FLOAT/IEEE"

    .line 1419
    .line 1420
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1421
    .line 1422
    .line 1423
    move-result v0

    .line 1424
    if-eqz v0, :cond_38

    .line 1425
    .line 1426
    const/16 v0, 0x1a

    .line 1427
    .line 1428
    goto/16 :goto_13

    .line 1429
    .line 1430
    :sswitch_2c
    move-object/from16 v4, v18

    .line 1431
    .line 1432
    move-object/from16 v7, v22

    .line 1433
    .line 1434
    move-object/from16 v14, v27

    .line 1435
    .line 1436
    const-string v0, "A_DTS/EXPRESS"

    .line 1437
    .line 1438
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1439
    .line 1440
    .line 1441
    move-result v0

    .line 1442
    if-eqz v0, :cond_38

    .line 1443
    .line 1444
    const/16 v0, 0x14

    .line 1445
    .line 1446
    goto/16 :goto_13

    .line 1447
    .line 1448
    :sswitch_2d
    move-object/from16 v4, v18

    .line 1449
    .line 1450
    move-object/from16 v7, v22

    .line 1451
    .line 1452
    move-object/from16 v14, v27

    .line 1453
    .line 1454
    const-string v0, "V_THEORA"

    .line 1455
    .line 1456
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result v0

    .line 1460
    if-eqz v0, :cond_38

    .line 1461
    .line 1462
    const/16 v0, 0xa

    .line 1463
    .line 1464
    goto/16 :goto_13

    .line 1465
    .line 1466
    :sswitch_2e
    move-object/from16 v4, v18

    .line 1467
    .line 1468
    move-object/from16 v7, v22

    .line 1469
    .line 1470
    move-object/from16 v14, v27

    .line 1471
    .line 1472
    const-string v0, "S_HDMV/PGS"

    .line 1473
    .line 1474
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    if-eqz v0, :cond_38

    .line 1479
    .line 1480
    const/16 v0, 0x1f

    .line 1481
    .line 1482
    goto/16 :goto_13

    .line 1483
    .line 1484
    :sswitch_2f
    move-object/from16 v4, v18

    .line 1485
    .line 1486
    move-object/from16 v7, v22

    .line 1487
    .line 1488
    move-object/from16 v14, v27

    .line 1489
    .line 1490
    const-string v0, "V_VP9"

    .line 1491
    .line 1492
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v0

    .line 1496
    if-eqz v0, :cond_38

    .line 1497
    .line 1498
    const/4 v0, 0x1

    .line 1499
    goto/16 :goto_13

    .line 1500
    .line 1501
    :sswitch_30
    move-object/from16 v4, v18

    .line 1502
    .line 1503
    move-object/from16 v7, v22

    .line 1504
    .line 1505
    move-object/from16 v14, v27

    .line 1506
    .line 1507
    const-string v0, "V_VP8"

    .line 1508
    .line 1509
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v0

    .line 1513
    if-eqz v0, :cond_38

    .line 1514
    .line 1515
    const/4 v0, 0x0

    .line 1516
    goto/16 :goto_13

    .line 1517
    .line 1518
    :sswitch_31
    move-object/from16 v4, v18

    .line 1519
    .line 1520
    move-object/from16 v7, v22

    .line 1521
    .line 1522
    move-object/from16 v14, v27

    .line 1523
    .line 1524
    const-string v0, "V_AV1"

    .line 1525
    .line 1526
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v0

    .line 1530
    if-eqz v0, :cond_38

    .line 1531
    .line 1532
    const/4 v0, 0x2

    .line 1533
    goto/16 :goto_13

    .line 1534
    .line 1535
    :sswitch_32
    move-object/from16 v4, v18

    .line 1536
    .line 1537
    move-object/from16 v7, v22

    .line 1538
    .line 1539
    move-object/from16 v14, v27

    .line 1540
    .line 1541
    const-string v0, "A_DTS"

    .line 1542
    .line 1543
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1544
    .line 1545
    .line 1546
    move-result v0

    .line 1547
    if-eqz v0, :cond_38

    .line 1548
    .line 1549
    const/16 v0, 0x13

    .line 1550
    .line 1551
    goto/16 :goto_13

    .line 1552
    .line 1553
    :sswitch_33
    move-object/from16 v4, v18

    .line 1554
    .line 1555
    move-object/from16 v7, v22

    .line 1556
    .line 1557
    move-object/from16 v14, v27

    .line 1558
    .line 1559
    const-string v0, "A_AC3"

    .line 1560
    .line 1561
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1562
    .line 1563
    .line 1564
    move-result v0

    .line 1565
    if-eqz v0, :cond_38

    .line 1566
    .line 1567
    const/16 v0, 0x10

    .line 1568
    .line 1569
    goto/16 :goto_13

    .line 1570
    .line 1571
    :sswitch_34
    move-object/from16 v4, v18

    .line 1572
    .line 1573
    move-object/from16 v7, v22

    .line 1574
    .line 1575
    move-object/from16 v14, v27

    .line 1576
    .line 1577
    const-string v0, "A_AAC"

    .line 1578
    .line 1579
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v0

    .line 1583
    if-eqz v0, :cond_38

    .line 1584
    .line 1585
    const/16 v0, 0xd

    .line 1586
    .line 1587
    goto/16 :goto_13

    .line 1588
    .line 1589
    :sswitch_35
    move-object/from16 v4, v18

    .line 1590
    .line 1591
    move-object/from16 v7, v22

    .line 1592
    .line 1593
    move-object/from16 v14, v27

    .line 1594
    .line 1595
    const-string v0, "A_DTS/LOSSLESS"

    .line 1596
    .line 1597
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1598
    .line 1599
    .line 1600
    move-result v0

    .line 1601
    if-eqz v0, :cond_38

    .line 1602
    .line 1603
    const/16 v0, 0x15

    .line 1604
    .line 1605
    goto/16 :goto_13

    .line 1606
    .line 1607
    :sswitch_36
    move-object/from16 v4, v18

    .line 1608
    .line 1609
    move-object/from16 v7, v22

    .line 1610
    .line 1611
    move-object/from16 v14, v27

    .line 1612
    .line 1613
    const-string v0, "S_VOBSUB"

    .line 1614
    .line 1615
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1616
    .line 1617
    .line 1618
    move-result v0

    .line 1619
    if-eqz v0, :cond_38

    .line 1620
    .line 1621
    const/16 v0, 0x1e

    .line 1622
    .line 1623
    goto/16 :goto_13

    .line 1624
    .line 1625
    :sswitch_37
    move-object/from16 v4, v18

    .line 1626
    .line 1627
    move-object/from16 v7, v22

    .line 1628
    .line 1629
    move-object/from16 v14, v27

    .line 1630
    .line 1631
    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1632
    .line 1633
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    if-eqz v0, :cond_38

    .line 1638
    .line 1639
    const/4 v0, 0x7

    .line 1640
    goto/16 :goto_13

    .line 1641
    .line 1642
    :sswitch_38
    move-object/from16 v4, v18

    .line 1643
    .line 1644
    move-object/from16 v7, v22

    .line 1645
    .line 1646
    move-object/from16 v14, v27

    .line 1647
    .line 1648
    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1649
    .line 1650
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v0

    .line 1654
    if-eqz v0, :cond_38

    .line 1655
    .line 1656
    const/4 v0, 0x5

    .line 1657
    goto/16 :goto_13

    .line 1658
    .line 1659
    :sswitch_39
    move-object/from16 v4, v18

    .line 1660
    .line 1661
    move-object/from16 v7, v22

    .line 1662
    .line 1663
    move-object/from16 v14, v27

    .line 1664
    .line 1665
    const-string v0, "S_DVBSUB"

    .line 1666
    .line 1667
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1668
    .line 1669
    .line 1670
    move-result v0

    .line 1671
    if-eqz v0, :cond_38

    .line 1672
    .line 1673
    const/16 v0, 0x20

    .line 1674
    .line 1675
    goto/16 :goto_13

    .line 1676
    .line 1677
    :sswitch_3a
    move-object/from16 v4, v18

    .line 1678
    .line 1679
    move-object/from16 v7, v22

    .line 1680
    .line 1681
    move-object/from16 v14, v27

    .line 1682
    .line 1683
    const-string v0, "V_MS/VFW/FOURCC"

    .line 1684
    .line 1685
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1686
    .line 1687
    .line 1688
    move-result v0

    .line 1689
    if-eqz v0, :cond_38

    .line 1690
    .line 1691
    const/16 v0, 0x9

    .line 1692
    .line 1693
    goto/16 :goto_13

    .line 1694
    .line 1695
    :sswitch_3b
    move-object/from16 v4, v18

    .line 1696
    .line 1697
    move-object/from16 v7, v22

    .line 1698
    .line 1699
    move-object/from16 v14, v27

    .line 1700
    .line 1701
    const-string v0, "A_MPEG/L3"

    .line 1702
    .line 1703
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v0

    .line 1707
    if-eqz v0, :cond_38

    .line 1708
    .line 1709
    const/16 v0, 0xf

    .line 1710
    .line 1711
    goto/16 :goto_13

    .line 1712
    .line 1713
    :sswitch_3c
    move-object/from16 v4, v18

    .line 1714
    .line 1715
    move-object/from16 v7, v22

    .line 1716
    .line 1717
    move-object/from16 v14, v27

    .line 1718
    .line 1719
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v0

    .line 1723
    if-eqz v0, :cond_38

    .line 1724
    .line 1725
    const/16 v0, 0xe

    .line 1726
    .line 1727
    goto :goto_13

    .line 1728
    :sswitch_3d
    move-object/from16 v4, v18

    .line 1729
    .line 1730
    move-object/from16 v7, v22

    .line 1731
    .line 1732
    move-object/from16 v14, v27

    .line 1733
    .line 1734
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1735
    .line 1736
    .line 1737
    move-result v0

    .line 1738
    if-eqz v0, :cond_38

    .line 1739
    .line 1740
    const/16 v0, 0xb

    .line 1741
    .line 1742
    goto :goto_13

    .line 1743
    :sswitch_3e
    move-object/from16 v4, v18

    .line 1744
    .line 1745
    move-object/from16 v7, v22

    .line 1746
    .line 1747
    move-object/from16 v14, v27

    .line 1748
    .line 1749
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1750
    .line 1751
    .line 1752
    move-result v0

    .line 1753
    if-eqz v0, :cond_38

    .line 1754
    .line 1755
    const/16 v0, 0x12

    .line 1756
    .line 1757
    goto :goto_13

    .line 1758
    :sswitch_3f
    move-object/from16 v4, v18

    .line 1759
    .line 1760
    move-object/from16 v7, v22

    .line 1761
    .line 1762
    move-object/from16 v14, v27

    .line 1763
    .line 1764
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    if-eqz v0, :cond_38

    .line 1769
    .line 1770
    const/16 v0, 0x17

    .line 1771
    .line 1772
    goto :goto_13

    .line 1773
    :sswitch_40
    move-object/from16 v4, v18

    .line 1774
    .line 1775
    move-object/from16 v7, v22

    .line 1776
    .line 1777
    move-object/from16 v14, v27

    .line 1778
    .line 1779
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1780
    .line 1781
    .line 1782
    move-result v0

    .line 1783
    if-eqz v0, :cond_38

    .line 1784
    .line 1785
    const/4 v0, 0x4

    .line 1786
    goto :goto_13

    .line 1787
    :sswitch_41
    move-object/from16 v4, v18

    .line 1788
    .line 1789
    move-object/from16 v7, v22

    .line 1790
    .line 1791
    move-object/from16 v14, v27

    .line 1792
    .line 1793
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1794
    .line 1795
    .line 1796
    move-result v0

    .line 1797
    if-eqz v0, :cond_38

    .line 1798
    .line 1799
    const/4 v0, 0x6

    .line 1800
    goto :goto_13

    .line 1801
    :cond_38
    :goto_12
    const/4 v0, -0x1

    .line 1802
    :goto_13
    const-string v3, "audio/raw"

    .line 1803
    .line 1804
    const-string v8, "audio/x-unknown"

    .line 1805
    .line 1806
    const-string v9, ". Setting mimeType to audio/x-unknown"

    .line 1807
    .line 1808
    packed-switch v0, :pswitch_data_1

    .line 1809
    .line 1810
    .line 1811
    const-string v0, "Unrecognized codec identifier."

    .line 1812
    .line 1813
    const/4 v1, 0x0

    .line 1814
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v0

    .line 1818
    throw v0

    .line 1819
    :pswitch_1
    const/4 v0, 0x4

    .line 1820
    new-array v3, v0, [B

    .line 1821
    .line 1822
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 1823
    .line 1824
    .line 1825
    move-result-object v1

    .line 1826
    const/4 v6, 0x0

    .line 1827
    invoke-static {v1, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1828
    .line 1829
    .line 1830
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v0

    .line 1834
    const-string v3, "application/dvbsubs"

    .line 1835
    .line 1836
    :goto_14
    move-object v1, v0

    .line 1837
    const/4 v0, -0x1

    .line 1838
    :goto_15
    const/4 v6, 0x3

    .line 1839
    const/4 v8, 0x0

    .line 1840
    const/16 v11, 0xff

    .line 1841
    .line 1842
    const/4 v13, -0x1

    .line 1843
    :goto_16
    const/16 v15, 0x18

    .line 1844
    .line 1845
    goto/16 :goto_2b

    .line 1846
    .line 1847
    :pswitch_2
    const-string v3, "application/pgs"

    .line 1848
    .line 1849
    :goto_17
    const/4 v0, -0x1

    .line 1850
    const/4 v1, 0x0

    .line 1851
    goto :goto_15

    .line 1852
    :pswitch_3
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v0

    .line 1860
    const-string v3, "application/vobsub"

    .line 1861
    .line 1862
    goto :goto_14

    .line 1863
    :pswitch_4
    const-string v3, "text/vtt"

    .line 1864
    .line 1865
    goto :goto_17

    .line 1866
    :pswitch_5
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 1867
    .line 1868
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    sget-object v1, Lcom/google/android/gms/internal/ads/f1;->f0:[B

    .line 1873
    .line 1874
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uA;->x(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v0

    .line 1878
    const-string v3, "text/x-ssa"

    .line 1879
    .line 1880
    goto :goto_14

    .line 1881
    :pswitch_6
    const-string v3, "application/x-subrip"

    .line 1882
    .line 1883
    goto :goto_17

    .line 1884
    :pswitch_7
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 1885
    .line 1886
    const/16 v1, 0x20

    .line 1887
    .line 1888
    if-ne v0, v1, :cond_39

    .line 1889
    .line 1890
    const/4 v0, -0x1

    .line 1891
    const/4 v1, 0x0

    .line 1892
    const/4 v6, 0x3

    .line 1893
    const/4 v8, 0x0

    .line 1894
    const/16 v11, 0xff

    .line 1895
    .line 1896
    const/4 v13, 0x4

    .line 1897
    goto :goto_16

    .line 1898
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1899
    .line 1900
    const-string v3, "Unsupported floating point PCM bit depth: "

    .line 1901
    .line 1902
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    .line 1910
    .line 1911
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    move-object/from16 v1, v31

    .line 1916
    .line 1917
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    .line 1919
    .line 1920
    :goto_18
    move-object v3, v8

    .line 1921
    goto :goto_17

    .line 1922
    :pswitch_8
    move-object/from16 v1, v31

    .line 1923
    .line 1924
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 1925
    .line 1926
    const/16 v11, 0x8

    .line 1927
    .line 1928
    if-ne v0, v11, :cond_3a

    .line 1929
    .line 1930
    const/4 v0, -0x1

    .line 1931
    const/4 v1, 0x0

    .line 1932
    const/4 v6, 0x3

    .line 1933
    const/4 v8, 0x0

    .line 1934
    const/16 v11, 0xff

    .line 1935
    .line 1936
    const/4 v13, 0x3

    .line 1937
    goto :goto_16

    .line 1938
    :cond_3a
    if-ne v0, v6, :cond_3b

    .line 1939
    .line 1940
    const/high16 v0, 0x10000000

    .line 1941
    .line 1942
    const/4 v0, -0x1

    .line 1943
    const/4 v1, 0x0

    .line 1944
    const/4 v6, 0x3

    .line 1945
    const/4 v8, 0x0

    .line 1946
    const/16 v11, 0xff

    .line 1947
    .line 1948
    const/high16 v13, 0x10000000

    .line 1949
    .line 1950
    goto :goto_16

    .line 1951
    :cond_3b
    const/16 v6, 0x18

    .line 1952
    .line 1953
    if-ne v0, v6, :cond_3c

    .line 1954
    .line 1955
    const/high16 v0, 0x50000000

    .line 1956
    .line 1957
    const/4 v0, -0x1

    .line 1958
    const/4 v1, 0x0

    .line 1959
    const/4 v6, 0x3

    .line 1960
    const/4 v8, 0x0

    .line 1961
    const/16 v11, 0xff

    .line 1962
    .line 1963
    const/high16 v13, 0x50000000

    .line 1964
    .line 1965
    goto :goto_16

    .line 1966
    :cond_3c
    const/16 v13, 0x20

    .line 1967
    .line 1968
    if-ne v0, v13, :cond_3d

    .line 1969
    .line 1970
    const/high16 v0, 0x60000000

    .line 1971
    .line 1972
    const/4 v0, -0x1

    .line 1973
    const/4 v1, 0x0

    .line 1974
    const/4 v6, 0x3

    .line 1975
    const/4 v8, 0x0

    .line 1976
    const/16 v11, 0xff

    .line 1977
    .line 1978
    const/high16 v13, 0x60000000

    .line 1979
    .line 1980
    goto/16 :goto_16

    .line 1981
    .line 1982
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1983
    .line 1984
    const-string v6, "Unsupported big endian PCM bit depth: "

    .line 1985
    .line 1986
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1987
    .line 1988
    .line 1989
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v0

    .line 1999
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    .line 2001
    .line 2002
    goto :goto_18

    .line 2003
    :pswitch_9
    move-object/from16 v1, v31

    .line 2004
    .line 2005
    const/16 v13, 0x20

    .line 2006
    .line 2007
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 2008
    .line 2009
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->r(I)I

    .line 2010
    .line 2011
    .line 2012
    move-result v0

    .line 2013
    if-nez v0, :cond_3e

    .line 2014
    .line 2015
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 2016
    .line 2017
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2018
    .line 2019
    const-string v6, "Unsupported little endian PCM bit depth: "

    .line 2020
    .line 2021
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2025
    .line 2026
    .line 2027
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    .line 2029
    .line 2030
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v0

    .line 2034
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    .line 2036
    .line 2037
    goto :goto_18

    .line 2038
    :cond_3e
    move v13, v0

    .line 2039
    const/4 v0, -0x1

    .line 2040
    const/4 v1, 0x0

    .line 2041
    const/4 v6, 0x3

    .line 2042
    const/4 v8, 0x0

    .line 2043
    const/16 v11, 0xff

    .line 2044
    .line 2045
    goto/16 :goto_16

    .line 2046
    .line 2047
    :pswitch_a
    move-object/from16 v1, v31

    .line 2048
    .line 2049
    const/16 v13, 0x20

    .line 2050
    .line 2051
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 2052
    .line 2053
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 2054
    .line 2055
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2056
    .line 2057
    .line 2058
    move-result-object v6

    .line 2059
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 2060
    .line 2061
    .line 2062
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 2063
    .line 2064
    .line 2065
    move-result v6

    .line 2066
    const/4 v11, 0x1

    .line 2067
    if-ne v6, v11, :cond_3f

    .line 2068
    .line 2069
    const/16 v15, 0x18

    .line 2070
    .line 2071
    goto :goto_19

    .line 2072
    :cond_3f
    const v11, 0xfffe

    .line 2073
    .line 2074
    .line 2075
    if-ne v6, v11, :cond_41

    .line 2076
    .line 2077
    const/16 v15, 0x18

    .line 2078
    .line 2079
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 2080
    .line 2081
    .line 2082
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 2083
    .line 2084
    .line 2085
    move-result-wide v18

    .line 2086
    sget-object v6, Lcom/google/android/gms/internal/ads/f1;->i0:Ljava/util/UUID;

    .line 2087
    .line 2088
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 2089
    .line 2090
    .line 2091
    move-result-wide v21

    .line 2092
    cmp-long v11, v18, v21

    .line 2093
    .line 2094
    if-nez v11, :cond_42

    .line 2095
    .line 2096
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 2097
    .line 2098
    .line 2099
    move-result-wide v18

    .line 2100
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 2101
    .line 2102
    .line 2103
    move-result-wide v21
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    cmp-long v0, v18, v21

    .line 2105
    .line 2106
    if-nez v0, :cond_42

    .line 2107
    .line 2108
    :goto_19
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 2109
    .line 2110
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->r(I)I

    .line 2111
    .line 2112
    .line 2113
    move-result v0

    .line 2114
    if-nez v0, :cond_40

    .line 2115
    .line 2116
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 2117
    .line 2118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2119
    .line 2120
    const-string v6, "Unsupported PCM bit depth: "

    .line 2121
    .line 2122
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v0

    .line 2135
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    .line 2137
    .line 2138
    :goto_1a
    move-object v3, v8

    .line 2139
    :goto_1b
    const/4 v0, -0x1

    .line 2140
    :goto_1c
    const/4 v1, 0x0

    .line 2141
    :goto_1d
    const/4 v6, 0x3

    .line 2142
    const/4 v8, 0x0

    .line 2143
    const/16 v11, 0xff

    .line 2144
    .line 2145
    :goto_1e
    const/4 v13, -0x1

    .line 2146
    goto/16 :goto_2b

    .line 2147
    .line 2148
    :cond_40
    move v13, v0

    .line 2149
    const/4 v0, -0x1

    .line 2150
    const/4 v1, 0x0

    .line 2151
    const/4 v6, 0x3

    .line 2152
    const/4 v8, 0x0

    .line 2153
    const/16 v11, 0xff

    .line 2154
    .line 2155
    goto/16 :goto_2b

    .line 2156
    .line 2157
    :cond_41
    const/16 v15, 0x18

    .line 2158
    .line 2159
    :cond_42
    const-string v0, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    .line 2160
    .line 2161
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    .line 2163
    .line 2164
    goto :goto_1a

    .line 2165
    :catch_0
    const-string v0, "Error parsing MS/ACM codec private"

    .line 2166
    .line 2167
    const/4 v1, 0x0

    .line 2168
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v0

    .line 2172
    throw v0

    .line 2173
    :pswitch_b
    const/16 v13, 0x20

    .line 2174
    .line 2175
    const/16 v15, 0x18

    .line 2176
    .line 2177
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2178
    .line 2179
    .line 2180
    move-result-object v0

    .line 2181
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2182
    .line 2183
    .line 2184
    move-result-object v0

    .line 2185
    const-string v3, "audio/flac"

    .line 2186
    .line 2187
    move-object v1, v0

    .line 2188
    const/4 v0, -0x1

    .line 2189
    goto :goto_1d

    .line 2190
    :pswitch_c
    const/16 v13, 0x20

    .line 2191
    .line 2192
    const/16 v15, 0x18

    .line 2193
    .line 2194
    const-string v3, "audio/vnd.dts.hd"

    .line 2195
    .line 2196
    goto :goto_1b

    .line 2197
    :pswitch_d
    const/16 v13, 0x20

    .line 2198
    .line 2199
    const/16 v15, 0x18

    .line 2200
    .line 2201
    const-string v3, "audio/vnd.dts"

    .line 2202
    .line 2203
    goto :goto_1b

    .line 2204
    :pswitch_e
    const/16 v13, 0x20

    .line 2205
    .line 2206
    const/16 v15, 0x18

    .line 2207
    .line 2208
    new-instance v0, LW0/M;

    .line 2209
    .line 2210
    const/4 v1, 0x1

    .line 2211
    invoke-direct {v0, v1}, LW0/M;-><init>(I)V

    .line 2212
    .line 2213
    .line 2214
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/e1;->U:LW0/M;

    .line 2215
    .line 2216
    const-string v3, "audio/true-hd"

    .line 2217
    .line 2218
    goto :goto_1b

    .line 2219
    :pswitch_f
    const/16 v13, 0x20

    .line 2220
    .line 2221
    const/16 v15, 0x18

    .line 2222
    .line 2223
    const-string v3, "audio/eac3"

    .line 2224
    .line 2225
    goto :goto_1b

    .line 2226
    :pswitch_10
    const/16 v13, 0x20

    .line 2227
    .line 2228
    const/16 v15, 0x18

    .line 2229
    .line 2230
    const-string v3, "audio/ac3"

    .line 2231
    .line 2232
    goto :goto_1b

    .line 2233
    :pswitch_11
    const/16 v13, 0x20

    .line 2234
    .line 2235
    const/16 v15, 0x18

    .line 2236
    .line 2237
    const/16 v0, 0x1000

    .line 2238
    .line 2239
    const-string v3, "audio/mpeg"

    .line 2240
    .line 2241
    goto :goto_1c

    .line 2242
    :pswitch_12
    const/16 v13, 0x20

    .line 2243
    .line 2244
    const/16 v15, 0x18

    .line 2245
    .line 2246
    const/16 v0, 0x1000

    .line 2247
    .line 2248
    const-string v3, "audio/mpeg-L2"

    .line 2249
    .line 2250
    goto :goto_1c

    .line 2251
    :pswitch_13
    const/16 v13, 0x20

    .line 2252
    .line 2253
    const/16 v15, 0x18

    .line 2254
    .line 2255
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2256
    .line 2257
    .line 2258
    move-result-object v0

    .line 2259
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v0

    .line 2263
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/e1;->k:[B

    .line 2264
    .line 2265
    new-instance v3, Lcom/google/android/gms/internal/ads/f0;

    .line 2266
    .line 2267
    array-length v6, v1

    .line 2268
    invoke-direct {v3, v1, v6}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 2269
    .line 2270
    .line 2271
    const/4 v1, 0x0

    .line 2272
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/nH;->c(Lcom/google/android/gms/internal/ads/f0;Z)LW0/r;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v3

    .line 2276
    iget v1, v3, LW0/r;->b:I

    .line 2277
    .line 2278
    iput v1, v5, Lcom/google/android/gms/internal/ads/e1;->R:I

    .line 2279
    .line 2280
    iget v1, v3, LW0/r;->c:I

    .line 2281
    .line 2282
    iput v1, v5, Lcom/google/android/gms/internal/ads/e1;->P:I

    .line 2283
    .line 2284
    iget-object v1, v3, LW0/r;->a:Ljava/lang/String;

    .line 2285
    .line 2286
    const-string v3, "audio/mp4a-latm"

    .line 2287
    .line 2288
    move-object v8, v1

    .line 2289
    const/4 v6, 0x3

    .line 2290
    const/16 v11, 0xff

    .line 2291
    .line 2292
    const/4 v13, -0x1

    .line 2293
    move-object v1, v0

    .line 2294
    const/4 v0, -0x1

    .line 2295
    goto/16 :goto_2b

    .line 2296
    .line 2297
    :pswitch_14
    const/16 v13, 0x20

    .line 2298
    .line 2299
    const/16 v15, 0x18

    .line 2300
    .line 2301
    new-instance v0, Ljava/util/ArrayList;

    .line 2302
    .line 2303
    const/4 v1, 0x3

    .line 2304
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2305
    .line 2306
    .line 2307
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 2308
    .line 2309
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2310
    .line 2311
    .line 2312
    move-result-object v1

    .line 2313
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    .line 2315
    .line 2316
    const/16 v1, 0x8

    .line 2317
    .line 2318
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v3

    .line 2322
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2323
    .line 2324
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v3

    .line 2328
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/e1;->S:J

    .line 2329
    .line 2330
    invoke-virtual {v3, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v3

    .line 2334
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 2335
    .line 2336
    .line 2337
    move-result-object v3

    .line 2338
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    .line 2340
    .line 2341
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v1

    .line 2345
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v1

    .line 2349
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/e1;->T:J

    .line 2350
    .line 2351
    invoke-virtual {v1, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v1

    .line 2355
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 2356
    .line 2357
    .line 2358
    move-result-object v1

    .line 2359
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    .line 2361
    .line 2362
    const/16 v1, 0x1680

    .line 2363
    .line 2364
    const-string v3, "audio/opus"

    .line 2365
    .line 2366
    move-object v1, v0

    .line 2367
    const/16 v0, 0x1680

    .line 2368
    .line 2369
    goto/16 :goto_1d

    .line 2370
    .line 2371
    :pswitch_15
    const/16 v13, 0x20

    .line 2372
    .line 2373
    const/16 v15, 0x18

    .line 2374
    .line 2375
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2376
    .line 2377
    .line 2378
    move-result-object v0

    .line 2379
    const-string v1, "Error parsing vorbis codec private"

    .line 2380
    .line 2381
    const/4 v3, 0x0

    .line 2382
    :try_start_1
    aget-byte v6, v0, v3

    .line 2383
    .line 2384
    const/4 v3, 0x2

    .line 2385
    if-ne v6, v3, :cond_48

    .line 2386
    .line 2387
    const/4 v3, 0x0

    .line 2388
    const/4 v6, 0x1

    .line 2389
    :goto_1f
    aget-byte v8, v0, v6

    .line 2390
    .line 2391
    const/4 v9, 0x1

    .line 2392
    add-int/2addr v6, v9

    .line 2393
    const/16 v11, 0xff

    .line 2394
    .line 2395
    and-int/2addr v8, v11

    .line 2396
    if-ne v8, v11, :cond_43

    .line 2397
    .line 2398
    add-int/2addr v3, v11

    .line 2399
    goto :goto_1f

    .line 2400
    :cond_43
    add-int/2addr v3, v8

    .line 2401
    const/4 v8, 0x0

    .line 2402
    :goto_20
    aget-byte v13, v0, v6

    .line 2403
    .line 2404
    add-int/2addr v6, v9

    .line 2405
    and-int/2addr v13, v11

    .line 2406
    if-ne v13, v11, :cond_44

    .line 2407
    .line 2408
    add-int/2addr v8, v11

    .line 2409
    goto :goto_20

    .line 2410
    :cond_44
    add-int/2addr v8, v13

    .line 2411
    aget-byte v13, v0, v6

    .line 2412
    .line 2413
    if-ne v13, v9, :cond_47

    .line 2414
    .line 2415
    new-array v9, v3, [B

    .line 2416
    .line 2417
    const/4 v13, 0x0

    .line 2418
    invoke-static {v0, v6, v9, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2419
    .line 2420
    .line 2421
    add-int/2addr v6, v3

    .line 2422
    aget-byte v3, v0, v6

    .line 2423
    .line 2424
    const/4 v13, 0x3

    .line 2425
    if-ne v3, v13, :cond_46

    .line 2426
    .line 2427
    add-int/2addr v6, v8

    .line 2428
    aget-byte v3, v0, v6

    .line 2429
    .line 2430
    const/4 v8, 0x5

    .line 2431
    if-ne v3, v8, :cond_45

    .line 2432
    .line 2433
    array-length v3, v0

    .line 2434
    sub-int/2addr v3, v6

    .line 2435
    new-array v8, v3, [B

    .line 2436
    .line 2437
    const/4 v13, 0x0

    .line 2438
    invoke-static {v0, v6, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2439
    .line 2440
    .line 2441
    new-instance v0, Ljava/util/ArrayList;

    .line 2442
    .line 2443
    const/4 v3, 0x2

    .line 2444
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2445
    .line 2446
    .line 2447
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2448
    .line 2449
    .line 2450
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2451
    .line 2452
    .line 2453
    const/16 v1, 0x2000

    .line 2454
    .line 2455
    const-string v3, "audio/vorbis"

    .line 2456
    .line 2457
    move-object v1, v0

    .line 2458
    const/16 v0, 0x2000

    .line 2459
    .line 2460
    :goto_21
    const/4 v6, 0x3

    .line 2461
    :goto_22
    const/4 v8, 0x0

    .line 2462
    goto/16 :goto_1e

    .line 2463
    .line 2464
    :catch_1
    const/4 v0, 0x0

    .line 2465
    goto :goto_23

    .line 2466
    :cond_45
    const/4 v0, 0x0

    .line 2467
    :try_start_2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v2

    .line 2471
    throw v2

    .line 2472
    :cond_46
    const/4 v0, 0x0

    .line 2473
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v2

    .line 2477
    throw v2

    .line 2478
    :cond_47
    const/4 v0, 0x0

    .line 2479
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v2

    .line 2483
    throw v2

    .line 2484
    :cond_48
    const/4 v0, 0x0

    .line 2485
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v2

    .line 2489
    throw v2
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2490
    :catch_2
    :goto_23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v0

    .line 2494
    throw v0

    .line 2495
    :pswitch_16
    const/16 v11, 0xff

    .line 2496
    .line 2497
    const/16 v15, 0x18

    .line 2498
    .line 2499
    const-string v3, "video/x-unknown"

    .line 2500
    .line 2501
    const/4 v0, -0x1

    .line 2502
    const/4 v1, 0x0

    .line 2503
    goto :goto_21

    .line 2504
    :pswitch_17
    move-object/from16 v1, v31

    .line 2505
    .line 2506
    const/16 v11, 0xff

    .line 2507
    .line 2508
    const/16 v15, 0x18

    .line 2509
    .line 2510
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 2511
    .line 2512
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 2513
    .line 2514
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2515
    .line 2516
    .line 2517
    move-result-object v3

    .line 2518
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 2519
    .line 2520
    .line 2521
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 2522
    .line 2523
    .line 2524
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->C()J

    .line 2525
    .line 2526
    .line 2527
    move-result-wide v8

    .line 2528
    const-wide/32 v18, 0x58564944

    .line 2529
    .line 2530
    .line 2531
    cmp-long v3, v8, v18

    .line 2532
    .line 2533
    if-nez v3, :cond_49

    .line 2534
    .line 2535
    new-instance v0, Landroid/util/Pair;

    .line 2536
    .line 2537
    const-string v1, "video/divx"
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2538
    .line 2539
    const/4 v3, 0x0

    .line 2540
    :try_start_4
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2541
    .line 2542
    .line 2543
    :goto_24
    const/4 v3, 0x0

    .line 2544
    const/4 v6, 0x3

    .line 2545
    goto/16 :goto_26

    .line 2546
    .line 2547
    :catch_3
    const/4 v3, 0x0

    .line 2548
    goto/16 :goto_27

    .line 2549
    .line 2550
    :cond_49
    const-wide/32 v18, 0x33363248

    .line 2551
    .line 2552
    .line 2553
    cmp-long v3, v8, v18

    .line 2554
    .line 2555
    if-nez v3, :cond_4a

    .line 2556
    .line 2557
    :try_start_5
    new-instance v0, Landroid/util/Pair;

    .line 2558
    .line 2559
    const-string v1, "video/3gpp"
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2560
    .line 2561
    const/4 v3, 0x0

    .line 2562
    :try_start_6
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2563
    .line 2564
    .line 2565
    goto :goto_24

    .line 2566
    :cond_4a
    const-wide/32 v18, 0x31435657

    .line 2567
    .line 2568
    .line 2569
    cmp-long v3, v8, v18

    .line 2570
    .line 2571
    if-nez v3, :cond_4e

    .line 2572
    .line 2573
    :try_start_7
    iget v1, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 2574
    .line 2575
    add-int/lit8 v1, v1, 0x14

    .line 2576
    .line 2577
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2578
    .line 2579
    :goto_25
    array-length v3, v0

    .line 2580
    add-int/lit8 v6, v3, -0x4

    .line 2581
    .line 2582
    if-ge v1, v6, :cond_4d

    .line 2583
    .line 2584
    aget-byte v6, v0, v1

    .line 2585
    .line 2586
    const/4 v8, 0x1

    .line 2587
    add-int/lit8 v9, v1, 0x1

    .line 2588
    .line 2589
    if-nez v6, :cond_4b

    .line 2590
    .line 2591
    aget-byte v6, v0, v9

    .line 2592
    .line 2593
    if-nez v6, :cond_4b

    .line 2594
    .line 2595
    const/4 v6, 0x2

    .line 2596
    add-int/lit8 v13, v1, 0x2

    .line 2597
    .line 2598
    aget-byte v6, v0, v13

    .line 2599
    .line 2600
    if-ne v6, v8, :cond_4b

    .line 2601
    .line 2602
    const/4 v6, 0x3

    .line 2603
    add-int/lit8 v8, v1, 0x3

    .line 2604
    .line 2605
    aget-byte v8, v0, v8

    .line 2606
    .line 2607
    const/16 v13, 0xf

    .line 2608
    .line 2609
    if-ne v8, v13, :cond_4c

    .line 2610
    .line 2611
    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 2612
    .line 2613
    .line 2614
    move-result-object v0

    .line 2615
    new-instance v1, Landroid/util/Pair;

    .line 2616
    .line 2617
    const-string v3, "video/wvc1"

    .line 2618
    .line 2619
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v0

    .line 2623
    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2624
    .line 2625
    .line 2626
    move-object v0, v1

    .line 2627
    const/4 v3, 0x0

    .line 2628
    goto :goto_26

    .line 2629
    :cond_4b
    const/4 v6, 0x3

    .line 2630
    const/16 v13, 0xf

    .line 2631
    .line 2632
    :cond_4c
    move v1, v9

    .line 2633
    goto :goto_25

    .line 2634
    :cond_4d
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2635
    .line 2636
    const/4 v1, 0x0

    .line 2637
    :try_start_8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2641
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    .line 2642
    :catch_4
    move-object v3, v1

    .line 2643
    goto :goto_27

    .line 2644
    :cond_4e
    const/4 v6, 0x3

    .line 2645
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 2646
    .line 2647
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    .line 2649
    .line 2650
    new-instance v0, Landroid/util/Pair;

    .line 2651
    .line 2652
    const-string v1, "video/x-unknown"

    .line 2653
    .line 2654
    const/4 v3, 0x0

    .line 2655
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2656
    .line 2657
    .line 2658
    :goto_26
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2659
    .line 2660
    check-cast v1, Ljava/lang/String;

    .line 2661
    .line 2662
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2663
    .line 2664
    move-object/from16 v28, v0

    .line 2665
    .line 2666
    check-cast v28, Ljava/util/List;

    .line 2667
    .line 2668
    move-object v8, v3

    .line 2669
    const/4 v0, -0x1

    .line 2670
    const/4 v13, -0x1

    .line 2671
    move-object v3, v1

    .line 2672
    move-object/from16 v1, v28

    .line 2673
    .line 2674
    goto/16 :goto_2b

    .line 2675
    .line 2676
    :catch_5
    :goto_27
    const-string v0, "Error parsing FourCC private data"

    .line 2677
    .line 2678
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 2679
    .line 2680
    .line 2681
    move-result-object v0

    .line 2682
    throw v0

    .line 2683
    :pswitch_18
    const/4 v3, 0x0

    .line 2684
    const/4 v6, 0x3

    .line 2685
    const/16 v11, 0xff

    .line 2686
    .line 2687
    const/16 v15, 0x18

    .line 2688
    .line 2689
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 2690
    .line 2691
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 2692
    .line 2693
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2694
    .line 2695
    .line 2696
    move-result-object v1

    .line 2697
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 2698
    .line 2699
    .line 2700
    const/4 v1, 0x0

    .line 2701
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/U;->a(Lcom/google/android/gms/internal/ads/jr;ZLcom/google/android/gms/internal/ads/Ex;)Lcom/google/android/gms/internal/ads/U;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v0

    .line 2705
    iget v1, v0, Lcom/google/android/gms/internal/ads/U;->b:I

    .line 2706
    .line 2707
    iput v1, v5, Lcom/google/android/gms/internal/ads/e1;->Z:I

    .line 2708
    .line 2709
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/U;->a:Ljava/util/List;

    .line 2710
    .line 2711
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/U;->k:Ljava/lang/String;

    .line 2712
    .line 2713
    const-string v3, "video/hevc"

    .line 2714
    .line 2715
    :goto_28
    move-object v8, v0

    .line 2716
    const/4 v0, -0x1

    .line 2717
    goto/16 :goto_1e

    .line 2718
    .line 2719
    :pswitch_19
    const/4 v6, 0x3

    .line 2720
    const/16 v11, 0xff

    .line 2721
    .line 2722
    const/16 v15, 0x18

    .line 2723
    .line 2724
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 2725
    .line 2726
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 2727
    .line 2728
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/e1;->a(Ljava/lang/String;)[B

    .line 2729
    .line 2730
    .line 2731
    move-result-object v1

    .line 2732
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 2733
    .line 2734
    .line 2735
    invoke-static {v0}, LW0/e;->b(Lcom/google/android/gms/internal/ads/jr;)LW0/e;

    .line 2736
    .line 2737
    .line 2738
    move-result-object v0

    .line 2739
    iget v1, v0, LW0/e;->b:I

    .line 2740
    .line 2741
    iput v1, v5, Lcom/google/android/gms/internal/ads/e1;->Z:I

    .line 2742
    .line 2743
    iget-object v1, v0, LW0/e;->a:Ljava/util/List;

    .line 2744
    .line 2745
    iget-object v0, v0, LW0/e;->l:Ljava/lang/String;

    .line 2746
    .line 2747
    const-string v3, "video/avc"

    .line 2748
    .line 2749
    goto :goto_28

    .line 2750
    :pswitch_1a
    const/4 v6, 0x3

    .line 2751
    const/16 v11, 0xff

    .line 2752
    .line 2753
    const/16 v15, 0x18

    .line 2754
    .line 2755
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/e1;->k:[B

    .line 2756
    .line 2757
    if-nez v0, :cond_4f

    .line 2758
    .line 2759
    const/4 v0, 0x0

    .line 2760
    goto :goto_29

    .line 2761
    :cond_4f
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2762
    .line 2763
    .line 2764
    move-result-object v0

    .line 2765
    :goto_29
    const-string v3, "video/mp4v-es"

    .line 2766
    .line 2767
    move-object v1, v0

    .line 2768
    const/4 v0, -0x1

    .line 2769
    goto/16 :goto_22

    .line 2770
    .line 2771
    :pswitch_1b
    const/4 v6, 0x3

    .line 2772
    const/16 v11, 0xff

    .line 2773
    .line 2774
    const/16 v15, 0x18

    .line 2775
    .line 2776
    const-string v3, "video/mpeg2"

    .line 2777
    .line 2778
    :goto_2a
    const/4 v0, -0x1

    .line 2779
    const/4 v1, 0x0

    .line 2780
    goto/16 :goto_22

    .line 2781
    .line 2782
    :pswitch_1c
    const/4 v6, 0x3

    .line 2783
    const/16 v11, 0xff

    .line 2784
    .line 2785
    const/16 v15, 0x18

    .line 2786
    .line 2787
    const-string v3, "video/av01"

    .line 2788
    .line 2789
    goto :goto_2a

    .line 2790
    :pswitch_1d
    const/4 v6, 0x3

    .line 2791
    const/16 v11, 0xff

    .line 2792
    .line 2793
    const/16 v15, 0x18

    .line 2794
    .line 2795
    const-string v3, "video/x-vnd.on2.vp9"

    .line 2796
    .line 2797
    goto :goto_2a

    .line 2798
    :pswitch_1e
    const/4 v6, 0x3

    .line 2799
    const/16 v11, 0xff

    .line 2800
    .line 2801
    const/16 v15, 0x18

    .line 2802
    .line 2803
    const-string v3, "video/x-vnd.on2.vp8"

    .line 2804
    .line 2805
    goto :goto_2a

    .line 2806
    :goto_2b
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/e1;->O:[B

    .line 2807
    .line 2808
    if-eqz v9, :cond_50

    .line 2809
    .line 2810
    new-instance v9, Lcom/google/android/gms/internal/ads/jr;

    .line 2811
    .line 2812
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/e1;->O:[B

    .line 2813
    .line 2814
    invoke-direct {v9, v6}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 2815
    .line 2816
    .line 2817
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/J;->a(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/J;

    .line 2818
    .line 2819
    .line 2820
    move-result-object v6

    .line 2821
    if-eqz v6, :cond_50

    .line 2822
    .line 2823
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/J;->H:Ljava/lang/String;

    .line 2824
    .line 2825
    const-string v3, "video/dolby-vision"

    .line 2826
    .line 2827
    :cond_50
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/e1;->W:Z

    .line 2828
    .line 2829
    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/e1;->V:Z

    .line 2830
    .line 2831
    const/4 v11, 0x1

    .line 2832
    if-eq v11, v9, :cond_51

    .line 2833
    .line 2834
    const/4 v9, 0x0

    .line 2835
    goto :goto_2c

    .line 2836
    :cond_51
    const/4 v9, 0x2

    .line 2837
    :goto_2c
    or-int/2addr v6, v9

    .line 2838
    new-instance v9, Lcom/google/android/gms/internal/ads/K;

    .line 2839
    .line 2840
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 2841
    .line 2842
    .line 2843
    const-string v11, "audio"

    .line 2844
    .line 2845
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/va;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v15

    .line 2849
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2850
    .line 2851
    .line 2852
    move-result v11

    .line 2853
    if-eqz v11, :cond_52

    .line 2854
    .line 2855
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->P:I

    .line 2856
    .line 2857
    iput v11, v9, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 2858
    .line 2859
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->R:I

    .line 2860
    .line 2861
    iput v11, v9, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 2862
    .line 2863
    iput v13, v9, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 2864
    .line 2865
    move-object/from16 v22, v2

    .line 2866
    .line 2867
    move-object/from16 v18, v4

    .line 2868
    .line 2869
    const/4 v2, 0x1

    .line 2870
    goto/16 :goto_33

    .line 2871
    .line 2872
    :cond_52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/va;->g(Ljava/lang/String;)Z

    .line 2873
    .line 2874
    .line 2875
    move-result v11

    .line 2876
    if-eqz v11, :cond_60

    .line 2877
    .line 2878
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->r:I

    .line 2879
    .line 2880
    if-nez v11, :cond_55

    .line 2881
    .line 2882
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->p:I

    .line 2883
    .line 2884
    const/4 v13, -0x1

    .line 2885
    if-ne v11, v13, :cond_53

    .line 2886
    .line 2887
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->m:I

    .line 2888
    .line 2889
    :cond_53
    iput v11, v5, Lcom/google/android/gms/internal/ads/e1;->p:I

    .line 2890
    .line 2891
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->q:I

    .line 2892
    .line 2893
    if-ne v11, v13, :cond_54

    .line 2894
    .line 2895
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->n:I

    .line 2896
    .line 2897
    :cond_54
    iput v11, v5, Lcom/google/android/gms/internal/ads/e1;->q:I

    .line 2898
    .line 2899
    goto :goto_2d

    .line 2900
    :cond_55
    const/4 v13, -0x1

    .line 2901
    :goto_2d
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->p:I

    .line 2902
    .line 2903
    if-eq v11, v13, :cond_56

    .line 2904
    .line 2905
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->q:I

    .line 2906
    .line 2907
    if-eq v15, v13, :cond_56

    .line 2908
    .line 2909
    iget v13, v5, Lcom/google/android/gms/internal/ads/e1;->n:I

    .line 2910
    .line 2911
    mul-int v13, v13, v11

    .line 2912
    .line 2913
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->m:I

    .line 2914
    .line 2915
    mul-int v11, v11, v15

    .line 2916
    .line 2917
    int-to-float v13, v13

    .line 2918
    int-to-float v11, v11

    .line 2919
    div-float/2addr v13, v11

    .line 2920
    goto :goto_2e

    .line 2921
    :cond_56
    const/high16 v13, -0x40800000    # -1.0f

    .line 2922
    .line 2923
    :goto_2e
    iget-boolean v11, v5, Lcom/google/android/gms/internal/ads/e1;->y:Z

    .line 2924
    .line 2925
    if-eqz v11, :cond_59

    .line 2926
    .line 2927
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->E:F

    .line 2928
    .line 2929
    const/high16 v15, -0x40800000    # -1.0f

    .line 2930
    .line 2931
    cmpl-float v11, v11, v15

    .line 2932
    .line 2933
    if-eqz v11, :cond_57

    .line 2934
    .line 2935
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->F:F

    .line 2936
    .line 2937
    cmpl-float v11, v11, v15

    .line 2938
    .line 2939
    if-eqz v11, :cond_57

    .line 2940
    .line 2941
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->G:F

    .line 2942
    .line 2943
    cmpl-float v11, v11, v15

    .line 2944
    .line 2945
    if-eqz v11, :cond_57

    .line 2946
    .line 2947
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->H:F

    .line 2948
    .line 2949
    cmpl-float v11, v11, v15

    .line 2950
    .line 2951
    if-eqz v11, :cond_57

    .line 2952
    .line 2953
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->I:F

    .line 2954
    .line 2955
    cmpl-float v11, v11, v15

    .line 2956
    .line 2957
    if-eqz v11, :cond_57

    .line 2958
    .line 2959
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->J:F

    .line 2960
    .line 2961
    cmpl-float v11, v11, v15

    .line 2962
    .line 2963
    if-eqz v11, :cond_57

    .line 2964
    .line 2965
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->K:F

    .line 2966
    .line 2967
    cmpl-float v11, v11, v15

    .line 2968
    .line 2969
    if-eqz v11, :cond_57

    .line 2970
    .line 2971
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->L:F

    .line 2972
    .line 2973
    cmpl-float v11, v11, v15

    .line 2974
    .line 2975
    if-eqz v11, :cond_57

    .line 2976
    .line 2977
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->M:F

    .line 2978
    .line 2979
    cmpl-float v11, v11, v15

    .line 2980
    .line 2981
    if-eqz v11, :cond_57

    .line 2982
    .line 2983
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->N:F

    .line 2984
    .line 2985
    cmpl-float v11, v11, v15

    .line 2986
    .line 2987
    if-nez v11, :cond_58

    .line 2988
    .line 2989
    :cond_57
    move-object/from16 v22, v2

    .line 2990
    .line 2991
    const/16 v41, 0x0

    .line 2992
    .line 2993
    goto/16 :goto_2f

    .line 2994
    .line 2995
    :cond_58
    const/16 v15, 0x19

    .line 2996
    .line 2997
    new-array v11, v15, [B

    .line 2998
    .line 2999
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 3000
    .line 3001
    .line 3002
    move-result-object v15

    .line 3003
    move-object/from16 v22, v2

    .line 3004
    .line 3005
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3006
    .line 3007
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3008
    .line 3009
    .line 3010
    move-result-object v2

    .line 3011
    const/4 v15, 0x0

    .line 3012
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3013
    .line 3014
    .line 3015
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->E:F

    .line 3016
    .line 3017
    const v18, 0x47435000    # 50000.0f

    .line 3018
    .line 3019
    .line 3020
    mul-float v15, v15, v18

    .line 3021
    .line 3022
    const/high16 v21, 0x3f000000    # 0.5f

    .line 3023
    .line 3024
    add-float v15, v15, v21

    .line 3025
    .line 3026
    float-to-int v15, v15

    .line 3027
    int-to-short v15, v15

    .line 3028
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3029
    .line 3030
    .line 3031
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->F:F

    .line 3032
    .line 3033
    mul-float v15, v15, v18

    .line 3034
    .line 3035
    add-float v15, v15, v21

    .line 3036
    .line 3037
    float-to-int v15, v15

    .line 3038
    int-to-short v15, v15

    .line 3039
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3040
    .line 3041
    .line 3042
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->G:F

    .line 3043
    .line 3044
    mul-float v15, v15, v18

    .line 3045
    .line 3046
    add-float v15, v15, v21

    .line 3047
    .line 3048
    float-to-int v15, v15

    .line 3049
    int-to-short v15, v15

    .line 3050
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3051
    .line 3052
    .line 3053
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->H:F

    .line 3054
    .line 3055
    mul-float v15, v15, v18

    .line 3056
    .line 3057
    add-float v15, v15, v21

    .line 3058
    .line 3059
    float-to-int v15, v15

    .line 3060
    int-to-short v15, v15

    .line 3061
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3062
    .line 3063
    .line 3064
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->I:F

    .line 3065
    .line 3066
    mul-float v15, v15, v18

    .line 3067
    .line 3068
    add-float v15, v15, v21

    .line 3069
    .line 3070
    float-to-int v15, v15

    .line 3071
    int-to-short v15, v15

    .line 3072
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3073
    .line 3074
    .line 3075
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->J:F

    .line 3076
    .line 3077
    mul-float v15, v15, v18

    .line 3078
    .line 3079
    add-float v15, v15, v21

    .line 3080
    .line 3081
    float-to-int v15, v15

    .line 3082
    int-to-short v15, v15

    .line 3083
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3084
    .line 3085
    .line 3086
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->K:F

    .line 3087
    .line 3088
    mul-float v15, v15, v18

    .line 3089
    .line 3090
    add-float v15, v15, v21

    .line 3091
    .line 3092
    float-to-int v15, v15

    .line 3093
    int-to-short v15, v15

    .line 3094
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3095
    .line 3096
    .line 3097
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->L:F

    .line 3098
    .line 3099
    mul-float v15, v15, v18

    .line 3100
    .line 3101
    add-float v15, v15, v21

    .line 3102
    .line 3103
    float-to-int v15, v15

    .line 3104
    int-to-short v15, v15

    .line 3105
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3106
    .line 3107
    .line 3108
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->M:F

    .line 3109
    .line 3110
    add-float v15, v15, v21

    .line 3111
    .line 3112
    float-to-int v15, v15

    .line 3113
    int-to-short v15, v15

    .line 3114
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3115
    .line 3116
    .line 3117
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->N:F

    .line 3118
    .line 3119
    add-float v15, v15, v21

    .line 3120
    .line 3121
    float-to-int v15, v15

    .line 3122
    int-to-short v15, v15

    .line 3123
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3124
    .line 3125
    .line 3126
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->C:I

    .line 3127
    .line 3128
    int-to-short v15, v15

    .line 3129
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3130
    .line 3131
    .line 3132
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->D:I

    .line 3133
    .line 3134
    int-to-short v15, v15

    .line 3135
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3136
    .line 3137
    .line 3138
    move-object/from16 v41, v11

    .line 3139
    .line 3140
    :goto_2f
    iget v2, v5, Lcom/google/android/gms/internal/ads/e1;->z:I

    .line 3141
    .line 3142
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->B:I

    .line 3143
    .line 3144
    iget v15, v5, Lcom/google/android/gms/internal/ads/e1;->A:I

    .line 3145
    .line 3146
    move-object/from16 v18, v4

    .line 3147
    .line 3148
    iget v4, v5, Lcom/google/android/gms/internal/ads/e1;->o:I

    .line 3149
    .line 3150
    new-instance v21, Lcom/google/android/gms/internal/ads/rL;

    .line 3151
    .line 3152
    move-object/from16 v37, v21

    .line 3153
    .line 3154
    move/from16 v38, v2

    .line 3155
    .line 3156
    move/from16 v39, v11

    .line 3157
    .line 3158
    move/from16 v40, v15

    .line 3159
    .line 3160
    move/from16 v42, v4

    .line 3161
    .line 3162
    move/from16 v43, v4

    .line 3163
    .line 3164
    invoke-direct/range {v37 .. v43}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    .line 3165
    .line 3166
    .line 3167
    move-object/from16 v2, v21

    .line 3168
    .line 3169
    goto :goto_30

    .line 3170
    :cond_59
    move-object/from16 v22, v2

    .line 3171
    .line 3172
    move-object/from16 v18, v4

    .line 3173
    .line 3174
    const/4 v2, 0x0

    .line 3175
    :goto_30
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/e1;->a:Ljava/lang/String;

    .line 3176
    .line 3177
    if-eqz v4, :cond_5a

    .line 3178
    .line 3179
    sget-object v11, Lcom/google/android/gms/internal/ads/f1;->j0:Ljava/util/Map;

    .line 3180
    .line 3181
    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 3182
    .line 3183
    .line 3184
    move-result v4

    .line 3185
    if-eqz v4, :cond_5a

    .line 3186
    .line 3187
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/e1;->a:Ljava/lang/String;

    .line 3188
    .line 3189
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    .line 3191
    .line 3192
    move-result-object v4

    .line 3193
    check-cast v4, Ljava/lang/Integer;

    .line 3194
    .line 3195
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 3196
    .line 3197
    .line 3198
    move-result v4

    .line 3199
    goto :goto_31

    .line 3200
    :cond_5a
    const/4 v4, -0x1

    .line 3201
    :goto_31
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->s:I

    .line 3202
    .line 3203
    if-nez v11, :cond_5f

    .line 3204
    .line 3205
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->t:F

    .line 3206
    .line 3207
    const/4 v15, 0x0

    .line 3208
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3209
    .line 3210
    .line 3211
    move-result v11

    .line 3212
    if-nez v11, :cond_5f

    .line 3213
    .line 3214
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->u:F

    .line 3215
    .line 3216
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3217
    .line 3218
    .line 3219
    move-result v11

    .line 3220
    if-nez v11, :cond_5f

    .line 3221
    .line 3222
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 3223
    .line 3224
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3225
    .line 3226
    .line 3227
    move-result v11

    .line 3228
    if-nez v11, :cond_5b

    .line 3229
    .line 3230
    const/4 v4, 0x0

    .line 3231
    goto :goto_32

    .line 3232
    :cond_5b
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 3233
    .line 3234
    const/high16 v15, 0x42b40000    # 90.0f

    .line 3235
    .line 3236
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3237
    .line 3238
    .line 3239
    move-result v11

    .line 3240
    if-nez v11, :cond_5c

    .line 3241
    .line 3242
    const/16 v4, 0x5a

    .line 3243
    .line 3244
    goto :goto_32

    .line 3245
    :cond_5c
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 3246
    .line 3247
    const/high16 v15, -0x3ccc0000    # -180.0f

    .line 3248
    .line 3249
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3250
    .line 3251
    .line 3252
    move-result v11

    .line 3253
    if-eqz v11, :cond_5d

    .line 3254
    .line 3255
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 3256
    .line 3257
    const/high16 v15, 0x43340000    # 180.0f

    .line 3258
    .line 3259
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3260
    .line 3261
    .line 3262
    move-result v11

    .line 3263
    if-nez v11, :cond_5e

    .line 3264
    .line 3265
    :cond_5d
    const/16 v4, 0xb4

    .line 3266
    .line 3267
    goto :goto_32

    .line 3268
    :cond_5e
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 3269
    .line 3270
    const/high16 v15, -0x3d4c0000    # -90.0f

    .line 3271
    .line 3272
    invoke-static {v11, v15}, Ljava/lang/Float;->compare(FF)I

    .line 3273
    .line 3274
    .line 3275
    move-result v11

    .line 3276
    if-nez v11, :cond_5f

    .line 3277
    .line 3278
    const/16 v4, 0x10e

    .line 3279
    .line 3280
    :cond_5f
    :goto_32
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->m:I

    .line 3281
    .line 3282
    iput v11, v9, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 3283
    .line 3284
    iget v11, v5, Lcom/google/android/gms/internal/ads/e1;->n:I

    .line 3285
    .line 3286
    iput v11, v9, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 3287
    .line 3288
    iput v13, v9, Lcom/google/android/gms/internal/ads/K;->v:F

    .line 3289
    .line 3290
    iput v4, v9, Lcom/google/android/gms/internal/ads/K;->u:I

    .line 3291
    .line 3292
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/e1;->w:[B

    .line 3293
    .line 3294
    iput-object v4, v9, Lcom/google/android/gms/internal/ads/K;->w:[B

    .line 3295
    .line 3296
    iget v4, v5, Lcom/google/android/gms/internal/ads/e1;->x:I

    .line 3297
    .line 3298
    iput v4, v9, Lcom/google/android/gms/internal/ads/K;->x:I

    .line 3299
    .line 3300
    iput-object v2, v9, Lcom/google/android/gms/internal/ads/K;->y:Lcom/google/android/gms/internal/ads/rL;

    .line 3301
    .line 3302
    const/4 v2, 0x2

    .line 3303
    goto :goto_33

    .line 3304
    :cond_60
    move-object/from16 v22, v2

    .line 3305
    .line 3306
    move-object/from16 v18, v4

    .line 3307
    .line 3308
    const-string v2, "application/x-subrip"

    .line 3309
    .line 3310
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3311
    .line 3312
    .line 3313
    move-result v2

    .line 3314
    if-nez v2, :cond_61

    .line 3315
    .line 3316
    const-string v2, "text/x-ssa"

    .line 3317
    .line 3318
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3319
    .line 3320
    .line 3321
    move-result v2

    .line 3322
    if-nez v2, :cond_61

    .line 3323
    .line 3324
    const-string v2, "text/vtt"

    .line 3325
    .line 3326
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3327
    .line 3328
    .line 3329
    move-result v2

    .line 3330
    if-nez v2, :cond_61

    .line 3331
    .line 3332
    const-string v2, "application/vobsub"

    .line 3333
    .line 3334
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3335
    .line 3336
    .line 3337
    move-result v2

    .line 3338
    if-nez v2, :cond_61

    .line 3339
    .line 3340
    const-string v2, "application/pgs"

    .line 3341
    .line 3342
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3343
    .line 3344
    .line 3345
    move-result v2

    .line 3346
    if-nez v2, :cond_61

    .line 3347
    .line 3348
    const-string v2, "application/dvbsubs"

    .line 3349
    .line 3350
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3351
    .line 3352
    .line 3353
    move-result v2

    .line 3354
    if-eqz v2, :cond_62

    .line 3355
    .line 3356
    :cond_61
    const/4 v2, 0x3

    .line 3357
    goto :goto_33

    .line 3358
    :cond_62
    const-string v0, "Unexpected MIME type."

    .line 3359
    .line 3360
    const/4 v1, 0x0

    .line 3361
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 3362
    .line 3363
    .line 3364
    move-result-object v0

    .line 3365
    throw v0

    .line 3366
    :goto_33
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/e1;->a:Ljava/lang/String;

    .line 3367
    .line 3368
    if-eqz v4, :cond_63

    .line 3369
    .line 3370
    sget-object v11, Lcom/google/android/gms/internal/ads/f1;->j0:Ljava/util/Map;

    .line 3371
    .line 3372
    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 3373
    .line 3374
    .line 3375
    move-result v4

    .line 3376
    if-nez v4, :cond_63

    .line 3377
    .line 3378
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/e1;->a:Ljava/lang/String;

    .line 3379
    .line 3380
    iput-object v4, v9, Lcom/google/android/gms/internal/ads/K;->b:Ljava/lang/String;

    .line 3381
    .line 3382
    :cond_63
    move/from16 v4, v34

    .line 3383
    .line 3384
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    .line 3385
    .line 3386
    .line 3387
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 3388
    .line 3389
    .line 3390
    iput v0, v9, Lcom/google/android/gms/internal/ads/K;->m:I

    .line 3391
    .line 3392
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/e1;->X:Ljava/lang/String;

    .line 3393
    .line 3394
    iput-object v0, v9, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 3395
    .line 3396
    iput v6, v9, Lcom/google/android/gms/internal/ads/K;->e:I

    .line 3397
    .line 3398
    iput-object v1, v9, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 3399
    .line 3400
    iput-object v8, v9, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 3401
    .line 3402
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/e1;->l:Lcom/google/android/gms/internal/ads/mO;

    .line 3403
    .line 3404
    iput-object v0, v9, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 3405
    .line 3406
    new-instance v0, Lcom/google/android/gms/internal/ads/p0;

    .line 3407
    .line 3408
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 3409
    .line 3410
    .line 3411
    iget v1, v5, Lcom/google/android/gms/internal/ads/e1;->c:I

    .line 3412
    .line 3413
    move-object/from16 v3, v32

    .line 3414
    .line 3415
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 3416
    .line 3417
    .line 3418
    move-result-object v1

    .line 3419
    iput-object v1, v5, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 3420
    .line 3421
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 3422
    .line 3423
    .line 3424
    iget v0, v5, Lcom/google/android/gms/internal/ads/e1;->c:I

    .line 3425
    .line 3426
    move-object/from16 v1, v30

    .line 3427
    .line 3428
    invoke-virtual {v1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3429
    .line 3430
    .line 3431
    move-object/from16 v2, v36

    .line 3432
    .line 3433
    const/4 v0, 0x0

    .line 3434
    :goto_34
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 3435
    .line 3436
    goto/16 :goto_8

    .line 3437
    .line 3438
    :cond_64
    const/4 v0, 0x0

    .line 3439
    const-string v1, "CodecId is missing in TrackEntry element"

    .line 3440
    .line 3441
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 3442
    .line 3443
    .line 3444
    move-result-object v0

    .line 3445
    throw v0

    .line 3446
    :cond_65
    move-object v2, v5

    .line 3447
    move-object v14, v6

    .line 3448
    move-object v1, v8

    .line 3449
    move-object v7, v10

    .line 3450
    move-object/from16 v10, v27

    .line 3451
    .line 3452
    const/16 v0, 0xff

    .line 3453
    .line 3454
    iget v3, v2, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 3455
    .line 3456
    const/4 v4, 0x2

    .line 3457
    if-ne v3, v4, :cond_9

    .line 3458
    .line 3459
    iget v3, v2, Lcom/google/android/gms/internal/ads/f1;->N:I

    .line 3460
    .line 3461
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 3462
    .line 3463
    .line 3464
    move-result-object v1

    .line 3465
    check-cast v1, Lcom/google/android/gms/internal/ads/e1;

    .line 3466
    .line 3467
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 3468
    .line 3469
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3470
    .line 3471
    .line 3472
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/f1;->S:J

    .line 3473
    .line 3474
    const-wide/16 v5, 0x0

    .line 3475
    .line 3476
    cmp-long v8, v3, v5

    .line 3477
    .line 3478
    if-lez v8, :cond_66

    .line 3479
    .line 3480
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 3481
    .line 3482
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3483
    .line 3484
    .line 3485
    move-result v3

    .line 3486
    if-eqz v3, :cond_66

    .line 3487
    .line 3488
    const/16 v3, 0x8

    .line 3489
    .line 3490
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3491
    .line 3492
    .line 3493
    move-result-object v3

    .line 3494
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3495
    .line 3496
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3497
    .line 3498
    .line 3499
    move-result-object v3

    .line 3500
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/f1;->S:J

    .line 3501
    .line 3502
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3503
    .line 3504
    .line 3505
    move-result-object v3

    .line 3506
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 3507
    .line 3508
    .line 3509
    move-result-object v3

    .line 3510
    array-length v4, v3

    .line 3511
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/f1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 3512
    .line 3513
    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 3514
    .line 3515
    .line 3516
    :cond_66
    const/4 v3, 0x0

    .line 3517
    const/4 v4, 0x0

    .line 3518
    :goto_35
    iget v5, v2, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 3519
    .line 3520
    if-ge v3, v5, :cond_67

    .line 3521
    .line 3522
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 3523
    .line 3524
    aget v5, v5, v3

    .line 3525
    .line 3526
    add-int/2addr v4, v5

    .line 3527
    const/4 v5, 0x1

    .line 3528
    add-int/2addr v3, v5

    .line 3529
    goto :goto_35

    .line 3530
    :cond_67
    const/4 v3, 0x0

    .line 3531
    :goto_36
    iget v5, v2, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 3532
    .line 3533
    if-ge v3, v5, :cond_6a

    .line 3534
    .line 3535
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/f1;->I:J

    .line 3536
    .line 3537
    iget v8, v1, Lcom/google/android/gms/internal/ads/e1;->e:I

    .line 3538
    .line 3539
    mul-int v8, v8, v3

    .line 3540
    .line 3541
    div-int/lit16 v8, v8, 0x3e8

    .line 3542
    .line 3543
    int-to-long v8, v8

    .line 3544
    add-long v31, v5, v8

    .line 3545
    .line 3546
    iget v5, v2, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 3547
    .line 3548
    if-nez v3, :cond_69

    .line 3549
    .line 3550
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/f1;->R:Z

    .line 3551
    .line 3552
    if-nez v3, :cond_68

    .line 3553
    .line 3554
    const/4 v3, 0x1

    .line 3555
    or-int/2addr v5, v3

    .line 3556
    :cond_68
    move/from16 v33, v5

    .line 3557
    .line 3558
    const/4 v3, 0x0

    .line 3559
    goto :goto_37

    .line 3560
    :cond_69
    move/from16 v33, v5

    .line 3561
    .line 3562
    :goto_37
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/f1;->M:[I

    .line 3563
    .line 3564
    aget v34, v5, v3

    .line 3565
    .line 3566
    sub-int v4, v4, v34

    .line 3567
    .line 3568
    move-object/from16 v29, v2

    .line 3569
    .line 3570
    move-object/from16 v30, v1

    .line 3571
    .line 3572
    move/from16 v35, v4

    .line 3573
    .line 3574
    invoke-virtual/range {v29 .. v35}, Lcom/google/android/gms/internal/ads/f1;->m(Lcom/google/android/gms/internal/ads/e1;JIII)V

    .line 3575
    .line 3576
    .line 3577
    const/4 v5, 0x1

    .line 3578
    add-int/2addr v3, v5

    .line 3579
    goto :goto_36

    .line 3580
    :cond_6a
    const/4 v5, 0x1

    .line 3581
    const/4 v6, 0x0

    .line 3582
    iput v6, v2, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 3583
    .line 3584
    :goto_38
    move-object/from16 v4, p0

    .line 3585
    .line 3586
    move-object/from16 v0, p1

    .line 3587
    .line 3588
    move-object v3, v7

    .line 3589
    move-object/from16 v8, v18

    .line 3590
    .line 3591
    const/4 v1, 0x0

    .line 3592
    :goto_39
    const/4 v9, -0x1

    .line 3593
    goto/16 :goto_4d

    .line 3594
    .line 3595
    :cond_6b
    move-object v14, v6

    .line 3596
    move-object v7, v10

    .line 3597
    const/16 v0, 0xff

    .line 3598
    .line 3599
    const/16 v1, 0x19

    .line 3600
    .line 3601
    const/16 v2, 0x18

    .line 3602
    .line 3603
    const/4 v5, 0x1

    .line 3604
    const/4 v6, 0x0

    .line 3605
    move-object v10, v8

    .line 3606
    move-object/from16 v8, v18

    .line 3607
    .line 3608
    :goto_3a
    iget v13, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3609
    .line 3610
    if-nez v13, :cond_75

    .line 3611
    .line 3612
    iget-object v13, v11, Lcom/google/android/gms/internal/ads/c1;->c:Lcom/google/android/gms/internal/ads/g1;

    .line 3613
    .line 3614
    move-object/from16 v0, p1

    .line 3615
    .line 3616
    const/4 v1, 0x4

    .line 3617
    invoke-virtual {v13, v0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/g1;->b(Lcom/google/android/gms/internal/ads/M;ZZI)J

    .line 3618
    .line 3619
    .line 3620
    move-result-wide v18

    .line 3621
    const-wide/16 v20, -0x2

    .line 3622
    .line 3623
    cmp-long v5, v18, v20

    .line 3624
    .line 3625
    if-nez v5, :cond_71

    .line 3626
    .line 3627
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 3628
    .line 3629
    .line 3630
    :goto_3b
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/c1;->a:[B

    .line 3631
    .line 3632
    invoke-interface {v0, v6, v5, v1}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 3633
    .line 3634
    .line 3635
    aget-byte v1, v5, v6

    .line 3636
    .line 3637
    const/4 v6, 0x0

    .line 3638
    :goto_3c
    const/16 v13, 0x8

    .line 3639
    .line 3640
    if-ge v6, v13, :cond_6d

    .line 3641
    .line 3642
    const/4 v13, 0x1

    .line 3643
    add-int/lit8 v18, v6, 0x1

    .line 3644
    .line 3645
    sget-object v13, Lcom/google/android/gms/internal/ads/g1;->d:[J

    .line 3646
    .line 3647
    aget-wide v29, v13, v6

    .line 3648
    .line 3649
    int-to-long v2, v1

    .line 3650
    and-long v2, v29, v2

    .line 3651
    .line 3652
    const-wide/16 v23, 0x0

    .line 3653
    .line 3654
    cmp-long v13, v2, v23

    .line 3655
    .line 3656
    if-eqz v13, :cond_6c

    .line 3657
    .line 3658
    move/from16 v1, v18

    .line 3659
    .line 3660
    :goto_3d
    const/4 v2, -0x1

    .line 3661
    goto :goto_3e

    .line 3662
    :cond_6c
    move/from16 v6, v18

    .line 3663
    .line 3664
    const/16 v2, 0x18

    .line 3665
    .line 3666
    const v3, 0x1549a966

    .line 3667
    .line 3668
    .line 3669
    goto :goto_3c

    .line 3670
    :cond_6d
    const-wide/16 v23, 0x0

    .line 3671
    .line 3672
    const/4 v1, -0x1

    .line 3673
    goto :goto_3d

    .line 3674
    :goto_3e
    if-eq v1, v2, :cond_70

    .line 3675
    .line 3676
    const/4 v2, 0x4

    .line 3677
    if-gt v1, v2, :cond_70

    .line 3678
    .line 3679
    move-object v3, v7

    .line 3680
    const/4 v2, 0x0

    .line 3681
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ads/g1;->a([BIZ)J

    .line 3682
    .line 3683
    .line 3684
    move-result-wide v6

    .line 3685
    long-to-int v2, v6

    .line 3686
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/c1;->d:Lcom/google/android/gms/internal/ads/d1;

    .line 3687
    .line 3688
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/d1;->a:Lcom/google/android/gms/internal/ads/f1;

    .line 3689
    .line 3690
    const v5, 0x1549a966

    .line 3691
    .line 3692
    .line 3693
    if-eq v2, v5, :cond_6f

    .line 3694
    .line 3695
    const v6, 0x1f43b675

    .line 3696
    .line 3697
    .line 3698
    if-eq v2, v6, :cond_6f

    .line 3699
    .line 3700
    if-eq v2, v4, :cond_6f

    .line 3701
    .line 3702
    if-ne v2, v15, :cond_6e

    .line 3703
    .line 3704
    goto :goto_40

    .line 3705
    :cond_6e
    :goto_3f
    const/4 v1, 0x1

    .line 3706
    goto :goto_42

    .line 3707
    :cond_6f
    move v15, v2

    .line 3708
    :goto_40
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 3709
    .line 3710
    .line 3711
    int-to-long v1, v15

    .line 3712
    :goto_41
    const-wide/16 v4, -0x1

    .line 3713
    .line 3714
    goto :goto_43

    .line 3715
    :cond_70
    move-object v3, v7

    .line 3716
    const v5, 0x1549a966

    .line 3717
    .line 3718
    .line 3719
    goto :goto_3f

    .line 3720
    :goto_42
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 3721
    .line 3722
    .line 3723
    move-object v7, v3

    .line 3724
    const/4 v1, 0x4

    .line 3725
    const/16 v2, 0x18

    .line 3726
    .line 3727
    const v3, 0x1549a966

    .line 3728
    .line 3729
    .line 3730
    const/4 v6, 0x0

    .line 3731
    goto :goto_3b

    .line 3732
    :cond_71
    move-object v3, v7

    .line 3733
    move-wide/from16 v1, v18

    .line 3734
    .line 3735
    goto :goto_41

    .line 3736
    :goto_43
    cmp-long v6, v1, v4

    .line 3737
    .line 3738
    if-nez v6, :cond_74

    .line 3739
    .line 3740
    const/4 v13, 0x0

    .line 3741
    move-object/from16 v4, p0

    .line 3742
    .line 3743
    :goto_44
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/f1;->b:Landroid/util/SparseArray;

    .line 3744
    .line 3745
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 3746
    .line 3747
    .line 3748
    move-result v0

    .line 3749
    if-ge v13, v0, :cond_73

    .line 3750
    .line 3751
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/f1;->b:Landroid/util/SparseArray;

    .line 3752
    .line 3753
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 3754
    .line 3755
    .line 3756
    move-result-object v0

    .line 3757
    check-cast v0, Lcom/google/android/gms/internal/ads/e1;

    .line 3758
    .line 3759
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 3760
    .line 3761
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3762
    .line 3763
    .line 3764
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e1;->U:LW0/M;

    .line 3765
    .line 3766
    if-eqz v1, :cond_72

    .line 3767
    .line 3768
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 3769
    .line 3770
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/e1;->j:Lcom/google/android/gms/internal/ads/d0;

    .line 3771
    .line 3772
    invoke-virtual {v1, v2, v0}, LW0/M;->d(Lcom/google/android/gms/internal/ads/e0;Lcom/google/android/gms/internal/ads/d0;)V

    .line 3773
    .line 3774
    .line 3775
    :cond_72
    const/4 v5, 0x1

    .line 3776
    add-int/2addr v13, v5

    .line 3777
    goto :goto_44

    .line 3778
    :cond_73
    const/4 v0, -0x1

    .line 3779
    return v0

    .line 3780
    :cond_74
    move-object/from16 v4, p0

    .line 3781
    .line 3782
    const/4 v5, 0x1

    .line 3783
    long-to-int v2, v1

    .line 3784
    iput v2, v11, Lcom/google/android/gms/internal/ads/c1;->f:I

    .line 3785
    .line 3786
    iput v5, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3787
    .line 3788
    goto :goto_45

    .line 3789
    :cond_75
    move-object/from16 v4, p0

    .line 3790
    .line 3791
    move-object/from16 v0, p1

    .line 3792
    .line 3793
    move-object v3, v7

    .line 3794
    if-ne v13, v5, :cond_76

    .line 3795
    .line 3796
    :goto_45
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/c1;->c:Lcom/google/android/gms/internal/ads/g1;

    .line 3797
    .line 3798
    const/4 v2, 0x0

    .line 3799
    const/16 v6, 0x8

    .line 3800
    .line 3801
    invoke-virtual {v1, v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/g1;->b(Lcom/google/android/gms/internal/ads/M;ZZI)J

    .line 3802
    .line 3803
    .line 3804
    move-result-wide v6

    .line 3805
    iput-wide v6, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3806
    .line 3807
    const/4 v1, 0x2

    .line 3808
    iput v1, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3809
    .line 3810
    goto :goto_46

    .line 3811
    :cond_76
    const/4 v1, 0x2

    .line 3812
    :goto_46
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/c1;->d:Lcom/google/android/gms/internal/ads/d1;

    .line 3813
    .line 3814
    iget v5, v11, Lcom/google/android/gms/internal/ads/c1;->f:I

    .line 3815
    .line 3816
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/d1;->a:Lcom/google/android/gms/internal/ads/f1;

    .line 3817
    .line 3818
    sparse-switch v5, :sswitch_data_2

    .line 3819
    .line 3820
    .line 3821
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3822
    .line 3823
    long-to-int v2, v5

    .line 3824
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 3825
    .line 3826
    .line 3827
    const/4 v2, 0x0

    .line 3828
    iput v2, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3829
    .line 3830
    move-object/from16 v2, p2

    .line 3831
    .line 3832
    move-object v1, v0

    .line 3833
    move-object v0, v4

    .line 3834
    move-object v4, v8

    .line 3835
    move-object v8, v10

    .line 3836
    move-object v6, v14

    .line 3837
    move-object/from16 v14, v22

    .line 3838
    .line 3839
    const/4 v13, 0x0

    .line 3840
    move-object v10, v3

    .line 3841
    goto/16 :goto_1

    .line 3842
    .line 3843
    :sswitch_42
    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3844
    .line 3845
    const-wide/16 v18, 0x4

    .line 3846
    .line 3847
    cmp-long v9, v6, v18

    .line 3848
    .line 3849
    if-eqz v9, :cond_78

    .line 3850
    .line 3851
    const-wide/16 v18, 0x8

    .line 3852
    .line 3853
    cmp-long v9, v6, v18

    .line 3854
    .line 3855
    if-nez v9, :cond_77

    .line 3856
    .line 3857
    goto :goto_47

    .line 3858
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3859
    .line 3860
    const-string v1, "Invalid float size: "

    .line 3861
    .line 3862
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3863
    .line 3864
    .line 3865
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3866
    .line 3867
    .line 3868
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3869
    .line 3870
    .line 3871
    move-result-object v0

    .line 3872
    const/4 v1, 0x0

    .line 3873
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 3874
    .line 3875
    .line 3876
    move-result-object v0

    .line 3877
    throw v0

    .line 3878
    :cond_78
    :goto_47
    long-to-int v7, v6

    .line 3879
    move-object v6, v2

    .line 3880
    invoke-virtual {v11, v0, v7}, Lcom/google/android/gms/internal/ads/c1;->a(Lcom/google/android/gms/internal/ads/M;I)J

    .line 3881
    .line 3882
    .line 3883
    move-result-wide v1

    .line 3884
    const/4 v9, 0x4

    .line 3885
    if-ne v7, v9, :cond_79

    .line 3886
    .line 3887
    long-to-int v2, v1

    .line 3888
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 3889
    .line 3890
    .line 3891
    move-result v1

    .line 3892
    float-to-double v1, v1

    .line 3893
    goto :goto_48

    .line 3894
    :cond_79
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 3895
    .line 3896
    .line 3897
    move-result-wide v1

    .line 3898
    :goto_48
    invoke-virtual {v6, v5, v1, v2}, Lcom/google/android/gms/internal/ads/f1;->b(ID)V

    .line 3899
    .line 3900
    .line 3901
    const/4 v1, 0x0

    .line 3902
    iput v1, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3903
    .line 3904
    goto/16 :goto_39

    .line 3905
    .line 3906
    :sswitch_43
    move-object v6, v2

    .line 3907
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3908
    .line 3909
    long-to-int v2, v1

    .line 3910
    invoke-virtual {v6, v5, v2, v0}, Lcom/google/android/gms/internal/ads/f1;->a(IILcom/google/android/gms/internal/ads/M;)V

    .line 3911
    .line 3912
    .line 3913
    const/4 v1, 0x0

    .line 3914
    iput v1, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3915
    .line 3916
    goto/16 :goto_39

    .line 3917
    .line 3918
    :sswitch_44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 3919
    .line 3920
    .line 3921
    move-result-wide v30

    .line 3922
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3923
    .line 3924
    add-long v1, v30, v1

    .line 3925
    .line 3926
    new-instance v6, Lcom/google/android/gms/internal/ads/b1;

    .line 3927
    .line 3928
    invoke-direct {v6, v5, v1, v2}, Lcom/google/android/gms/internal/ads/b1;-><init>(IJ)V

    .line 3929
    .line 3930
    .line 3931
    invoke-virtual {v9, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 3932
    .line 3933
    .line 3934
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/c1;->d:Lcom/google/android/gms/internal/ads/d1;

    .line 3935
    .line 3936
    iget v2, v11, Lcom/google/android/gms/internal/ads/c1;->f:I

    .line 3937
    .line 3938
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3939
    .line 3940
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/d1;->a:Lcom/google/android/gms/internal/ads/f1;

    .line 3941
    .line 3942
    move-object/from16 v28, v1

    .line 3943
    .line 3944
    move/from16 v29, v2

    .line 3945
    .line 3946
    move-wide/from16 v32, v5

    .line 3947
    .line 3948
    invoke-virtual/range {v28 .. v33}, Lcom/google/android/gms/internal/ads/f1;->h(IJJ)V

    .line 3949
    .line 3950
    .line 3951
    const/4 v1, 0x0

    .line 3952
    iput v1, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 3953
    .line 3954
    goto/16 :goto_39

    .line 3955
    .line 3956
    :sswitch_45
    move-object v6, v2

    .line 3957
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 3958
    .line 3959
    const-wide/32 v18, 0x7fffffff

    .line 3960
    .line 3961
    .line 3962
    cmp-long v7, v1, v18

    .line 3963
    .line 3964
    if-gtz v7, :cond_82

    .line 3965
    .line 3966
    long-to-int v2, v1

    .line 3967
    if-nez v2, :cond_7a

    .line 3968
    .line 3969
    const-string v1, ""

    .line 3970
    .line 3971
    const/4 v9, -0x1

    .line 3972
    goto :goto_4a

    .line 3973
    :cond_7a
    new-array v1, v2, [B

    .line 3974
    .line 3975
    const/4 v7, 0x0

    .line 3976
    invoke-interface {v0, v7, v1, v2}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 3977
    .line 3978
    .line 3979
    :goto_49
    const/4 v9, -0x1

    .line 3980
    if-lez v2, :cond_7b

    .line 3981
    .line 3982
    add-int/lit8 v13, v2, -0x1

    .line 3983
    .line 3984
    aget-byte v15, v1, v13

    .line 3985
    .line 3986
    if-nez v15, :cond_7b

    .line 3987
    .line 3988
    move v2, v13

    .line 3989
    goto :goto_49

    .line 3990
    :cond_7b
    new-instance v13, Ljava/lang/String;

    .line 3991
    .line 3992
    invoke-direct {v13, v1, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 3993
    .line 3994
    .line 3995
    move-object v1, v13

    .line 3996
    :goto_4a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3997
    .line 3998
    .line 3999
    const/16 v2, 0x86

    .line 4000
    .line 4001
    if-eq v5, v2, :cond_81

    .line 4002
    .line 4003
    const/16 v2, 0x4282

    .line 4004
    .line 4005
    if-eq v5, v2, :cond_7f

    .line 4006
    .line 4007
    const/16 v2, 0x536e

    .line 4008
    .line 4009
    if-eq v5, v2, :cond_7e

    .line 4010
    .line 4011
    const v2, 0x22b59c

    .line 4012
    .line 4013
    .line 4014
    if-eq v5, v2, :cond_7c

    .line 4015
    .line 4016
    goto :goto_4b

    .line 4017
    :cond_7c
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 4018
    .line 4019
    .line 4020
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 4021
    .line 4022
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/e1;->X:Ljava/lang/String;

    .line 4023
    .line 4024
    :cond_7d
    :goto_4b
    const/4 v1, 0x0

    .line 4025
    goto :goto_4c

    .line 4026
    :cond_7e
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 4027
    .line 4028
    .line 4029
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 4030
    .line 4031
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/e1;->a:Ljava/lang/String;

    .line 4032
    .line 4033
    goto :goto_4b

    .line 4034
    :cond_7f
    const-string v2, "webm"

    .line 4035
    .line 4036
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4037
    .line 4038
    .line 4039
    move-result v2

    .line 4040
    if-nez v2, :cond_7d

    .line 4041
    .line 4042
    const-string v2, "matroska"

    .line 4043
    .line 4044
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4045
    .line 4046
    .line 4047
    move-result v2

    .line 4048
    if-eqz v2, :cond_80

    .line 4049
    .line 4050
    goto :goto_4b

    .line 4051
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4052
    .line 4053
    const-string v2, "DocType "

    .line 4054
    .line 4055
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4056
    .line 4057
    .line 4058
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    .line 4060
    .line 4061
    const-string v1, " not supported"

    .line 4062
    .line 4063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    .line 4065
    .line 4066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4067
    .line 4068
    .line 4069
    move-result-object v0

    .line 4070
    const/4 v1, 0x0

    .line 4071
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 4072
    .line 4073
    .line 4074
    move-result-object v0

    .line 4075
    throw v0

    .line 4076
    :cond_81
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 4077
    .line 4078
    .line 4079
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 4080
    .line 4081
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 4082
    .line 4083
    goto :goto_4b

    .line 4084
    :goto_4c
    iput v1, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 4085
    .line 4086
    goto :goto_4d

    .line 4087
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4088
    .line 4089
    const-string v3, "String element size: "

    .line 4090
    .line 4091
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4092
    .line 4093
    .line 4094
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4095
    .line 4096
    .line 4097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4098
    .line 4099
    .line 4100
    move-result-object v0

    .line 4101
    const/4 v1, 0x0

    .line 4102
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 4103
    .line 4104
    .line 4105
    move-result-object v0

    .line 4106
    throw v0

    .line 4107
    :sswitch_46
    move-object v6, v2

    .line 4108
    const/4 v9, -0x1

    .line 4109
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/c1;->g:J

    .line 4110
    .line 4111
    const-wide/16 v18, 0x8

    .line 4112
    .line 4113
    cmp-long v7, v1, v18

    .line 4114
    .line 4115
    if-gtz v7, :cond_85

    .line 4116
    .line 4117
    long-to-int v2, v1

    .line 4118
    invoke-virtual {v11, v0, v2}, Lcom/google/android/gms/internal/ads/c1;->a(Lcom/google/android/gms/internal/ads/M;I)J

    .line 4119
    .line 4120
    .line 4121
    move-result-wide v1

    .line 4122
    invoke-virtual {v6, v5, v1, v2}, Lcom/google/android/gms/internal/ads/f1;->g(IJ)V

    .line 4123
    .line 4124
    .line 4125
    const/4 v1, 0x0

    .line 4126
    iput v1, v11, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 4127
    .line 4128
    :goto_4d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 4129
    .line 4130
    .line 4131
    move-result-wide v5

    .line 4132
    iget-boolean v2, v4, Lcom/google/android/gms/internal/ads/f1;->z:Z

    .line 4133
    .line 4134
    if-eqz v2, :cond_83

    .line 4135
    .line 4136
    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/f1;->B:J

    .line 4137
    .line 4138
    iget-wide v2, v4, Lcom/google/android/gms/internal/ads/f1;->A:J

    .line 4139
    .line 4140
    move-object/from16 v5, p2

    .line 4141
    .line 4142
    iput-wide v2, v5, LW0/w;->a:J

    .line 4143
    .line 4144
    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/f1;->z:Z

    .line 4145
    .line 4146
    :goto_4e
    const/4 v6, 0x1

    .line 4147
    goto :goto_4f

    .line 4148
    :cond_83
    move-object/from16 v5, p2

    .line 4149
    .line 4150
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/f1;->w:Z

    .line 4151
    .line 4152
    if-eqz v1, :cond_84

    .line 4153
    .line 4154
    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/f1;->B:J

    .line 4155
    .line 4156
    const-wide/16 v6, -0x1

    .line 4157
    .line 4158
    cmp-long v11, v1, v6

    .line 4159
    .line 4160
    if-eqz v11, :cond_84

    .line 4161
    .line 4162
    iput-wide v1, v5, LW0/w;->a:J

    .line 4163
    .line 4164
    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/f1;->B:J

    .line 4165
    .line 4166
    goto :goto_4e

    .line 4167
    :goto_4f
    return v6

    .line 4168
    :cond_84
    move-object v1, v0

    .line 4169
    move-object v0, v4

    .line 4170
    move-object v2, v5

    .line 4171
    move-object v4, v8

    .line 4172
    move-object v8, v10

    .line 4173
    move-object v6, v14

    .line 4174
    move-object/from16 v14, v22

    .line 4175
    .line 4176
    const/4 v13, 0x0

    .line 4177
    move-object v10, v3

    .line 4178
    goto/16 :goto_0

    .line 4179
    .line 4180
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4181
    .line 4182
    const-string v3, "Invalid integer size: "

    .line 4183
    .line 4184
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4185
    .line 4186
    .line 4187
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4188
    .line 4189
    .line 4190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4191
    .line 4192
    .line 4193
    move-result-object v0

    .line 4194
    const/4 v1, 0x0

    .line 4195
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 4196
    .line 4197
    .line 4198
    move-result-object v0

    .line 4199
    throw v0

    .line 4200
    :cond_86
    move-object v4, v0

    .line 4201
    const/4 v0, 0x0

    .line 4202
    return v0

    .line 4203
    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    .line 4204
    .line 4205
    .line 4206
    .line 4207
    .line 4208
    .line 4209
    .line 4210
    .line 4211
    .line 4212
    .line 4213
    .line 4214
    .line 4215
    .line 4216
    .line 4217
    .line 4218
    .line 4219
    .line 4220
    .line 4221
    .line 4222
    .line 4223
    .line 4224
    .line 4225
    .line 4226
    .line 4227
    .line 4228
    .line 4229
    .line 4230
    .line 4231
    .line 4232
    .line 4233
    .line 4234
    .line 4235
    .line 4236
    .line 4237
    .line 4238
    .line 4239
    .line 4240
    .line 4241
    .line 4242
    .line 4243
    .line 4244
    .line 4245
    .line 4246
    .line 4247
    .line 4248
    .line 4249
    .line 4250
    .line 4251
    .line 4252
    .line 4253
    .line 4254
    .line 4255
    .line 4256
    .line 4257
    .line 4258
    .line 4259
    .line 4260
    .line 4261
    .line 4262
    .line 4263
    .line 4264
    .line 4265
    .line 4266
    .line 4267
    .line 4268
    .line 4269
    .line 4270
    .line 4271
    .line 4272
    .line 4273
    .line 4274
    .line 4275
    .line 4276
    .line 4277
    .line 4278
    .line 4279
    .line 4280
    .line 4281
    .line 4282
    .line 4283
    .line 4284
    .line 4285
    .line 4286
    .line 4287
    .line 4288
    .line 4289
    .line 4290
    .line 4291
    .line 4292
    .line 4293
    .line 4294
    .line 4295
    .line 4296
    .line 4297
    .line 4298
    .line 4299
    .line 4300
    .line 4301
    .line 4302
    .line 4303
    .line 4304
    .line 4305
    .line 4306
    .line 4307
    .line 4308
    .line 4309
    .line 4310
    .line 4311
    .line 4312
    .line 4313
    .line 4314
    .line 4315
    .line 4316
    .line 4317
    .line 4318
    .line 4319
    .line 4320
    .line 4321
    .line 4322
    .line 4323
    .line 4324
    .line 4325
    .line 4326
    .line 4327
    .line 4328
    .line 4329
    .line 4330
    .line 4331
    .line 4332
    .line 4333
    .line 4334
    .line 4335
    .line 4336
    .line 4337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4338
    .line 4339
    .line 4340
    .line 4341
    .line 4342
    .line 4343
    .line 4344
    .line 4345
    .line 4346
    .line 4347
    .line 4348
    .line 4349
    .line 4350
    .line 4351
    .line 4352
    .line 4353
    .line 4354
    .line 4355
    .line 4356
    .line 4357
    .line 4358
    .line 4359
    .line 4360
    .line 4361
    .line 4362
    .line 4363
    .line 4364
    .line 4365
    .line 4366
    .line 4367
    .line 4368
    .line 4369
    .line 4370
    .line 4371
    .line 4372
    .line 4373
    .line 4374
    .line 4375
    .line 4376
    .line 4377
    .line 4378
    .line 4379
    .line 4380
    .line 4381
    .line 4382
    .line 4383
    .line 4384
    .line 4385
    .line 4386
    .line 4387
    .line 4388
    .line 4389
    .line 4390
    .line 4391
    .line 4392
    .line 4393
    .line 4394
    .line 4395
    .line 4396
    .line 4397
    .line 4398
    .line 4399
    .line 4400
    .line 4401
    .line 4402
    .line 4403
    .line 4404
    .line 4405
    .line 4406
    .line 4407
    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_41
        -0x7ce7f3b0 -> :sswitch_40
        -0x76567dc0 -> :sswitch_3f
        -0x6a615338 -> :sswitch_3e
        -0x672350af -> :sswitch_3d
        -0x585f4fce -> :sswitch_3c
        -0x585f4fcd -> :sswitch_3b
        -0x51dc40b2 -> :sswitch_3a
        -0x37a9c464 -> :sswitch_39
        -0x2016c535 -> :sswitch_38
        -0x2016c4e5 -> :sswitch_37
        -0x19552dbd -> :sswitch_36
        -0x1538b2ba -> :sswitch_35
        0x3c02325 -> :sswitch_34
        0x3c02353 -> :sswitch_33
        0x3c030c5 -> :sswitch_32
        0x4e81333 -> :sswitch_31
        0x4e86155 -> :sswitch_30
        0x4e86156 -> :sswitch_2f
        0x5e8da3e -> :sswitch_2e
        0x1a8350d6 -> :sswitch_2d
        0x2056f406 -> :sswitch_2c
        0x25e26ee2 -> :sswitch_2b
        0x2b45174d -> :sswitch_2a
        0x2b453ce4 -> :sswitch_29
        0x2c0618eb -> :sswitch_28
        0x32fdf009 -> :sswitch_27
        0x3e4ca2d8 -> :sswitch_26
        0x54c61e47 -> :sswitch_25
        0x6bd6c624 -> :sswitch_24
        0x7446132a -> :sswitch_23
        0x7446b0a6 -> :sswitch_22
        0x744ad97d -> :sswitch_21
    .end sparse-switch

    .line 4408
    .line 4409
    .line 4410
    .line 4411
    .line 4412
    .line 4413
    .line 4414
    .line 4415
    .line 4416
    .line 4417
    .line 4418
    .line 4419
    .line 4420
    .line 4421
    .line 4422
    .line 4423
    .line 4424
    .line 4425
    .line 4426
    .line 4427
    .line 4428
    .line 4429
    .line 4430
    .line 4431
    .line 4432
    .line 4433
    .line 4434
    .line 4435
    .line 4436
    .line 4437
    .line 4438
    .line 4439
    .line 4440
    .line 4441
    .line 4442
    .line 4443
    .line 4444
    .line 4445
    .line 4446
    .line 4447
    .line 4448
    .line 4449
    .line 4450
    .line 4451
    .line 4452
    .line 4453
    .line 4454
    .line 4455
    .line 4456
    .line 4457
    .line 4458
    .line 4459
    .line 4460
    .line 4461
    .line 4462
    .line 4463
    .line 4464
    .line 4465
    .line 4466
    .line 4467
    .line 4468
    .line 4469
    .line 4470
    .line 4471
    .line 4472
    .line 4473
    .line 4474
    .line 4475
    .line 4476
    .line 4477
    .line 4478
    .line 4479
    .line 4480
    .line 4481
    .line 4482
    .line 4483
    .line 4484
    .line 4485
    .line 4486
    .line 4487
    .line 4488
    .line 4489
    .line 4490
    .line 4491
    .line 4492
    .line 4493
    .line 4494
    .line 4495
    .line 4496
    .line 4497
    .line 4498
    .line 4499
    .line 4500
    .line 4501
    .line 4502
    .line 4503
    .line 4504
    .line 4505
    .line 4506
    .line 4507
    .line 4508
    .line 4509
    .line 4510
    .line 4511
    .line 4512
    .line 4513
    .line 4514
    .line 4515
    .line 4516
    .line 4517
    .line 4518
    .line 4519
    .line 4520
    .line 4521
    .line 4522
    .line 4523
    .line 4524
    .line 4525
    .line 4526
    .line 4527
    .line 4528
    .line 4529
    .line 4530
    .line 4531
    .line 4532
    .line 4533
    .line 4534
    .line 4535
    .line 4536
    .line 4537
    .line 4538
    .line 4539
    .line 4540
    .line 4541
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
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
        :pswitch_e
        :pswitch_d
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

    .line 4542
    .line 4543
    .line 4544
    .line 4545
    .line 4546
    .line 4547
    .line 4548
    .line 4549
    .line 4550
    .line 4551
    .line 4552
    .line 4553
    .line 4554
    .line 4555
    .line 4556
    .line 4557
    .line 4558
    .line 4559
    .line 4560
    .line 4561
    .line 4562
    .line 4563
    .line 4564
    .line 4565
    .line 4566
    .line 4567
    .line 4568
    .line 4569
    .line 4570
    .line 4571
    .line 4572
    .line 4573
    .line 4574
    .line 4575
    .line 4576
    .line 4577
    .line 4578
    .line 4579
    .line 4580
    .line 4581
    .line 4582
    .line 4583
    .line 4584
    .line 4585
    .line 4586
    .line 4587
    .line 4588
    .line 4589
    .line 4590
    .line 4591
    .line 4592
    .line 4593
    .line 4594
    .line 4595
    .line 4596
    .line 4597
    .line 4598
    .line 4599
    .line 4600
    .line 4601
    .line 4602
    .line 4603
    .line 4604
    .line 4605
    .line 4606
    .line 4607
    .line 4608
    .line 4609
    .line 4610
    .line 4611
    :sswitch_data_2
    .sparse-switch
        0x83 -> :sswitch_46
        0x86 -> :sswitch_45
        0x88 -> :sswitch_46
        0x9b -> :sswitch_46
        0x9f -> :sswitch_46
        0xa0 -> :sswitch_44
        0xa1 -> :sswitch_43
        0xa3 -> :sswitch_43
        0xa5 -> :sswitch_43
        0xa6 -> :sswitch_44
        0xae -> :sswitch_44
        0xb0 -> :sswitch_46
        0xb3 -> :sswitch_46
        0xb5 -> :sswitch_42
        0xb7 -> :sswitch_44
        0xba -> :sswitch_46
        0xbb -> :sswitch_44
        0xd7 -> :sswitch_46
        0xe0 -> :sswitch_44
        0xe1 -> :sswitch_44
        0xe7 -> :sswitch_46
        0xee -> :sswitch_46
        0xf1 -> :sswitch_46
        0xfb -> :sswitch_46
        0x41e4 -> :sswitch_44
        0x41e7 -> :sswitch_46
        0x41ed -> :sswitch_43
        0x4254 -> :sswitch_46
        0x4255 -> :sswitch_43
        0x4282 -> :sswitch_45
        0x4285 -> :sswitch_46
        0x42f7 -> :sswitch_46
        0x4489 -> :sswitch_42
        0x47e1 -> :sswitch_46
        0x47e2 -> :sswitch_43
        0x47e7 -> :sswitch_44
        0x47e8 -> :sswitch_46
        0x4dbb -> :sswitch_44
        0x5031 -> :sswitch_46
        0x5032 -> :sswitch_46
        0x5034 -> :sswitch_44
        0x5035 -> :sswitch_44
        0x536e -> :sswitch_45
        0x53ab -> :sswitch_43
        0x53ac -> :sswitch_46
        0x53b8 -> :sswitch_46
        0x54b0 -> :sswitch_46
        0x54b2 -> :sswitch_46
        0x54ba -> :sswitch_46
        0x55aa -> :sswitch_46
        0x55b0 -> :sswitch_44
        0x55b2 -> :sswitch_46
        0x55b9 -> :sswitch_46
        0x55ba -> :sswitch_46
        0x55bb -> :sswitch_46
        0x55bc -> :sswitch_46
        0x55bd -> :sswitch_46
        0x55d0 -> :sswitch_44
        0x55d1 -> :sswitch_42
        0x55d2 -> :sswitch_42
        0x55d3 -> :sswitch_42
        0x55d4 -> :sswitch_42
        0x55d5 -> :sswitch_42
        0x55d6 -> :sswitch_42
        0x55d7 -> :sswitch_42
        0x55d8 -> :sswitch_42
        0x55d9 -> :sswitch_42
        0x55da -> :sswitch_42
        0x55ee -> :sswitch_46
        0x56aa -> :sswitch_46
        0x56bb -> :sswitch_46
        0x6240 -> :sswitch_44
        0x6264 -> :sswitch_46
        0x63a2 -> :sswitch_43
        0x6d80 -> :sswitch_44
        0x75a1 -> :sswitch_44
        0x75a2 -> :sswitch_46
        0x7670 -> :sswitch_44
        0x7671 -> :sswitch_46
        0x7672 -> :sswitch_43
        0x7673 -> :sswitch_42
        0x7674 -> :sswitch_42
        0x7675 -> :sswitch_42
        0x22b59c -> :sswitch_45
        0x23e383 -> :sswitch_46
        0x2ad7b1 -> :sswitch_46
        0x114d9b74 -> :sswitch_44
        0x1549a966 -> :sswitch_44
        0x1654ae6b -> :sswitch_44
        0x18538067 -> :sswitch_44
        0x1a45dfa3 -> :sswitch_44
        0x1c53bb6b -> :sswitch_44
        0x1f43b675 -> :sswitch_44
    .end sparse-switch
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 14

    .line 1
    new-instance v0, LK/k;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, LK/k;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, -0x1

    .line 13
    .line 14
    const-wide/16 v7, 0x400

    .line 15
    .line 16
    cmp-long v1, v3, v5

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    cmp-long v5, v3, v7

    .line 21
    .line 22
    if-lez v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-wide v7, v3

    .line 26
    :cond_1
    :goto_0
    iget-object v5, v0, LK/k;->I:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Lcom/google/android/gms/internal/ads/jr;

    .line 29
    .line 30
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 31
    .line 32
    move-object v6, p1

    .line 33
    check-cast v6, Lcom/google/android/gms/internal/ads/F;

    .line 34
    .line 35
    const/4 v9, 0x4

    .line 36
    invoke-virtual {v6, v5, v2, v9, v2}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 37
    .line 38
    .line 39
    iget-object v5, v0, LK/k;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v5, Lcom/google/android/gms/internal/ads/jr;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    iput v9, v0, LK/k;->H:I

    .line 48
    .line 49
    :goto_1
    const-wide/32 v12, 0x1a45dfa3

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    cmp-long v9, v10, v12

    .line 54
    .line 55
    if-eqz v9, :cond_3

    .line 56
    .line 57
    long-to-int v9, v7

    .line 58
    iget v12, v0, LK/k;->H:I

    .line 59
    .line 60
    add-int/2addr v12, v5

    .line 61
    iput v12, v0, LK/k;->H:I

    .line 62
    .line 63
    if-ne v12, v9, :cond_2

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    iget-object v9, v0, LK/k;->I:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v9, Lcom/google/android/gms/internal/ads/jr;

    .line 69
    .line 70
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 71
    .line 72
    invoke-virtual {v6, v9, v2, v5, v2}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 73
    .line 74
    .line 75
    const/16 v5, 0x8

    .line 76
    .line 77
    shl-long v9, v10, v5

    .line 78
    .line 79
    iget-object v5, v0, LK/k;->I:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v5, Lcom/google/android/gms/internal/ads/jr;

    .line 82
    .line 83
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 84
    .line 85
    aget-byte v5, v5, v2

    .line 86
    .line 87
    and-int/lit16 v5, v5, 0xff

    .line 88
    .line 89
    const-wide/16 v11, -0x100

    .line 90
    .line 91
    and-long/2addr v9, v11

    .line 92
    int-to-long v11, v5

    .line 93
    or-long v10, v9, v11

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v0, p1}, LK/k;->h(Lcom/google/android/gms/internal/ads/M;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    iget v9, v0, LK/k;->H:I

    .line 101
    .line 102
    int-to-long v9, v9

    .line 103
    const-wide/high16 v11, -0x8000000000000000L

    .line 104
    .line 105
    cmp-long v13, v7, v11

    .line 106
    .line 107
    if-eqz v13, :cond_8

    .line 108
    .line 109
    add-long/2addr v9, v7

    .line 110
    if-nez v1, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    cmp-long v1, v9, v3

    .line 114
    .line 115
    if-ltz v1, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    iget v1, v0, LK/k;->H:I

    .line 119
    .line 120
    int-to-long v3, v1

    .line 121
    cmp-long v1, v3, v9

    .line 122
    .line 123
    if-gez v1, :cond_7

    .line 124
    .line 125
    invoke-virtual {v0, p1}, LK/k;->h(Lcom/google/android/gms/internal/ads/M;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    cmp-long v1, v3, v11

    .line 130
    .line 131
    if-nez v1, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {v0, p1}, LK/k;->h(Lcom/google/android/gms/internal/ads/M;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    const-wide/16 v7, 0x0

    .line 139
    .line 140
    cmp-long v1, v3, v7

    .line 141
    .line 142
    if-ltz v1, :cond_8

    .line 143
    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    long-to-int v1, v3

    .line 147
    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 148
    .line 149
    .line 150
    iget v3, v0, LK/k;->H:I

    .line 151
    .line 152
    add-int/2addr v3, v1

    .line 153
    iput v3, v0, LK/k;->H:I

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    if-nez v1, :cond_8

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    :cond_8
    :goto_3
    return v2
.end method

.method public final e(JJ)V
    .locals 0

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/f1;->C:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/f1;->H:I

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->d0:Lcom/google/android/gms/internal/ads/c1;

    .line 12
    .line 13
    iput p1, p2, Lcom/google/android/gms/internal/ads/c1;->e:I

    .line 14
    .line 15
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/c1;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/c1;->c:Lcom/google/android/gms/internal/ads/g1;

    .line 21
    .line 22
    iput p1, p2, Lcom/google/android/gms/internal/ads/g1;->b:I

    .line 23
    .line 24
    iput p1, p2, Lcom/google/android/gms/internal/ads/g1;->c:I

    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->a:Lcom/google/android/gms/internal/ads/g1;

    .line 27
    .line 28
    iput p1, p2, Lcom/google/android/gms/internal/ads/g1;->b:I

    .line 29
    .line 30
    iput p1, p2, Lcom/google/android/gms/internal/ads/g1;->c:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f1;->o()V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/f1;->b:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-ge p2, p4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Lcom/google/android/gms/internal/ads/e1;

    .line 49
    .line 50
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/e1;->U:LW0/M;

    .line 51
    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    iput-boolean p1, p3, LW0/M;->b:Z

    .line 55
    .line 56
    iput p1, p3, LW0/M;->c:I

    .line 57
    .line 58
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/X1;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f1;->e:Lcom/google/android/gms/internal/ads/V1;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/X1;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/V1;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 16
    .line 17
    return-void
.end method

.method public final g(IJ)V
    .locals 8

    .line 1
    const/16 v0, 0x5031

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, " not supported"

    .line 5
    .line 6
    if-eq p1, v0, :cond_15

    .line 7
    .line 8
    const/16 v0, 0x5032

    .line 9
    .line 10
    const-wide/16 v3, 0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_13

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x3

    .line 17
    const/4 v7, 0x2

    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    long-to-int p3, p2

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 32
    .line 33
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->D:I

    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    long-to-int p3, p2

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 41
    .line 42
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->C:I

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    long-to-int p3, p2

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 50
    .line 51
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/e1;->y:Z

    .line 52
    .line 53
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eq p1, v1, :cond_16

    .line 58
    .line 59
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 60
    .line 61
    iput p1, p2, Lcom/google/android/gms/internal/ads/e1;->z:I

    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3
    long-to-int p3, p2

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eq p1, v1, :cond_16

    .line 73
    .line 74
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 75
    .line 76
    iput p1, p2, Lcom/google/android/gms/internal/ads/e1;->A:I

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_4
    long-to-int p3, p2

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 81
    .line 82
    .line 83
    if-eq p3, v0, :cond_1

    .line 84
    .line 85
    if-eq p3, v7, :cond_0

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 90
    .line 91
    iput v0, p1, Lcom/google/android/gms/internal/ads/e1;->B:I

    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 95
    .line 96
    iput v7, p1, Lcom/google/android/gms/internal/ads/e1;->B:I

    .line 97
    .line 98
    return-void

    .line 99
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/f1;->s:J

    .line 100
    .line 101
    return-void

    .line 102
    :sswitch_1
    long-to-int p3, p2

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 107
    .line 108
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->e:I

    .line 109
    .line 110
    return-void

    .line 111
    :sswitch_2
    long-to-int p3, p2

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 113
    .line 114
    .line 115
    if-eqz p3, :cond_5

    .line 116
    .line 117
    if-eq p3, v0, :cond_4

    .line 118
    .line 119
    if-eq p3, v7, :cond_3

    .line 120
    .line 121
    if-eq p3, v6, :cond_2

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 126
    .line 127
    iput v6, p1, Lcom/google/android/gms/internal/ads/e1;->s:I

    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 131
    .line 132
    iput v7, p1, Lcom/google/android/gms/internal/ads/e1;->s:I

    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 136
    .line 137
    iput v0, p1, Lcom/google/android/gms/internal/ads/e1;->s:I

    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 141
    .line 142
    iput v5, p1, Lcom/google/android/gms/internal/ads/e1;->s:I

    .line 143
    .line 144
    return-void

    .line 145
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/f1;->S:J

    .line 146
    .line 147
    return-void

    .line 148
    :sswitch_4
    long-to-int p3, p2

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 153
    .line 154
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 155
    .line 156
    return-void

    .line 157
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 161
    .line 162
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/e1;->T:J

    .line 163
    .line 164
    return-void

    .line 165
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 169
    .line 170
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/e1;->S:J

    .line 171
    .line 172
    return-void

    .line 173
    :sswitch_7
    long-to-int p3, p2

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 178
    .line 179
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->f:I

    .line 180
    .line 181
    return-void

    .line 182
    :sswitch_8
    long-to-int p3, p2

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 187
    .line 188
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/e1;->y:Z

    .line 189
    .line 190
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->o:I

    .line 191
    .line 192
    return-void

    .line 193
    :sswitch_9
    cmp-long v1, p2, v3

    .line 194
    .line 195
    if-nez v1, :cond_6

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_6
    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 203
    .line 204
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/e1;->V:Z

    .line 205
    .line 206
    return-void

    .line 207
    :sswitch_a
    long-to-int p3, p2

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 212
    .line 213
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->q:I

    .line 214
    .line 215
    return-void

    .line 216
    :sswitch_b
    long-to-int p3, p2

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 221
    .line 222
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->r:I

    .line 223
    .line 224
    return-void

    .line 225
    :sswitch_c
    long-to-int p3, p2

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 230
    .line 231
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->p:I

    .line 232
    .line 233
    return-void

    .line 234
    :sswitch_d
    long-to-int p3, p2

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 236
    .line 237
    .line 238
    if-eqz p3, :cond_a

    .line 239
    .line 240
    if-eq p3, v0, :cond_9

    .line 241
    .line 242
    if-eq p3, v6, :cond_8

    .line 243
    .line 244
    const/16 p1, 0xf

    .line 245
    .line 246
    if-eq p3, p1, :cond_7

    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 251
    .line 252
    iput v6, p1, Lcom/google/android/gms/internal/ads/e1;->x:I

    .line 253
    .line 254
    return-void

    .line 255
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 256
    .line 257
    iput v0, p1, Lcom/google/android/gms/internal/ads/e1;->x:I

    .line 258
    .line 259
    return-void

    .line 260
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 261
    .line 262
    iput v7, p1, Lcom/google/android/gms/internal/ads/e1;->x:I

    .line 263
    .line 264
    return-void

    .line 265
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 266
    .line 267
    iput v5, p1, Lcom/google/android/gms/internal/ads/e1;->x:I

    .line 268
    .line 269
    return-void

    .line 270
    :sswitch_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/f1;->r:J

    .line 271
    .line 272
    add-long/2addr p2, v0

    .line 273
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/f1;->y:J

    .line 274
    .line 275
    return-void

    .line 276
    :sswitch_f
    cmp-long p1, p2, v3

    .line 277
    .line 278
    if-nez p1, :cond_b

    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v0, "AESSettingsCipherMode "

    .line 285
    .line 286
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    throw p1

    .line 304
    :sswitch_10
    const-wide/16 v3, 0x5

    .line 305
    .line 306
    cmp-long p1, p2, v3

    .line 307
    .line 308
    if-nez p1, :cond_c

    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v0, "ContentEncAlgo "

    .line 315
    .line 316
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    throw p1

    .line 334
    :sswitch_11
    cmp-long p1, p2, v3

    .line 335
    .line 336
    if-nez p1, :cond_d

    .line 337
    .line 338
    goto/16 :goto_2

    .line 339
    .line 340
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v0, "EBMLReadVersion "

    .line 343
    .line 344
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    throw p1

    .line 362
    :sswitch_12
    cmp-long p1, p2, v3

    .line 363
    .line 364
    if-ltz p1, :cond_e

    .line 365
    .line 366
    const-wide/16 v3, 0x2

    .line 367
    .line 368
    cmp-long p1, p2, v3

    .line 369
    .line 370
    if-gtz p1, :cond_e

    .line 371
    .line 372
    goto/16 :goto_2

    .line 373
    .line 374
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v0, "DocTypeReadVersion "

    .line 377
    .line 378
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    throw p1

    .line 396
    :sswitch_13
    const-wide/16 v3, 0x3

    .line 397
    .line 398
    cmp-long p1, p2, v3

    .line 399
    .line 400
    if-nez p1, :cond_f

    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v0, "ContentCompAlgo "

    .line 407
    .line 408
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    throw p1

    .line 426
    :sswitch_14
    long-to-int p3, p2

    .line 427
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 428
    .line 429
    .line 430
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 431
    .line 432
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->g:I

    .line 433
    .line 434
    return-void

    .line 435
    :sswitch_15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->R:Z

    .line 436
    .line 437
    return-void

    .line 438
    :sswitch_16
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/f1;->F:Z

    .line 439
    .line 440
    if-nez v1, :cond_16

    .line 441
    .line 442
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->k(I)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->E:Lp0/y;

    .line 446
    .line 447
    iget v1, p1, Lp0/y;->a:I

    .line 448
    .line 449
    iget-object v2, p1, Lp0/y;->b:[J

    .line 450
    .line 451
    array-length v3, v2

    .line 452
    if-ne v1, v3, :cond_10

    .line 453
    .line 454
    add-int/2addr v1, v1

    .line 455
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    iput-object v1, p1, Lp0/y;->b:[J

    .line 460
    .line 461
    :cond_10
    iget-object v1, p1, Lp0/y;->b:[J

    .line 462
    .line 463
    iget v2, p1, Lp0/y;->a:I

    .line 464
    .line 465
    add-int/lit8 v3, v2, 0x1

    .line 466
    .line 467
    iput v3, p1, Lp0/y;->a:I

    .line 468
    .line 469
    aput-wide p2, v1, v2

    .line 470
    .line 471
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->F:Z

    .line 472
    .line 473
    return-void

    .line 474
    :sswitch_17
    long-to-int p1, p2

    .line 475
    iput p1, p0, Lcom/google/android/gms/internal/ads/f1;->Q:I

    .line 476
    .line 477
    return-void

    .line 478
    :sswitch_18
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/f1;->j(J)J

    .line 479
    .line 480
    .line 481
    move-result-wide p1

    .line 482
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/f1;->C:J

    .line 483
    .line 484
    return-void

    .line 485
    :sswitch_19
    long-to-int p3, p2

    .line 486
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 487
    .line 488
    .line 489
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 490
    .line 491
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->c:I

    .line 492
    .line 493
    return-void

    .line 494
    :sswitch_1a
    long-to-int p3, p2

    .line 495
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 496
    .line 497
    .line 498
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 499
    .line 500
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->n:I

    .line 501
    .line 502
    return-void

    .line 503
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->k(I)V

    .line 504
    .line 505
    .line 506
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->D:Lp0/y;

    .line 507
    .line 508
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/f1;->j(J)J

    .line 509
    .line 510
    .line 511
    move-result-wide p2

    .line 512
    iget v0, p1, Lp0/y;->a:I

    .line 513
    .line 514
    iget-object v1, p1, Lp0/y;->b:[J

    .line 515
    .line 516
    array-length v2, v1

    .line 517
    if-ne v0, v2, :cond_11

    .line 518
    .line 519
    add-int/2addr v0, v0

    .line 520
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    iput-object v0, p1, Lp0/y;->b:[J

    .line 525
    .line 526
    :cond_11
    iget-object v0, p1, Lp0/y;->b:[J

    .line 527
    .line 528
    iget v1, p1, Lp0/y;->a:I

    .line 529
    .line 530
    add-int/lit8 v2, v1, 0x1

    .line 531
    .line 532
    iput v2, p1, Lp0/y;->a:I

    .line 533
    .line 534
    aput-wide p2, v0, v1

    .line 535
    .line 536
    return-void

    .line 537
    :sswitch_1c
    long-to-int p3, p2

    .line 538
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 542
    .line 543
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->m:I

    .line 544
    .line 545
    return-void

    .line 546
    :sswitch_1d
    long-to-int p3, p2

    .line 547
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 548
    .line 549
    .line 550
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 551
    .line 552
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->P:I

    .line 553
    .line 554
    return-void

    .line 555
    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/f1;->j(J)J

    .line 556
    .line 557
    .line 558
    move-result-wide p1

    .line 559
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/f1;->J:J

    .line 560
    .line 561
    return-void

    .line 562
    :sswitch_1f
    cmp-long v1, p2, v3

    .line 563
    .line 564
    if-nez v1, :cond_12

    .line 565
    .line 566
    goto :goto_1

    .line 567
    :cond_12
    const/4 v0, 0x0

    .line 568
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 569
    .line 570
    .line 571
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 572
    .line 573
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/e1;->W:Z

    .line 574
    .line 575
    return-void

    .line 576
    :sswitch_20
    long-to-int p3, p2

    .line 577
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 578
    .line 579
    .line 580
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 581
    .line 582
    iput p3, p1, Lcom/google/android/gms/internal/ads/e1;->d:I

    .line 583
    .line 584
    return-void

    .line 585
    :cond_13
    cmp-long p1, p2, v3

    .line 586
    .line 587
    if-nez p1, :cond_14

    .line 588
    .line 589
    goto :goto_2

    .line 590
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    const-string v0, "ContentEncodingScope "

    .line 593
    .line 594
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    throw p1

    .line 612
    :cond_15
    const-wide/16 v3, 0x0

    .line 613
    .line 614
    cmp-long p1, p2, v3

    .line 615
    .line 616
    if-nez p1, :cond_17

    .line 617
    .line 618
    :cond_16
    :goto_2
    return-void

    .line 619
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    const-string v0, "ContentEncodingOrder "

    .line 622
    .line 623
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object p1

    .line 636
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    throw p1

    .line 641
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-eq p1, v0, :cond_c

    .line 12
    .line 13
    const/16 v0, 0xae

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq p1, v0, :cond_b

    .line 19
    .line 20
    const/16 v0, 0xbb

    .line 21
    .line 22
    if-eq p1, v0, :cond_a

    .line 23
    .line 24
    const/16 v0, 0x4dbb

    .line 25
    .line 26
    const-wide/16 v7, -0x1

    .line 27
    .line 28
    if-eq p1, v0, :cond_9

    .line 29
    .line 30
    const/16 v0, 0x5035

    .line 31
    .line 32
    if-eq p1, v0, :cond_8

    .line 33
    .line 34
    const/16 v0, 0x55d0

    .line 35
    .line 36
    if-eq p1, v0, :cond_7

    .line 37
    .line 38
    const v0, 0x18538067

    .line 39
    .line 40
    .line 41
    if-eq p1, v0, :cond_4

    .line 42
    .line 43
    const p2, 0x1c53bb6b

    .line 44
    .line 45
    .line 46
    if-eq p1, p2, :cond_3

    .line 47
    .line 48
    const p2, 0x1f43b675

    .line 49
    .line 50
    .line 51
    if-eq p1, p2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/f1;->w:Z

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/f1;->c:Z

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/f1;->A:J

    .line 63
    .line 64
    cmp-long p3, p1, v7

    .line 65
    .line 66
    if-eqz p3, :cond_1

    .line 67
    .line 68
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/f1;->z:Z

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->c0:Lcom/google/android/gms/internal/ads/N;

    .line 72
    .line 73
    new-instance p2, Lcom/google/android/gms/internal/ads/P;

    .line 74
    .line 75
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/f1;->u:J

    .line 76
    .line 77
    invoke-direct {p2, p3, p4, v2, v3}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 81
    .line 82
    .line 83
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/f1;->w:Z

    .line 84
    .line 85
    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    new-instance p1, Lp0/y;

    .line 87
    .line 88
    const/16 p2, 0x20

    .line 89
    .line 90
    invoke-direct {p1, p2, v6}, Lp0/y;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->D:Lp0/y;

    .line 94
    .line 95
    new-instance p1, Lp0/y;

    .line 96
    .line 97
    invoke-direct {p1, p2, v6}, Lp0/y;-><init>(II)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->E:Lp0/y;

    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/f1;->r:J

    .line 104
    .line 105
    cmp-long p1, v0, v7

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    cmp-long p1, v0, p2

    .line 110
    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    const-string p1, "Multiple Segment elements not supported"

    .line 115
    .line 116
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    throw p1

    .line 121
    :cond_6
    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/f1;->r:J

    .line 122
    .line 123
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/f1;->q:J

    .line 124
    .line 125
    return-void

    .line 126
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 130
    .line 131
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/e1;->y:Z

    .line 132
    .line 133
    return-void

    .line 134
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f1;->l(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 138
    .line 139
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/e1;->h:Z

    .line 140
    .line 141
    return-void

    .line 142
    :cond_9
    iput v4, p0, Lcom/google/android/gms/internal/ads/f1;->x:I

    .line 143
    .line 144
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/f1;->y:J

    .line 145
    .line 146
    return-void

    .line 147
    :cond_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/f1;->F:Z

    .line 148
    .line 149
    return-void

    .line 150
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/e1;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 153
    .line 154
    .line 155
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->m:I

    .line 156
    .line 157
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->n:I

    .line 158
    .line 159
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->o:I

    .line 160
    .line 161
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->p:I

    .line 162
    .line 163
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->q:I

    .line 164
    .line 165
    iput v1, p1, Lcom/google/android/gms/internal/ads/e1;->r:I

    .line 166
    .line 167
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->s:I

    .line 168
    .line 169
    const/4 p2, 0x0

    .line 170
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->t:F

    .line 171
    .line 172
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->u:F

    .line 173
    .line 174
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->v:F

    .line 175
    .line 176
    iput-object v5, p1, Lcom/google/android/gms/internal/ads/e1;->w:[B

    .line 177
    .line 178
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->x:I

    .line 179
    .line 180
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/e1;->y:Z

    .line 181
    .line 182
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->z:I

    .line 183
    .line 184
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->A:I

    .line 185
    .line 186
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->B:I

    .line 187
    .line 188
    const/16 p2, 0x3e8

    .line 189
    .line 190
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->C:I

    .line 191
    .line 192
    const/16 p2, 0xc8

    .line 193
    .line 194
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->D:I

    .line 195
    .line 196
    const/high16 p2, -0x40800000    # -1.0f

    .line 197
    .line 198
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->E:F

    .line 199
    .line 200
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->F:F

    .line 201
    .line 202
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->G:F

    .line 203
    .line 204
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->H:F

    .line 205
    .line 206
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->I:F

    .line 207
    .line 208
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->J:F

    .line 209
    .line 210
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->K:F

    .line 211
    .line 212
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->L:F

    .line 213
    .line 214
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->M:F

    .line 215
    .line 216
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->N:F

    .line 217
    .line 218
    iput v6, p1, Lcom/google/android/gms/internal/ads/e1;->P:I

    .line 219
    .line 220
    iput v4, p1, Lcom/google/android/gms/internal/ads/e1;->Q:I

    .line 221
    .line 222
    const/16 p2, 0x1f40

    .line 223
    .line 224
    iput p2, p1, Lcom/google/android/gms/internal/ads/e1;->R:I

    .line 225
    .line 226
    iput-wide v2, p1, Lcom/google/android/gms/internal/ads/e1;->S:J

    .line 227
    .line 228
    iput-wide v2, p1, Lcom/google/android/gms/internal/ads/e1;->T:J

    .line 229
    .line 230
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/e1;->W:Z

    .line 231
    .line 232
    const-string p2, "eng"

    .line 233
    .line 234
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/e1;->X:Ljava/lang/String;

    .line 235
    .line 236
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 237
    .line 238
    return-void

    .line 239
    :cond_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/f1;->R:Z

    .line 240
    .line 241
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/f1;->S:J

    .line 242
    .line 243
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/e1;IZ)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "S_TEXT/UTF8"

    .line 12
    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/f1;->e0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f1;->p(Lcom/google/android/gms/internal/ads/M;[BI)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f1;->o()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 31
    .line 32
    const-string v5, "S_TEXT/ASS"

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    sget-object v2, Lcom/google/android/gms/internal/ads/f1;->g0:[B

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f1;->p(Lcom/google/android/gms/internal/ads/M;[BI)V

    .line 43
    .line 44
    .line 45
    iget v1, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f1;->o()V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 52
    .line 53
    const-string v5, "S_TEXT/WEBVTT"

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    sget-object v2, Lcom/google/android/gms/internal/ads/f1;->h0:[B

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f1;->p(Lcom/google/android/gms/internal/ads/M;[BI)V

    .line 64
    .line 65
    .line 66
    iget v1, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f1;->o()V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 73
    .line 74
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/f1;->W:Z

    .line 75
    .line 76
    const/4 v6, 0x4

    .line 77
    const/4 v7, 0x2

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x1

    .line 80
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/f1;->k:Lcom/google/android/gms/internal/ads/jr;

    .line 81
    .line 82
    if-nez v5, :cond_11

    .line 83
    .line 84
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/e1;->h:Z

    .line 85
    .line 86
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/f1;->h:Lcom/google/android/gms/internal/ads/jr;

    .line 87
    .line 88
    if-eqz v5, :cond_d

    .line 89
    .line 90
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 91
    .line 92
    const v12, -0x40000001    # -1.9999999f

    .line 93
    .line 94
    .line 95
    and-int/2addr v5, v12

    .line 96
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 97
    .line 98
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/f1;->X:Z

    .line 99
    .line 100
    const/16 v12, 0x80

    .line 101
    .line 102
    if-nez v5, :cond_4

    .line 103
    .line 104
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 105
    .line 106
    invoke-interface {v1, v8, v5, v9}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 107
    .line 108
    .line 109
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 110
    .line 111
    add-int/2addr v5, v9

    .line 112
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 113
    .line 114
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 115
    .line 116
    aget-byte v5, v5, v8

    .line 117
    .line 118
    and-int/lit16 v13, v5, 0x80

    .line 119
    .line 120
    if-eq v13, v12, :cond_3

    .line 121
    .line 122
    iput-byte v5, v0, Lcom/google/android/gms/internal/ads/f1;->a0:B

    .line 123
    .line 124
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/f1;->X:Z

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const-string v1, "Extension bit is set in signal byte"

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    throw v1

    .line 135
    :cond_4
    :goto_0
    iget-byte v5, v0, Lcom/google/android/gms/internal/ads/f1;->a0:B

    .line 136
    .line 137
    and-int/lit8 v13, v5, 0x1

    .line 138
    .line 139
    if-ne v13, v9, :cond_e

    .line 140
    .line 141
    and-int/2addr v5, v7

    .line 142
    iget v13, v0, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 143
    .line 144
    const/high16 v14, 0x40000000    # 2.0f

    .line 145
    .line 146
    or-int/2addr v13, v14

    .line 147
    iput v13, v0, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 148
    .line 149
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/f1;->b0:Z

    .line 150
    .line 151
    if-nez v13, :cond_6

    .line 152
    .line 153
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->m:Lcom/google/android/gms/internal/ads/jr;

    .line 154
    .line 155
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 156
    .line 157
    const/16 v15, 0x8

    .line 158
    .line 159
    invoke-interface {v1, v8, v14, v15}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 160
    .line 161
    .line 162
    iget v14, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 163
    .line 164
    add-int/2addr v14, v15

    .line 165
    iput v14, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 166
    .line 167
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/f1;->b0:Z

    .line 168
    .line 169
    if-ne v5, v7, :cond_5

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    const/4 v12, 0x0

    .line 173
    :goto_1
    or-int/2addr v12, v15

    .line 174
    iget-object v14, v11, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 175
    .line 176
    int-to-byte v12, v12

    .line 177
    aput-byte v12, v14, v8

    .line 178
    .line 179
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v4, v11, v9, v9}, Lcom/google/android/gms/internal/ads/e0;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 183
    .line 184
    .line 185
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 186
    .line 187
    add-int/2addr v12, v9

    .line 188
    iput v12, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 189
    .line 190
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v4, v13, v15, v9}, Lcom/google/android/gms/internal/ads/e0;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 194
    .line 195
    .line 196
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 197
    .line 198
    add-int/2addr v12, v15

    .line 199
    iput v12, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 200
    .line 201
    :cond_6
    if-ne v5, v7, :cond_e

    .line 202
    .line 203
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/f1;->Y:Z

    .line 204
    .line 205
    if-nez v5, :cond_7

    .line 206
    .line 207
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 208
    .line 209
    invoke-interface {v1, v8, v5, v9}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 210
    .line 211
    .line 212
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 213
    .line 214
    add-int/2addr v5, v9

    .line 215
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 216
    .line 217
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->Z:I

    .line 225
    .line 226
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/f1;->Y:Z

    .line 227
    .line 228
    :cond_7
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->Z:I

    .line 229
    .line 230
    mul-int/lit8 v5, v5, 0x4

    .line 231
    .line 232
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 233
    .line 234
    .line 235
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 236
    .line 237
    invoke-interface {v1, v8, v12, v5}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 238
    .line 239
    .line 240
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 241
    .line 242
    add-int/2addr v12, v5

    .line 243
    iput v12, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 244
    .line 245
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->Z:I

    .line 246
    .line 247
    shr-int/2addr v5, v9

    .line 248
    add-int/2addr v5, v9

    .line 249
    mul-int/lit8 v12, v5, 0x6

    .line 250
    .line 251
    add-int/2addr v12, v7

    .line 252
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 253
    .line 254
    if-eqz v13, :cond_8

    .line 255
    .line 256
    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-ge v13, v12, :cond_9

    .line 261
    .line 262
    :cond_8
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    iput-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 267
    .line 268
    :cond_9
    int-to-short v5, v5

    .line 269
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 270
    .line 271
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 272
    .line 273
    .line 274
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 275
    .line 276
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    .line 279
    const/4 v5, 0x0

    .line 280
    const/4 v13, 0x0

    .line 281
    :goto_2
    iget v14, v0, Lcom/google/android/gms/internal/ads/f1;->Z:I

    .line 282
    .line 283
    if-ge v5, v14, :cond_b

    .line 284
    .line 285
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    sub-int v13, v14, v13

    .line 290
    .line 291
    rem-int/lit8 v15, v5, 0x2

    .line 292
    .line 293
    if-nez v15, :cond_a

    .line 294
    .line 295
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    int-to-short v13, v13

    .line 298
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_a
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 303
    .line 304
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 305
    .line 306
    .line 307
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 308
    .line 309
    move v13, v14

    .line 310
    goto :goto_2

    .line 311
    :cond_b
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 312
    .line 313
    sub-int v5, v3, v5

    .line 314
    .line 315
    sub-int/2addr v5, v13

    .line 316
    and-int/lit8 v13, v14, 0x1

    .line 317
    .line 318
    if-ne v13, v9, :cond_c

    .line 319
    .line 320
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 321
    .line 322
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_c
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 327
    .line 328
    int-to-short v5, v5

    .line 329
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 330
    .line 331
    .line 332
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 333
    .line 334
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 335
    .line 336
    .line 337
    :goto_4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/f1;->p:Ljava/nio/ByteBuffer;

    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/f1;->n:Lcom/google/android/gms/internal/ads/jr;

    .line 344
    .line 345
    invoke-virtual {v13, v12, v5}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v4, v13, v12, v9}, Lcom/google/android/gms/internal/ads/e0;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 349
    .line 350
    .line 351
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 352
    .line 353
    add-int/2addr v5, v12

    .line 354
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_d
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/e1;->i:[B

    .line 358
    .line 359
    if-eqz v5, :cond_e

    .line 360
    .line 361
    array-length v12, v5

    .line 362
    invoke-virtual {v10, v12, v5}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 363
    .line 364
    .line 365
    :cond_e
    :goto_5
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 366
    .line 367
    const-string v12, "A_OPUS"

    .line 368
    .line 369
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-eqz v5, :cond_f

    .line 374
    .line 375
    if-eqz p4, :cond_10

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_f
    iget v5, v2, Lcom/google/android/gms/internal/ads/e1;->f:I

    .line 379
    .line 380
    if-lez v5, :cond_10

    .line 381
    .line 382
    :goto_6
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 383
    .line 384
    const/high16 v12, 0x10000000

    .line 385
    .line 386
    or-int/2addr v5, v12

    .line 387
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->P:I

    .line 388
    .line 389
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/f1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 390
    .line 391
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 392
    .line 393
    .line 394
    iget v5, v10, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 395
    .line 396
    add-int/2addr v5, v3

    .line 397
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 398
    .line 399
    sub-int/2addr v5, v12

    .line 400
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 401
    .line 402
    .line 403
    shr-int/lit8 v12, v5, 0x18

    .line 404
    .line 405
    iget-object v13, v11, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 406
    .line 407
    and-int/lit16 v12, v12, 0xff

    .line 408
    .line 409
    int-to-byte v12, v12

    .line 410
    aput-byte v12, v13, v8

    .line 411
    .line 412
    shr-int/lit8 v12, v5, 0x10

    .line 413
    .line 414
    and-int/lit16 v12, v12, 0xff

    .line 415
    .line 416
    int-to-byte v12, v12

    .line 417
    aput-byte v12, v13, v9

    .line 418
    .line 419
    shr-int/lit8 v12, v5, 0x8

    .line 420
    .line 421
    and-int/lit16 v12, v12, 0xff

    .line 422
    .line 423
    int-to-byte v12, v12

    .line 424
    aput-byte v12, v13, v7

    .line 425
    .line 426
    and-int/lit16 v5, v5, 0xff

    .line 427
    .line 428
    int-to-byte v5, v5

    .line 429
    const/4 v12, 0x3

    .line 430
    aput-byte v5, v13, v12

    .line 431
    .line 432
    invoke-interface {v4, v11, v6, v7}, Lcom/google/android/gms/internal/ads/e0;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 433
    .line 434
    .line 435
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 436
    .line 437
    add-int/2addr v5, v6

    .line 438
    iput v5, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 439
    .line 440
    :cond_10
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/f1;->W:Z

    .line 441
    .line 442
    :cond_11
    iget v5, v10, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 443
    .line 444
    add-int/2addr v3, v5

    .line 445
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 446
    .line 447
    const-string v11, "V_MPEG4/ISO/AVC"

    .line 448
    .line 449
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    if-nez v5, :cond_16

    .line 454
    .line 455
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 456
    .line 457
    const-string v11, "V_MPEGH/ISO/HEVC"

    .line 458
    .line 459
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    if-eqz v5, :cond_12

    .line 464
    .line 465
    goto :goto_a

    .line 466
    :cond_12
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/e1;->U:LW0/M;

    .line 467
    .line 468
    if-nez v5, :cond_13

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_13
    iget v5, v10, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 472
    .line 473
    if-nez v5, :cond_14

    .line 474
    .line 475
    goto :goto_7

    .line 476
    :cond_14
    const/4 v9, 0x0

    .line 477
    :goto_7
    invoke-static {v9}, Lo3/r;->M(Z)V

    .line 478
    .line 479
    .line 480
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/e1;->U:LW0/M;

    .line 481
    .line 482
    invoke-virtual {v5, v1}, LW0/M;->f(Lcom/google/android/gms/internal/ads/M;)V

    .line 483
    .line 484
    .line 485
    :goto_8
    iget v5, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 486
    .line 487
    if-ge v5, v3, :cond_1a

    .line 488
    .line 489
    sub-int v5, v3, v5

    .line 490
    .line 491
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    if-lez v7, :cond_15

    .line 496
    .line 497
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    invoke-interface {v4, v5, v10}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 502
    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_15
    invoke-interface {v4, v1, v5, v8}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    :goto_9
    iget v7, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 510
    .line 511
    add-int/2addr v7, v5

    .line 512
    iput v7, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 513
    .line 514
    iget v7, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 515
    .line 516
    add-int/2addr v7, v5

    .line 517
    iput v7, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_16
    :goto_a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/f1;->g:Lcom/google/android/gms/internal/ads/jr;

    .line 521
    .line 522
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 523
    .line 524
    aput-byte v8, v11, v8

    .line 525
    .line 526
    aput-byte v8, v11, v9

    .line 527
    .line 528
    aput-byte v8, v11, v7

    .line 529
    .line 530
    iget v7, v2, Lcom/google/android/gms/internal/ads/e1;->Z:I

    .line 531
    .line 532
    rsub-int/lit8 v9, v7, 0x4

    .line 533
    .line 534
    :goto_b
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 535
    .line 536
    if-ge v12, v3, :cond_1a

    .line 537
    .line 538
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->V:I

    .line 539
    .line 540
    if-nez v12, :cond_18

    .line 541
    .line 542
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 543
    .line 544
    .line 545
    move-result v12

    .line 546
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    add-int v13, v9, v12

    .line 551
    .line 552
    sub-int v14, v7, v12

    .line 553
    .line 554
    invoke-interface {v1, v13, v11, v14}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 555
    .line 556
    .line 557
    if-lez v12, :cond_17

    .line 558
    .line 559
    invoke-virtual {v10, v9, v11, v12}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 560
    .line 561
    .line 562
    :cond_17
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 563
    .line 564
    add-int/2addr v12, v7

    .line 565
    iput v12, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 566
    .line 567
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 571
    .line 572
    .line 573
    move-result v12

    .line 574
    iput v12, v0, Lcom/google/android/gms/internal/ads/f1;->V:I

    .line 575
    .line 576
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/f1;->f:Lcom/google/android/gms/internal/ads/jr;

    .line 577
    .line 578
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 579
    .line 580
    .line 581
    invoke-interface {v4, v6, v12}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 582
    .line 583
    .line 584
    iget v12, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 585
    .line 586
    add-int/2addr v12, v6

    .line 587
    iput v12, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_18
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 591
    .line 592
    .line 593
    move-result v13

    .line 594
    if-lez v13, :cond_19

    .line 595
    .line 596
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 597
    .line 598
    .line 599
    move-result v12

    .line 600
    invoke-interface {v4, v12, v10}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 601
    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_19
    invoke-interface {v4, v1, v12, v8}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 605
    .line 606
    .line 607
    move-result v12

    .line 608
    :goto_c
    iget v13, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 609
    .line 610
    add-int/2addr v13, v12

    .line 611
    iput v13, v0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 612
    .line 613
    iget v13, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 614
    .line 615
    add-int/2addr v13, v12

    .line 616
    iput v13, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 617
    .line 618
    iget v13, v0, Lcom/google/android/gms/internal/ads/f1;->V:I

    .line 619
    .line 620
    sub-int/2addr v13, v12

    .line 621
    iput v13, v0, Lcom/google/android/gms/internal/ads/f1;->V:I

    .line 622
    .line 623
    goto :goto_b

    .line 624
    :cond_1a
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 625
    .line 626
    const-string v2, "A_VORBIS"

    .line 627
    .line 628
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    if-eqz v1, :cond_1b

    .line 633
    .line 634
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f1;->i:Lcom/google/android/gms/internal/ads/jr;

    .line 635
    .line 636
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 637
    .line 638
    .line 639
    invoke-interface {v4, v6, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 640
    .line 641
    .line 642
    iget v1, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 643
    .line 644
    add-int/2addr v1, v6

    .line 645
    iput v1, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 646
    .line 647
    :cond_1b
    iget v1, v0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 648
    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f1;->o()V

    .line 650
    .line 651
    .line 652
    return v1
.end method

.method public final j(J)J
    .locals 7

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/f1;->s:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v2, v0

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const-wide/16 v4, 0x3e8

    .line 13
    .line 14
    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 15
    .line 16
    move-wide v0, p1

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1

    .line 22
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f1;->D:Lp0/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f1;->E:Lp0/y;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Element "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, " must be in a Cues"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    throw p1
.end method

.method public final l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f1;->v:Lcom/google/android/gms/internal/ads/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Element "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a TrackEntry"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
.end method

.method public final m(Lcom/google/android/gms/internal/ads/e1;JIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/e1;->U:LW0/M;

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 11
    .line 12
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/e1;->j:Lcom/google/android/gms/internal/ads/d0;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    move-object v2, v3

    .line 16
    move-wide/from16 v3, p2

    .line 17
    .line 18
    move/from16 v5, p4

    .line 19
    .line 20
    move/from16 v6, p5

    .line 21
    .line 22
    move/from16 v7, p6

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v8}, LW0/M;->e(Lcom/google/android/gms/internal/ads/e0;JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "S_TEXT/UTF8"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v4, "S_TEXT/WEBVTT"

    .line 38
    .line 39
    const-string v5, "S_TEXT/ASS"

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 62
    .line 63
    const-string v8, "MatroskaExtractor"

    .line 64
    .line 65
    if-le v2, v9, :cond_2

    .line 66
    .line 67
    const-string v2, "Skipping subtitle sample in laced block."

    .line 68
    .line 69
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/f1;->J:J

    .line 74
    .line 75
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v2, v10, v12

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    const-string v2, "Skipping subtitle sample with no duration."

    .line 85
    .line 86
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    move/from16 v2, p5

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/e1;->b:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/f1;->l:Lcom/google/android/gms/internal/ads/jr;

    .line 96
    .line 97
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    const v14, 0x2c0618eb

    .line 104
    .line 105
    .line 106
    if-eq v13, v14, :cond_7

    .line 107
    .line 108
    const v5, 0x3e4ca2d8

    .line 109
    .line 110
    .line 111
    if-eq v13, v5, :cond_6

    .line 112
    .line 113
    const v4, 0x54c61e47

    .line 114
    .line 115
    .line 116
    if-eq v13, v4, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_8

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    const/4 v2, 0x1

    .line 142
    goto :goto_2

    .line 143
    :cond_8
    :goto_1
    const/4 v2, -0x1

    .line 144
    :goto_2
    const-wide/16 v3, 0x3e8

    .line 145
    .line 146
    if-eqz v2, :cond_b

    .line 147
    .line 148
    if-eq v2, v9, :cond_a

    .line 149
    .line 150
    if-ne v2, v6, :cond_9

    .line 151
    .line 152
    const-string v2, "%02d:%02d:%02d.%03d"

    .line 153
    .line 154
    invoke-static {v10, v11, v3, v4, v2}, Lcom/google/android/gms/internal/ads/f1;->q(JJLjava/lang/String;)[B

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const/16 v3, 0x19

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_a
    const-string v2, "%01d:%02d:%02d:%02d"

    .line 168
    .line 169
    const-wide/16 v3, 0x2710

    .line 170
    .line 171
    invoke-static {v10, v11, v3, v4, v2}, Lcom/google/android/gms/internal/ads/f1;->q(JJLjava/lang/String;)[B

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const/16 v3, 0x15

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_b
    const-string v2, "%02d:%02d:%02d,%03d"

    .line 179
    .line 180
    invoke-static {v10, v11, v3, v4, v2}, Lcom/google/android/gms/internal/ads/f1;->q(JJLjava/lang/String;)[B

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const/16 v3, 0x13

    .line 185
    .line 186
    :goto_3
    array-length v4, v2

    .line 187
    invoke-static {v2, v7, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    iget v2, v8, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 191
    .line 192
    :goto_4
    iget v3, v8, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 193
    .line 194
    if-ge v2, v3, :cond_d

    .line 195
    .line 196
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 197
    .line 198
    aget-byte v3, v3, v2

    .line 199
    .line 200
    if-nez v3, :cond_c

    .line 201
    .line 202
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 210
    .line 211
    iget v3, v8, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 212
    .line 213
    invoke-interface {v2, v3, v8}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 214
    .line 215
    .line 216
    iget v2, v8, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 217
    .line 218
    add-int v2, p5, v2

    .line 219
    .line 220
    :goto_6
    const/high16 v3, 0x10000000

    .line 221
    .line 222
    and-int v3, p4, v3

    .line 223
    .line 224
    if-eqz v3, :cond_f

    .line 225
    .line 226
    iget v3, v0, Lcom/google/android/gms/internal/ads/f1;->L:I

    .line 227
    .line 228
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/f1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 229
    .line 230
    if-le v3, v9, :cond_e

    .line 231
    .line 232
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_e
    iget v3, v4, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 237
    .line 238
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 239
    .line 240
    invoke-interface {v5, v4, v3, v6}, Lcom/google/android/gms/internal/ads/e0;->a(Lcom/google/android/gms/internal/ads/jr;II)V

    .line 241
    .line 242
    .line 243
    add-int/2addr v2, v3

    .line 244
    :cond_f
    :goto_7
    move v14, v2

    .line 245
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/e1;->Y:Lcom/google/android/gms/internal/ads/e0;

    .line 246
    .line 247
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/e1;->j:Lcom/google/android/gms/internal/ads/d0;

    .line 248
    .line 249
    move-wide/from16 v11, p2

    .line 250
    .line 251
    move/from16 v13, p4

    .line 252
    .line 253
    move/from16 v15, p6

    .line 254
    .line 255
    move-object/from16 v16, v1

    .line 256
    .line 257
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 258
    .line 259
    .line 260
    :goto_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/f1;->G:Z

    .line 261
    .line 262
    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/M;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f1;->h:Lcom/google/android/gms/internal/ads/jr;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 4
    .line 5
    if-lt v1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v2, p2, :cond_1

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->e(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 23
    .line 24
    iget v2, v0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 25
    .line 26
    sub-int v3, p2, v2

    .line 27
    .line 28
    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/f1;->T:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/f1;->U:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/f1;->V:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->W:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->X:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->Y:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/f1;->Z:I

    .line 15
    .line 16
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/f1;->a0:B

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f1;->b0:Z

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f1;->k:Lcom/google/android/gms/internal/ads/jr;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/M;[BI)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    add-int v1, v0, p3

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f1;->l:Lcom/google/android/gms/internal/ads/jr;

    .line 5
    .line 6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 7
    .line 8
    array-length v4, v3

    .line 9
    const/4 v5, 0x0

    .line 10
    if-ge v4, v1, :cond_0

    .line 11
    .line 12
    add-int v3, v1, p3

    .line 13
    .line 14
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    array-length v3, p2

    .line 19
    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p2, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 27
    .line 28
    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    return-object v0
.end method
