.class public final Lm1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# static fields
.field public static final f0:[B

.field public static final g0:[B

.field public static final h0:[B

.field public static final i0:[B

.field public static final j0:Ljava/util/UUID;

.field public static final k0:Ljava/util/Map;


# instance fields
.field public A:J

.field public B:Z

.field public C:J

.field public D:J

.field public E:J

.field public F:Lp0/y;

.field public G:Lp0/y;

.field public H:Z

.field public I:Z

.field public J:I

.field public K:J

.field public L:J

.field public M:I

.field public N:I

.field public O:[I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:Z

.field public U:J

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:Z

.field public final a:Lm1/b;

.field public a0:Z

.field public final b:Lm1/e;

.field public b0:I

.field public final c:Landroid/util/SparseArray;

.field public c0:B

.field public final d:Z

.field public d0:Z

.field public final e:Z

.field public e0:LW0/u;

.field public final f:Lq1/k;

.field public final g:Lp0/E;

.field public final h:Lp0/E;

.field public final i:Lp0/E;

.field public final j:Lp0/E;

.field public final k:Lp0/E;

.field public final l:Lp0/E;

.field public final m:Lp0/E;

.field public final n:Lp0/E;

.field public final o:Lp0/E;

.field public final p:Lp0/E;

.field public q:Ljava/nio/ByteBuffer;

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Lm1/c;

.field public y:Z

.field public z:I


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
    sput-object v1, Lm1/d;->f0:[B

    .line 9
    .line 10
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lm1/d;->g0:[B

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    sput-object v0, Lm1/d;->h0:[B

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
    sput-object v0, Lm1/d;->i0:[B

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
    sput-object v0, Lm1/d;->j0:Ljava/util/UUID;

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
    sput-object v0, Lm1/d;->k0:Ljava/util/Map;

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

.method public constructor <init>(ILq1/k;)V
    .locals 5

    .line 1
    new-instance v0, Lm1/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lm1/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, Lm1/d;->s:J

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v3, p0, Lm1/d;->t:J

    .line 19
    .line 20
    iput-wide v3, p0, Lm1/d;->u:J

    .line 21
    .line 22
    iput-wide v3, p0, Lm1/d;->v:J

    .line 23
    .line 24
    iput-wide v1, p0, Lm1/d;->C:J

    .line 25
    .line 26
    iput-wide v1, p0, Lm1/d;->D:J

    .line 27
    .line 28
    iput-wide v3, p0, Lm1/d;->E:J

    .line 29
    .line 30
    iput-object v0, p0, Lm1/d;->a:Lm1/b;

    .line 31
    .line 32
    new-instance v1, LD0/U;

    .line 33
    .line 34
    invoke-direct {v1, p0}, LD0/U;-><init>(Lm1/d;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lm1/b;->d:LD0/U;

    .line 38
    .line 39
    iput-object p2, p0, Lm1/d;->f:Lq1/k;

    .line 40
    .line 41
    and-int/lit8 p2, p1, 0x1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    const/4 v1, 0x0

    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p2, 0x0

    .line 50
    :goto_0
    iput-boolean p2, p0, Lm1/d;->d:Z

    .line 51
    .line 52
    and-int/lit8 p1, p1, 0x2

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_1
    iput-boolean v1, p0, Lm1/d;->e:Z

    .line 58
    .line 59
    new-instance p1, Lm1/e;

    .line 60
    .line 61
    invoke-direct {p1}, Lm1/e;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lm1/d;->b:Lm1/e;

    .line 65
    .line 66
    new-instance p1, Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lm1/d;->c:Landroid/util/SparseArray;

    .line 72
    .line 73
    new-instance p1, Lp0/E;

    .line 74
    .line 75
    const/4 p2, 0x4

    .line 76
    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lm1/d;->i:Lp0/E;

    .line 80
    .line 81
    new-instance p1, Lp0/E;

    .line 82
    .line 83
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v2, -0x1

    .line 88
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {p1, v1}, Lp0/E;-><init>([B)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lm1/d;->j:Lp0/E;

    .line 100
    .line 101
    new-instance p1, Lp0/E;

    .line 102
    .line 103
    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lm1/d;->k:Lp0/E;

    .line 107
    .line 108
    new-instance p1, Lp0/E;

    .line 109
    .line 110
    sget-object v1, Lq0/p;->a:[B

    .line 111
    .line 112
    invoke-direct {p1, v1}, Lp0/E;-><init>([B)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lm1/d;->g:Lp0/E;

    .line 116
    .line 117
    new-instance p1, Lp0/E;

    .line 118
    .line 119
    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lm1/d;->h:Lp0/E;

    .line 123
    .line 124
    new-instance p1, Lp0/E;

    .line 125
    .line 126
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lm1/d;->l:Lp0/E;

    .line 130
    .line 131
    new-instance p1, Lp0/E;

    .line 132
    .line 133
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lm1/d;->m:Lp0/E;

    .line 137
    .line 138
    new-instance p1, Lp0/E;

    .line 139
    .line 140
    const/16 p2, 0x8

    .line 141
    .line 142
    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lm1/d;->n:Lp0/E;

    .line 146
    .line 147
    new-instance p1, Lp0/E;

    .line 148
    .line 149
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lm1/d;->o:Lp0/E;

    .line 153
    .line 154
    new-instance p1, Lp0/E;

    .line 155
    .line 156
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lm1/d;->p:Lp0/E;

    .line 160
    .line 161
    new-array p1, v0, [I

    .line 162
    .line 163
    iput-object p1, p0, Lm1/d;->O:[I

    .line 164
    .line 165
    return-void
.end method

.method public static f(JJLjava/lang/String;)[B
    .locals 10

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
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

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
    long-to-int v5, v4

    .line 26
    int-to-long v6, v5

    .line 27
    mul-long v6, v6, v2

    .line 28
    .line 29
    sub-long/2addr p0, v6

    .line 30
    const-wide/32 v2, 0x3938700

    .line 31
    .line 32
    .line 33
    div-long v6, p0, v2

    .line 34
    .line 35
    long-to-int v4, v6

    .line 36
    int-to-long v6, v4

    .line 37
    mul-long v6, v6, v2

    .line 38
    .line 39
    sub-long/2addr p0, v6

    .line 40
    const-wide/32 v2, 0xf4240

    .line 41
    .line 42
    .line 43
    div-long v6, p0, v2

    .line 44
    .line 45
    long-to-int v7, v6

    .line 46
    int-to-long v8, v7

    .line 47
    mul-long v8, v8, v2

    .line 48
    .line 49
    sub-long/2addr p0, v8

    .line 50
    div-long/2addr p0, p2

    .line 51
    long-to-int p1, p0

    .line 52
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v3, 0x4

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p2, v3, v0

    .line 74
    .line 75
    aput-object p3, v3, v1

    .line 76
    .line 77
    const/4 p2, 0x2

    .line 78
    aput-object v2, v3, p2

    .line 79
    .line 80
    const/4 p2, 0x3

    .line 81
    aput-object p1, v3, p2

    .line 82
    .line 83
    invoke-static {p0, p4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

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
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/d;->F:Lp0/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lm1/d;->G:Lp0/y;

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
    invoke-static {p1, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    throw p1
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/d;->x:Lm1/c;

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
    invoke-static {p1, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm1/d;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq1/n;

    .line 6
    .line 7
    iget-object v1, p0, Lm1/d;->f:Lq1/k;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lq1/n;-><init>(LW0/u;Lq1/k;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, Lm1/d;->e0:LW0/u;

    .line 14
    .line 15
    return-void
.end method

.method public final e(Lm1/c;JIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lm1/c;->V:LW0/M;

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v3, v1, Lm1/c;->Z:LW0/L;

    .line 11
    .line 12
    iget-object v8, v1, Lm1/c;->k:LW0/K;

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
    invoke-virtual/range {v1 .. v8}, LW0/M;->b(LW0/L;JIIILW0/K;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_0
    iget-object v2, v1, Lm1/c;->c:Ljava/lang/String;

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
    const/4 v4, 0x0

    .line 38
    const-string v5, "S_TEXT/WEBVTT"

    .line 39
    .line 40
    const-string v6, "S_TEXT/SSA"

    .line 41
    .line 42
    const-string v7, "S_TEXT/ASS"

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v2, v1, Lm1/c;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    iget-object v2, v1, Lm1/c;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    iget-object v2, v1, Lm1/c;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    :cond_1
    iget v2, v0, Lm1/d;->N:I

    .line 72
    .line 73
    const-string v10, "MatroskaExtractor"

    .line 74
    .line 75
    if-le v2, v9, :cond_2

    .line 76
    .line 77
    const-string v2, "Skipping subtitle sample in laced block."

    .line 78
    .line 79
    invoke-static {v10, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-wide v11, v0, Lm1/d;->L:J

    .line 84
    .line 85
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmp-long v2, v11, v13

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    const-string v2, "Skipping subtitle sample with no duration."

    .line 95
    .line 96
    invoke-static {v10, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    move/from16 v2, p5

    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_4
    iget-object v2, v1, Lm1/c;->c:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v10, v0, Lm1/d;->m:Lp0/E;

    .line 106
    .line 107
    iget-object v13, v10, Lp0/E;->a:[B

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    const/4 v15, 0x3

    .line 117
    const/16 v16, -0x1

    .line 118
    .line 119
    sparse-switch v14, :sswitch_data_0

    .line 120
    .line 121
    .line 122
    :goto_1
    const/4 v2, -0x1

    .line 123
    goto :goto_2

    .line 124
    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    const/4 v2, 0x3

    .line 132
    goto :goto_2

    .line 133
    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    const/4 v2, 0x2

    .line 141
    goto :goto_2

    .line 142
    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_7

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    const/4 v2, 0x1

    .line 150
    goto :goto_2

    .line 151
    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_8

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    const/4 v2, 0x0

    .line 159
    :goto_2
    if-eqz v2, :cond_b

    .line 160
    .line 161
    if-eq v2, v9, :cond_b

    .line 162
    .line 163
    const-wide/16 v5, 0x3e8

    .line 164
    .line 165
    if-eq v2, v8, :cond_a

    .line 166
    .line 167
    if-ne v2, v15, :cond_9

    .line 168
    .line 169
    const-string v2, "%02d:%02d:%02d,%03d"

    .line 170
    .line 171
    invoke-static {v11, v12, v5, v6, v2}, Lm1/d;->f(JJLjava/lang/String;)[B

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const/16 v3, 0x13

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :cond_a
    const-string v2, "%02d:%02d:%02d.%03d"

    .line 185
    .line 186
    invoke-static {v11, v12, v5, v6, v2}, Lm1/d;->f(JJLjava/lang/String;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const/16 v3, 0x19

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_b
    const-string v2, "%01d:%02d:%02d:%02d"

    .line 194
    .line 195
    const-wide/16 v5, 0x2710

    .line 196
    .line 197
    invoke-static {v11, v12, v5, v6, v2}, Lm1/d;->f(JJLjava/lang/String;)[B

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/16 v3, 0x15

    .line 202
    .line 203
    :goto_3
    array-length v5, v2

    .line 204
    invoke-static {v2, v4, v13, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    .line 206
    .line 207
    iget v2, v10, Lp0/E;->b:I

    .line 208
    .line 209
    :goto_4
    iget v3, v10, Lp0/E;->c:I

    .line 210
    .line 211
    if-ge v2, v3, :cond_d

    .line 212
    .line 213
    iget-object v3, v10, Lp0/E;->a:[B

    .line 214
    .line 215
    aget-byte v3, v3, v2

    .line 216
    .line 217
    if-nez v3, :cond_c

    .line 218
    .line 219
    invoke-virtual {v10, v2}, Lp0/E;->K(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_d
    :goto_5
    iget-object v2, v1, Lm1/c;->Z:LW0/L;

    .line 227
    .line 228
    iget v3, v10, Lp0/E;->c:I

    .line 229
    .line 230
    invoke-interface {v2, v3, v10}, LW0/L;->e(ILp0/E;)V

    .line 231
    .line 232
    .line 233
    iget v2, v10, Lp0/E;->c:I

    .line 234
    .line 235
    add-int v2, p5, v2

    .line 236
    .line 237
    :goto_6
    const/high16 v3, 0x10000000

    .line 238
    .line 239
    and-int v3, p4, v3

    .line 240
    .line 241
    if-eqz v3, :cond_f

    .line 242
    .line 243
    iget v3, v0, Lm1/d;->N:I

    .line 244
    .line 245
    iget-object v5, v0, Lm1/d;->p:Lp0/E;

    .line 246
    .line 247
    if-le v3, v9, :cond_e

    .line 248
    .line 249
    invoke-virtual {v5, v4}, Lp0/E;->I(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_e
    iget v3, v5, Lp0/E;->c:I

    .line 254
    .line 255
    iget-object v4, v1, Lm1/c;->Z:LW0/L;

    .line 256
    .line 257
    invoke-interface {v4, v3, v8, v5}, LW0/L;->a(IILp0/E;)V

    .line 258
    .line 259
    .line 260
    add-int/2addr v2, v3

    .line 261
    :cond_f
    :goto_7
    move v14, v2

    .line 262
    iget-object v10, v1, Lm1/c;->Z:LW0/L;

    .line 263
    .line 264
    iget-object v1, v1, Lm1/c;->k:LW0/K;

    .line 265
    .line 266
    move-wide/from16 v11, p2

    .line 267
    .line 268
    move/from16 v13, p4

    .line 269
    .line 270
    move/from16 v15, p6

    .line 271
    .line 272
    move-object/from16 v16, v1

    .line 273
    .line 274
    invoke-interface/range {v10 .. v16}, LW0/L;->d(JIIILW0/K;)V

    .line 275
    .line 276
    .line 277
    :goto_8
    iput-boolean v9, v0, Lm1/d;->I:Z

    .line 278
    .line 279
    return-void

    .line 280
    nop

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(LW0/t;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, LK/k;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, LK/k;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    const-wide/16 v6, -0x1

    .line 15
    .line 16
    const-wide/16 v8, 0x400

    .line 17
    .line 18
    cmp-long v10, v4, v6

    .line 19
    .line 20
    if-eqz v10, :cond_1

    .line 21
    .line 22
    cmp-long v6, v4, v8

    .line 23
    .line 24
    if-lez v6, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-wide v8, v4

    .line 28
    :cond_1
    :goto_0
    long-to-int v6, v8

    .line 29
    iget-object v7, v1, LK/k;->I:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v7, Lp0/E;

    .line 32
    .line 33
    iget-object v7, v7, Lp0/E;->a:[B

    .line 34
    .line 35
    const/4 v8, 0x4

    .line 36
    invoke-interface {v0, v3, v7, v8}, LW0/t;->c(I[BI)V

    .line 37
    .line 38
    .line 39
    iget-object v7, v1, LK/k;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v7, Lp0/E;

    .line 42
    .line 43
    invoke-virtual {v7}, Lp0/E;->B()J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    iput v8, v1, LK/k;->H:I

    .line 48
    .line 49
    :goto_1
    const-wide/32 v7, 0x1a45dfa3

    .line 50
    .line 51
    .line 52
    cmp-long v9, v11, v7

    .line 53
    .line 54
    if-eqz v9, :cond_3

    .line 55
    .line 56
    iget v7, v1, LK/k;->H:I

    .line 57
    .line 58
    add-int/2addr v7, v2

    .line 59
    iput v7, v1, LK/k;->H:I

    .line 60
    .line 61
    if-ne v7, v6, :cond_2

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_2
    iget-object v7, v1, LK/k;->I:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, Lp0/E;

    .line 68
    .line 69
    iget-object v7, v7, Lp0/E;->a:[B

    .line 70
    .line 71
    invoke-interface {v0, v3, v7, v2}, LW0/t;->c(I[BI)V

    .line 72
    .line 73
    .line 74
    const/16 v7, 0x8

    .line 75
    .line 76
    shl-long v7, v11, v7

    .line 77
    .line 78
    const-wide/16 v11, -0x100

    .line 79
    .line 80
    and-long/2addr v7, v11

    .line 81
    iget-object v9, v1, LK/k;->I:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v9, Lp0/E;

    .line 84
    .line 85
    iget-object v9, v9, Lp0/E;->a:[B

    .line 86
    .line 87
    aget-byte v9, v9, v3

    .line 88
    .line 89
    and-int/lit16 v9, v9, 0xff

    .line 90
    .line 91
    int-to-long v11, v9

    .line 92
    or-long/2addr v11, v7

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v1, v0}, LK/k;->f(LW0/t;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    iget v8, v1, LK/k;->H:I

    .line 99
    .line 100
    int-to-long v8, v8

    .line 101
    const-wide/high16 v11, -0x8000000000000000L

    .line 102
    .line 103
    cmp-long v13, v6, v11

    .line 104
    .line 105
    if-eqz v13, :cond_9

    .line 106
    .line 107
    if-eqz v10, :cond_4

    .line 108
    .line 109
    add-long v13, v8, v6

    .line 110
    .line 111
    cmp-long v10, v13, v4

    .line 112
    .line 113
    if-ltz v10, :cond_4

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    :goto_2
    iget v4, v1, LK/k;->H:I

    .line 117
    .line 118
    int-to-long v4, v4

    .line 119
    add-long v13, v8, v6

    .line 120
    .line 121
    cmp-long v10, v4, v13

    .line 122
    .line 123
    if-gez v10, :cond_7

    .line 124
    .line 125
    invoke-virtual {v1, v0}, LK/k;->f(LW0/t;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    cmp-long v10, v4, v11

    .line 130
    .line 131
    if-nez v10, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    invoke-virtual {v1, v0}, LK/k;->f(LW0/t;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    const-wide/16 v13, 0x0

    .line 139
    .line 140
    cmp-long v10, v4, v13

    .line 141
    .line 142
    if-ltz v10, :cond_9

    .line 143
    .line 144
    const-wide/32 v13, 0x7fffffff

    .line 145
    .line 146
    .line 147
    cmp-long v15, v4, v13

    .line 148
    .line 149
    if-lez v15, :cond_6

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    if-eqz v10, :cond_4

    .line 153
    .line 154
    long-to-int v5, v4

    .line 155
    invoke-interface {v0, v5}, LW0/t;->g(I)V

    .line 156
    .line 157
    .line 158
    iget v4, v1, LK/k;->H:I

    .line 159
    .line 160
    add-int/2addr v4, v5

    .line 161
    iput v4, v1, LK/k;->H:I

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    if-nez v10, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    const/4 v2, 0x0

    .line 168
    :goto_3
    move v3, v2

    .line 169
    :cond_9
    :goto_4
    return v3
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 47

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
    const-string v3, "S_TEXT/ASS"

    .line 8
    .line 9
    const-string v5, "S_TEXT/SSA"

    .line 10
    .line 11
    const-string v7, "V_MPEGH/ISO/HEVC"

    .line 12
    .line 13
    const-string v9, "S_TEXT/WEBVTT"

    .line 14
    .line 15
    const-string v11, "S_TEXT/UTF8"

    .line 16
    .line 17
    const-string v13, "V_MPEG2"

    .line 18
    .line 19
    const-string v15, "A_EAC3"

    .line 20
    .line 21
    const-string v6, "A_FLAC"

    .line 22
    .line 23
    const/16 v16, 0x21

    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    iput-boolean v14, v0, Lm1/d;->I:Z

    .line 27
    .line 28
    const/16 v17, 0x1

    .line 29
    .line 30
    :goto_0
    if-eqz v17, :cond_a3

    .line 31
    .line 32
    iget-boolean v4, v0, Lm1/d;->I:Z

    .line 33
    .line 34
    if-nez v4, :cond_a3

    .line 35
    .line 36
    iget-object v4, v0, Lm1/d;->a:Lm1/b;

    .line 37
    .line 38
    iget-object v10, v4, Lm1/b;->d:LD0/U;

    .line 39
    .line 40
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object v10, v4, Lm1/b;->b:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v17

    .line 49
    move-object/from16 v14, v17

    .line 50
    .line 51
    check-cast v14, Lm1/a;

    .line 52
    .line 53
    move-object/from16 v20, v13

    .line 54
    .line 55
    if-eqz v14, :cond_8e

    .line 56
    .line 57
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 58
    .line 59
    .line 60
    move-result-wide v24

    .line 61
    iget-wide v13, v14, Lm1/a;->b:J

    .line 62
    .line 63
    cmp-long v27, v24, v13

    .line 64
    .line 65
    if-ltz v27, :cond_8e

    .line 66
    .line 67
    iget-object v4, v4, Lm1/b;->d:LD0/U;

    .line 68
    .line 69
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Lm1/a;

    .line 74
    .line 75
    iget v10, v10, Lm1/a;->a:I

    .line 76
    .line 77
    iget-object v4, v4, LD0/U;->H:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Lm1/d;

    .line 80
    .line 81
    iget-object v13, v4, Lm1/d;->e0:LW0/u;

    .line 82
    .line 83
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v13, v4, Lm1/d;->c:Landroid/util/SparseArray;

    .line 87
    .line 88
    const/16 v14, 0xa0

    .line 89
    .line 90
    const-string v8, "A_OPUS"

    .line 91
    .line 92
    if-eq v10, v14, :cond_88

    .line 93
    .line 94
    const/16 v14, 0xae

    .line 95
    .line 96
    const-string v12, "video/webm"

    .line 97
    .line 98
    const-string v2, "MatroskaExtractor"

    .line 99
    .line 100
    if-eq v10, v14, :cond_14

    .line 101
    .line 102
    const/16 v8, 0x4dbb

    .line 103
    .line 104
    if-eq v10, v8, :cond_12

    .line 105
    .line 106
    const/16 v8, 0x6240

    .line 107
    .line 108
    if-eq v10, v8, :cond_10

    .line 109
    .line 110
    const/16 v8, 0x6d80

    .line 111
    .line 112
    if-eq v10, v8, :cond_e

    .line 113
    .line 114
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    const v8, 0x1549a966

    .line 120
    .line 121
    .line 122
    if-eq v10, v8, :cond_c

    .line 123
    .line 124
    const v8, 0x1654ae6b

    .line 125
    .line 126
    .line 127
    if-eq v10, v8, :cond_a

    .line 128
    .line 129
    const v8, 0x1c53bb6b

    .line 130
    .line 131
    .line 132
    if-eq v10, v8, :cond_0

    .line 133
    .line 134
    move-object/from16 v34, v3

    .line 135
    .line 136
    move-object/from16 v35, v5

    .line 137
    .line 138
    move-object/from16 v37, v6

    .line 139
    .line 140
    move-object/from16 v36, v7

    .line 141
    .line 142
    move-object v6, v11

    .line 143
    move-object v0, v15

    .line 144
    move-object/from16 v15, v20

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    const/4 v5, 0x1

    .line 148
    move-object v11, v9

    .line 149
    goto/16 :goto_44

    .line 150
    .line 151
    :cond_0
    iget-boolean v8, v4, Lm1/d;->y:Z

    .line 152
    .line 153
    if-nez v8, :cond_8

    .line 154
    .line 155
    iget-object v8, v4, Lm1/d;->e0:LW0/u;

    .line 156
    .line 157
    iget-object v10, v4, Lm1/d;->F:Lp0/y;

    .line 158
    .line 159
    iget-object v12, v4, Lm1/d;->G:Lp0/y;

    .line 160
    .line 161
    iget-wide v13, v4, Lm1/d;->s:J

    .line 162
    .line 163
    const-wide/16 v22, -0x1

    .line 164
    .line 165
    cmp-long v21, v13, v22

    .line 166
    .line 167
    if-eqz v21, :cond_1

    .line 168
    .line 169
    iget-wide v13, v4, Lm1/d;->v:J

    .line 170
    .line 171
    cmp-long v21, v13, v18

    .line 172
    .line 173
    if-eqz v21, :cond_1

    .line 174
    .line 175
    if-eqz v10, :cond_1

    .line 176
    .line 177
    iget v13, v10, Lp0/y;->a:I

    .line 178
    .line 179
    if-eqz v13, :cond_1

    .line 180
    .line 181
    if-eqz v12, :cond_1

    .line 182
    .line 183
    iget v14, v12, Lp0/y;->a:I

    .line 184
    .line 185
    if-eq v14, v13, :cond_2

    .line 186
    .line 187
    :cond_1
    move-object/from16 v34, v3

    .line 188
    .line 189
    move-object/from16 v35, v5

    .line 190
    .line 191
    move-object/from16 v37, v6

    .line 192
    .line 193
    move-object/from16 v36, v9

    .line 194
    .line 195
    move-object v9, v7

    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_2
    new-array v14, v13, [I

    .line 199
    .line 200
    new-array v0, v13, [J

    .line 201
    .line 202
    new-array v1, v13, [J

    .line 203
    .line 204
    move-object/from16 v34, v3

    .line 205
    .line 206
    new-array v3, v13, [J

    .line 207
    .line 208
    move-object/from16 v35, v5

    .line 209
    .line 210
    const/4 v5, 0x0

    .line 211
    :goto_2
    if-ge v5, v13, :cond_3

    .line 212
    .line 213
    invoke-virtual {v10, v5}, Lp0/y;->c(I)J

    .line 214
    .line 215
    .line 216
    move-result-wide v18

    .line 217
    aput-wide v18, v3, v5

    .line 218
    .line 219
    move-object/from16 v36, v9

    .line 220
    .line 221
    move-object/from16 v21, v10

    .line 222
    .line 223
    iget-wide v9, v4, Lm1/d;->s:J

    .line 224
    .line 225
    invoke-virtual {v12, v5}, Lp0/y;->c(I)J

    .line 226
    .line 227
    .line 228
    move-result-wide v18

    .line 229
    add-long v18, v18, v9

    .line 230
    .line 231
    aput-wide v18, v0, v5

    .line 232
    .line 233
    const/4 v9, 0x1

    .line 234
    add-int/2addr v5, v9

    .line 235
    move-object/from16 v10, v21

    .line 236
    .line 237
    move-object/from16 v9, v36

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_3
    move-object/from16 v36, v9

    .line 241
    .line 242
    const/4 v9, 0x1

    .line 243
    const/4 v5, 0x0

    .line 244
    :goto_3
    add-int/lit8 v10, v13, -0x1

    .line 245
    .line 246
    if-ge v5, v10, :cond_4

    .line 247
    .line 248
    add-int/lit8 v10, v5, 0x1

    .line 249
    .line 250
    aget-wide v18, v0, v10

    .line 251
    .line 252
    aget-wide v24, v0, v5

    .line 253
    .line 254
    move v9, v13

    .line 255
    sub-long v12, v18, v24

    .line 256
    .line 257
    long-to-int v13, v12

    .line 258
    aput v13, v14, v5

    .line 259
    .line 260
    aget-wide v12, v3, v10

    .line 261
    .line 262
    aget-wide v18, v3, v5

    .line 263
    .line 264
    sub-long v12, v12, v18

    .line 265
    .line 266
    aput-wide v12, v1, v5

    .line 267
    .line 268
    move v13, v9

    .line 269
    move v5, v10

    .line 270
    const/4 v9, 0x1

    .line 271
    goto :goto_3

    .line 272
    :cond_4
    move v5, v10

    .line 273
    :goto_4
    if-lez v5, :cond_5

    .line 274
    .line 275
    aget-wide v12, v3, v5

    .line 276
    .line 277
    move-object/from16 v37, v6

    .line 278
    .line 279
    move-object v9, v7

    .line 280
    iget-wide v6, v4, Lm1/d;->v:J

    .line 281
    .line 282
    cmp-long v18, v12, v6

    .line 283
    .line 284
    if-lez v18, :cond_6

    .line 285
    .line 286
    const/4 v6, -0x1

    .line 287
    add-int/2addr v5, v6

    .line 288
    move-object v7, v9

    .line 289
    move-object/from16 v6, v37

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_5
    move-object/from16 v37, v6

    .line 293
    .line 294
    move-object v9, v7

    .line 295
    :cond_6
    iget-wide v6, v4, Lm1/d;->s:J

    .line 296
    .line 297
    iget-wide v12, v4, Lm1/d;->r:J

    .line 298
    .line 299
    add-long/2addr v6, v12

    .line 300
    aget-wide v12, v0, v5

    .line 301
    .line 302
    sub-long/2addr v6, v12

    .line 303
    long-to-int v7, v6

    .line 304
    aput v7, v14, v5

    .line 305
    .line 306
    iget-wide v6, v4, Lm1/d;->v:J

    .line 307
    .line 308
    aget-wide v12, v3, v5

    .line 309
    .line 310
    sub-long/2addr v6, v12

    .line 311
    aput-wide v6, v1, v5

    .line 312
    .line 313
    if-ge v5, v10, :cond_7

    .line 314
    .line 315
    const-string v6, "Discarding trailing cue points with timestamps greater than total duration"

    .line 316
    .line 317
    invoke-static {v2, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const/4 v2, 0x1

    .line 321
    add-int/2addr v5, v2

    .line 322
    invoke-static {v14, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 323
    .line 324
    .line 325
    move-result-object v14

    .line 326
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    :cond_7
    new-instance v2, LW0/l;

    .line 339
    .line 340
    invoke-direct {v2, v14, v0, v1, v3}, LW0/l;-><init>([I[J[J[J)V

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :goto_5
    new-instance v2, LW0/x;

    .line 345
    .line 346
    iget-wide v0, v4, Lm1/d;->v:J

    .line 347
    .line 348
    invoke-direct {v2, v0, v1}, LW0/x;-><init>(J)V

    .line 349
    .line 350
    .line 351
    :goto_6
    invoke-interface {v8, v2}, LW0/u;->r(LW0/F;)V

    .line 352
    .line 353
    .line 354
    const/4 v0, 0x1

    .line 355
    iput-boolean v0, v4, Lm1/d;->y:Z

    .line 356
    .line 357
    :goto_7
    const/4 v0, 0x0

    .line 358
    goto :goto_8

    .line 359
    :cond_8
    move-object/from16 v34, v3

    .line 360
    .line 361
    move-object/from16 v35, v5

    .line 362
    .line 363
    move-object/from16 v37, v6

    .line 364
    .line 365
    move-object/from16 v36, v9

    .line 366
    .line 367
    move-object v9, v7

    .line 368
    goto :goto_7

    .line 369
    :goto_8
    iput-object v0, v4, Lm1/d;->F:Lp0/y;

    .line 370
    .line 371
    iput-object v0, v4, Lm1/d;->G:Lp0/y;

    .line 372
    .line 373
    :cond_9
    :goto_9
    move-object v6, v11

    .line 374
    move-object v0, v15

    .line 375
    move-object/from16 v15, v20

    .line 376
    .line 377
    move-object/from16 v11, v36

    .line 378
    .line 379
    const/4 v2, 0x0

    .line 380
    const/4 v5, 0x1

    .line 381
    move-object/from16 v36, v9

    .line 382
    .line 383
    goto/16 :goto_44

    .line 384
    .line 385
    :cond_a
    move-object/from16 v34, v3

    .line 386
    .line 387
    move-object/from16 v35, v5

    .line 388
    .line 389
    move-object/from16 v37, v6

    .line 390
    .line 391
    move-object/from16 v36, v9

    .line 392
    .line 393
    const/4 v0, 0x0

    .line 394
    move-object v9, v7

    .line 395
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_b

    .line 400
    .line 401
    iget-object v0, v4, Lm1/d;->e0:LW0/u;

    .line 402
    .line 403
    invoke-interface {v0}, LW0/u;->j()V

    .line 404
    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_b
    const-string v1, "No valid tracks were found"

    .line 408
    .line 409
    invoke-static {v1, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    throw v0

    .line 414
    :cond_c
    move-object/from16 v34, v3

    .line 415
    .line 416
    move-object/from16 v35, v5

    .line 417
    .line 418
    move-object/from16 v37, v6

    .line 419
    .line 420
    move-object/from16 v36, v9

    .line 421
    .line 422
    move-object v9, v7

    .line 423
    iget-wide v0, v4, Lm1/d;->t:J

    .line 424
    .line 425
    cmp-long v2, v0, v18

    .line 426
    .line 427
    if-nez v2, :cond_d

    .line 428
    .line 429
    const-wide/32 v0, 0xf4240

    .line 430
    .line 431
    .line 432
    iput-wide v0, v4, Lm1/d;->t:J

    .line 433
    .line 434
    :cond_d
    iget-wide v0, v4, Lm1/d;->u:J

    .line 435
    .line 436
    cmp-long v2, v0, v18

    .line 437
    .line 438
    if-eqz v2, :cond_9

    .line 439
    .line 440
    invoke-virtual {v4, v0, v1}, Lm1/d;->m(J)J

    .line 441
    .line 442
    .line 443
    move-result-wide v0

    .line 444
    iput-wide v0, v4, Lm1/d;->v:J

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_e
    move-object/from16 v34, v3

    .line 448
    .line 449
    move-object/from16 v35, v5

    .line 450
    .line 451
    move-object/from16 v37, v6

    .line 452
    .line 453
    move-object/from16 v36, v9

    .line 454
    .line 455
    move-object v9, v7

    .line 456
    invoke-virtual {v4, v10}, Lm1/d;->c(I)V

    .line 457
    .line 458
    .line 459
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 460
    .line 461
    iget-boolean v1, v0, Lm1/c;->i:Z

    .line 462
    .line 463
    if-eqz v1, :cond_9

    .line 464
    .line 465
    iget-object v0, v0, Lm1/c;->j:[B

    .line 466
    .line 467
    if-nez v0, :cond_f

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_f
    const-string v0, "Combining encryption and compression is not supported"

    .line 471
    .line 472
    const/4 v1, 0x0

    .line 473
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    throw v0

    .line 478
    :cond_10
    move-object/from16 v34, v3

    .line 479
    .line 480
    move-object/from16 v35, v5

    .line 481
    .line 482
    move-object/from16 v37, v6

    .line 483
    .line 484
    move-object/from16 v36, v9

    .line 485
    .line 486
    move-object v9, v7

    .line 487
    invoke-virtual {v4, v10}, Lm1/d;->c(I)V

    .line 488
    .line 489
    .line 490
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 491
    .line 492
    iget-boolean v1, v0, Lm1/c;->i:Z

    .line 493
    .line 494
    if-eqz v1, :cond_9

    .line 495
    .line 496
    iget-object v1, v0, Lm1/c;->k:LW0/K;

    .line 497
    .line 498
    if-eqz v1, :cond_11

    .line 499
    .line 500
    new-instance v2, Lm0/n;

    .line 501
    .line 502
    new-instance v3, Lm0/m;

    .line 503
    .line 504
    sget-object v4, Lm0/g;->a:Ljava/util/UUID;

    .line 505
    .line 506
    iget-object v1, v1, LW0/K;->b:[B

    .line 507
    .line 508
    const/4 v5, 0x0

    .line 509
    invoke-direct {v3, v4, v5, v12, v1}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 510
    .line 511
    .line 512
    const/4 v1, 0x1

    .line 513
    new-array v4, v1, [Lm0/m;

    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    aput-object v3, v4, v6

    .line 517
    .line 518
    invoke-direct {v2, v5, v1, v4}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    .line 519
    .line 520
    .line 521
    iput-object v2, v0, Lm1/c;->m:Lm0/n;

    .line 522
    .line 523
    goto/16 :goto_9

    .line 524
    .line 525
    :cond_11
    const/4 v5, 0x0

    .line 526
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 527
    .line 528
    invoke-static {v0, v5}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    throw v0

    .line 533
    :cond_12
    move-object/from16 v34, v3

    .line 534
    .line 535
    move-object/from16 v35, v5

    .line 536
    .line 537
    move-object/from16 v37, v6

    .line 538
    .line 539
    move-object/from16 v36, v9

    .line 540
    .line 541
    move-object v9, v7

    .line 542
    iget v0, v4, Lm1/d;->z:I

    .line 543
    .line 544
    const/4 v1, -0x1

    .line 545
    if-eq v0, v1, :cond_13

    .line 546
    .line 547
    iget-wide v1, v4, Lm1/d;->A:J

    .line 548
    .line 549
    const-wide/16 v5, -0x1

    .line 550
    .line 551
    cmp-long v3, v1, v5

    .line 552
    .line 553
    if-eqz v3, :cond_13

    .line 554
    .line 555
    const v3, 0x1c53bb6b

    .line 556
    .line 557
    .line 558
    if-ne v0, v3, :cond_9

    .line 559
    .line 560
    iput-wide v1, v4, Lm1/d;->C:J

    .line 561
    .line 562
    goto/16 :goto_9

    .line 563
    .line 564
    :cond_13
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 565
    .line 566
    const/4 v1, 0x0

    .line 567
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    throw v0

    .line 572
    :cond_14
    move-object/from16 v34, v3

    .line 573
    .line 574
    move-object/from16 v35, v5

    .line 575
    .line 576
    move-object/from16 v37, v6

    .line 577
    .line 578
    move-object/from16 v36, v9

    .line 579
    .line 580
    move-object v9, v7

    .line 581
    iget-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 582
    .line 583
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    iget-object v1, v0, Lm1/c;->c:Ljava/lang/String;

    .line 587
    .line 588
    if-eqz v1, :cond_87

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    const-string v5, "A_MPEG/L3"

    .line 595
    .line 596
    const-string v7, "V_MS/VFW/FOURCC"

    .line 597
    .line 598
    const-string v14, "S_DVBSUB"

    .line 599
    .line 600
    const-string v6, "V_MPEG4/ISO/ASP"

    .line 601
    .line 602
    const-string v10, "V_MPEG4/ISO/AP"

    .line 603
    .line 604
    move-object/from16 v26, v12

    .line 605
    .line 606
    const-string v12, "V_MPEG4/ISO/SP"

    .line 607
    .line 608
    move-object/from16 v27, v13

    .line 609
    .line 610
    const-string v13, "A_MS/ACM"

    .line 611
    .line 612
    move-object/from16 v28, v2

    .line 613
    .line 614
    const-string v2, "A_TRUEHD"

    .line 615
    .line 616
    move-object/from16 v29, v0

    .line 617
    .line 618
    const-string v0, "A_VORBIS"

    .line 619
    .line 620
    sparse-switch v3, :sswitch_data_0

    .line 621
    .line 622
    .line 623
    :goto_a
    move-object/from16 v3, v37

    .line 624
    .line 625
    :goto_b
    move-object/from16 v37, v15

    .line 626
    .line 627
    move-object/from16 v15, v20

    .line 628
    .line 629
    :goto_c
    move-object/from16 v20, v11

    .line 630
    .line 631
    move-object/from16 v11, v36

    .line 632
    .line 633
    :goto_d
    move-object/from16 v36, v9

    .line 634
    .line 635
    :goto_e
    const/4 v9, -0x1

    .line 636
    goto/16 :goto_13

    .line 637
    .line 638
    :sswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    if-nez v3, :cond_15

    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_15
    move-object/from16 v3, v37

    .line 646
    .line 647
    move-object/from16 v37, v15

    .line 648
    .line 649
    move-object/from16 v15, v20

    .line 650
    .line 651
    move-object/from16 v20, v11

    .line 652
    .line 653
    move-object/from16 v11, v36

    .line 654
    .line 655
    move-object/from16 v36, v9

    .line 656
    .line 657
    const/16 v9, 0x21

    .line 658
    .line 659
    goto/16 :goto_13

    .line 660
    .line 661
    :sswitch_1
    move-object/from16 v3, v37

    .line 662
    .line 663
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v30

    .line 667
    if-nez v30, :cond_16

    .line 668
    .line 669
    :goto_f
    goto :goto_b

    .line 670
    :cond_16
    move-object/from16 v37, v15

    .line 671
    .line 672
    move-object/from16 v15, v20

    .line 673
    .line 674
    move-object/from16 v20, v11

    .line 675
    .line 676
    move-object/from16 v11, v36

    .line 677
    .line 678
    move-object/from16 v36, v9

    .line 679
    .line 680
    const/16 v9, 0x20

    .line 681
    .line 682
    goto/16 :goto_13

    .line 683
    .line 684
    :sswitch_2
    move-object/from16 v3, v37

    .line 685
    .line 686
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v30

    .line 690
    if-nez v30, :cond_17

    .line 691
    .line 692
    goto :goto_f

    .line 693
    :cond_17
    move-object/from16 v37, v15

    .line 694
    .line 695
    move-object/from16 v15, v20

    .line 696
    .line 697
    move-object/from16 v20, v11

    .line 698
    .line 699
    move-object/from16 v11, v36

    .line 700
    .line 701
    move-object/from16 v36, v9

    .line 702
    .line 703
    const/16 v9, 0x1f

    .line 704
    .line 705
    goto/16 :goto_13

    .line 706
    .line 707
    :sswitch_3
    move-object/from16 v3, v37

    .line 708
    .line 709
    move-object/from16 v37, v15

    .line 710
    .line 711
    move-object/from16 v15, v20

    .line 712
    .line 713
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v20

    .line 717
    if-nez v20, :cond_18

    .line 718
    .line 719
    :goto_10
    goto :goto_c

    .line 720
    :cond_18
    move-object/from16 v20, v11

    .line 721
    .line 722
    move-object/from16 v11, v36

    .line 723
    .line 724
    move-object/from16 v36, v9

    .line 725
    .line 726
    const/16 v9, 0x1e

    .line 727
    .line 728
    goto/16 :goto_13

    .line 729
    .line 730
    :sswitch_4
    move-object/from16 v3, v37

    .line 731
    .line 732
    move-object/from16 v37, v15

    .line 733
    .line 734
    move-object/from16 v15, v20

    .line 735
    .line 736
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v20

    .line 740
    if-nez v20, :cond_19

    .line 741
    .line 742
    goto :goto_10

    .line 743
    :cond_19
    move-object/from16 v20, v11

    .line 744
    .line 745
    move-object/from16 v11, v36

    .line 746
    .line 747
    move-object/from16 v36, v9

    .line 748
    .line 749
    const/16 v9, 0x1d

    .line 750
    .line 751
    goto/16 :goto_13

    .line 752
    .line 753
    :sswitch_5
    move-object/from16 v3, v37

    .line 754
    .line 755
    move-object/from16 v37, v15

    .line 756
    .line 757
    move-object/from16 v15, v20

    .line 758
    .line 759
    move-object/from16 v20, v11

    .line 760
    .line 761
    move-object/from16 v11, v36

    .line 762
    .line 763
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v30

    .line 767
    if-nez v30, :cond_1a

    .line 768
    .line 769
    :goto_11
    goto/16 :goto_d

    .line 770
    .line 771
    :cond_1a
    move-object/from16 v36, v9

    .line 772
    .line 773
    const/16 v9, 0x1c

    .line 774
    .line 775
    goto/16 :goto_13

    .line 776
    .line 777
    :sswitch_6
    move-object/from16 v3, v37

    .line 778
    .line 779
    move-object/from16 v37, v15

    .line 780
    .line 781
    move-object/from16 v15, v20

    .line 782
    .line 783
    move-object/from16 v20, v11

    .line 784
    .line 785
    move-object/from16 v11, v36

    .line 786
    .line 787
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v30

    .line 791
    if-nez v30, :cond_1b

    .line 792
    .line 793
    goto :goto_11

    .line 794
    :cond_1b
    move-object/from16 v36, v9

    .line 795
    .line 796
    const/16 v9, 0x1b

    .line 797
    .line 798
    goto/16 :goto_13

    .line 799
    .line 800
    :sswitch_7
    move-object/from16 v3, v37

    .line 801
    .line 802
    move-object/from16 v37, v15

    .line 803
    .line 804
    move-object/from16 v15, v20

    .line 805
    .line 806
    move-object/from16 v20, v11

    .line 807
    .line 808
    move-object/from16 v11, v36

    .line 809
    .line 810
    move-object/from16 v36, v9

    .line 811
    .line 812
    move-object/from16 v9, v35

    .line 813
    .line 814
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v30

    .line 818
    if-nez v30, :cond_1c

    .line 819
    .line 820
    goto/16 :goto_e

    .line 821
    .line 822
    :cond_1c
    const/16 v9, 0x1a

    .line 823
    .line 824
    goto/16 :goto_13

    .line 825
    .line 826
    :sswitch_8
    move-object/from16 v3, v37

    .line 827
    .line 828
    move-object/from16 v37, v15

    .line 829
    .line 830
    move-object/from16 v15, v20

    .line 831
    .line 832
    move-object/from16 v20, v11

    .line 833
    .line 834
    move-object/from16 v11, v36

    .line 835
    .line 836
    move-object/from16 v36, v9

    .line 837
    .line 838
    move-object/from16 v9, v34

    .line 839
    .line 840
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v30

    .line 844
    if-nez v30, :cond_1d

    .line 845
    .line 846
    move-object/from16 v34, v9

    .line 847
    .line 848
    goto/16 :goto_e

    .line 849
    .line 850
    :cond_1d
    const/16 v30, 0x19

    .line 851
    .line 852
    move-object/from16 v34, v9

    .line 853
    .line 854
    const/16 v9, 0x19

    .line 855
    .line 856
    goto/16 :goto_13

    .line 857
    .line 858
    :sswitch_9
    move-object/from16 v3, v37

    .line 859
    .line 860
    move-object/from16 v37, v15

    .line 861
    .line 862
    move-object/from16 v15, v20

    .line 863
    .line 864
    move-object/from16 v20, v11

    .line 865
    .line 866
    move-object/from16 v11, v36

    .line 867
    .line 868
    move-object/from16 v36, v9

    .line 869
    .line 870
    const-string v9, "A_PCM/INT/LIT"

    .line 871
    .line 872
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    move-result v9

    .line 876
    if-nez v9, :cond_1e

    .line 877
    .line 878
    :goto_12
    goto/16 :goto_e

    .line 879
    .line 880
    :cond_1e
    const/16 v9, 0x18

    .line 881
    .line 882
    goto/16 :goto_13

    .line 883
    .line 884
    :sswitch_a
    move-object/from16 v3, v37

    .line 885
    .line 886
    move-object/from16 v37, v15

    .line 887
    .line 888
    move-object/from16 v15, v20

    .line 889
    .line 890
    move-object/from16 v20, v11

    .line 891
    .line 892
    move-object/from16 v11, v36

    .line 893
    .line 894
    move-object/from16 v36, v9

    .line 895
    .line 896
    const-string v9, "A_PCM/INT/BIG"

    .line 897
    .line 898
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    move-result v9

    .line 902
    if-nez v9, :cond_1f

    .line 903
    .line 904
    goto :goto_12

    .line 905
    :cond_1f
    const/16 v9, 0x17

    .line 906
    .line 907
    goto/16 :goto_13

    .line 908
    .line 909
    :sswitch_b
    move-object/from16 v3, v37

    .line 910
    .line 911
    move-object/from16 v37, v15

    .line 912
    .line 913
    move-object/from16 v15, v20

    .line 914
    .line 915
    move-object/from16 v20, v11

    .line 916
    .line 917
    move-object/from16 v11, v36

    .line 918
    .line 919
    move-object/from16 v36, v9

    .line 920
    .line 921
    const-string v9, "A_PCM/FLOAT/IEEE"

    .line 922
    .line 923
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    move-result v9

    .line 927
    if-nez v9, :cond_20

    .line 928
    .line 929
    goto :goto_12

    .line 930
    :cond_20
    const/16 v9, 0x16

    .line 931
    .line 932
    goto/16 :goto_13

    .line 933
    .line 934
    :sswitch_c
    move-object/from16 v3, v37

    .line 935
    .line 936
    move-object/from16 v37, v15

    .line 937
    .line 938
    move-object/from16 v15, v20

    .line 939
    .line 940
    move-object/from16 v20, v11

    .line 941
    .line 942
    move-object/from16 v11, v36

    .line 943
    .line 944
    move-object/from16 v36, v9

    .line 945
    .line 946
    const-string v9, "A_DTS/EXPRESS"

    .line 947
    .line 948
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v9

    .line 952
    if-nez v9, :cond_21

    .line 953
    .line 954
    goto :goto_12

    .line 955
    :cond_21
    const/16 v9, 0x15

    .line 956
    .line 957
    goto/16 :goto_13

    .line 958
    .line 959
    :sswitch_d
    move-object/from16 v3, v37

    .line 960
    .line 961
    move-object/from16 v37, v15

    .line 962
    .line 963
    move-object/from16 v15, v20

    .line 964
    .line 965
    move-object/from16 v20, v11

    .line 966
    .line 967
    move-object/from16 v11, v36

    .line 968
    .line 969
    move-object/from16 v36, v9

    .line 970
    .line 971
    const-string v9, "V_THEORA"

    .line 972
    .line 973
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v9

    .line 977
    if-nez v9, :cond_22

    .line 978
    .line 979
    goto :goto_12

    .line 980
    :cond_22
    const/16 v9, 0x14

    .line 981
    .line 982
    goto/16 :goto_13

    .line 983
    .line 984
    :sswitch_e
    move-object/from16 v3, v37

    .line 985
    .line 986
    move-object/from16 v37, v15

    .line 987
    .line 988
    move-object/from16 v15, v20

    .line 989
    .line 990
    move-object/from16 v20, v11

    .line 991
    .line 992
    move-object/from16 v11, v36

    .line 993
    .line 994
    move-object/from16 v36, v9

    .line 995
    .line 996
    const-string v9, "S_HDMV/PGS"

    .line 997
    .line 998
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v9

    .line 1002
    if-nez v9, :cond_23

    .line 1003
    .line 1004
    goto :goto_12

    .line 1005
    :cond_23
    const/16 v9, 0x13

    .line 1006
    .line 1007
    goto/16 :goto_13

    .line 1008
    .line 1009
    :sswitch_f
    move-object/from16 v3, v37

    .line 1010
    .line 1011
    move-object/from16 v37, v15

    .line 1012
    .line 1013
    move-object/from16 v15, v20

    .line 1014
    .line 1015
    move-object/from16 v20, v11

    .line 1016
    .line 1017
    move-object/from16 v11, v36

    .line 1018
    .line 1019
    move-object/from16 v36, v9

    .line 1020
    .line 1021
    const-string v9, "V_VP9"

    .line 1022
    .line 1023
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v9

    .line 1027
    if-nez v9, :cond_24

    .line 1028
    .line 1029
    goto/16 :goto_12

    .line 1030
    .line 1031
    :cond_24
    const/16 v9, 0x12

    .line 1032
    .line 1033
    goto/16 :goto_13

    .line 1034
    .line 1035
    :sswitch_10
    move-object/from16 v3, v37

    .line 1036
    .line 1037
    move-object/from16 v37, v15

    .line 1038
    .line 1039
    move-object/from16 v15, v20

    .line 1040
    .line 1041
    move-object/from16 v20, v11

    .line 1042
    .line 1043
    move-object/from16 v11, v36

    .line 1044
    .line 1045
    move-object/from16 v36, v9

    .line 1046
    .line 1047
    const-string v9, "V_VP8"

    .line 1048
    .line 1049
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v9

    .line 1053
    if-nez v9, :cond_25

    .line 1054
    .line 1055
    goto/16 :goto_12

    .line 1056
    .line 1057
    :cond_25
    const/16 v9, 0x11

    .line 1058
    .line 1059
    goto/16 :goto_13

    .line 1060
    .line 1061
    :sswitch_11
    move-object/from16 v3, v37

    .line 1062
    .line 1063
    move-object/from16 v37, v15

    .line 1064
    .line 1065
    move-object/from16 v15, v20

    .line 1066
    .line 1067
    move-object/from16 v20, v11

    .line 1068
    .line 1069
    move-object/from16 v11, v36

    .line 1070
    .line 1071
    move-object/from16 v36, v9

    .line 1072
    .line 1073
    const-string v9, "V_AV1"

    .line 1074
    .line 1075
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v9

    .line 1079
    if-nez v9, :cond_26

    .line 1080
    .line 1081
    goto/16 :goto_12

    .line 1082
    .line 1083
    :cond_26
    const/16 v9, 0x10

    .line 1084
    .line 1085
    goto/16 :goto_13

    .line 1086
    .line 1087
    :sswitch_12
    move-object/from16 v3, v37

    .line 1088
    .line 1089
    move-object/from16 v37, v15

    .line 1090
    .line 1091
    move-object/from16 v15, v20

    .line 1092
    .line 1093
    move-object/from16 v20, v11

    .line 1094
    .line 1095
    move-object/from16 v11, v36

    .line 1096
    .line 1097
    move-object/from16 v36, v9

    .line 1098
    .line 1099
    const-string v9, "A_DTS"

    .line 1100
    .line 1101
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v9

    .line 1105
    if-nez v9, :cond_27

    .line 1106
    .line 1107
    goto/16 :goto_12

    .line 1108
    .line 1109
    :cond_27
    const/16 v9, 0xf

    .line 1110
    .line 1111
    goto/16 :goto_13

    .line 1112
    .line 1113
    :sswitch_13
    move-object/from16 v3, v37

    .line 1114
    .line 1115
    move-object/from16 v37, v15

    .line 1116
    .line 1117
    move-object/from16 v15, v20

    .line 1118
    .line 1119
    move-object/from16 v20, v11

    .line 1120
    .line 1121
    move-object/from16 v11, v36

    .line 1122
    .line 1123
    move-object/from16 v36, v9

    .line 1124
    .line 1125
    const-string v9, "A_AC3"

    .line 1126
    .line 1127
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v9

    .line 1131
    if-nez v9, :cond_28

    .line 1132
    .line 1133
    goto/16 :goto_12

    .line 1134
    .line 1135
    :cond_28
    const/16 v9, 0xe

    .line 1136
    .line 1137
    goto/16 :goto_13

    .line 1138
    .line 1139
    :sswitch_14
    move-object/from16 v3, v37

    .line 1140
    .line 1141
    move-object/from16 v37, v15

    .line 1142
    .line 1143
    move-object/from16 v15, v20

    .line 1144
    .line 1145
    move-object/from16 v20, v11

    .line 1146
    .line 1147
    move-object/from16 v11, v36

    .line 1148
    .line 1149
    move-object/from16 v36, v9

    .line 1150
    .line 1151
    const-string v9, "A_AAC"

    .line 1152
    .line 1153
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v9

    .line 1157
    if-nez v9, :cond_29

    .line 1158
    .line 1159
    goto/16 :goto_12

    .line 1160
    .line 1161
    :cond_29
    const/16 v9, 0xd

    .line 1162
    .line 1163
    goto/16 :goto_13

    .line 1164
    .line 1165
    :sswitch_15
    move-object/from16 v3, v37

    .line 1166
    .line 1167
    move-object/from16 v37, v15

    .line 1168
    .line 1169
    move-object/from16 v15, v20

    .line 1170
    .line 1171
    move-object/from16 v20, v11

    .line 1172
    .line 1173
    move-object/from16 v11, v36

    .line 1174
    .line 1175
    move-object/from16 v36, v9

    .line 1176
    .line 1177
    const-string v9, "A_DTS/LOSSLESS"

    .line 1178
    .line 1179
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v9

    .line 1183
    if-nez v9, :cond_2a

    .line 1184
    .line 1185
    goto/16 :goto_12

    .line 1186
    .line 1187
    :cond_2a
    const/16 v9, 0xc

    .line 1188
    .line 1189
    goto/16 :goto_13

    .line 1190
    .line 1191
    :sswitch_16
    move-object/from16 v3, v37

    .line 1192
    .line 1193
    move-object/from16 v37, v15

    .line 1194
    .line 1195
    move-object/from16 v15, v20

    .line 1196
    .line 1197
    move-object/from16 v20, v11

    .line 1198
    .line 1199
    move-object/from16 v11, v36

    .line 1200
    .line 1201
    move-object/from16 v36, v9

    .line 1202
    .line 1203
    const-string v9, "S_VOBSUB"

    .line 1204
    .line 1205
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v9

    .line 1209
    if-nez v9, :cond_2b

    .line 1210
    .line 1211
    goto/16 :goto_12

    .line 1212
    .line 1213
    :cond_2b
    const/16 v9, 0xb

    .line 1214
    .line 1215
    goto/16 :goto_13

    .line 1216
    .line 1217
    :sswitch_17
    move-object/from16 v3, v37

    .line 1218
    .line 1219
    move-object/from16 v37, v15

    .line 1220
    .line 1221
    move-object/from16 v15, v20

    .line 1222
    .line 1223
    move-object/from16 v20, v11

    .line 1224
    .line 1225
    move-object/from16 v11, v36

    .line 1226
    .line 1227
    move-object/from16 v36, v9

    .line 1228
    .line 1229
    const-string v9, "V_MPEG4/ISO/AVC"

    .line 1230
    .line 1231
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v9

    .line 1235
    if-nez v9, :cond_2c

    .line 1236
    .line 1237
    goto/16 :goto_12

    .line 1238
    .line 1239
    :cond_2c
    const/16 v9, 0xa

    .line 1240
    .line 1241
    goto/16 :goto_13

    .line 1242
    .line 1243
    :sswitch_18
    move-object/from16 v3, v37

    .line 1244
    .line 1245
    move-object/from16 v37, v15

    .line 1246
    .line 1247
    move-object/from16 v15, v20

    .line 1248
    .line 1249
    move-object/from16 v20, v11

    .line 1250
    .line 1251
    move-object/from16 v11, v36

    .line 1252
    .line 1253
    move-object/from16 v36, v9

    .line 1254
    .line 1255
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v9

    .line 1259
    if-nez v9, :cond_2d

    .line 1260
    .line 1261
    goto/16 :goto_12

    .line 1262
    .line 1263
    :cond_2d
    const/16 v9, 0x9

    .line 1264
    .line 1265
    goto/16 :goto_13

    .line 1266
    .line 1267
    :sswitch_19
    move-object/from16 v3, v37

    .line 1268
    .line 1269
    move-object/from16 v37, v15

    .line 1270
    .line 1271
    move-object/from16 v15, v20

    .line 1272
    .line 1273
    move-object/from16 v20, v11

    .line 1274
    .line 1275
    move-object/from16 v11, v36

    .line 1276
    .line 1277
    move-object/from16 v36, v9

    .line 1278
    .line 1279
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1280
    .line 1281
    .line 1282
    move-result v9

    .line 1283
    if-nez v9, :cond_2e

    .line 1284
    .line 1285
    goto/16 :goto_12

    .line 1286
    .line 1287
    :cond_2e
    const/16 v9, 0x8

    .line 1288
    .line 1289
    goto/16 :goto_13

    .line 1290
    .line 1291
    :sswitch_1a
    move-object/from16 v3, v37

    .line 1292
    .line 1293
    move-object/from16 v37, v15

    .line 1294
    .line 1295
    move-object/from16 v15, v20

    .line 1296
    .line 1297
    move-object/from16 v20, v11

    .line 1298
    .line 1299
    move-object/from16 v11, v36

    .line 1300
    .line 1301
    move-object/from16 v36, v9

    .line 1302
    .line 1303
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v9

    .line 1307
    if-nez v9, :cond_2f

    .line 1308
    .line 1309
    goto/16 :goto_12

    .line 1310
    .line 1311
    :cond_2f
    const/4 v9, 0x7

    .line 1312
    goto/16 :goto_13

    .line 1313
    .line 1314
    :sswitch_1b
    move-object/from16 v3, v37

    .line 1315
    .line 1316
    move-object/from16 v37, v15

    .line 1317
    .line 1318
    move-object/from16 v15, v20

    .line 1319
    .line 1320
    move-object/from16 v20, v11

    .line 1321
    .line 1322
    move-object/from16 v11, v36

    .line 1323
    .line 1324
    move-object/from16 v36, v9

    .line 1325
    .line 1326
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1327
    .line 1328
    .line 1329
    move-result v9

    .line 1330
    if-nez v9, :cond_30

    .line 1331
    .line 1332
    goto/16 :goto_12

    .line 1333
    .line 1334
    :cond_30
    const/4 v9, 0x6

    .line 1335
    goto/16 :goto_13

    .line 1336
    .line 1337
    :sswitch_1c
    move-object/from16 v3, v37

    .line 1338
    .line 1339
    move-object/from16 v37, v15

    .line 1340
    .line 1341
    move-object/from16 v15, v20

    .line 1342
    .line 1343
    move-object/from16 v20, v11

    .line 1344
    .line 1345
    move-object/from16 v11, v36

    .line 1346
    .line 1347
    move-object/from16 v36, v9

    .line 1348
    .line 1349
    const-string v9, "A_MPEG/L2"

    .line 1350
    .line 1351
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1352
    .line 1353
    .line 1354
    move-result v9

    .line 1355
    if-nez v9, :cond_31

    .line 1356
    .line 1357
    goto/16 :goto_12

    .line 1358
    .line 1359
    :cond_31
    const/4 v9, 0x5

    .line 1360
    goto/16 :goto_13

    .line 1361
    .line 1362
    :sswitch_1d
    move-object/from16 v3, v37

    .line 1363
    .line 1364
    move-object/from16 v37, v15

    .line 1365
    .line 1366
    move-object/from16 v15, v20

    .line 1367
    .line 1368
    move-object/from16 v20, v11

    .line 1369
    .line 1370
    move-object/from16 v11, v36

    .line 1371
    .line 1372
    move-object/from16 v36, v9

    .line 1373
    .line 1374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v9

    .line 1378
    if-nez v9, :cond_32

    .line 1379
    .line 1380
    goto/16 :goto_12

    .line 1381
    .line 1382
    :cond_32
    const/4 v9, 0x4

    .line 1383
    goto/16 :goto_13

    .line 1384
    .line 1385
    :sswitch_1e
    move-object/from16 v3, v37

    .line 1386
    .line 1387
    move-object/from16 v37, v15

    .line 1388
    .line 1389
    move-object/from16 v15, v20

    .line 1390
    .line 1391
    move-object/from16 v20, v11

    .line 1392
    .line 1393
    move-object/from16 v11, v36

    .line 1394
    .line 1395
    move-object/from16 v36, v9

    .line 1396
    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1398
    .line 1399
    .line 1400
    move-result v9

    .line 1401
    if-nez v9, :cond_33

    .line 1402
    .line 1403
    goto/16 :goto_12

    .line 1404
    .line 1405
    :cond_33
    const/4 v9, 0x3

    .line 1406
    goto :goto_13

    .line 1407
    :sswitch_1f
    move-object/from16 v3, v37

    .line 1408
    .line 1409
    move-object/from16 v37, v15

    .line 1410
    .line 1411
    move-object/from16 v15, v20

    .line 1412
    .line 1413
    move-object/from16 v20, v11

    .line 1414
    .line 1415
    move-object/from16 v11, v36

    .line 1416
    .line 1417
    move-object/from16 v36, v9

    .line 1418
    .line 1419
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v9

    .line 1423
    if-nez v9, :cond_34

    .line 1424
    .line 1425
    goto/16 :goto_12

    .line 1426
    .line 1427
    :cond_34
    const/4 v9, 0x2

    .line 1428
    goto :goto_13

    .line 1429
    :sswitch_20
    move-object/from16 v3, v37

    .line 1430
    .line 1431
    move-object/from16 v37, v15

    .line 1432
    .line 1433
    move-object/from16 v15, v20

    .line 1434
    .line 1435
    move-object/from16 v20, v11

    .line 1436
    .line 1437
    move-object/from16 v11, v36

    .line 1438
    .line 1439
    move-object/from16 v36, v9

    .line 1440
    .line 1441
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v9

    .line 1445
    if-nez v9, :cond_35

    .line 1446
    .line 1447
    goto/16 :goto_12

    .line 1448
    .line 1449
    :cond_35
    const/4 v9, 0x1

    .line 1450
    goto :goto_13

    .line 1451
    :sswitch_21
    move-object/from16 v3, v37

    .line 1452
    .line 1453
    move-object/from16 v37, v15

    .line 1454
    .line 1455
    move-object/from16 v15, v20

    .line 1456
    .line 1457
    move-object/from16 v20, v11

    .line 1458
    .line 1459
    move-object/from16 v11, v36

    .line 1460
    .line 1461
    move-object/from16 v36, v9

    .line 1462
    .line 1463
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v9

    .line 1467
    if-nez v9, :cond_36

    .line 1468
    .line 1469
    goto/16 :goto_12

    .line 1470
    .line 1471
    :cond_36
    const/4 v9, 0x0

    .line 1472
    :goto_13
    packed-switch v9, :pswitch_data_0

    .line 1473
    .line 1474
    .line 1475
    move-object/from16 v6, v20

    .line 1476
    .line 1477
    move-object/from16 v8, v37

    .line 1478
    .line 1479
    const/4 v0, 0x0

    .line 1480
    move-object/from16 v37, v3

    .line 1481
    .line 1482
    goto/16 :goto_40

    .line 1483
    .line 1484
    :pswitch_0
    iget-object v9, v4, Lm1/d;->e0:LW0/u;

    .line 1485
    .line 1486
    move-object/from16 v38, v4

    .line 1487
    .line 1488
    move-object/from16 v4, v29

    .line 1489
    .line 1490
    move-object/from16 v29, v9

    .line 1491
    .line 1492
    iget v9, v4, Lm1/c;->d:I

    .line 1493
    .line 1494
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1495
    .line 1496
    .line 1497
    move-result v30

    .line 1498
    move/from16 v31, v9

    .line 1499
    .line 1500
    const/16 v32, 0x14

    .line 1501
    .line 1502
    sparse-switch v30, :sswitch_data_1

    .line 1503
    .line 1504
    .line 1505
    :goto_14
    move-object/from16 v6, v20

    .line 1506
    .line 1507
    move-object/from16 v0, v34

    .line 1508
    .line 1509
    move-object/from16 v2, v35

    .line 1510
    .line 1511
    move-object/from16 v5, v36

    .line 1512
    .line 1513
    move-object/from16 v8, v37

    .line 1514
    .line 1515
    :goto_15
    const/16 v24, -0x1

    .line 1516
    .line 1517
    goto/16 :goto_1a

    .line 1518
    .line 1519
    :sswitch_22
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v0

    .line 1523
    if-nez v0, :cond_37

    .line 1524
    .line 1525
    goto :goto_14

    .line 1526
    :cond_37
    move-object/from16 v6, v20

    .line 1527
    .line 1528
    move-object/from16 v0, v34

    .line 1529
    .line 1530
    move-object/from16 v2, v35

    .line 1531
    .line 1532
    move-object/from16 v5, v36

    .line 1533
    .line 1534
    move-object/from16 v8, v37

    .line 1535
    .line 1536
    const/16 v24, 0x21

    .line 1537
    .line 1538
    goto/16 :goto_1a

    .line 1539
    .line 1540
    :sswitch_23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v0

    .line 1544
    if-nez v0, :cond_38

    .line 1545
    .line 1546
    goto :goto_14

    .line 1547
    :cond_38
    move-object/from16 v6, v20

    .line 1548
    .line 1549
    move-object/from16 v0, v34

    .line 1550
    .line 1551
    move-object/from16 v2, v35

    .line 1552
    .line 1553
    move-object/from16 v5, v36

    .line 1554
    .line 1555
    move-object/from16 v8, v37

    .line 1556
    .line 1557
    const/16 v24, 0x20

    .line 1558
    .line 1559
    goto/16 :goto_1a

    .line 1560
    .line 1561
    :sswitch_24
    move-object/from16 v8, v37

    .line 1562
    .line 1563
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1564
    .line 1565
    .line 1566
    move-result v0

    .line 1567
    if-nez v0, :cond_39

    .line 1568
    .line 1569
    :goto_16
    move-object/from16 v6, v20

    .line 1570
    .line 1571
    :goto_17
    move-object/from16 v0, v34

    .line 1572
    .line 1573
    move-object/from16 v2, v35

    .line 1574
    .line 1575
    move-object/from16 v5, v36

    .line 1576
    .line 1577
    goto :goto_15

    .line 1578
    :cond_39
    move-object/from16 v6, v20

    .line 1579
    .line 1580
    move-object/from16 v0, v34

    .line 1581
    .line 1582
    move-object/from16 v2, v35

    .line 1583
    .line 1584
    move-object/from16 v5, v36

    .line 1585
    .line 1586
    const/16 v24, 0x1f

    .line 1587
    .line 1588
    goto/16 :goto_1a

    .line 1589
    .line 1590
    :sswitch_25
    move-object/from16 v8, v37

    .line 1591
    .line 1592
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v0

    .line 1596
    if-nez v0, :cond_3a

    .line 1597
    .line 1598
    goto :goto_16

    .line 1599
    :cond_3a
    move-object/from16 v6, v20

    .line 1600
    .line 1601
    move-object/from16 v0, v34

    .line 1602
    .line 1603
    move-object/from16 v2, v35

    .line 1604
    .line 1605
    move-object/from16 v5, v36

    .line 1606
    .line 1607
    const/16 v24, 0x1e

    .line 1608
    .line 1609
    goto/16 :goto_1a

    .line 1610
    .line 1611
    :sswitch_26
    move-object/from16 v10, v20

    .line 1612
    .line 1613
    move-object/from16 v8, v37

    .line 1614
    .line 1615
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1616
    .line 1617
    .line 1618
    move-result v0

    .line 1619
    if-nez v0, :cond_3b

    .line 1620
    .line 1621
    :goto_18
    move-object v6, v10

    .line 1622
    goto :goto_17

    .line 1623
    :cond_3b
    move-object v6, v10

    .line 1624
    move-object/from16 v0, v34

    .line 1625
    .line 1626
    move-object/from16 v2, v35

    .line 1627
    .line 1628
    move-object/from16 v5, v36

    .line 1629
    .line 1630
    const/16 v24, 0x1d

    .line 1631
    .line 1632
    goto/16 :goto_1a

    .line 1633
    .line 1634
    :sswitch_27
    move-object/from16 v10, v20

    .line 1635
    .line 1636
    move-object/from16 v8, v37

    .line 1637
    .line 1638
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v0

    .line 1642
    if-nez v0, :cond_3c

    .line 1643
    .line 1644
    goto :goto_18

    .line 1645
    :cond_3c
    move-object v6, v10

    .line 1646
    move-object/from16 v0, v34

    .line 1647
    .line 1648
    move-object/from16 v2, v35

    .line 1649
    .line 1650
    move-object/from16 v5, v36

    .line 1651
    .line 1652
    const/16 v24, 0x1c

    .line 1653
    .line 1654
    goto/16 :goto_1a

    .line 1655
    .line 1656
    :sswitch_28
    move-object/from16 v10, v20

    .line 1657
    .line 1658
    move-object/from16 v12, v36

    .line 1659
    .line 1660
    move-object/from16 v8, v37

    .line 1661
    .line 1662
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1663
    .line 1664
    .line 1665
    move-result v0

    .line 1666
    move-object v6, v10

    .line 1667
    move-object v5, v12

    .line 1668
    if-nez v0, :cond_3d

    .line 1669
    .line 1670
    move-object/from16 v0, v34

    .line 1671
    .line 1672
    move-object/from16 v2, v35

    .line 1673
    .line 1674
    goto/16 :goto_15

    .line 1675
    .line 1676
    :cond_3d
    move-object/from16 v0, v34

    .line 1677
    .line 1678
    move-object/from16 v2, v35

    .line 1679
    .line 1680
    const/16 v24, 0x1b

    .line 1681
    .line 1682
    goto/16 :goto_1a

    .line 1683
    .line 1684
    :sswitch_29
    move-object/from16 v10, v20

    .line 1685
    .line 1686
    move-object/from16 v13, v35

    .line 1687
    .line 1688
    move-object/from16 v12, v36

    .line 1689
    .line 1690
    move-object/from16 v8, v37

    .line 1691
    .line 1692
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    move-object v6, v10

    .line 1697
    move-object v5, v12

    .line 1698
    move-object v2, v13

    .line 1699
    if-nez v0, :cond_3e

    .line 1700
    .line 1701
    move-object/from16 v0, v34

    .line 1702
    .line 1703
    goto/16 :goto_15

    .line 1704
    .line 1705
    :cond_3e
    move-object/from16 v0, v34

    .line 1706
    .line 1707
    const/16 v24, 0x1a

    .line 1708
    .line 1709
    goto/16 :goto_1a

    .line 1710
    .line 1711
    :sswitch_2a
    move-object/from16 v10, v20

    .line 1712
    .line 1713
    move-object/from16 v2, v34

    .line 1714
    .line 1715
    move-object/from16 v13, v35

    .line 1716
    .line 1717
    move-object/from16 v12, v36

    .line 1718
    .line 1719
    move-object/from16 v8, v37

    .line 1720
    .line 1721
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1722
    .line 1723
    .line 1724
    move-result v0

    .line 1725
    if-nez v0, :cond_3f

    .line 1726
    .line 1727
    :goto_19
    move-object v0, v2

    .line 1728
    move-object v6, v10

    .line 1729
    move-object v5, v12

    .line 1730
    move-object v2, v13

    .line 1731
    goto/16 :goto_15

    .line 1732
    .line 1733
    :cond_3f
    move-object v0, v2

    .line 1734
    move-object v6, v10

    .line 1735
    move-object v5, v12

    .line 1736
    move-object v2, v13

    .line 1737
    const/16 v24, 0x19

    .line 1738
    .line 1739
    goto/16 :goto_1a

    .line 1740
    .line 1741
    :sswitch_2b
    move-object/from16 v10, v20

    .line 1742
    .line 1743
    move-object/from16 v2, v34

    .line 1744
    .line 1745
    move-object/from16 v13, v35

    .line 1746
    .line 1747
    move-object/from16 v12, v36

    .line 1748
    .line 1749
    move-object/from16 v8, v37

    .line 1750
    .line 1751
    const-string v0, "A_PCM/INT/LIT"

    .line 1752
    .line 1753
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v0

    .line 1757
    if-nez v0, :cond_40

    .line 1758
    .line 1759
    goto :goto_19

    .line 1760
    :cond_40
    move-object v0, v2

    .line 1761
    move-object v6, v10

    .line 1762
    move-object v5, v12

    .line 1763
    move-object v2, v13

    .line 1764
    const/16 v24, 0x18

    .line 1765
    .line 1766
    goto/16 :goto_1a

    .line 1767
    .line 1768
    :sswitch_2c
    move-object/from16 v10, v20

    .line 1769
    .line 1770
    move-object/from16 v2, v34

    .line 1771
    .line 1772
    move-object/from16 v13, v35

    .line 1773
    .line 1774
    move-object/from16 v12, v36

    .line 1775
    .line 1776
    move-object/from16 v8, v37

    .line 1777
    .line 1778
    const-string v0, "A_PCM/INT/BIG"

    .line 1779
    .line 1780
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v0

    .line 1784
    if-nez v0, :cond_41

    .line 1785
    .line 1786
    goto :goto_19

    .line 1787
    :cond_41
    const/16 v0, 0x17

    .line 1788
    .line 1789
    move-object v0, v2

    .line 1790
    move-object v6, v10

    .line 1791
    move-object v5, v12

    .line 1792
    move-object v2, v13

    .line 1793
    const/16 v24, 0x17

    .line 1794
    .line 1795
    goto/16 :goto_1a

    .line 1796
    .line 1797
    :sswitch_2d
    move-object/from16 v10, v20

    .line 1798
    .line 1799
    move-object/from16 v2, v34

    .line 1800
    .line 1801
    move-object/from16 v13, v35

    .line 1802
    .line 1803
    move-object/from16 v12, v36

    .line 1804
    .line 1805
    move-object/from16 v8, v37

    .line 1806
    .line 1807
    const-string v0, "A_PCM/FLOAT/IEEE"

    .line 1808
    .line 1809
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1810
    .line 1811
    .line 1812
    move-result v0

    .line 1813
    if-nez v0, :cond_42

    .line 1814
    .line 1815
    goto :goto_19

    .line 1816
    :cond_42
    const/16 v0, 0x16

    .line 1817
    .line 1818
    move-object v0, v2

    .line 1819
    move-object v6, v10

    .line 1820
    move-object v5, v12

    .line 1821
    move-object v2, v13

    .line 1822
    const/16 v24, 0x16

    .line 1823
    .line 1824
    goto/16 :goto_1a

    .line 1825
    .line 1826
    :sswitch_2e
    move-object/from16 v10, v20

    .line 1827
    .line 1828
    move-object/from16 v2, v34

    .line 1829
    .line 1830
    move-object/from16 v13, v35

    .line 1831
    .line 1832
    move-object/from16 v12, v36

    .line 1833
    .line 1834
    move-object/from16 v8, v37

    .line 1835
    .line 1836
    const-string v0, "A_DTS/EXPRESS"

    .line 1837
    .line 1838
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1839
    .line 1840
    .line 1841
    move-result v0

    .line 1842
    if-nez v0, :cond_43

    .line 1843
    .line 1844
    goto :goto_19

    .line 1845
    :cond_43
    const/16 v0, 0x15

    .line 1846
    .line 1847
    move-object v0, v2

    .line 1848
    move-object v6, v10

    .line 1849
    move-object v5, v12

    .line 1850
    move-object v2, v13

    .line 1851
    const/16 v24, 0x15

    .line 1852
    .line 1853
    goto/16 :goto_1a

    .line 1854
    .line 1855
    :sswitch_2f
    move-object/from16 v10, v20

    .line 1856
    .line 1857
    move-object/from16 v2, v34

    .line 1858
    .line 1859
    move-object/from16 v13, v35

    .line 1860
    .line 1861
    move-object/from16 v12, v36

    .line 1862
    .line 1863
    move-object/from16 v8, v37

    .line 1864
    .line 1865
    const-string v0, "V_THEORA"

    .line 1866
    .line 1867
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1868
    .line 1869
    .line 1870
    move-result v0

    .line 1871
    if-nez v0, :cond_44

    .line 1872
    .line 1873
    goto/16 :goto_19

    .line 1874
    .line 1875
    :cond_44
    move-object v0, v2

    .line 1876
    move-object v6, v10

    .line 1877
    move-object v5, v12

    .line 1878
    move-object v2, v13

    .line 1879
    const/16 v24, 0x14

    .line 1880
    .line 1881
    goto/16 :goto_1a

    .line 1882
    .line 1883
    :sswitch_30
    move-object/from16 v10, v20

    .line 1884
    .line 1885
    move-object/from16 v2, v34

    .line 1886
    .line 1887
    move-object/from16 v13, v35

    .line 1888
    .line 1889
    move-object/from16 v12, v36

    .line 1890
    .line 1891
    move-object/from16 v8, v37

    .line 1892
    .line 1893
    const-string v0, "S_HDMV/PGS"

    .line 1894
    .line 1895
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1896
    .line 1897
    .line 1898
    move-result v0

    .line 1899
    if-nez v0, :cond_45

    .line 1900
    .line 1901
    goto/16 :goto_19

    .line 1902
    .line 1903
    :cond_45
    const/16 v0, 0x13

    .line 1904
    .line 1905
    move-object v0, v2

    .line 1906
    move-object v6, v10

    .line 1907
    move-object v5, v12

    .line 1908
    move-object v2, v13

    .line 1909
    const/16 v24, 0x13

    .line 1910
    .line 1911
    goto/16 :goto_1a

    .line 1912
    .line 1913
    :sswitch_31
    move-object/from16 v10, v20

    .line 1914
    .line 1915
    move-object/from16 v2, v34

    .line 1916
    .line 1917
    move-object/from16 v13, v35

    .line 1918
    .line 1919
    move-object/from16 v12, v36

    .line 1920
    .line 1921
    move-object/from16 v8, v37

    .line 1922
    .line 1923
    const-string v0, "V_VP9"

    .line 1924
    .line 1925
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1926
    .line 1927
    .line 1928
    move-result v0

    .line 1929
    if-nez v0, :cond_46

    .line 1930
    .line 1931
    goto/16 :goto_19

    .line 1932
    .line 1933
    :cond_46
    const/16 v0, 0x12

    .line 1934
    .line 1935
    move-object v0, v2

    .line 1936
    move-object v6, v10

    .line 1937
    move-object v5, v12

    .line 1938
    move-object v2, v13

    .line 1939
    const/16 v24, 0x12

    .line 1940
    .line 1941
    goto/16 :goto_1a

    .line 1942
    .line 1943
    :sswitch_32
    move-object/from16 v10, v20

    .line 1944
    .line 1945
    move-object/from16 v2, v34

    .line 1946
    .line 1947
    move-object/from16 v13, v35

    .line 1948
    .line 1949
    move-object/from16 v12, v36

    .line 1950
    .line 1951
    move-object/from16 v8, v37

    .line 1952
    .line 1953
    const-string v0, "V_VP8"

    .line 1954
    .line 1955
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1956
    .line 1957
    .line 1958
    move-result v0

    .line 1959
    if-nez v0, :cond_47

    .line 1960
    .line 1961
    goto/16 :goto_19

    .line 1962
    .line 1963
    :cond_47
    const/16 v0, 0x11

    .line 1964
    .line 1965
    move-object v0, v2

    .line 1966
    move-object v6, v10

    .line 1967
    move-object v5, v12

    .line 1968
    move-object v2, v13

    .line 1969
    const/16 v24, 0x11

    .line 1970
    .line 1971
    goto/16 :goto_1a

    .line 1972
    .line 1973
    :sswitch_33
    move-object/from16 v10, v20

    .line 1974
    .line 1975
    move-object/from16 v2, v34

    .line 1976
    .line 1977
    move-object/from16 v13, v35

    .line 1978
    .line 1979
    move-object/from16 v12, v36

    .line 1980
    .line 1981
    move-object/from16 v8, v37

    .line 1982
    .line 1983
    const-string v0, "V_AV1"

    .line 1984
    .line 1985
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v0

    .line 1989
    if-nez v0, :cond_48

    .line 1990
    .line 1991
    goto/16 :goto_19

    .line 1992
    .line 1993
    :cond_48
    move-object v0, v2

    .line 1994
    move-object v6, v10

    .line 1995
    move-object v5, v12

    .line 1996
    move-object v2, v13

    .line 1997
    const/16 v24, 0x10

    .line 1998
    .line 1999
    goto/16 :goto_1a

    .line 2000
    .line 2001
    :sswitch_34
    move-object/from16 v10, v20

    .line 2002
    .line 2003
    move-object/from16 v2, v34

    .line 2004
    .line 2005
    move-object/from16 v13, v35

    .line 2006
    .line 2007
    move-object/from16 v12, v36

    .line 2008
    .line 2009
    move-object/from16 v8, v37

    .line 2010
    .line 2011
    const-string v0, "A_DTS"

    .line 2012
    .line 2013
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2014
    .line 2015
    .line 2016
    move-result v0

    .line 2017
    if-nez v0, :cond_49

    .line 2018
    .line 2019
    goto/16 :goto_19

    .line 2020
    .line 2021
    :cond_49
    move-object v0, v2

    .line 2022
    move-object v6, v10

    .line 2023
    move-object v5, v12

    .line 2024
    move-object v2, v13

    .line 2025
    const/16 v24, 0xf

    .line 2026
    .line 2027
    goto/16 :goto_1a

    .line 2028
    .line 2029
    :sswitch_35
    move-object/from16 v10, v20

    .line 2030
    .line 2031
    move-object/from16 v2, v34

    .line 2032
    .line 2033
    move-object/from16 v13, v35

    .line 2034
    .line 2035
    move-object/from16 v12, v36

    .line 2036
    .line 2037
    move-object/from16 v8, v37

    .line 2038
    .line 2039
    const-string v0, "A_AC3"

    .line 2040
    .line 2041
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v0

    .line 2045
    if-nez v0, :cond_4a

    .line 2046
    .line 2047
    goto/16 :goto_19

    .line 2048
    .line 2049
    :cond_4a
    const/16 v0, 0xe

    .line 2050
    .line 2051
    move-object v0, v2

    .line 2052
    move-object v6, v10

    .line 2053
    move-object v5, v12

    .line 2054
    move-object v2, v13

    .line 2055
    const/16 v24, 0xe

    .line 2056
    .line 2057
    goto/16 :goto_1a

    .line 2058
    .line 2059
    :sswitch_36
    move-object/from16 v10, v20

    .line 2060
    .line 2061
    move-object/from16 v2, v34

    .line 2062
    .line 2063
    move-object/from16 v13, v35

    .line 2064
    .line 2065
    move-object/from16 v12, v36

    .line 2066
    .line 2067
    move-object/from16 v8, v37

    .line 2068
    .line 2069
    const-string v0, "A_AAC"

    .line 2070
    .line 2071
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2072
    .line 2073
    .line 2074
    move-result v0

    .line 2075
    if-nez v0, :cond_4b

    .line 2076
    .line 2077
    goto/16 :goto_19

    .line 2078
    .line 2079
    :cond_4b
    const/16 v0, 0xd

    .line 2080
    .line 2081
    move-object v0, v2

    .line 2082
    move-object v6, v10

    .line 2083
    move-object v5, v12

    .line 2084
    move-object v2, v13

    .line 2085
    const/16 v24, 0xd

    .line 2086
    .line 2087
    goto/16 :goto_1a

    .line 2088
    .line 2089
    :sswitch_37
    move-object/from16 v10, v20

    .line 2090
    .line 2091
    move-object/from16 v2, v34

    .line 2092
    .line 2093
    move-object/from16 v13, v35

    .line 2094
    .line 2095
    move-object/from16 v12, v36

    .line 2096
    .line 2097
    move-object/from16 v8, v37

    .line 2098
    .line 2099
    const-string v0, "A_DTS/LOSSLESS"

    .line 2100
    .line 2101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2102
    .line 2103
    .line 2104
    move-result v0

    .line 2105
    if-nez v0, :cond_4c

    .line 2106
    .line 2107
    goto/16 :goto_19

    .line 2108
    .line 2109
    :cond_4c
    const/16 v0, 0xc

    .line 2110
    .line 2111
    move-object v0, v2

    .line 2112
    move-object v6, v10

    .line 2113
    move-object v5, v12

    .line 2114
    move-object v2, v13

    .line 2115
    const/16 v24, 0xc

    .line 2116
    .line 2117
    goto/16 :goto_1a

    .line 2118
    .line 2119
    :sswitch_38
    move-object/from16 v10, v20

    .line 2120
    .line 2121
    move-object/from16 v2, v34

    .line 2122
    .line 2123
    move-object/from16 v13, v35

    .line 2124
    .line 2125
    move-object/from16 v12, v36

    .line 2126
    .line 2127
    move-object/from16 v8, v37

    .line 2128
    .line 2129
    const-string v0, "S_VOBSUB"

    .line 2130
    .line 2131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2132
    .line 2133
    .line 2134
    move-result v0

    .line 2135
    if-nez v0, :cond_4d

    .line 2136
    .line 2137
    goto/16 :goto_19

    .line 2138
    .line 2139
    :cond_4d
    const/16 v0, 0xb

    .line 2140
    .line 2141
    move-object v0, v2

    .line 2142
    move-object v6, v10

    .line 2143
    move-object v5, v12

    .line 2144
    move-object v2, v13

    .line 2145
    const/16 v24, 0xb

    .line 2146
    .line 2147
    goto/16 :goto_1a

    .line 2148
    .line 2149
    :sswitch_39
    move-object/from16 v10, v20

    .line 2150
    .line 2151
    move-object/from16 v2, v34

    .line 2152
    .line 2153
    move-object/from16 v13, v35

    .line 2154
    .line 2155
    move-object/from16 v12, v36

    .line 2156
    .line 2157
    move-object/from16 v8, v37

    .line 2158
    .line 2159
    const-string v0, "V_MPEG4/ISO/AVC"

    .line 2160
    .line 2161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2162
    .line 2163
    .line 2164
    move-result v0

    .line 2165
    if-nez v0, :cond_4e

    .line 2166
    .line 2167
    goto/16 :goto_19

    .line 2168
    .line 2169
    :cond_4e
    const/16 v0, 0xa

    .line 2170
    .line 2171
    move-object v0, v2

    .line 2172
    move-object v6, v10

    .line 2173
    move-object v5, v12

    .line 2174
    move-object v2, v13

    .line 2175
    const/16 v24, 0xa

    .line 2176
    .line 2177
    goto/16 :goto_1a

    .line 2178
    .line 2179
    :sswitch_3a
    move-object/from16 v10, v20

    .line 2180
    .line 2181
    move-object/from16 v2, v34

    .line 2182
    .line 2183
    move-object/from16 v13, v35

    .line 2184
    .line 2185
    move-object/from16 v12, v36

    .line 2186
    .line 2187
    move-object/from16 v8, v37

    .line 2188
    .line 2189
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2190
    .line 2191
    .line 2192
    move-result v0

    .line 2193
    if-nez v0, :cond_4f

    .line 2194
    .line 2195
    goto/16 :goto_19

    .line 2196
    .line 2197
    :cond_4f
    const/16 v0, 0x9

    .line 2198
    .line 2199
    move-object v0, v2

    .line 2200
    move-object v6, v10

    .line 2201
    move-object v5, v12

    .line 2202
    move-object v2, v13

    .line 2203
    const/16 v24, 0x9

    .line 2204
    .line 2205
    goto/16 :goto_1a

    .line 2206
    .line 2207
    :sswitch_3b
    move-object/from16 v10, v20

    .line 2208
    .line 2209
    move-object/from16 v2, v34

    .line 2210
    .line 2211
    move-object/from16 v13, v35

    .line 2212
    .line 2213
    move-object/from16 v12, v36

    .line 2214
    .line 2215
    move-object/from16 v8, v37

    .line 2216
    .line 2217
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2218
    .line 2219
    .line 2220
    move-result v0

    .line 2221
    if-nez v0, :cond_50

    .line 2222
    .line 2223
    goto/16 :goto_19

    .line 2224
    .line 2225
    :cond_50
    move-object v0, v2

    .line 2226
    move-object v6, v10

    .line 2227
    move-object v5, v12

    .line 2228
    move-object v2, v13

    .line 2229
    const/16 v24, 0x8

    .line 2230
    .line 2231
    goto/16 :goto_1a

    .line 2232
    .line 2233
    :sswitch_3c
    move-object/from16 v10, v20

    .line 2234
    .line 2235
    move-object/from16 v2, v34

    .line 2236
    .line 2237
    move-object/from16 v13, v35

    .line 2238
    .line 2239
    move-object/from16 v12, v36

    .line 2240
    .line 2241
    move-object/from16 v8, v37

    .line 2242
    .line 2243
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2244
    .line 2245
    .line 2246
    move-result v0

    .line 2247
    if-nez v0, :cond_51

    .line 2248
    .line 2249
    goto/16 :goto_19

    .line 2250
    .line 2251
    :cond_51
    move-object v0, v2

    .line 2252
    move-object v6, v10

    .line 2253
    move-object v5, v12

    .line 2254
    move-object v2, v13

    .line 2255
    const/16 v24, 0x7

    .line 2256
    .line 2257
    goto/16 :goto_1a

    .line 2258
    .line 2259
    :sswitch_3d
    move-object/from16 v10, v20

    .line 2260
    .line 2261
    move-object/from16 v2, v34

    .line 2262
    .line 2263
    move-object/from16 v13, v35

    .line 2264
    .line 2265
    move-object/from16 v12, v36

    .line 2266
    .line 2267
    move-object/from16 v8, v37

    .line 2268
    .line 2269
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2270
    .line 2271
    .line 2272
    move-result v0

    .line 2273
    if-nez v0, :cond_52

    .line 2274
    .line 2275
    goto/16 :goto_19

    .line 2276
    .line 2277
    :cond_52
    move-object v0, v2

    .line 2278
    move-object v6, v10

    .line 2279
    move-object v5, v12

    .line 2280
    move-object v2, v13

    .line 2281
    const/16 v24, 0x6

    .line 2282
    .line 2283
    goto/16 :goto_1a

    .line 2284
    .line 2285
    :sswitch_3e
    move-object/from16 v10, v20

    .line 2286
    .line 2287
    move-object/from16 v2, v34

    .line 2288
    .line 2289
    move-object/from16 v13, v35

    .line 2290
    .line 2291
    move-object/from16 v12, v36

    .line 2292
    .line 2293
    move-object/from16 v8, v37

    .line 2294
    .line 2295
    const-string v0, "A_MPEG/L2"

    .line 2296
    .line 2297
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2298
    .line 2299
    .line 2300
    move-result v0

    .line 2301
    if-nez v0, :cond_53

    .line 2302
    .line 2303
    goto/16 :goto_19

    .line 2304
    .line 2305
    :cond_53
    move-object v0, v2

    .line 2306
    move-object v6, v10

    .line 2307
    move-object v5, v12

    .line 2308
    move-object v2, v13

    .line 2309
    const/16 v24, 0x5

    .line 2310
    .line 2311
    goto/16 :goto_1a

    .line 2312
    .line 2313
    :sswitch_3f
    move-object/from16 v10, v20

    .line 2314
    .line 2315
    move-object/from16 v2, v34

    .line 2316
    .line 2317
    move-object/from16 v13, v35

    .line 2318
    .line 2319
    move-object/from16 v12, v36

    .line 2320
    .line 2321
    move-object/from16 v8, v37

    .line 2322
    .line 2323
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2324
    .line 2325
    .line 2326
    move-result v0

    .line 2327
    if-nez v0, :cond_54

    .line 2328
    .line 2329
    goto/16 :goto_19

    .line 2330
    .line 2331
    :cond_54
    move-object v0, v2

    .line 2332
    move-object v6, v10

    .line 2333
    move-object v5, v12

    .line 2334
    move-object v2, v13

    .line 2335
    const/16 v24, 0x4

    .line 2336
    .line 2337
    goto/16 :goto_1a

    .line 2338
    .line 2339
    :sswitch_40
    move-object/from16 v10, v20

    .line 2340
    .line 2341
    move-object/from16 v0, v34

    .line 2342
    .line 2343
    move-object/from16 v13, v35

    .line 2344
    .line 2345
    move-object/from16 v12, v36

    .line 2346
    .line 2347
    move-object/from16 v8, v37

    .line 2348
    .line 2349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2350
    .line 2351
    .line 2352
    move-result v1

    .line 2353
    move-object v6, v10

    .line 2354
    move-object v5, v12

    .line 2355
    move-object v2, v13

    .line 2356
    if-nez v1, :cond_55

    .line 2357
    .line 2358
    goto/16 :goto_15

    .line 2359
    .line 2360
    :cond_55
    const/16 v24, 0x3

    .line 2361
    .line 2362
    goto :goto_1a

    .line 2363
    :sswitch_41
    move-object/from16 v10, v20

    .line 2364
    .line 2365
    move-object/from16 v0, v34

    .line 2366
    .line 2367
    move-object/from16 v2, v35

    .line 2368
    .line 2369
    move-object/from16 v12, v36

    .line 2370
    .line 2371
    move-object/from16 v8, v37

    .line 2372
    .line 2373
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2374
    .line 2375
    .line 2376
    move-result v1

    .line 2377
    move-object v6, v10

    .line 2378
    move-object v5, v12

    .line 2379
    if-nez v1, :cond_56

    .line 2380
    .line 2381
    goto/16 :goto_15

    .line 2382
    .line 2383
    :cond_56
    const/16 v24, 0x2

    .line 2384
    .line 2385
    goto :goto_1a

    .line 2386
    :sswitch_42
    move-object/from16 v10, v20

    .line 2387
    .line 2388
    move-object/from16 v0, v34

    .line 2389
    .line 2390
    move-object/from16 v2, v35

    .line 2391
    .line 2392
    move-object/from16 v5, v36

    .line 2393
    .line 2394
    move-object/from16 v8, v37

    .line 2395
    .line 2396
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2397
    .line 2398
    .line 2399
    move-result v1

    .line 2400
    move-object v6, v10

    .line 2401
    if-nez v1, :cond_57

    .line 2402
    .line 2403
    goto/16 :goto_15

    .line 2404
    .line 2405
    :cond_57
    const/16 v24, 0x1

    .line 2406
    .line 2407
    goto :goto_1a

    .line 2408
    :sswitch_43
    move-object/from16 v6, v20

    .line 2409
    .line 2410
    move-object/from16 v0, v34

    .line 2411
    .line 2412
    move-object/from16 v2, v35

    .line 2413
    .line 2414
    move-object/from16 v5, v36

    .line 2415
    .line 2416
    move-object/from16 v8, v37

    .line 2417
    .line 2418
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2419
    .line 2420
    .line 2421
    move-result v1

    .line 2422
    if-nez v1, :cond_58

    .line 2423
    .line 2424
    goto/16 :goto_15

    .line 2425
    .line 2426
    :cond_58
    const/16 v24, 0x0

    .line 2427
    .line 2428
    :goto_1a
    const-string v1, "application/x-subrip"

    .line 2429
    .line 2430
    const-string v7, ". Setting mimeType to audio/x-unknown"

    .line 2431
    .line 2432
    const-string v10, "audio/raw"

    .line 2433
    .line 2434
    const-string v12, "audio/x-unknown"

    .line 2435
    .line 2436
    packed-switch v24, :pswitch_data_1

    .line 2437
    .line 2438
    .line 2439
    const-string v0, "Unrecognized codec identifier."

    .line 2440
    .line 2441
    const/4 v1, 0x0

    .line 2442
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v0

    .line 2446
    throw v0

    .line 2447
    :pswitch_1
    new-instance v7, Ljava/util/ArrayList;

    .line 2448
    .line 2449
    const/4 v9, 0x3

    .line 2450
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2451
    .line 2452
    .line 2453
    iget-object v9, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2454
    .line 2455
    invoke-virtual {v4, v9}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2456
    .line 2457
    .line 2458
    move-result-object v9

    .line 2459
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    .line 2461
    .line 2462
    const/16 v9, 0x8

    .line 2463
    .line 2464
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v10

    .line 2468
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2469
    .line 2470
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v10

    .line 2474
    iget-wide v13, v4, Lm1/c;->T:J

    .line 2475
    .line 2476
    invoke-virtual {v10, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v10

    .line 2480
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 2481
    .line 2482
    .line 2483
    move-result-object v10

    .line 2484
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2485
    .line 2486
    .line 2487
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v9

    .line 2491
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v9

    .line 2495
    iget-wide v12, v4, Lm1/c;->U:J

    .line 2496
    .line 2497
    invoke-virtual {v9, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2498
    .line 2499
    .line 2500
    move-result-object v9

    .line 2501
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    .line 2502
    .line 2503
    .line 2504
    move-result-object v9

    .line 2505
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    .line 2507
    .line 2508
    const-string v10, "audio/opus"

    .line 2509
    .line 2510
    const/16 v9, 0x1680

    .line 2511
    .line 2512
    move-object/from16 v34, v0

    .line 2513
    .line 2514
    const/4 v0, -0x1

    .line 2515
    const/4 v9, 0x0

    .line 2516
    const/16 v12, 0x1680

    .line 2517
    .line 2518
    goto/16 :goto_33

    .line 2519
    .line 2520
    :pswitch_2
    iget-object v7, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2521
    .line 2522
    invoke-virtual {v4, v7}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2523
    .line 2524
    .line 2525
    move-result-object v7

    .line 2526
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v7

    .line 2530
    const-string v10, "audio/flac"

    .line 2531
    .line 2532
    :goto_1b
    move-object/from16 v34, v0

    .line 2533
    .line 2534
    :goto_1c
    const/4 v0, -0x1

    .line 2535
    :goto_1d
    const/4 v9, 0x0

    .line 2536
    :goto_1e
    const/4 v12, -0x1

    .line 2537
    goto/16 :goto_33

    .line 2538
    .line 2539
    :pswitch_3
    const-string v10, "audio/eac3"

    .line 2540
    .line 2541
    :goto_1f
    move-object/from16 v34, v0

    .line 2542
    .line 2543
    :goto_20
    const/4 v0, -0x1

    .line 2544
    :cond_59
    :goto_21
    const/4 v7, 0x0

    .line 2545
    goto :goto_1d

    .line 2546
    :pswitch_4
    const-string v10, "video/mpeg2"

    .line 2547
    .line 2548
    goto :goto_1f

    .line 2549
    :pswitch_5
    move-object/from16 v34, v0

    .line 2550
    .line 2551
    move-object v10, v1

    .line 2552
    goto :goto_20

    .line 2553
    :pswitch_6
    const-string v10, "text/vtt"

    .line 2554
    .line 2555
    goto :goto_1f

    .line 2556
    :pswitch_7
    new-instance v7, Lp0/E;

    .line 2557
    .line 2558
    iget-object v9, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2559
    .line 2560
    invoke-virtual {v4, v9}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2561
    .line 2562
    .line 2563
    move-result-object v9

    .line 2564
    invoke-direct {v7, v9}, Lp0/E;-><init>([B)V

    .line 2565
    .line 2566
    .line 2567
    const/4 v9, 0x0

    .line 2568
    const/4 v10, 0x0

    .line 2569
    invoke-static {v7, v9, v10}, LW0/B;->a(Lp0/E;ZLq0/m;)LW0/B;

    .line 2570
    .line 2571
    .line 2572
    move-result-object v7

    .line 2573
    iget v9, v7, LW0/B;->b:I

    .line 2574
    .line 2575
    iput v9, v4, Lm1/c;->a0:I

    .line 2576
    .line 2577
    const-string v10, "video/hevc"

    .line 2578
    .line 2579
    iget-object v9, v7, LW0/B;->a:Ljava/util/List;

    .line 2580
    .line 2581
    iget-object v7, v7, LW0/B;->n:Ljava/lang/String;

    .line 2582
    .line 2583
    :goto_22
    move-object/from16 v34, v0

    .line 2584
    .line 2585
    const/4 v0, -0x1

    .line 2586
    const/4 v12, -0x1

    .line 2587
    move-object/from16 v46, v9

    .line 2588
    .line 2589
    move-object v9, v7

    .line 2590
    move-object/from16 v7, v46

    .line 2591
    .line 2592
    goto/16 :goto_33

    .line 2593
    .line 2594
    :pswitch_8
    iget-object v7, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2595
    .line 2596
    invoke-virtual {v4, v7}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2597
    .line 2598
    .line 2599
    move-result-object v7

    .line 2600
    sget-object v9, Lm1/d;->g0:[B

    .line 2601
    .line 2602
    invoke-static {v9, v7}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 2603
    .line 2604
    .line 2605
    move-result-object v7

    .line 2606
    const-string v10, "text/x-ssa"

    .line 2607
    .line 2608
    goto :goto_1b

    .line 2609
    :pswitch_9
    iget v9, v4, Lm1/c;->R:I

    .line 2610
    .line 2611
    sget-object v13, Lp0/M;->a:Ljava/lang/String;

    .line 2612
    .line 2613
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2614
    .line 2615
    invoke-static {v9, v13}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 2616
    .line 2617
    .line 2618
    move-result v9

    .line 2619
    if-nez v9, :cond_5a

    .line 2620
    .line 2621
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2622
    .line 2623
    const-string v10, "Unsupported little endian PCM bit depth: "

    .line 2624
    .line 2625
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2626
    .line 2627
    .line 2628
    iget v10, v4, Lm1/c;->R:I

    .line 2629
    .line 2630
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2631
    .line 2632
    .line 2633
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v7

    .line 2640
    move-object/from16 v13, v28

    .line 2641
    .line 2642
    invoke-static {v13, v7}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    .line 2644
    .line 2645
    :goto_23
    move-object/from16 v34, v0

    .line 2646
    .line 2647
    :goto_24
    move-object v10, v12

    .line 2648
    goto :goto_20

    .line 2649
    :cond_5a
    move-object/from16 v34, v0

    .line 2650
    .line 2651
    move v0, v9

    .line 2652
    goto :goto_21

    .line 2653
    :pswitch_a
    move-object/from16 v13, v28

    .line 2654
    .line 2655
    iget v14, v4, Lm1/c;->R:I

    .line 2656
    .line 2657
    const/16 v9, 0x8

    .line 2658
    .line 2659
    if-ne v14, v9, :cond_5b

    .line 2660
    .line 2661
    move-object/from16 v34, v0

    .line 2662
    .line 2663
    const/4 v0, 0x3

    .line 2664
    goto :goto_21

    .line 2665
    :cond_5b
    const/16 v9, 0x10

    .line 2666
    .line 2667
    if-ne v14, v9, :cond_5c

    .line 2668
    .line 2669
    const/high16 v7, 0x10000000

    .line 2670
    .line 2671
    move-object/from16 v34, v0

    .line 2672
    .line 2673
    const/high16 v0, 0x10000000

    .line 2674
    .line 2675
    goto/16 :goto_21

    .line 2676
    .line 2677
    :cond_5c
    const/16 v9, 0x18

    .line 2678
    .line 2679
    if-ne v14, v9, :cond_5d

    .line 2680
    .line 2681
    const/high16 v7, 0x50000000

    .line 2682
    .line 2683
    move-object/from16 v34, v0

    .line 2684
    .line 2685
    const/high16 v0, 0x50000000

    .line 2686
    .line 2687
    goto/16 :goto_21

    .line 2688
    .line 2689
    :cond_5d
    const/16 v9, 0x20

    .line 2690
    .line 2691
    if-ne v14, v9, :cond_5e

    .line 2692
    .line 2693
    const/high16 v7, 0x60000000

    .line 2694
    .line 2695
    move-object/from16 v34, v0

    .line 2696
    .line 2697
    const/high16 v0, 0x60000000

    .line 2698
    .line 2699
    goto/16 :goto_21

    .line 2700
    .line 2701
    :cond_5e
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2702
    .line 2703
    const-string v10, "Unsupported big endian PCM bit depth: "

    .line 2704
    .line 2705
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2706
    .line 2707
    .line 2708
    iget v10, v4, Lm1/c;->R:I

    .line 2709
    .line 2710
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2711
    .line 2712
    .line 2713
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2714
    .line 2715
    .line 2716
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v7

    .line 2720
    invoke-static {v13, v7}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    .line 2722
    .line 2723
    goto :goto_23

    .line 2724
    :pswitch_b
    move-object/from16 v13, v28

    .line 2725
    .line 2726
    iget v9, v4, Lm1/c;->R:I

    .line 2727
    .line 2728
    const/16 v14, 0x20

    .line 2729
    .line 2730
    if-ne v9, v14, :cond_5f

    .line 2731
    .line 2732
    move-object/from16 v34, v0

    .line 2733
    .line 2734
    const/4 v0, 0x4

    .line 2735
    goto/16 :goto_21

    .line 2736
    .line 2737
    :cond_5f
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2738
    .line 2739
    const-string v10, "Unsupported floating point PCM bit depth: "

    .line 2740
    .line 2741
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2742
    .line 2743
    .line 2744
    iget v10, v4, Lm1/c;->R:I

    .line 2745
    .line 2746
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2747
    .line 2748
    .line 2749
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    .line 2751
    .line 2752
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v7

    .line 2756
    invoke-static {v13, v7}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    .line 2758
    .line 2759
    goto :goto_23

    .line 2760
    :pswitch_c
    const/16 v14, 0x20

    .line 2761
    .line 2762
    const-string v10, "video/x-unknown"

    .line 2763
    .line 2764
    goto/16 :goto_1f

    .line 2765
    .line 2766
    :pswitch_d
    const/16 v14, 0x20

    .line 2767
    .line 2768
    const-string v10, "application/pgs"

    .line 2769
    .line 2770
    goto/16 :goto_1f

    .line 2771
    .line 2772
    :pswitch_e
    const/16 v14, 0x20

    .line 2773
    .line 2774
    iget-object v7, v4, Lm1/c;->l:[B

    .line 2775
    .line 2776
    if-nez v7, :cond_60

    .line 2777
    .line 2778
    const/4 v7, 0x0

    .line 2779
    goto :goto_25

    .line 2780
    :cond_60
    invoke-static {v7}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2781
    .line 2782
    .line 2783
    move-result-object v7

    .line 2784
    :goto_25
    const-string v10, "video/x-vnd.on2.vp9"

    .line 2785
    .line 2786
    goto/16 :goto_1b

    .line 2787
    .line 2788
    :pswitch_f
    const/16 v14, 0x20

    .line 2789
    .line 2790
    const-string v10, "video/x-vnd.on2.vp8"

    .line 2791
    .line 2792
    goto/16 :goto_1f

    .line 2793
    .line 2794
    :pswitch_10
    const/16 v14, 0x20

    .line 2795
    .line 2796
    iget-object v7, v4, Lm1/c;->l:[B

    .line 2797
    .line 2798
    if-nez v7, :cond_61

    .line 2799
    .line 2800
    const/4 v7, 0x0

    .line 2801
    goto :goto_26

    .line 2802
    :cond_61
    invoke-static {v7}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2803
    .line 2804
    .line 2805
    move-result-object v7

    .line 2806
    :goto_26
    const-string v10, "video/av01"

    .line 2807
    .line 2808
    goto/16 :goto_1b

    .line 2809
    .line 2810
    :pswitch_11
    const/16 v14, 0x20

    .line 2811
    .line 2812
    const-string v10, "audio/vnd.dts"

    .line 2813
    .line 2814
    goto/16 :goto_1f

    .line 2815
    .line 2816
    :pswitch_12
    const/16 v14, 0x20

    .line 2817
    .line 2818
    const-string v10, "audio/ac3"

    .line 2819
    .line 2820
    goto/16 :goto_1f

    .line 2821
    .line 2822
    :pswitch_13
    const/16 v14, 0x20

    .line 2823
    .line 2824
    iget-object v7, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2825
    .line 2826
    invoke-virtual {v4, v7}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2827
    .line 2828
    .line 2829
    move-result-object v7

    .line 2830
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2831
    .line 2832
    .line 2833
    move-result-object v7

    .line 2834
    iget-object v9, v4, Lm1/c;->l:[B

    .line 2835
    .line 2836
    new-instance v10, Lp0/D;

    .line 2837
    .line 2838
    const/4 v12, 0x0

    .line 2839
    const/4 v13, 0x0

    .line 2840
    invoke-direct {v10, v9, v12, v13}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 2841
    .line 2842
    .line 2843
    invoke-static {v10, v12}, LW0/a;->g(Lp0/D;Z)LW0/r;

    .line 2844
    .line 2845
    .line 2846
    move-result-object v9

    .line 2847
    iget v10, v9, LW0/r;->b:I

    .line 2848
    .line 2849
    iput v10, v4, Lm1/c;->S:I

    .line 2850
    .line 2851
    iget v10, v9, LW0/r;->c:I

    .line 2852
    .line 2853
    iput v10, v4, Lm1/c;->Q:I

    .line 2854
    .line 2855
    const-string v10, "audio/mp4a-latm"

    .line 2856
    .line 2857
    iget-object v9, v9, LW0/r;->a:Ljava/lang/String;

    .line 2858
    .line 2859
    move-object/from16 v34, v0

    .line 2860
    .line 2861
    const/4 v0, -0x1

    .line 2862
    goto/16 :goto_1e

    .line 2863
    .line 2864
    :pswitch_14
    const/16 v14, 0x20

    .line 2865
    .line 2866
    const-string v10, "audio/vnd.dts.hd"

    .line 2867
    .line 2868
    goto/16 :goto_1f

    .line 2869
    .line 2870
    :pswitch_15
    const/16 v14, 0x20

    .line 2871
    .line 2872
    iget-object v7, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2873
    .line 2874
    invoke-virtual {v4, v7}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2875
    .line 2876
    .line 2877
    move-result-object v7

    .line 2878
    invoke-static {v7}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2879
    .line 2880
    .line 2881
    move-result-object v7

    .line 2882
    const-string v10, "application/vobsub"

    .line 2883
    .line 2884
    goto/16 :goto_1b

    .line 2885
    .line 2886
    :pswitch_16
    const/16 v14, 0x20

    .line 2887
    .line 2888
    new-instance v7, Lp0/E;

    .line 2889
    .line 2890
    iget-object v9, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2891
    .line 2892
    invoke-virtual {v4, v9}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2893
    .line 2894
    .line 2895
    move-result-object v9

    .line 2896
    invoke-direct {v7, v9}, Lp0/E;-><init>([B)V

    .line 2897
    .line 2898
    .line 2899
    invoke-static {v7}, LW0/e;->a(Lp0/E;)LW0/e;

    .line 2900
    .line 2901
    .line 2902
    move-result-object v7

    .line 2903
    iget v9, v7, LW0/e;->b:I

    .line 2904
    .line 2905
    iput v9, v4, Lm1/c;->a0:I

    .line 2906
    .line 2907
    const-string v10, "video/avc"

    .line 2908
    .line 2909
    iget-object v9, v7, LW0/e;->a:Ljava/util/List;

    .line 2910
    .line 2911
    iget-object v7, v7, LW0/e;->l:Ljava/lang/String;

    .line 2912
    .line 2913
    goto/16 :goto_22

    .line 2914
    .line 2915
    :pswitch_17
    const/4 v7, 0x4

    .line 2916
    const/16 v14, 0x20

    .line 2917
    .line 2918
    new-array v9, v7, [B

    .line 2919
    .line 2920
    iget-object v10, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2921
    .line 2922
    invoke-virtual {v4, v10}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2923
    .line 2924
    .line 2925
    move-result-object v10

    .line 2926
    const/4 v12, 0x0

    .line 2927
    invoke-static {v10, v12, v9, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2928
    .line 2929
    .line 2930
    invoke-static {v9}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2931
    .line 2932
    .line 2933
    move-result-object v7

    .line 2934
    const-string v10, "application/dvbsubs"

    .line 2935
    .line 2936
    goto/16 :goto_1b

    .line 2937
    .line 2938
    :pswitch_18
    move-object/from16 v13, v28

    .line 2939
    .line 2940
    const/16 v14, 0x20

    .line 2941
    .line 2942
    new-instance v7, Lp0/E;

    .line 2943
    .line 2944
    iget-object v9, v4, Lm1/c;->c:Ljava/lang/String;

    .line 2945
    .line 2946
    invoke-virtual {v4, v9}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 2947
    .line 2948
    .line 2949
    move-result-object v9

    .line 2950
    invoke-direct {v7, v9}, Lp0/E;-><init>([B)V

    .line 2951
    .line 2952
    .line 2953
    const/16 v9, 0x10

    .line 2954
    .line 2955
    :try_start_0
    invoke-virtual {v7, v9}, Lp0/E;->M(I)V

    .line 2956
    .line 2957
    .line 2958
    invoke-virtual {v7}, Lp0/E;->q()J

    .line 2959
    .line 2960
    .line 2961
    move-result-wide v9

    .line 2962
    const-wide/32 v18, 0x58564944

    .line 2963
    .line 2964
    .line 2965
    cmp-long v12, v9, v18

    .line 2966
    .line 2967
    if-nez v12, :cond_62

    .line 2968
    .line 2969
    new-instance v7, Landroid/util/Pair;

    .line 2970
    .line 2971
    const-string v9, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2972
    .line 2973
    const/4 v10, 0x0

    .line 2974
    :try_start_1
    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2975
    .line 2976
    .line 2977
    :goto_27
    const/4 v10, 0x0

    .line 2978
    goto/16 :goto_2b

    .line 2979
    .line 2980
    :catch_0
    const/4 v10, 0x0

    .line 2981
    goto/16 :goto_2c

    .line 2982
    .line 2983
    :cond_62
    const-wide/32 v18, 0x33363248

    .line 2984
    .line 2985
    .line 2986
    cmp-long v12, v9, v18

    .line 2987
    .line 2988
    if-nez v12, :cond_63

    .line 2989
    .line 2990
    :try_start_2
    new-instance v7, Landroid/util/Pair;

    .line 2991
    .line 2992
    const-string v9, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2993
    .line 2994
    const/4 v10, 0x0

    .line 2995
    :try_start_3
    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2996
    .line 2997
    .line 2998
    goto :goto_27

    .line 2999
    :cond_63
    const-wide/32 v18, 0x31435657

    .line 3000
    .line 3001
    .line 3002
    cmp-long v12, v9, v18

    .line 3003
    .line 3004
    if-nez v12, :cond_68

    .line 3005
    .line 3006
    :try_start_4
    iget v9, v7, Lp0/E;->b:I

    .line 3007
    .line 3008
    add-int/lit8 v9, v9, 0x14

    .line 3009
    .line 3010
    iget-object v7, v7, Lp0/E;->a:[B

    .line 3011
    .line 3012
    :goto_28
    array-length v10, v7

    .line 3013
    const/4 v12, 0x4

    .line 3014
    sub-int/2addr v10, v12

    .line 3015
    if-ge v9, v10, :cond_67

    .line 3016
    .line 3017
    aget-byte v10, v7, v9

    .line 3018
    .line 3019
    if-nez v10, :cond_66

    .line 3020
    .line 3021
    const/4 v10, 0x1

    .line 3022
    add-int/lit8 v12, v9, 0x1

    .line 3023
    .line 3024
    aget-byte v12, v7, v12

    .line 3025
    .line 3026
    if-nez v12, :cond_65

    .line 3027
    .line 3028
    const/4 v12, 0x2

    .line 3029
    add-int/lit8 v13, v9, 0x2

    .line 3030
    .line 3031
    aget-byte v12, v7, v13

    .line 3032
    .line 3033
    if-ne v12, v10, :cond_65

    .line 3034
    .line 3035
    const/4 v10, 0x3

    .line 3036
    add-int/lit8 v12, v9, 0x3

    .line 3037
    .line 3038
    aget-byte v10, v7, v12

    .line 3039
    .line 3040
    const/16 v12, 0xf

    .line 3041
    .line 3042
    if-ne v10, v12, :cond_64

    .line 3043
    .line 3044
    array-length v10, v7

    .line 3045
    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 3046
    .line 3047
    .line 3048
    move-result-object v7

    .line 3049
    new-instance v9, Landroid/util/Pair;

    .line 3050
    .line 3051
    const-string v10, "video/wvc1"

    .line 3052
    .line 3053
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 3054
    .line 3055
    .line 3056
    move-result-object v7

    .line 3057
    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3058
    .line 3059
    .line 3060
    move-object v7, v9

    .line 3061
    goto :goto_27

    .line 3062
    :cond_64
    :goto_29
    const/4 v10, 0x1

    .line 3063
    goto :goto_2a

    .line 3064
    :cond_65
    const/16 v12, 0xf

    .line 3065
    .line 3066
    goto :goto_2a

    .line 3067
    :cond_66
    const/16 v12, 0xf

    .line 3068
    .line 3069
    goto :goto_29

    .line 3070
    :goto_2a
    add-int/2addr v9, v10

    .line 3071
    goto :goto_28

    .line 3072
    :cond_67
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3073
    .line 3074
    const/4 v1, 0x0

    .line 3075
    :try_start_5
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3076
    .line 3077
    .line 3078
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3079
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3080
    :catch_1
    move-object v10, v1

    .line 3081
    goto :goto_2c

    .line 3082
    :cond_68
    const-string v7, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 3083
    .line 3084
    invoke-static {v13, v7}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    .line 3086
    .line 3087
    new-instance v7, Landroid/util/Pair;

    .line 3088
    .line 3089
    const-string v9, "video/x-unknown"

    .line 3090
    .line 3091
    const/4 v10, 0x0

    .line 3092
    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3093
    .line 3094
    .line 3095
    :goto_2b
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3096
    .line 3097
    check-cast v9, Ljava/lang/String;

    .line 3098
    .line 3099
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3100
    .line 3101
    move-object/from16 v17, v7

    .line 3102
    .line 3103
    check-cast v17, Ljava/util/List;

    .line 3104
    .line 3105
    move-object/from16 v34, v0

    .line 3106
    .line 3107
    move-object/from16 v7, v17

    .line 3108
    .line 3109
    const/4 v0, -0x1

    .line 3110
    const/4 v12, -0x1

    .line 3111
    move-object/from16 v46, v10

    .line 3112
    .line 3113
    move-object v10, v9

    .line 3114
    move-object/from16 v9, v46

    .line 3115
    .line 3116
    goto/16 :goto_33

    .line 3117
    .line 3118
    :catch_2
    :goto_2c
    const-string v0, "Error parsing FourCC private data"

    .line 3119
    .line 3120
    invoke-static {v0, v10}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3121
    .line 3122
    .line 3123
    move-result-object v0

    .line 3124
    throw v0

    .line 3125
    :pswitch_19
    const/16 v14, 0x20

    .line 3126
    .line 3127
    const-string v10, "audio/mpeg"

    .line 3128
    .line 3129
    :goto_2d
    const/16 v7, 0x1000

    .line 3130
    .line 3131
    move-object/from16 v34, v0

    .line 3132
    .line 3133
    const/4 v0, -0x1

    .line 3134
    const/4 v7, 0x0

    .line 3135
    const/4 v9, 0x0

    .line 3136
    const/16 v12, 0x1000

    .line 3137
    .line 3138
    goto/16 :goto_33

    .line 3139
    .line 3140
    :pswitch_1a
    const/16 v14, 0x20

    .line 3141
    .line 3142
    const-string v10, "audio/mpeg-L2"

    .line 3143
    .line 3144
    goto :goto_2d

    .line 3145
    :pswitch_1b
    const/16 v14, 0x20

    .line 3146
    .line 3147
    iget-object v7, v4, Lm1/c;->c:Ljava/lang/String;

    .line 3148
    .line 3149
    invoke-virtual {v4, v7}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 3150
    .line 3151
    .line 3152
    move-result-object v7

    .line 3153
    const-string v9, "Error parsing vorbis codec private"

    .line 3154
    .line 3155
    const/4 v10, 0x0

    .line 3156
    :try_start_7
    aget-byte v12, v7, v10

    .line 3157
    .line 3158
    const/4 v10, 0x2

    .line 3159
    if-ne v12, v10, :cond_6e

    .line 3160
    .line 3161
    const/4 v10, 0x0

    .line 3162
    const/4 v12, 0x1

    .line 3163
    :goto_2e
    aget-byte v13, v7, v12

    .line 3164
    .line 3165
    const/16 v14, 0xff

    .line 3166
    .line 3167
    and-int/2addr v13, v14

    .line 3168
    if-ne v13, v14, :cond_69

    .line 3169
    .line 3170
    add-int/2addr v10, v14

    .line 3171
    const/4 v13, 0x1

    .line 3172
    add-int/2addr v12, v13

    .line 3173
    const/16 v14, 0x20

    .line 3174
    .line 3175
    goto :goto_2e

    .line 3176
    :cond_69
    const/4 v14, 0x1

    .line 3177
    add-int/2addr v12, v14

    .line 3178
    add-int/2addr v10, v13

    .line 3179
    const/4 v13, 0x0

    .line 3180
    :goto_2f
    aget-byte v14, v7, v12

    .line 3181
    .line 3182
    move-object/from16 v34, v0

    .line 3183
    .line 3184
    const/16 v0, 0xff

    .line 3185
    .line 3186
    and-int/2addr v14, v0

    .line 3187
    if-ne v14, v0, :cond_6a

    .line 3188
    .line 3189
    add-int/2addr v13, v0

    .line 3190
    const/4 v14, 0x1

    .line 3191
    add-int/2addr v12, v14

    .line 3192
    move-object/from16 v0, v34

    .line 3193
    .line 3194
    goto :goto_2f

    .line 3195
    :cond_6a
    const/4 v0, 0x1

    .line 3196
    add-int/2addr v12, v0

    .line 3197
    add-int/2addr v13, v14

    .line 3198
    aget-byte v14, v7, v12

    .line 3199
    .line 3200
    if-ne v14, v0, :cond_6d

    .line 3201
    .line 3202
    new-array v0, v10, [B

    .line 3203
    .line 3204
    const/4 v14, 0x0

    .line 3205
    invoke-static {v7, v12, v0, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3206
    .line 3207
    .line 3208
    add-int/2addr v12, v10

    .line 3209
    aget-byte v10, v7, v12

    .line 3210
    .line 3211
    const/4 v14, 0x3

    .line 3212
    if-ne v10, v14, :cond_6c

    .line 3213
    .line 3214
    add-int/2addr v12, v13

    .line 3215
    aget-byte v10, v7, v12

    .line 3216
    .line 3217
    const/4 v13, 0x5

    .line 3218
    if-ne v10, v13, :cond_6b

    .line 3219
    .line 3220
    array-length v10, v7

    .line 3221
    sub-int/2addr v10, v12

    .line 3222
    new-array v10, v10, [B

    .line 3223
    .line 3224
    array-length v13, v7

    .line 3225
    sub-int/2addr v13, v12

    .line 3226
    const/4 v14, 0x0

    .line 3227
    invoke-static {v7, v12, v10, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3228
    .line 3229
    .line 3230
    new-instance v7, Ljava/util/ArrayList;

    .line 3231
    .line 3232
    const/4 v12, 0x2

    .line 3233
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 3234
    .line 3235
    .line 3236
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3237
    .line 3238
    .line 3239
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    .line 3240
    .line 3241
    .line 3242
    const-string v10, "audio/vorbis"

    .line 3243
    .line 3244
    const/16 v0, 0x2000

    .line 3245
    .line 3246
    const/4 v0, -0x1

    .line 3247
    const/4 v9, 0x0

    .line 3248
    const/16 v12, 0x2000

    .line 3249
    .line 3250
    goto/16 :goto_33

    .line 3251
    .line 3252
    :catch_3
    const/4 v0, 0x0

    .line 3253
    goto :goto_30

    .line 3254
    :cond_6b
    const/4 v0, 0x0

    .line 3255
    :try_start_8
    invoke-static {v9, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3256
    .line 3257
    .line 3258
    move-result-object v1

    .line 3259
    throw v1

    .line 3260
    :cond_6c
    const/4 v0, 0x0

    .line 3261
    invoke-static {v9, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3262
    .line 3263
    .line 3264
    move-result-object v1

    .line 3265
    throw v1

    .line 3266
    :cond_6d
    const/4 v0, 0x0

    .line 3267
    invoke-static {v9, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3268
    .line 3269
    .line 3270
    move-result-object v1

    .line 3271
    throw v1

    .line 3272
    :cond_6e
    const/4 v0, 0x0

    .line 3273
    invoke-static {v9, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3274
    .line 3275
    .line 3276
    move-result-object v1

    .line 3277
    throw v1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    .line 3278
    :catch_4
    :goto_30
    invoke-static {v9, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3279
    .line 3280
    .line 3281
    move-result-object v0

    .line 3282
    throw v0

    .line 3283
    :pswitch_1c
    move-object/from16 v34, v0

    .line 3284
    .line 3285
    new-instance v0, LW0/M;

    .line 3286
    .line 3287
    const/4 v7, 0x0

    .line 3288
    invoke-direct {v0, v7}, LW0/M;-><init>(I)V

    .line 3289
    .line 3290
    .line 3291
    iput-object v0, v4, Lm1/c;->V:LW0/M;

    .line 3292
    .line 3293
    const-string v10, "audio/true-hd"

    .line 3294
    .line 3295
    goto/16 :goto_20

    .line 3296
    .line 3297
    :pswitch_1d
    move-object/from16 v34, v0

    .line 3298
    .line 3299
    move-object/from16 v13, v28

    .line 3300
    .line 3301
    new-instance v0, Lp0/E;

    .line 3302
    .line 3303
    iget-object v9, v4, Lm1/c;->c:Ljava/lang/String;

    .line 3304
    .line 3305
    invoke-virtual {v4, v9}, Lm1/c;->a(Ljava/lang/String;)[B

    .line 3306
    .line 3307
    .line 3308
    move-result-object v9

    .line 3309
    invoke-direct {v0, v9}, Lp0/E;-><init>([B)V

    .line 3310
    .line 3311
    .line 3312
    :try_start_9
    invoke-virtual {v0}, Lp0/E;->s()I

    .line 3313
    .line 3314
    .line 3315
    move-result v9

    .line 3316
    const/4 v14, 0x1

    .line 3317
    if-ne v9, v14, :cond_6f

    .line 3318
    .line 3319
    goto :goto_31

    .line 3320
    :cond_6f
    const v14, 0xfffe

    .line 3321
    .line 3322
    .line 3323
    if-ne v9, v14, :cond_70

    .line 3324
    .line 3325
    const/16 v9, 0x18

    .line 3326
    .line 3327
    invoke-virtual {v0, v9}, Lp0/E;->L(I)V

    .line 3328
    .line 3329
    .line 3330
    invoke-virtual {v0}, Lp0/E;->t()J

    .line 3331
    .line 3332
    .line 3333
    move-result-wide v18

    .line 3334
    sget-object v9, Lm1/d;->j0:Ljava/util/UUID;

    .line 3335
    .line 3336
    invoke-virtual {v9}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 3337
    .line 3338
    .line 3339
    move-result-wide v20

    .line 3340
    cmp-long v14, v18, v20

    .line 3341
    .line 3342
    if-nez v14, :cond_70

    .line 3343
    .line 3344
    invoke-virtual {v0}, Lp0/E;->t()J

    .line 3345
    .line 3346
    .line 3347
    move-result-wide v18

    .line 3348
    invoke-virtual {v9}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 3349
    .line 3350
    .line 3351
    move-result-wide v20
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    .line 3352
    cmp-long v0, v18, v20

    .line 3353
    .line 3354
    if-nez v0, :cond_70

    .line 3355
    .line 3356
    :goto_31
    iget v0, v4, Lm1/c;->R:I

    .line 3357
    .line 3358
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 3359
    .line 3360
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3361
    .line 3362
    invoke-static {v0, v9}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 3363
    .line 3364
    .line 3365
    move-result v0

    .line 3366
    if-nez v0, :cond_59

    .line 3367
    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3369
    .line 3370
    const-string v9, "Unsupported PCM bit depth: "

    .line 3371
    .line 3372
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3373
    .line 3374
    .line 3375
    iget v9, v4, Lm1/c;->R:I

    .line 3376
    .line 3377
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3378
    .line 3379
    .line 3380
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3381
    .line 3382
    .line 3383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3384
    .line 3385
    .line 3386
    move-result-object v0

    .line 3387
    invoke-static {v13, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    .line 3389
    .line 3390
    goto/16 :goto_24

    .line 3391
    .line 3392
    :cond_70
    const-string v0, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    .line 3393
    .line 3394
    invoke-static {v13, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    .line 3396
    .line 3397
    goto/16 :goto_24

    .line 3398
    .line 3399
    :catch_5
    const-string v0, "Error parsing MS/ACM codec private"

    .line 3400
    .line 3401
    const/4 v1, 0x0

    .line 3402
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3403
    .line 3404
    .line 3405
    move-result-object v0

    .line 3406
    throw v0

    .line 3407
    :pswitch_1e
    move-object/from16 v34, v0

    .line 3408
    .line 3409
    iget-object v0, v4, Lm1/c;->l:[B

    .line 3410
    .line 3411
    if-nez v0, :cond_71

    .line 3412
    .line 3413
    const/4 v0, 0x0

    .line 3414
    goto :goto_32

    .line 3415
    :cond_71
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 3416
    .line 3417
    .line 3418
    move-result-object v0

    .line 3419
    :goto_32
    const-string v10, "video/mp4v-es"

    .line 3420
    .line 3421
    move-object v7, v0

    .line 3422
    goto/16 :goto_1c

    .line 3423
    .line 3424
    :goto_33
    iget-object v13, v4, Lm1/c;->P:[B

    .line 3425
    .line 3426
    if-eqz v13, :cond_72

    .line 3427
    .line 3428
    new-instance v13, Lp0/E;

    .line 3429
    .line 3430
    iget-object v14, v4, Lm1/c;->P:[B

    .line 3431
    .line 3432
    invoke-direct {v13, v14}, Lp0/E;-><init>([B)V

    .line 3433
    .line 3434
    .line 3435
    invoke-static {v13}, LW0/r;->a(Lp0/E;)LW0/r;

    .line 3436
    .line 3437
    .line 3438
    move-result-object v13

    .line 3439
    if-eqz v13, :cond_72

    .line 3440
    .line 3441
    iget-object v9, v13, LW0/r;->a:Ljava/lang/String;

    .line 3442
    .line 3443
    const-string v10, "video/dolby-vision"

    .line 3444
    .line 3445
    :cond_72
    iget-boolean v13, v4, Lm1/c;->X:Z

    .line 3446
    .line 3447
    iget-boolean v14, v4, Lm1/c;->W:Z

    .line 3448
    .line 3449
    if-eqz v14, :cond_73

    .line 3450
    .line 3451
    const/4 v14, 0x2

    .line 3452
    goto :goto_34

    .line 3453
    :cond_73
    const/4 v14, 0x0

    .line 3454
    :goto_34
    or-int/2addr v13, v14

    .line 3455
    new-instance v14, Lm0/s;

    .line 3456
    .line 3457
    invoke-direct {v14}, Lm0/s;-><init>()V

    .line 3458
    .line 3459
    .line 3460
    invoke-static {v10}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 3461
    .line 3462
    .line 3463
    move-result v18

    .line 3464
    if-eqz v18, :cond_74

    .line 3465
    .line 3466
    iget v1, v4, Lm1/c;->Q:I

    .line 3467
    .line 3468
    iput v1, v14, Lm0/s;->F:I

    .line 3469
    .line 3470
    iget v1, v4, Lm1/c;->S:I

    .line 3471
    .line 3472
    iput v1, v14, Lm0/s;->G:I

    .line 3473
    .line 3474
    iput v0, v14, Lm0/s;->H:I

    .line 3475
    .line 3476
    move-object/from16 v35, v2

    .line 3477
    .line 3478
    move-object/from16 v37, v3

    .line 3479
    .line 3480
    move-object/from16 v36, v5

    .line 3481
    .line 3482
    const/4 v0, 0x1

    .line 3483
    goto/16 :goto_3e

    .line 3484
    .line 3485
    :cond_74
    invoke-static {v10}, Lm0/O;->o(Ljava/lang/String;)Z

    .line 3486
    .line 3487
    .line 3488
    move-result v0

    .line 3489
    if-eqz v0, :cond_82

    .line 3490
    .line 3491
    iget v0, v4, Lm1/c;->s:I

    .line 3492
    .line 3493
    if-nez v0, :cond_77

    .line 3494
    .line 3495
    iget v0, v4, Lm1/c;->q:I

    .line 3496
    .line 3497
    const/4 v1, -0x1

    .line 3498
    if-ne v0, v1, :cond_75

    .line 3499
    .line 3500
    iget v0, v4, Lm1/c;->n:I

    .line 3501
    .line 3502
    :cond_75
    iput v0, v4, Lm1/c;->q:I

    .line 3503
    .line 3504
    iget v0, v4, Lm1/c;->r:I

    .line 3505
    .line 3506
    if-ne v0, v1, :cond_76

    .line 3507
    .line 3508
    iget v0, v4, Lm1/c;->o:I

    .line 3509
    .line 3510
    :cond_76
    iput v0, v4, Lm1/c;->r:I

    .line 3511
    .line 3512
    goto :goto_35

    .line 3513
    :cond_77
    const/4 v1, -0x1

    .line 3514
    :goto_35
    iget v0, v4, Lm1/c;->q:I

    .line 3515
    .line 3516
    move-object/from16 v35, v2

    .line 3517
    .line 3518
    if-eq v0, v1, :cond_78

    .line 3519
    .line 3520
    iget v2, v4, Lm1/c;->r:I

    .line 3521
    .line 3522
    if-eq v2, v1, :cond_78

    .line 3523
    .line 3524
    iget v1, v4, Lm1/c;->o:I

    .line 3525
    .line 3526
    mul-int v1, v1, v0

    .line 3527
    .line 3528
    int-to-float v0, v1

    .line 3529
    iget v1, v4, Lm1/c;->n:I

    .line 3530
    .line 3531
    mul-int v1, v1, v2

    .line 3532
    .line 3533
    int-to-float v1, v1

    .line 3534
    div-float/2addr v0, v1

    .line 3535
    goto :goto_36

    .line 3536
    :cond_78
    const/high16 v0, -0x40800000    # -1.0f

    .line 3537
    .line 3538
    :goto_36
    iget-boolean v1, v4, Lm1/c;->z:Z

    .line 3539
    .line 3540
    if-eqz v1, :cond_7b

    .line 3541
    .line 3542
    iget v1, v4, Lm1/c;->F:F

    .line 3543
    .line 3544
    const/high16 v2, -0x40800000    # -1.0f

    .line 3545
    .line 3546
    cmpl-float v1, v1, v2

    .line 3547
    .line 3548
    if-eqz v1, :cond_7a

    .line 3549
    .line 3550
    iget v1, v4, Lm1/c;->G:F

    .line 3551
    .line 3552
    cmpl-float v1, v1, v2

    .line 3553
    .line 3554
    if-eqz v1, :cond_7a

    .line 3555
    .line 3556
    iget v1, v4, Lm1/c;->H:F

    .line 3557
    .line 3558
    cmpl-float v1, v1, v2

    .line 3559
    .line 3560
    if-eqz v1, :cond_7a

    .line 3561
    .line 3562
    iget v1, v4, Lm1/c;->I:F

    .line 3563
    .line 3564
    cmpl-float v1, v1, v2

    .line 3565
    .line 3566
    if-eqz v1, :cond_7a

    .line 3567
    .line 3568
    iget v1, v4, Lm1/c;->J:F

    .line 3569
    .line 3570
    cmpl-float v1, v1, v2

    .line 3571
    .line 3572
    if-eqz v1, :cond_7a

    .line 3573
    .line 3574
    iget v1, v4, Lm1/c;->K:F

    .line 3575
    .line 3576
    cmpl-float v1, v1, v2

    .line 3577
    .line 3578
    if-eqz v1, :cond_7a

    .line 3579
    .line 3580
    iget v1, v4, Lm1/c;->L:F

    .line 3581
    .line 3582
    cmpl-float v1, v1, v2

    .line 3583
    .line 3584
    if-eqz v1, :cond_7a

    .line 3585
    .line 3586
    iget v1, v4, Lm1/c;->M:F

    .line 3587
    .line 3588
    cmpl-float v1, v1, v2

    .line 3589
    .line 3590
    if-eqz v1, :cond_7a

    .line 3591
    .line 3592
    iget v1, v4, Lm1/c;->N:F

    .line 3593
    .line 3594
    cmpl-float v1, v1, v2

    .line 3595
    .line 3596
    if-eqz v1, :cond_7a

    .line 3597
    .line 3598
    iget v1, v4, Lm1/c;->O:F

    .line 3599
    .line 3600
    cmpl-float v1, v1, v2

    .line 3601
    .line 3602
    if-nez v1, :cond_79

    .line 3603
    .line 3604
    goto/16 :goto_37

    .line 3605
    .line 3606
    :cond_79
    const/16 v1, 0x19

    .line 3607
    .line 3608
    new-array v1, v1, [B

    .line 3609
    .line 3610
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 3611
    .line 3612
    .line 3613
    move-result-object v2

    .line 3614
    move-object/from16 v18, v1

    .line 3615
    .line 3616
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3617
    .line 3618
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3619
    .line 3620
    .line 3621
    move-result-object v1

    .line 3622
    const/4 v2, 0x0

    .line 3623
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3624
    .line 3625
    .line 3626
    iget v2, v4, Lm1/c;->F:F

    .line 3627
    .line 3628
    const v19, 0x47435000    # 50000.0f

    .line 3629
    .line 3630
    .line 3631
    mul-float v2, v2, v19

    .line 3632
    .line 3633
    const/high16 v20, 0x3f000000    # 0.5f

    .line 3634
    .line 3635
    add-float v2, v2, v20

    .line 3636
    .line 3637
    float-to-int v2, v2

    .line 3638
    int-to-short v2, v2

    .line 3639
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3640
    .line 3641
    .line 3642
    iget v2, v4, Lm1/c;->G:F

    .line 3643
    .line 3644
    mul-float v2, v2, v19

    .line 3645
    .line 3646
    add-float v2, v2, v20

    .line 3647
    .line 3648
    float-to-int v2, v2

    .line 3649
    int-to-short v2, v2

    .line 3650
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3651
    .line 3652
    .line 3653
    iget v2, v4, Lm1/c;->H:F

    .line 3654
    .line 3655
    mul-float v2, v2, v19

    .line 3656
    .line 3657
    add-float v2, v2, v20

    .line 3658
    .line 3659
    float-to-int v2, v2

    .line 3660
    int-to-short v2, v2

    .line 3661
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3662
    .line 3663
    .line 3664
    iget v2, v4, Lm1/c;->I:F

    .line 3665
    .line 3666
    mul-float v2, v2, v19

    .line 3667
    .line 3668
    add-float v2, v2, v20

    .line 3669
    .line 3670
    float-to-int v2, v2

    .line 3671
    int-to-short v2, v2

    .line 3672
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3673
    .line 3674
    .line 3675
    iget v2, v4, Lm1/c;->J:F

    .line 3676
    .line 3677
    mul-float v2, v2, v19

    .line 3678
    .line 3679
    add-float v2, v2, v20

    .line 3680
    .line 3681
    float-to-int v2, v2

    .line 3682
    int-to-short v2, v2

    .line 3683
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3684
    .line 3685
    .line 3686
    iget v2, v4, Lm1/c;->K:F

    .line 3687
    .line 3688
    mul-float v2, v2, v19

    .line 3689
    .line 3690
    add-float v2, v2, v20

    .line 3691
    .line 3692
    float-to-int v2, v2

    .line 3693
    int-to-short v2, v2

    .line 3694
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3695
    .line 3696
    .line 3697
    iget v2, v4, Lm1/c;->L:F

    .line 3698
    .line 3699
    mul-float v2, v2, v19

    .line 3700
    .line 3701
    add-float v2, v2, v20

    .line 3702
    .line 3703
    float-to-int v2, v2

    .line 3704
    int-to-short v2, v2

    .line 3705
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3706
    .line 3707
    .line 3708
    iget v2, v4, Lm1/c;->M:F

    .line 3709
    .line 3710
    mul-float v2, v2, v19

    .line 3711
    .line 3712
    add-float v2, v2, v20

    .line 3713
    .line 3714
    float-to-int v2, v2

    .line 3715
    int-to-short v2, v2

    .line 3716
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3717
    .line 3718
    .line 3719
    iget v2, v4, Lm1/c;->N:F

    .line 3720
    .line 3721
    add-float v2, v2, v20

    .line 3722
    .line 3723
    float-to-int v2, v2

    .line 3724
    int-to-short v2, v2

    .line 3725
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3726
    .line 3727
    .line 3728
    iget v2, v4, Lm1/c;->O:F

    .line 3729
    .line 3730
    add-float v2, v2, v20

    .line 3731
    .line 3732
    float-to-int v2, v2

    .line 3733
    int-to-short v2, v2

    .line 3734
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3735
    .line 3736
    .line 3737
    iget v2, v4, Lm1/c;->D:I

    .line 3738
    .line 3739
    int-to-short v2, v2

    .line 3740
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3741
    .line 3742
    .line 3743
    iget v2, v4, Lm1/c;->E:I

    .line 3744
    .line 3745
    int-to-short v2, v2

    .line 3746
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3747
    .line 3748
    .line 3749
    move-object/from16 v43, v18

    .line 3750
    .line 3751
    goto :goto_38

    .line 3752
    :cond_7a
    :goto_37
    const/16 v43, 0x0

    .line 3753
    .line 3754
    :goto_38
    iget v1, v4, Lm1/c;->A:I

    .line 3755
    .line 3756
    iget v2, v4, Lm1/c;->C:I

    .line 3757
    .line 3758
    move-object/from16 v37, v3

    .line 3759
    .line 3760
    iget v3, v4, Lm1/c;->B:I

    .line 3761
    .line 3762
    move-object/from16 v36, v5

    .line 3763
    .line 3764
    iget v5, v4, Lm1/c;->p:I

    .line 3765
    .line 3766
    new-instance v18, Lm0/i;

    .line 3767
    .line 3768
    move-object/from16 v39, v18

    .line 3769
    .line 3770
    move/from16 v40, v1

    .line 3771
    .line 3772
    move/from16 v41, v2

    .line 3773
    .line 3774
    move/from16 v42, v3

    .line 3775
    .line 3776
    move/from16 v44, v5

    .line 3777
    .line 3778
    move/from16 v45, v5

    .line 3779
    .line 3780
    invoke-direct/range {v39 .. v45}, Lm0/i;-><init>(III[BII)V

    .line 3781
    .line 3782
    .line 3783
    move-object/from16 v1, v18

    .line 3784
    .line 3785
    goto :goto_39

    .line 3786
    :cond_7b
    move-object/from16 v37, v3

    .line 3787
    .line 3788
    move-object/from16 v36, v5

    .line 3789
    .line 3790
    const/4 v1, 0x0

    .line 3791
    :goto_39
    iget-object v2, v4, Lm1/c;->b:Ljava/lang/String;

    .line 3792
    .line 3793
    if-eqz v2, :cond_7c

    .line 3794
    .line 3795
    sget-object v3, Lm1/d;->k0:Ljava/util/Map;

    .line 3796
    .line 3797
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 3798
    .line 3799
    .line 3800
    move-result v2

    .line 3801
    if-eqz v2, :cond_7c

    .line 3802
    .line 3803
    iget-object v2, v4, Lm1/c;->b:Ljava/lang/String;

    .line 3804
    .line 3805
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    .line 3807
    .line 3808
    move-result-object v2

    .line 3809
    check-cast v2, Ljava/lang/Integer;

    .line 3810
    .line 3811
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 3812
    .line 3813
    .line 3814
    move-result v2

    .line 3815
    goto :goto_3a

    .line 3816
    :cond_7c
    const/4 v2, -0x1

    .line 3817
    :goto_3a
    iget v3, v4, Lm1/c;->t:I

    .line 3818
    .line 3819
    if-nez v3, :cond_81

    .line 3820
    .line 3821
    iget v3, v4, Lm1/c;->u:F

    .line 3822
    .line 3823
    const/4 v5, 0x0

    .line 3824
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3825
    .line 3826
    .line 3827
    move-result v3

    .line 3828
    if-nez v3, :cond_81

    .line 3829
    .line 3830
    iget v3, v4, Lm1/c;->v:F

    .line 3831
    .line 3832
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3833
    .line 3834
    .line 3835
    move-result v3

    .line 3836
    if-nez v3, :cond_81

    .line 3837
    .line 3838
    iget v3, v4, Lm1/c;->w:F

    .line 3839
    .line 3840
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3841
    .line 3842
    .line 3843
    move-result v3

    .line 3844
    if-nez v3, :cond_7d

    .line 3845
    .line 3846
    const/4 v2, 0x0

    .line 3847
    goto :goto_3c

    .line 3848
    :cond_7d
    iget v3, v4, Lm1/c;->w:F

    .line 3849
    .line 3850
    const/high16 v5, 0x42b40000    # 90.0f

    .line 3851
    .line 3852
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3853
    .line 3854
    .line 3855
    move-result v3

    .line 3856
    if-nez v3, :cond_7e

    .line 3857
    .line 3858
    const/16 v2, 0x5a

    .line 3859
    .line 3860
    goto :goto_3c

    .line 3861
    :cond_7e
    iget v3, v4, Lm1/c;->w:F

    .line 3862
    .line 3863
    const/high16 v5, -0x3ccc0000    # -180.0f

    .line 3864
    .line 3865
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3866
    .line 3867
    .line 3868
    move-result v3

    .line 3869
    if-eqz v3, :cond_80

    .line 3870
    .line 3871
    iget v3, v4, Lm1/c;->w:F

    .line 3872
    .line 3873
    const/high16 v5, 0x43340000    # 180.0f

    .line 3874
    .line 3875
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3876
    .line 3877
    .line 3878
    move-result v3

    .line 3879
    if-nez v3, :cond_7f

    .line 3880
    .line 3881
    goto :goto_3b

    .line 3882
    :cond_7f
    iget v3, v4, Lm1/c;->w:F

    .line 3883
    .line 3884
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 3885
    .line 3886
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 3887
    .line 3888
    .line 3889
    move-result v3

    .line 3890
    if-nez v3, :cond_81

    .line 3891
    .line 3892
    const/16 v2, 0x10e

    .line 3893
    .line 3894
    goto :goto_3c

    .line 3895
    :cond_80
    :goto_3b
    const/16 v2, 0xb4

    .line 3896
    .line 3897
    :cond_81
    :goto_3c
    iget v3, v4, Lm1/c;->n:I

    .line 3898
    .line 3899
    iput v3, v14, Lm0/s;->u:I

    .line 3900
    .line 3901
    iget v3, v4, Lm1/c;->o:I

    .line 3902
    .line 3903
    iput v3, v14, Lm0/s;->v:I

    .line 3904
    .line 3905
    iput v0, v14, Lm0/s;->A:F

    .line 3906
    .line 3907
    iput v2, v14, Lm0/s;->z:I

    .line 3908
    .line 3909
    iget-object v0, v4, Lm1/c;->x:[B

    .line 3910
    .line 3911
    iput-object v0, v14, Lm0/s;->B:[B

    .line 3912
    .line 3913
    iget v0, v4, Lm1/c;->y:I

    .line 3914
    .line 3915
    iput v0, v14, Lm0/s;->C:I

    .line 3916
    .line 3917
    iput-object v1, v14, Lm0/s;->D:Lm0/i;

    .line 3918
    .line 3919
    const/4 v0, 0x2

    .line 3920
    goto :goto_3e

    .line 3921
    :cond_82
    move-object/from16 v35, v2

    .line 3922
    .line 3923
    move-object/from16 v37, v3

    .line 3924
    .line 3925
    move-object/from16 v36, v5

    .line 3926
    .line 3927
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3928
    .line 3929
    .line 3930
    move-result v0

    .line 3931
    if-nez v0, :cond_84

    .line 3932
    .line 3933
    const-string v0, "text/x-ssa"

    .line 3934
    .line 3935
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3936
    .line 3937
    .line 3938
    move-result v0

    .line 3939
    if-nez v0, :cond_84

    .line 3940
    .line 3941
    const-string v0, "text/vtt"

    .line 3942
    .line 3943
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3944
    .line 3945
    .line 3946
    move-result v0

    .line 3947
    if-nez v0, :cond_84

    .line 3948
    .line 3949
    const-string v0, "application/vobsub"

    .line 3950
    .line 3951
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3952
    .line 3953
    .line 3954
    move-result v0

    .line 3955
    if-nez v0, :cond_84

    .line 3956
    .line 3957
    const-string v0, "application/pgs"

    .line 3958
    .line 3959
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3960
    .line 3961
    .line 3962
    move-result v0

    .line 3963
    if-nez v0, :cond_84

    .line 3964
    .line 3965
    const-string v0, "application/dvbsubs"

    .line 3966
    .line 3967
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3968
    .line 3969
    .line 3970
    move-result v0

    .line 3971
    if-eqz v0, :cond_83

    .line 3972
    .line 3973
    goto :goto_3d

    .line 3974
    :cond_83
    const-string v0, "Unexpected MIME type."

    .line 3975
    .line 3976
    const/4 v1, 0x0

    .line 3977
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 3978
    .line 3979
    .line 3980
    move-result-object v0

    .line 3981
    throw v0

    .line 3982
    :cond_84
    :goto_3d
    const/4 v0, 0x3

    .line 3983
    :goto_3e
    iget-object v1, v4, Lm1/c;->b:Ljava/lang/String;

    .line 3984
    .line 3985
    if-eqz v1, :cond_85

    .line 3986
    .line 3987
    sget-object v2, Lm1/d;->k0:Ljava/util/Map;

    .line 3988
    .line 3989
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 3990
    .line 3991
    .line 3992
    move-result v1

    .line 3993
    if-nez v1, :cond_85

    .line 3994
    .line 3995
    iget-object v1, v4, Lm1/c;->b:Ljava/lang/String;

    .line 3996
    .line 3997
    iput-object v1, v14, Lm0/s;->b:Ljava/lang/String;

    .line 3998
    .line 3999
    :cond_85
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4000
    .line 4001
    .line 4002
    move-result-object v1

    .line 4003
    iput-object v1, v14, Lm0/s;->a:Ljava/lang/String;

    .line 4004
    .line 4005
    iget-boolean v1, v4, Lm1/c;->a:Z

    .line 4006
    .line 4007
    if-eqz v1, :cond_86

    .line 4008
    .line 4009
    move-object/from16 v1, v26

    .line 4010
    .line 4011
    goto :goto_3f

    .line 4012
    :cond_86
    const-string v1, "video/x-matroska"

    .line 4013
    .line 4014
    :goto_3f
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 4015
    .line 4016
    .line 4017
    move-result-object v1

    .line 4018
    iput-object v1, v14, Lm0/s;->m:Ljava/lang/String;

    .line 4019
    .line 4020
    invoke-static {v10}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 4021
    .line 4022
    .line 4023
    move-result-object v1

    .line 4024
    iput-object v1, v14, Lm0/s;->n:Ljava/lang/String;

    .line 4025
    .line 4026
    iput v12, v14, Lm0/s;->o:I

    .line 4027
    .line 4028
    iget-object v1, v4, Lm1/c;->Y:Ljava/lang/String;

    .line 4029
    .line 4030
    iput-object v1, v14, Lm0/s;->d:Ljava/lang/String;

    .line 4031
    .line 4032
    iput v13, v14, Lm0/s;->e:I

    .line 4033
    .line 4034
    iput-object v7, v14, Lm0/s;->q:Ljava/util/List;

    .line 4035
    .line 4036
    iput-object v9, v14, Lm0/s;->j:Ljava/lang/String;

    .line 4037
    .line 4038
    iget-object v1, v4, Lm1/c;->m:Lm0/n;

    .line 4039
    .line 4040
    iput-object v1, v14, Lm0/s;->r:Lm0/n;

    .line 4041
    .line 4042
    invoke-virtual {v14}, Lm0/s;->a()Lm0/t;

    .line 4043
    .line 4044
    .line 4045
    move-result-object v1

    .line 4046
    iget v2, v4, Lm1/c;->d:I

    .line 4047
    .line 4048
    move-object/from16 v3, v29

    .line 4049
    .line 4050
    invoke-interface {v3, v2, v0}, LW0/u;->t(II)LW0/L;

    .line 4051
    .line 4052
    .line 4053
    move-result-object v0

    .line 4054
    iput-object v0, v4, Lm1/c;->Z:LW0/L;

    .line 4055
    .line 4056
    invoke-interface {v0, v1}, LW0/L;->b(Lm0/t;)V

    .line 4057
    .line 4058
    .line 4059
    iget v0, v4, Lm1/c;->d:I

    .line 4060
    .line 4061
    move-object/from16 v1, v27

    .line 4062
    .line 4063
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4064
    .line 4065
    .line 4066
    move-object/from16 v4, v38

    .line 4067
    .line 4068
    const/4 v0, 0x0

    .line 4069
    :goto_40
    iput-object v0, v4, Lm1/d;->x:Lm1/c;

    .line 4070
    .line 4071
    move-object v0, v8

    .line 4072
    goto :goto_41

    .line 4073
    :cond_87
    const/4 v0, 0x0

    .line 4074
    const-string v1, "CodecId is missing in TrackEntry element"

    .line 4075
    .line 4076
    invoke-static {v1, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 4077
    .line 4078
    .line 4079
    move-result-object v0

    .line 4080
    throw v0

    .line 4081
    :cond_88
    move-object/from16 v34, v3

    .line 4082
    .line 4083
    move-object/from16 v35, v5

    .line 4084
    .line 4085
    move-object/from16 v37, v6

    .line 4086
    .line 4087
    move-object/from16 v36, v7

    .line 4088
    .line 4089
    move-object v6, v11

    .line 4090
    move-object v1, v13

    .line 4091
    move-object v0, v15

    .line 4092
    move-object/from16 v15, v20

    .line 4093
    .line 4094
    move-object v11, v9

    .line 4095
    iget v2, v4, Lm1/d;->J:I

    .line 4096
    .line 4097
    const/4 v3, 0x2

    .line 4098
    if-eq v2, v3, :cond_89

    .line 4099
    .line 4100
    :goto_41
    const/4 v2, 0x0

    .line 4101
    const/4 v5, 0x1

    .line 4102
    goto/16 :goto_44

    .line 4103
    .line 4104
    :cond_89
    iget v2, v4, Lm1/d;->P:I

    .line 4105
    .line 4106
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4107
    .line 4108
    .line 4109
    move-result-object v1

    .line 4110
    check-cast v1, Lm1/c;

    .line 4111
    .line 4112
    iget-object v2, v1, Lm1/c;->Z:LW0/L;

    .line 4113
    .line 4114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4115
    .line 4116
    .line 4117
    iget-wide v2, v4, Lm1/d;->U:J

    .line 4118
    .line 4119
    const-wide/16 v9, 0x0

    .line 4120
    .line 4121
    cmp-long v5, v2, v9

    .line 4122
    .line 4123
    if-lez v5, :cond_8a

    .line 4124
    .line 4125
    iget-object v2, v1, Lm1/c;->c:Ljava/lang/String;

    .line 4126
    .line 4127
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4128
    .line 4129
    .line 4130
    move-result v2

    .line 4131
    if-eqz v2, :cond_8a

    .line 4132
    .line 4133
    const/16 v2, 0x8

    .line 4134
    .line 4135
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4136
    .line 4137
    .line 4138
    move-result-object v2

    .line 4139
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4140
    .line 4141
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4142
    .line 4143
    .line 4144
    move-result-object v2

    .line 4145
    iget-wide v7, v4, Lm1/d;->U:J

    .line 4146
    .line 4147
    invoke-virtual {v2, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4148
    .line 4149
    .line 4150
    move-result-object v2

    .line 4151
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 4152
    .line 4153
    .line 4154
    move-result-object v2

    .line 4155
    iget-object v3, v4, Lm1/d;->p:Lp0/E;

    .line 4156
    .line 4157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4158
    .line 4159
    .line 4160
    array-length v5, v2

    .line 4161
    invoke-virtual {v3, v5, v2}, Lp0/E;->J(I[B)V

    .line 4162
    .line 4163
    .line 4164
    :cond_8a
    const/4 v2, 0x0

    .line 4165
    const/4 v3, 0x0

    .line 4166
    :goto_42
    iget v5, v4, Lm1/d;->N:I

    .line 4167
    .line 4168
    if-ge v2, v5, :cond_8b

    .line 4169
    .line 4170
    iget-object v5, v4, Lm1/d;->O:[I

    .line 4171
    .line 4172
    aget v5, v5, v2

    .line 4173
    .line 4174
    add-int/2addr v3, v5

    .line 4175
    const/4 v5, 0x1

    .line 4176
    add-int/2addr v2, v5

    .line 4177
    goto :goto_42

    .line 4178
    :cond_8b
    const/4 v2, 0x0

    .line 4179
    :goto_43
    iget v5, v4, Lm1/d;->N:I

    .line 4180
    .line 4181
    if-ge v2, v5, :cond_8d

    .line 4182
    .line 4183
    iget-wide v7, v4, Lm1/d;->K:J

    .line 4184
    .line 4185
    iget v5, v1, Lm1/c;->f:I

    .line 4186
    .line 4187
    mul-int v5, v5, v2

    .line 4188
    .line 4189
    div-int/lit16 v5, v5, 0x3e8

    .line 4190
    .line 4191
    int-to-long v9, v5

    .line 4192
    add-long v29, v7, v9

    .line 4193
    .line 4194
    iget v5, v4, Lm1/d;->R:I

    .line 4195
    .line 4196
    if-nez v2, :cond_8c

    .line 4197
    .line 4198
    iget-boolean v7, v4, Lm1/d;->T:Z

    .line 4199
    .line 4200
    if-nez v7, :cond_8c

    .line 4201
    .line 4202
    const/4 v7, 0x1

    .line 4203
    or-int/2addr v5, v7

    .line 4204
    :cond_8c
    move/from16 v31, v5

    .line 4205
    .line 4206
    iget-object v5, v4, Lm1/d;->O:[I

    .line 4207
    .line 4208
    aget v32, v5, v2

    .line 4209
    .line 4210
    sub-int v3, v3, v32

    .line 4211
    .line 4212
    move-object/from16 v27, v4

    .line 4213
    .line 4214
    move-object/from16 v28, v1

    .line 4215
    .line 4216
    move/from16 v33, v3

    .line 4217
    .line 4218
    invoke-virtual/range {v27 .. v33}, Lm1/d;->e(Lm1/c;JIII)V

    .line 4219
    .line 4220
    .line 4221
    const/4 v5, 0x1

    .line 4222
    add-int/2addr v2, v5

    .line 4223
    goto :goto_43

    .line 4224
    :cond_8d
    const/4 v2, 0x0

    .line 4225
    const/4 v5, 0x1

    .line 4226
    iput v2, v4, Lm1/d;->J:I

    .line 4227
    .line 4228
    :goto_44
    move-object/from16 v3, p1

    .line 4229
    .line 4230
    const/4 v1, 0x3

    .line 4231
    const/4 v2, 0x2

    .line 4232
    const/4 v5, 0x0

    .line 4233
    :goto_45
    const/16 v17, 0x1

    .line 4234
    .line 4235
    goto/16 :goto_4e

    .line 4236
    .line 4237
    :cond_8e
    move-object/from16 v34, v3

    .line 4238
    .line 4239
    move-object/from16 v35, v5

    .line 4240
    .line 4241
    move-object/from16 v37, v6

    .line 4242
    .line 4243
    move-object/from16 v36, v7

    .line 4244
    .line 4245
    move-object v6, v11

    .line 4246
    move-object v0, v15

    .line 4247
    move-object/from16 v15, v20

    .line 4248
    .line 4249
    const/4 v2, 0x0

    .line 4250
    const/4 v5, 0x1

    .line 4251
    move-object v11, v9

    .line 4252
    iget v1, v4, Lm1/b;->e:I

    .line 4253
    .line 4254
    if-nez v1, :cond_94

    .line 4255
    .line 4256
    iget-object v1, v4, Lm1/b;->c:Lm1/e;

    .line 4257
    .line 4258
    move-object/from16 v3, p1

    .line 4259
    .line 4260
    const/4 v7, 0x4

    .line 4261
    invoke-virtual {v1, v3, v5, v2, v7}, Lm1/e;->c(LW0/t;ZZI)J

    .line 4262
    .line 4263
    .line 4264
    move-result-wide v8

    .line 4265
    const-wide/16 v12, -0x2

    .line 4266
    .line 4267
    cmp-long v1, v8, v12

    .line 4268
    .line 4269
    if-nez v1, :cond_91

    .line 4270
    .line 4271
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 4272
    .line 4273
    .line 4274
    :goto_46
    iget-object v1, v4, Lm1/b;->a:[B

    .line 4275
    .line 4276
    invoke-interface {v3, v2, v1, v7}, LW0/t;->c(I[BI)V

    .line 4277
    .line 4278
    .line 4279
    aget-byte v5, v1, v2

    .line 4280
    .line 4281
    invoke-static {v5}, Lm1/e;->b(I)I

    .line 4282
    .line 4283
    .line 4284
    move-result v5

    .line 4285
    const/4 v8, -0x1

    .line 4286
    if-eq v5, v8, :cond_92

    .line 4287
    .line 4288
    if-gt v5, v7, :cond_92

    .line 4289
    .line 4290
    invoke-static {v1, v5, v2}, Lm1/e;->a([BIZ)J

    .line 4291
    .line 4292
    .line 4293
    move-result-wide v7

    .line 4294
    long-to-int v1, v7

    .line 4295
    iget-object v2, v4, Lm1/b;->d:LD0/U;

    .line 4296
    .line 4297
    iget-object v2, v2, LD0/U;->H:Ljava/lang/Object;

    .line 4298
    .line 4299
    check-cast v2, Lm1/d;

    .line 4300
    .line 4301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4302
    .line 4303
    .line 4304
    const v2, 0x1549a966

    .line 4305
    .line 4306
    .line 4307
    if-eq v1, v2, :cond_90

    .line 4308
    .line 4309
    const v7, 0x1f43b675

    .line 4310
    .line 4311
    .line 4312
    if-eq v1, v7, :cond_90

    .line 4313
    .line 4314
    const v7, 0x1c53bb6b

    .line 4315
    .line 4316
    .line 4317
    if-eq v1, v7, :cond_90

    .line 4318
    .line 4319
    const v12, 0x1654ae6b

    .line 4320
    .line 4321
    .line 4322
    if-ne v1, v12, :cond_8f

    .line 4323
    .line 4324
    goto :goto_48

    .line 4325
    :cond_8f
    :goto_47
    const/4 v1, 0x1

    .line 4326
    goto :goto_49

    .line 4327
    :cond_90
    :goto_48
    invoke-interface {v3, v5}, LW0/t;->n(I)V

    .line 4328
    .line 4329
    .line 4330
    int-to-long v8, v1

    .line 4331
    :cond_91
    const/4 v1, 0x1

    .line 4332
    const-wide/16 v12, -0x1

    .line 4333
    .line 4334
    goto :goto_4a

    .line 4335
    :cond_92
    const v2, 0x1549a966

    .line 4336
    .line 4337
    .line 4338
    const v7, 0x1c53bb6b

    .line 4339
    .line 4340
    .line 4341
    const v12, 0x1654ae6b

    .line 4342
    .line 4343
    .line 4344
    goto :goto_47

    .line 4345
    :goto_49
    invoke-interface {v3, v1}, LW0/t;->n(I)V

    .line 4346
    .line 4347
    .line 4348
    const/4 v2, 0x0

    .line 4349
    const/4 v7, 0x4

    .line 4350
    goto :goto_46

    .line 4351
    :goto_4a
    cmp-long v2, v8, v12

    .line 4352
    .line 4353
    if-nez v2, :cond_93

    .line 4354
    .line 4355
    const/4 v1, 0x3

    .line 4356
    const/4 v2, 0x2

    .line 4357
    const/4 v5, 0x0

    .line 4358
    const/16 v17, 0x0

    .line 4359
    .line 4360
    goto/16 :goto_4e

    .line 4361
    .line 4362
    :cond_93
    long-to-int v2, v8

    .line 4363
    iput v2, v4, Lm1/b;->f:I

    .line 4364
    .line 4365
    iput v1, v4, Lm1/b;->e:I

    .line 4366
    .line 4367
    goto :goto_4b

    .line 4368
    :cond_94
    move-object/from16 v3, p1

    .line 4369
    .line 4370
    const/4 v1, 0x1

    .line 4371
    :goto_4b
    iget v2, v4, Lm1/b;->e:I

    .line 4372
    .line 4373
    if-ne v2, v1, :cond_95

    .line 4374
    .line 4375
    iget-object v2, v4, Lm1/b;->c:Lm1/e;

    .line 4376
    .line 4377
    const/4 v5, 0x0

    .line 4378
    const/16 v7, 0x8

    .line 4379
    .line 4380
    invoke-virtual {v2, v3, v5, v1, v7}, Lm1/e;->c(LW0/t;ZZI)J

    .line 4381
    .line 4382
    .line 4383
    move-result-wide v7

    .line 4384
    iput-wide v7, v4, Lm1/b;->g:J

    .line 4385
    .line 4386
    const/4 v2, 0x2

    .line 4387
    iput v2, v4, Lm1/b;->e:I

    .line 4388
    .line 4389
    goto :goto_4c

    .line 4390
    :cond_95
    const/4 v2, 0x2

    .line 4391
    :goto_4c
    iget-object v5, v4, Lm1/b;->d:LD0/U;

    .line 4392
    .line 4393
    iget v7, v4, Lm1/b;->f:I

    .line 4394
    .line 4395
    invoke-virtual {v5, v7}, LD0/U;->G(I)I

    .line 4396
    .line 4397
    .line 4398
    move-result v5

    .line 4399
    if-eqz v5, :cond_a2

    .line 4400
    .line 4401
    if-eq v5, v1, :cond_9e

    .line 4402
    .line 4403
    if-eq v5, v2, :cond_9c

    .line 4404
    .line 4405
    const/4 v1, 0x3

    .line 4406
    if-eq v5, v1, :cond_9a

    .line 4407
    .line 4408
    const/4 v7, 0x4

    .line 4409
    if-eq v5, v7, :cond_99

    .line 4410
    .line 4411
    const/4 v7, 0x5

    .line 4412
    if-ne v5, v7, :cond_98

    .line 4413
    .line 4414
    iget-wide v7, v4, Lm1/b;->g:J

    .line 4415
    .line 4416
    const-wide/16 v9, 0x4

    .line 4417
    .line 4418
    cmp-long v5, v7, v9

    .line 4419
    .line 4420
    if-eqz v5, :cond_97

    .line 4421
    .line 4422
    const-wide/16 v9, 0x8

    .line 4423
    .line 4424
    cmp-long v5, v7, v9

    .line 4425
    .line 4426
    if-nez v5, :cond_96

    .line 4427
    .line 4428
    goto :goto_4d

    .line 4429
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4430
    .line 4431
    const-string v1, "Invalid float size: "

    .line 4432
    .line 4433
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4434
    .line 4435
    .line 4436
    iget-wide v1, v4, Lm1/b;->g:J

    .line 4437
    .line 4438
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4439
    .line 4440
    .line 4441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4442
    .line 4443
    .line 4444
    move-result-object v0

    .line 4445
    const/4 v1, 0x0

    .line 4446
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 4447
    .line 4448
    .line 4449
    move-result-object v0

    .line 4450
    throw v0

    .line 4451
    :cond_97
    :goto_4d
    iget-object v5, v4, Lm1/b;->d:LD0/U;

    .line 4452
    .line 4453
    iget v9, v4, Lm1/b;->f:I

    .line 4454
    .line 4455
    long-to-int v8, v7

    .line 4456
    invoke-virtual {v4, v3, v8}, Lm1/b;->a(LW0/t;I)D

    .line 4457
    .line 4458
    .line 4459
    move-result-wide v7

    .line 4460
    invoke-virtual {v5, v9, v7, v8}, LD0/U;->E(ID)V

    .line 4461
    .line 4462
    .line 4463
    const/4 v5, 0x0

    .line 4464
    iput v5, v4, Lm1/b;->e:I

    .line 4465
    .line 4466
    goto/16 :goto_45

    .line 4467
    .line 4468
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4469
    .line 4470
    const-string v1, "Invalid element type "

    .line 4471
    .line 4472
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4473
    .line 4474
    .line 4475
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4476
    .line 4477
    .line 4478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4479
    .line 4480
    .line 4481
    move-result-object v0

    .line 4482
    const/4 v1, 0x0

    .line 4483
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 4484
    .line 4485
    .line 4486
    move-result-object v0

    .line 4487
    throw v0

    .line 4488
    :cond_99
    iget-object v5, v4, Lm1/b;->d:LD0/U;

    .line 4489
    .line 4490
    iget v7, v4, Lm1/b;->f:I

    .line 4491
    .line 4492
    iget-wide v8, v4, Lm1/b;->g:J

    .line 4493
    .line 4494
    long-to-int v9, v8

    .line 4495
    invoke-virtual {v5, v7, v9, v3}, LD0/U;->D(IILW0/t;)V

    .line 4496
    .line 4497
    .line 4498
    const/4 v5, 0x0

    .line 4499
    iput v5, v4, Lm1/b;->e:I

    .line 4500
    .line 4501
    goto/16 :goto_45

    .line 4502
    .line 4503
    :cond_9a
    const/4 v5, 0x0

    .line 4504
    iget-wide v7, v4, Lm1/b;->g:J

    .line 4505
    .line 4506
    const-wide/32 v9, 0x7fffffff

    .line 4507
    .line 4508
    .line 4509
    cmp-long v12, v7, v9

    .line 4510
    .line 4511
    if-gtz v12, :cond_9b

    .line 4512
    .line 4513
    iget-object v9, v4, Lm1/b;->d:LD0/U;

    .line 4514
    .line 4515
    iget v10, v4, Lm1/b;->f:I

    .line 4516
    .line 4517
    long-to-int v8, v7

    .line 4518
    invoke-static {v3, v8}, Lm1/b;->c(LW0/t;I)Ljava/lang/String;

    .line 4519
    .line 4520
    .line 4521
    move-result-object v7

    .line 4522
    invoke-virtual {v9, v10, v7}, LD0/U;->M(ILjava/lang/String;)V

    .line 4523
    .line 4524
    .line 4525
    iput v5, v4, Lm1/b;->e:I

    .line 4526
    .line 4527
    goto/16 :goto_45

    .line 4528
    .line 4529
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4530
    .line 4531
    const-string v1, "String element size: "

    .line 4532
    .line 4533
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4534
    .line 4535
    .line 4536
    iget-wide v1, v4, Lm1/b;->g:J

    .line 4537
    .line 4538
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4539
    .line 4540
    .line 4541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4542
    .line 4543
    .line 4544
    move-result-object v0

    .line 4545
    const/4 v1, 0x0

    .line 4546
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 4547
    .line 4548
    .line 4549
    move-result-object v0

    .line 4550
    throw v0

    .line 4551
    :cond_9c
    const/4 v1, 0x3

    .line 4552
    iget-wide v7, v4, Lm1/b;->g:J

    .line 4553
    .line 4554
    const-wide/16 v9, 0x8

    .line 4555
    .line 4556
    cmp-long v5, v7, v9

    .line 4557
    .line 4558
    if-gtz v5, :cond_9d

    .line 4559
    .line 4560
    iget-object v5, v4, Lm1/b;->d:LD0/U;

    .line 4561
    .line 4562
    iget v9, v4, Lm1/b;->f:I

    .line 4563
    .line 4564
    long-to-int v8, v7

    .line 4565
    invoke-virtual {v4, v3, v8}, Lm1/b;->b(LW0/t;I)J

    .line 4566
    .line 4567
    .line 4568
    move-result-wide v7

    .line 4569
    invoke-virtual {v5, v9, v7, v8}, LD0/U;->H(IJ)V

    .line 4570
    .line 4571
    .line 4572
    const/4 v5, 0x0

    .line 4573
    iput v5, v4, Lm1/b;->e:I

    .line 4574
    .line 4575
    goto/16 :goto_45

    .line 4576
    .line 4577
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4578
    .line 4579
    const-string v1, "Invalid integer size: "

    .line 4580
    .line 4581
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4582
    .line 4583
    .line 4584
    iget-wide v1, v4, Lm1/b;->g:J

    .line 4585
    .line 4586
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4587
    .line 4588
    .line 4589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4590
    .line 4591
    .line 4592
    move-result-object v0

    .line 4593
    const/4 v1, 0x0

    .line 4594
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 4595
    .line 4596
    .line 4597
    move-result-object v0

    .line 4598
    throw v0

    .line 4599
    :cond_9e
    const/4 v1, 0x3

    .line 4600
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 4601
    .line 4602
    .line 4603
    move-result-wide v26

    .line 4604
    iget-wide v7, v4, Lm1/b;->g:J

    .line 4605
    .line 4606
    add-long v7, v26, v7

    .line 4607
    .line 4608
    new-instance v5, Lm1/a;

    .line 4609
    .line 4610
    iget v9, v4, Lm1/b;->f:I

    .line 4611
    .line 4612
    invoke-direct {v5, v9, v7, v8}, Lm1/a;-><init>(IJ)V

    .line 4613
    .line 4614
    .line 4615
    invoke-virtual {v10, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4616
    .line 4617
    .line 4618
    iget-object v5, v4, Lm1/b;->d:LD0/U;

    .line 4619
    .line 4620
    iget v7, v4, Lm1/b;->f:I

    .line 4621
    .line 4622
    iget-wide v8, v4, Lm1/b;->g:J

    .line 4623
    .line 4624
    move-object/from16 v24, v5

    .line 4625
    .line 4626
    move/from16 v25, v7

    .line 4627
    .line 4628
    move-wide/from16 v28, v8

    .line 4629
    .line 4630
    invoke-virtual/range {v24 .. v29}, LD0/U;->L(IJJ)V

    .line 4631
    .line 4632
    .line 4633
    const/4 v5, 0x0

    .line 4634
    iput v5, v4, Lm1/b;->e:I

    .line 4635
    .line 4636
    goto/16 :goto_45

    .line 4637
    .line 4638
    :goto_4e
    if-eqz v17, :cond_a0

    .line 4639
    .line 4640
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 4641
    .line 4642
    .line 4643
    move-result-wide v7

    .line 4644
    move-object/from16 v9, p0

    .line 4645
    .line 4646
    iget-boolean v4, v9, Lm1/d;->B:Z

    .line 4647
    .line 4648
    if-eqz v4, :cond_9f

    .line 4649
    .line 4650
    iput-wide v7, v9, Lm1/d;->D:J

    .line 4651
    .line 4652
    iget-wide v0, v9, Lm1/d;->C:J

    .line 4653
    .line 4654
    move-object/from16 v7, p2

    .line 4655
    .line 4656
    iput-wide v0, v7, LW0/w;->a:J

    .line 4657
    .line 4658
    iput-boolean v5, v9, Lm1/d;->B:Z

    .line 4659
    .line 4660
    :goto_4f
    const/4 v0, 0x1

    .line 4661
    goto :goto_50

    .line 4662
    :cond_9f
    move-object/from16 v7, p2

    .line 4663
    .line 4664
    iget-boolean v4, v9, Lm1/d;->y:Z

    .line 4665
    .line 4666
    if-eqz v4, :cond_a1

    .line 4667
    .line 4668
    iget-wide v4, v9, Lm1/d;->D:J

    .line 4669
    .line 4670
    const-wide/16 v12, -0x1

    .line 4671
    .line 4672
    cmp-long v8, v4, v12

    .line 4673
    .line 4674
    if-eqz v8, :cond_a1

    .line 4675
    .line 4676
    iput-wide v4, v7, LW0/w;->a:J

    .line 4677
    .line 4678
    iput-wide v12, v9, Lm1/d;->D:J

    .line 4679
    .line 4680
    goto :goto_4f

    .line 4681
    :goto_50
    return v0

    .line 4682
    :cond_a0
    move-object/from16 v9, p0

    .line 4683
    .line 4684
    move-object/from16 v7, p2

    .line 4685
    .line 4686
    :cond_a1
    move-object v1, v3

    .line 4687
    move-object v2, v7

    .line 4688
    move-object v13, v15

    .line 4689
    move-object/from16 v3, v34

    .line 4690
    .line 4691
    move-object/from16 v5, v35

    .line 4692
    .line 4693
    move-object/from16 v7, v36

    .line 4694
    .line 4695
    const/4 v14, 0x0

    .line 4696
    move-object v15, v0

    .line 4697
    move-object v0, v9

    .line 4698
    move-object v9, v11

    .line 4699
    move-object v11, v6

    .line 4700
    move-object/from16 v6, v37

    .line 4701
    .line 4702
    goto/16 :goto_0

    .line 4703
    .line 4704
    :cond_a2
    const/4 v1, 0x3

    .line 4705
    move-object/from16 v9, p0

    .line 4706
    .line 4707
    move-object/from16 v7, p2

    .line 4708
    .line 4709
    iget-wide v12, v4, Lm1/b;->g:J

    .line 4710
    .line 4711
    long-to-int v5, v12

    .line 4712
    invoke-interface {v3, v5}, LW0/t;->n(I)V

    .line 4713
    .line 4714
    .line 4715
    const/4 v5, 0x0

    .line 4716
    iput v5, v4, Lm1/b;->e:I

    .line 4717
    .line 4718
    move-object v1, v3

    .line 4719
    move-object v2, v7

    .line 4720
    move-object v13, v15

    .line 4721
    move-object/from16 v3, v34

    .line 4722
    .line 4723
    move-object/from16 v5, v35

    .line 4724
    .line 4725
    move-object/from16 v7, v36

    .line 4726
    .line 4727
    const/4 v14, 0x0

    .line 4728
    move-object v15, v0

    .line 4729
    move-object v0, v9

    .line 4730
    move-object v9, v11

    .line 4731
    move-object v11, v6

    .line 4732
    move-object/from16 v6, v37

    .line 4733
    .line 4734
    goto/16 :goto_1

    .line 4735
    .line 4736
    :cond_a3
    move-object v9, v0

    .line 4737
    if-nez v17, :cond_a5

    .line 4738
    .line 4739
    const/4 v14, 0x0

    .line 4740
    :goto_51
    iget-object v0, v9, Lm1/d;->c:Landroid/util/SparseArray;

    .line 4741
    .line 4742
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4743
    .line 4744
    .line 4745
    move-result v0

    .line 4746
    if-ge v14, v0, :cond_a4

    .line 4747
    .line 4748
    iget-object v0, v9, Lm1/d;->c:Landroid/util/SparseArray;

    .line 4749
    .line 4750
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 4751
    .line 4752
    .line 4753
    move-result-object v0

    .line 4754
    check-cast v0, Lm1/c;

    .line 4755
    .line 4756
    iget-object v1, v0, Lm1/c;->Z:LW0/L;

    .line 4757
    .line 4758
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4759
    .line 4760
    .line 4761
    invoke-virtual {v0}, Lm1/c;->b()V

    .line 4762
    .line 4763
    .line 4764
    const/4 v0, 0x1

    .line 4765
    add-int/2addr v14, v0

    .line 4766
    goto :goto_51

    .line 4767
    :cond_a4
    const/4 v1, -0x1

    .line 4768
    return v1

    .line 4769
    :cond_a5
    const/4 v0, 0x0

    .line 4770
    return v0

    .line 4771
    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    .line 4772
    .line 4773
    .line 4774
    .line 4775
    .line 4776
    .line 4777
    .line 4778
    .line 4779
    .line 4780
    .line 4781
    .line 4782
    .line 4783
    .line 4784
    .line 4785
    .line 4786
    .line 4787
    .line 4788
    .line 4789
    .line 4790
    .line 4791
    .line 4792
    .line 4793
    .line 4794
    .line 4795
    .line 4796
    .line 4797
    .line 4798
    .line 4799
    .line 4800
    .line 4801
    .line 4802
    .line 4803
    .line 4804
    .line 4805
    .line 4806
    .line 4807
    .line 4808
    .line 4809
    .line 4810
    .line 4811
    .line 4812
    .line 4813
    .line 4814
    .line 4815
    .line 4816
    .line 4817
    .line 4818
    .line 4819
    .line 4820
    .line 4821
    .line 4822
    .line 4823
    .line 4824
    .line 4825
    .line 4826
    .line 4827
    .line 4828
    .line 4829
    .line 4830
    .line 4831
    .line 4832
    .line 4833
    .line 4834
    .line 4835
    .line 4836
    .line 4837
    .line 4838
    .line 4839
    .line 4840
    .line 4841
    .line 4842
    .line 4843
    .line 4844
    .line 4845
    .line 4846
    .line 4847
    .line 4848
    .line 4849
    .line 4850
    .line 4851
    .line 4852
    .line 4853
    .line 4854
    .line 4855
    .line 4856
    .line 4857
    .line 4858
    .line 4859
    .line 4860
    .line 4861
    .line 4862
    .line 4863
    .line 4864
    .line 4865
    .line 4866
    .line 4867
    .line 4868
    .line 4869
    .line 4870
    .line 4871
    .line 4872
    .line 4873
    .line 4874
    .line 4875
    .line 4876
    .line 4877
    .line 4878
    .line 4879
    .line 4880
    .line 4881
    .line 4882
    .line 4883
    .line 4884
    .line 4885
    .line 4886
    .line 4887
    .line 4888
    .line 4889
    .line 4890
    .line 4891
    .line 4892
    .line 4893
    .line 4894
    .line 4895
    .line 4896
    .line 4897
    .line 4898
    .line 4899
    .line 4900
    .line 4901
    .line 4902
    .line 4903
    .line 4904
    .line 4905
    .line 4906
    .line 4907
    .line 4908
    .line 4909
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
        :pswitch_0
    .end packed-switch

    .line 4910
    .line 4911
    .line 4912
    .line 4913
    .line 4914
    .line 4915
    .line 4916
    .line 4917
    .line 4918
    .line 4919
    .line 4920
    .line 4921
    .line 4922
    .line 4923
    .line 4924
    .line 4925
    .line 4926
    .line 4927
    .line 4928
    .line 4929
    .line 4930
    .line 4931
    .line 4932
    .line 4933
    .line 4934
    .line 4935
    .line 4936
    .line 4937
    .line 4938
    .line 4939
    .line 4940
    .line 4941
    .line 4942
    .line 4943
    .line 4944
    .line 4945
    .line 4946
    .line 4947
    .line 4948
    .line 4949
    .line 4950
    .line 4951
    .line 4952
    .line 4953
    .line 4954
    .line 4955
    .line 4956
    .line 4957
    .line 4958
    .line 4959
    .line 4960
    .line 4961
    .line 4962
    .line 4963
    .line 4964
    .line 4965
    .line 4966
    .line 4967
    .line 4968
    .line 4969
    .line 4970
    .line 4971
    .line 4972
    .line 4973
    .line 4974
    .line 4975
    .line 4976
    .line 4977
    .line 4978
    .line 4979
    .line 4980
    .line 4981
    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_43
        -0x7ce7f3b0 -> :sswitch_42
        -0x76567dc0 -> :sswitch_41
        -0x6a615338 -> :sswitch_40
        -0x672350af -> :sswitch_3f
        -0x585f4fce -> :sswitch_3e
        -0x585f4fcd -> :sswitch_3d
        -0x51dc40b2 -> :sswitch_3c
        -0x37a9c464 -> :sswitch_3b
        -0x2016c535 -> :sswitch_3a
        -0x2016c4e5 -> :sswitch_39
        -0x19552dbd -> :sswitch_38
        -0x1538b2ba -> :sswitch_37
        0x3c02325 -> :sswitch_36
        0x3c02353 -> :sswitch_35
        0x3c030c5 -> :sswitch_34
        0x4e81333 -> :sswitch_33
        0x4e86155 -> :sswitch_32
        0x4e86156 -> :sswitch_31
        0x5e8da3e -> :sswitch_30
        0x1a8350d6 -> :sswitch_2f
        0x2056f406 -> :sswitch_2e
        0x25e26ee2 -> :sswitch_2d
        0x2b45174d -> :sswitch_2c
        0x2b453ce4 -> :sswitch_2b
        0x2c0618eb -> :sswitch_2a
        0x2c065c6b -> :sswitch_29
        0x32fdf009 -> :sswitch_28
        0x3e4ca2d8 -> :sswitch_27
        0x54c61e47 -> :sswitch_26
        0x6bd6c624 -> :sswitch_25
        0x7446132a -> :sswitch_24
        0x7446b0a6 -> :sswitch_23
        0x744ad97d -> :sswitch_22
    .end sparse-switch

    .line 4982
    .line 4983
    .line 4984
    .line 4985
    .line 4986
    .line 4987
    .line 4988
    .line 4989
    .line 4990
    .line 4991
    .line 4992
    .line 4993
    .line 4994
    .line 4995
    .line 4996
    .line 4997
    .line 4998
    .line 4999
    .line 5000
    .line 5001
    .line 5002
    .line 5003
    .line 5004
    .line 5005
    .line 5006
    .line 5007
    .line 5008
    .line 5009
    .line 5010
    .line 5011
    .line 5012
    .line 5013
    .line 5014
    .line 5015
    .line 5016
    .line 5017
    .line 5018
    .line 5019
    .line 5020
    .line 5021
    .line 5022
    .line 5023
    .line 5024
    .line 5025
    .line 5026
    .line 5027
    .line 5028
    .line 5029
    .line 5030
    .line 5031
    .line 5032
    .line 5033
    .line 5034
    .line 5035
    .line 5036
    .line 5037
    .line 5038
    .line 5039
    .line 5040
    .line 5041
    .line 5042
    .line 5043
    .line 5044
    .line 5045
    .line 5046
    .line 5047
    .line 5048
    .line 5049
    .line 5050
    .line 5051
    .line 5052
    .line 5053
    .line 5054
    .line 5055
    .line 5056
    .line 5057
    .line 5058
    .line 5059
    .line 5060
    .line 5061
    .line 5062
    .line 5063
    .line 5064
    .line 5065
    .line 5066
    .line 5067
    .line 5068
    .line 5069
    .line 5070
    .line 5071
    .line 5072
    .line 5073
    .line 5074
    .line 5075
    .line 5076
    .line 5077
    .line 5078
    .line 5079
    .line 5080
    .line 5081
    .line 5082
    .line 5083
    .line 5084
    .line 5085
    .line 5086
    .line 5087
    .line 5088
    .line 5089
    .line 5090
    .line 5091
    .line 5092
    .line 5093
    .line 5094
    .line 5095
    .line 5096
    .line 5097
    .line 5098
    .line 5099
    .line 5100
    .line 5101
    .line 5102
    .line 5103
    .line 5104
    .line 5105
    .line 5106
    .line 5107
    .line 5108
    .line 5109
    .line 5110
    .line 5111
    .line 5112
    .line 5113
    .line 5114
    .line 5115
    .line 5116
    .line 5117
    .line 5118
    .line 5119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
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
        :pswitch_c
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final i(JJ)V
    .locals 0

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lm1/d;->E:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lm1/d;->J:I

    .line 10
    .line 11
    iget-object p2, p0, Lm1/d;->a:Lm1/b;

    .line 12
    .line 13
    iput p1, p2, Lm1/b;->e:I

    .line 14
    .line 15
    iget-object p3, p2, Lm1/b;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p2, Lm1/b;->c:Lm1/e;

    .line 21
    .line 22
    iput p1, p2, Lm1/e;->b:I

    .line 23
    .line 24
    iput p1, p2, Lm1/e;->c:I

    .line 25
    .line 26
    iget-object p2, p0, Lm1/d;->b:Lm1/e;

    .line 27
    .line 28
    iput p1, p2, Lm1/e;->b:I

    .line 29
    .line 30
    iput p1, p2, Lm1/e;->c:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lm1/d;->l()V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    iget-object p3, p0, Lm1/d;->c:Landroid/util/SparseArray;

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
    check-cast p3, Lm1/c;

    .line 49
    .line 50
    iget-object p3, p3, Lm1/c;->V:LW0/M;

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

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final k(LW0/t;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/d;->i:Lp0/E;

    .line 2
    .line 3
    iget v1, v0, Lp0/E;->c:I

    .line 4
    .line 5
    if-lt v1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lp0/E;->a:[B

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v2, p2, :cond_1

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lp0/E;->c(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, v0, Lp0/E;->a:[B

    .line 24
    .line 25
    iget v2, v0, Lp0/E;->c:I

    .line 26
    .line 27
    sub-int v3, p2, v2

    .line 28
    .line 29
    invoke-interface {p1, v1, v2, v3}, LW0/t;->readFully([BII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Lp0/E;->K(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm1/d;->V:I

    .line 3
    .line 4
    iput v0, p0, Lm1/d;->W:I

    .line 5
    .line 6
    iput v0, p0, Lm1/d;->X:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lm1/d;->Y:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lm1/d;->Z:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lm1/d;->a0:Z

    .line 13
    .line 14
    iput v0, p0, Lm1/d;->b0:I

    .line 15
    .line 16
    iput-byte v0, p0, Lm1/d;->c0:B

    .line 17
    .line 18
    iput-boolean v0, p0, Lm1/d;->d0:Z

    .line 19
    .line 20
    iget-object v1, p0, Lm1/d;->l:Lp0/E;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lp0/E;->I(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final m(J)J
    .locals 7

    .line 1
    iget-wide v2, p0, Lm1/d;->t:J

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
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 15
    .line 16
    const-wide/16 v4, 0x3e8

    .line 17
    .line 18
    move-wide v0, p1

    .line 19
    invoke-static/range {v0 .. v6}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-static {p1, p2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    throw p1
.end method

.method public final n(LW0/t;Lm1/c;IZ)I
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
    iget-object v4, v2, Lm1/c;->c:Ljava/lang/String;

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
    sget-object v2, Lm1/d;->f0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lm1/d;->o(LW0/t;[BI)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Lm1/d;->W:I

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lm1/d;->l()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    const-string v4, "S_TEXT/ASS"

    .line 31
    .line 32
    iget-object v5, v2, Lm1/c;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1d

    .line 39
    .line 40
    const-string v4, "S_TEXT/SSA"

    .line 41
    .line 42
    iget-object v5, v2, Lm1/c;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto/16 :goto_e

    .line 51
    .line 52
    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    .line 53
    .line 54
    iget-object v5, v2, Lm1/c;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    sget-object v2, Lm1/d;->i0:[B

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lm1/d;->o(LW0/t;[BI)V

    .line 65
    .line 66
    .line 67
    iget v1, v0, Lm1/d;->W:I

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lm1/d;->l()V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget-object v4, v2, Lm1/c;->Z:LW0/L;

    .line 74
    .line 75
    iget-boolean v5, v0, Lm1/d;->Y:Z

    .line 76
    .line 77
    const/4 v6, 0x2

    .line 78
    const/4 v7, 0x4

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v9, 0x1

    .line 81
    iget-object v10, v0, Lm1/d;->l:Lp0/E;

    .line 82
    .line 83
    if-nez v5, :cond_12

    .line 84
    .line 85
    iget-boolean v5, v2, Lm1/c;->i:Z

    .line 86
    .line 87
    iget-object v11, v0, Lm1/d;->i:Lp0/E;

    .line 88
    .line 89
    if-eqz v5, :cond_e

    .line 90
    .line 91
    iget v5, v0, Lm1/d;->R:I

    .line 92
    .line 93
    const v12, -0x40000001    # -1.9999999f

    .line 94
    .line 95
    .line 96
    and-int/2addr v5, v12

    .line 97
    iput v5, v0, Lm1/d;->R:I

    .line 98
    .line 99
    iget-boolean v5, v0, Lm1/d;->Z:Z

    .line 100
    .line 101
    const/16 v12, 0x80

    .line 102
    .line 103
    if-nez v5, :cond_4

    .line 104
    .line 105
    iget-object v5, v11, Lp0/E;->a:[B

    .line 106
    .line 107
    invoke-interface {v1, v5, v8, v9}, LW0/t;->readFully([BII)V

    .line 108
    .line 109
    .line 110
    iget v5, v0, Lm1/d;->V:I

    .line 111
    .line 112
    add-int/2addr v5, v9

    .line 113
    iput v5, v0, Lm1/d;->V:I

    .line 114
    .line 115
    iget-object v5, v11, Lp0/E;->a:[B

    .line 116
    .line 117
    aget-byte v5, v5, v8

    .line 118
    .line 119
    and-int/lit16 v13, v5, 0x80

    .line 120
    .line 121
    if-eq v13, v12, :cond_3

    .line 122
    .line 123
    iput-byte v5, v0, Lm1/d;->c0:B

    .line 124
    .line 125
    iput-boolean v9, v0, Lm1/d;->Z:Z

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const-string v1, "Extension bit is set in signal byte"

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    throw v1

    .line 136
    :cond_4
    :goto_0
    iget-byte v5, v0, Lm1/d;->c0:B

    .line 137
    .line 138
    and-int/lit8 v13, v5, 0x1

    .line 139
    .line 140
    if-ne v13, v9, :cond_f

    .line 141
    .line 142
    and-int/2addr v5, v6

    .line 143
    if-ne v5, v6, :cond_5

    .line 144
    .line 145
    const/4 v5, 0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const/4 v5, 0x0

    .line 148
    :goto_1
    iget v13, v0, Lm1/d;->R:I

    .line 149
    .line 150
    const/high16 v14, 0x40000000    # 2.0f

    .line 151
    .line 152
    or-int/2addr v13, v14

    .line 153
    iput v13, v0, Lm1/d;->R:I

    .line 154
    .line 155
    iget-boolean v13, v0, Lm1/d;->d0:Z

    .line 156
    .line 157
    if-nez v13, :cond_7

    .line 158
    .line 159
    iget-object v13, v0, Lm1/d;->n:Lp0/E;

    .line 160
    .line 161
    iget-object v14, v13, Lp0/E;->a:[B

    .line 162
    .line 163
    const/16 v15, 0x8

    .line 164
    .line 165
    invoke-interface {v1, v14, v8, v15}, LW0/t;->readFully([BII)V

    .line 166
    .line 167
    .line 168
    iget v14, v0, Lm1/d;->V:I

    .line 169
    .line 170
    add-int/2addr v14, v15

    .line 171
    iput v14, v0, Lm1/d;->V:I

    .line 172
    .line 173
    iput-boolean v9, v0, Lm1/d;->d0:Z

    .line 174
    .line 175
    iget-object v14, v11, Lp0/E;->a:[B

    .line 176
    .line 177
    if-eqz v5, :cond_6

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    const/4 v12, 0x0

    .line 181
    :goto_2
    or-int/2addr v12, v15

    .line 182
    int-to-byte v12, v12

    .line 183
    aput-byte v12, v14, v8

    .line 184
    .line 185
    invoke-virtual {v11, v8}, Lp0/E;->L(I)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v4, v9, v9, v11}, LW0/L;->a(IILp0/E;)V

    .line 189
    .line 190
    .line 191
    iget v12, v0, Lm1/d;->W:I

    .line 192
    .line 193
    add-int/2addr v12, v9

    .line 194
    iput v12, v0, Lm1/d;->W:I

    .line 195
    .line 196
    invoke-virtual {v13, v8}, Lp0/E;->L(I)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v4, v15, v9, v13}, LW0/L;->a(IILp0/E;)V

    .line 200
    .line 201
    .line 202
    iget v12, v0, Lm1/d;->W:I

    .line 203
    .line 204
    add-int/2addr v12, v15

    .line 205
    iput v12, v0, Lm1/d;->W:I

    .line 206
    .line 207
    :cond_7
    if-eqz v5, :cond_f

    .line 208
    .line 209
    iget-boolean v5, v0, Lm1/d;->a0:Z

    .line 210
    .line 211
    if-nez v5, :cond_8

    .line 212
    .line 213
    iget-object v5, v11, Lp0/E;->a:[B

    .line 214
    .line 215
    invoke-interface {v1, v5, v8, v9}, LW0/t;->readFully([BII)V

    .line 216
    .line 217
    .line 218
    iget v5, v0, Lm1/d;->V:I

    .line 219
    .line 220
    add-int/2addr v5, v9

    .line 221
    iput v5, v0, Lm1/d;->V:I

    .line 222
    .line 223
    invoke-virtual {v11, v8}, Lp0/E;->L(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11}, Lp0/E;->z()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    iput v5, v0, Lm1/d;->b0:I

    .line 231
    .line 232
    iput-boolean v9, v0, Lm1/d;->a0:Z

    .line 233
    .line 234
    :cond_8
    iget v5, v0, Lm1/d;->b0:I

    .line 235
    .line 236
    mul-int/lit8 v5, v5, 0x4

    .line 237
    .line 238
    invoke-virtual {v11, v5}, Lp0/E;->I(I)V

    .line 239
    .line 240
    .line 241
    iget-object v12, v11, Lp0/E;->a:[B

    .line 242
    .line 243
    invoke-interface {v1, v12, v8, v5}, LW0/t;->readFully([BII)V

    .line 244
    .line 245
    .line 246
    iget v12, v0, Lm1/d;->V:I

    .line 247
    .line 248
    add-int/2addr v12, v5

    .line 249
    iput v12, v0, Lm1/d;->V:I

    .line 250
    .line 251
    iget v5, v0, Lm1/d;->b0:I

    .line 252
    .line 253
    div-int/2addr v5, v6

    .line 254
    add-int/2addr v5, v9

    .line 255
    int-to-short v5, v5

    .line 256
    mul-int/lit8 v12, v5, 0x6

    .line 257
    .line 258
    add-int/2addr v12, v6

    .line 259
    iget-object v13, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 260
    .line 261
    if-eqz v13, :cond_9

    .line 262
    .line 263
    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    if-ge v13, v12, :cond_a

    .line 268
    .line 269
    :cond_9
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    iput-object v13, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 274
    .line 275
    :cond_a
    iget-object v13, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 276
    .line 277
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    .line 279
    .line 280
    iget-object v13, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 281
    .line 282
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 283
    .line 284
    .line 285
    const/4 v5, 0x0

    .line 286
    const/4 v13, 0x0

    .line 287
    :goto_3
    iget v14, v0, Lm1/d;->b0:I

    .line 288
    .line 289
    if-ge v5, v14, :cond_c

    .line 290
    .line 291
    invoke-virtual {v11}, Lp0/E;->D()I

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    rem-int/lit8 v15, v5, 0x2

    .line 296
    .line 297
    if-nez v15, :cond_b

    .line 298
    .line 299
    iget-object v15, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 300
    .line 301
    sub-int v13, v14, v13

    .line 302
    .line 303
    int-to-short v13, v13

    .line 304
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_b
    iget-object v15, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    sub-int v13, v14, v13

    .line 311
    .line 312
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 313
    .line 314
    .line 315
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 316
    .line 317
    move v13, v14

    .line 318
    goto :goto_3

    .line 319
    :cond_c
    iget v5, v0, Lm1/d;->V:I

    .line 320
    .line 321
    sub-int v5, v3, v5

    .line 322
    .line 323
    sub-int/2addr v5, v13

    .line 324
    rem-int/2addr v14, v6

    .line 325
    if-ne v14, v9, :cond_d

    .line 326
    .line 327
    iget-object v13, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 328
    .line 329
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_d
    iget-object v13, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 334
    .line 335
    int-to-short v5, v5

    .line 336
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 337
    .line 338
    .line 339
    iget-object v5, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 340
    .line 341
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 342
    .line 343
    .line 344
    :goto_5
    iget-object v5, v0, Lm1/d;->q:Ljava/nio/ByteBuffer;

    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    iget-object v13, v0, Lm1/d;->o:Lp0/E;

    .line 351
    .line 352
    invoke-virtual {v13, v12, v5}, Lp0/E;->J(I[B)V

    .line 353
    .line 354
    .line 355
    invoke-interface {v4, v12, v9, v13}, LW0/L;->a(IILp0/E;)V

    .line 356
    .line 357
    .line 358
    iget v5, v0, Lm1/d;->W:I

    .line 359
    .line 360
    add-int/2addr v5, v12

    .line 361
    iput v5, v0, Lm1/d;->W:I

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_e
    iget-object v5, v2, Lm1/c;->j:[B

    .line 365
    .line 366
    if-eqz v5, :cond_f

    .line 367
    .line 368
    array-length v12, v5

    .line 369
    invoke-virtual {v10, v12, v5}, Lp0/E;->J(I[B)V

    .line 370
    .line 371
    .line 372
    :cond_f
    :goto_6
    iget-object v5, v2, Lm1/c;->c:Ljava/lang/String;

    .line 373
    .line 374
    const-string v12, "A_OPUS"

    .line 375
    .line 376
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-eqz v5, :cond_10

    .line 381
    .line 382
    if-eqz p4, :cond_11

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_10
    iget v5, v2, Lm1/c;->g:I

    .line 386
    .line 387
    if-lez v5, :cond_11

    .line 388
    .line 389
    :goto_7
    iget v5, v0, Lm1/d;->R:I

    .line 390
    .line 391
    const/high16 v12, 0x10000000

    .line 392
    .line 393
    or-int/2addr v5, v12

    .line 394
    iput v5, v0, Lm1/d;->R:I

    .line 395
    .line 396
    iget-object v5, v0, Lm1/d;->p:Lp0/E;

    .line 397
    .line 398
    invoke-virtual {v5, v8}, Lp0/E;->I(I)V

    .line 399
    .line 400
    .line 401
    iget v5, v10, Lp0/E;->c:I

    .line 402
    .line 403
    add-int/2addr v5, v3

    .line 404
    iget v12, v0, Lm1/d;->V:I

    .line 405
    .line 406
    sub-int/2addr v5, v12

    .line 407
    invoke-virtual {v11, v7}, Lp0/E;->I(I)V

    .line 408
    .line 409
    .line 410
    iget-object v12, v11, Lp0/E;->a:[B

    .line 411
    .line 412
    shr-int/lit8 v13, v5, 0x18

    .line 413
    .line 414
    and-int/lit16 v13, v13, 0xff

    .line 415
    .line 416
    int-to-byte v13, v13

    .line 417
    aput-byte v13, v12, v8

    .line 418
    .line 419
    shr-int/lit8 v13, v5, 0x10

    .line 420
    .line 421
    and-int/lit16 v13, v13, 0xff

    .line 422
    .line 423
    int-to-byte v13, v13

    .line 424
    aput-byte v13, v12, v9

    .line 425
    .line 426
    shr-int/lit8 v13, v5, 0x8

    .line 427
    .line 428
    and-int/lit16 v13, v13, 0xff

    .line 429
    .line 430
    int-to-byte v13, v13

    .line 431
    aput-byte v13, v12, v6

    .line 432
    .line 433
    and-int/lit16 v5, v5, 0xff

    .line 434
    .line 435
    int-to-byte v5, v5

    .line 436
    const/4 v13, 0x3

    .line 437
    aput-byte v5, v12, v13

    .line 438
    .line 439
    invoke-interface {v4, v7, v6, v11}, LW0/L;->a(IILp0/E;)V

    .line 440
    .line 441
    .line 442
    iget v5, v0, Lm1/d;->W:I

    .line 443
    .line 444
    add-int/2addr v5, v7

    .line 445
    iput v5, v0, Lm1/d;->W:I

    .line 446
    .line 447
    :cond_11
    iput-boolean v9, v0, Lm1/d;->Y:Z

    .line 448
    .line 449
    :cond_12
    iget v5, v10, Lp0/E;->c:I

    .line 450
    .line 451
    add-int/2addr v3, v5

    .line 452
    const-string v5, "V_MPEG4/ISO/AVC"

    .line 453
    .line 454
    iget-object v11, v2, Lm1/c;->c:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    if-nez v5, :cond_17

    .line 461
    .line 462
    const-string v5, "V_MPEGH/ISO/HEVC"

    .line 463
    .line 464
    iget-object v11, v2, Lm1/c;->c:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_13

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_13
    iget-object v5, v2, Lm1/c;->V:LW0/M;

    .line 474
    .line 475
    if-eqz v5, :cond_15

    .line 476
    .line 477
    iget v5, v10, Lp0/E;->c:I

    .line 478
    .line 479
    if-nez v5, :cond_14

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_14
    const/4 v9, 0x0

    .line 483
    :goto_8
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 484
    .line 485
    .line 486
    iget-object v5, v2, Lm1/c;->V:LW0/M;

    .line 487
    .line 488
    invoke-virtual {v5, v1}, LW0/M;->c(LW0/t;)V

    .line 489
    .line 490
    .line 491
    :cond_15
    :goto_9
    iget v5, v0, Lm1/d;->V:I

    .line 492
    .line 493
    if-ge v5, v3, :cond_1b

    .line 494
    .line 495
    sub-int v5, v3, v5

    .line 496
    .line 497
    invoke-virtual {v10}, Lp0/E;->a()I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    if-lez v6, :cond_16

    .line 502
    .line 503
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    invoke-interface {v4, v5, v10}, LW0/L;->e(ILp0/E;)V

    .line 508
    .line 509
    .line 510
    goto :goto_a

    .line 511
    :cond_16
    invoke-interface {v4, v1, v5, v8}, LW0/L;->f(Lm0/j;IZ)I

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    :goto_a
    iget v6, v0, Lm1/d;->V:I

    .line 516
    .line 517
    add-int/2addr v6, v5

    .line 518
    iput v6, v0, Lm1/d;->V:I

    .line 519
    .line 520
    iget v6, v0, Lm1/d;->W:I

    .line 521
    .line 522
    add-int/2addr v6, v5

    .line 523
    iput v6, v0, Lm1/d;->W:I

    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_17
    :goto_b
    iget-object v5, v0, Lm1/d;->h:Lp0/E;

    .line 527
    .line 528
    iget-object v11, v5, Lp0/E;->a:[B

    .line 529
    .line 530
    aput-byte v8, v11, v8

    .line 531
    .line 532
    aput-byte v8, v11, v9

    .line 533
    .line 534
    aput-byte v8, v11, v6

    .line 535
    .line 536
    iget v6, v2, Lm1/c;->a0:I

    .line 537
    .line 538
    rsub-int/lit8 v9, v6, 0x4

    .line 539
    .line 540
    :goto_c
    iget v12, v0, Lm1/d;->V:I

    .line 541
    .line 542
    if-ge v12, v3, :cond_1b

    .line 543
    .line 544
    iget v12, v0, Lm1/d;->X:I

    .line 545
    .line 546
    if-nez v12, :cond_19

    .line 547
    .line 548
    invoke-virtual {v10}, Lp0/E;->a()I

    .line 549
    .line 550
    .line 551
    move-result v12

    .line 552
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    .line 553
    .line 554
    .line 555
    move-result v12

    .line 556
    add-int v13, v9, v12

    .line 557
    .line 558
    sub-int v14, v6, v12

    .line 559
    .line 560
    invoke-interface {v1, v11, v13, v14}, LW0/t;->readFully([BII)V

    .line 561
    .line 562
    .line 563
    if-lez v12, :cond_18

    .line 564
    .line 565
    invoke-virtual {v10, v9, v11, v12}, Lp0/E;->j(I[BI)V

    .line 566
    .line 567
    .line 568
    :cond_18
    iget v12, v0, Lm1/d;->V:I

    .line 569
    .line 570
    add-int/2addr v12, v6

    .line 571
    iput v12, v0, Lm1/d;->V:I

    .line 572
    .line 573
    invoke-virtual {v5, v8}, Lp0/E;->L(I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5}, Lp0/E;->D()I

    .line 577
    .line 578
    .line 579
    move-result v12

    .line 580
    iput v12, v0, Lm1/d;->X:I

    .line 581
    .line 582
    iget-object v12, v0, Lm1/d;->g:Lp0/E;

    .line 583
    .line 584
    invoke-virtual {v12, v8}, Lp0/E;->L(I)V

    .line 585
    .line 586
    .line 587
    invoke-interface {v4, v7, v12}, LW0/L;->e(ILp0/E;)V

    .line 588
    .line 589
    .line 590
    iget v12, v0, Lm1/d;->W:I

    .line 591
    .line 592
    add-int/2addr v12, v7

    .line 593
    iput v12, v0, Lm1/d;->W:I

    .line 594
    .line 595
    goto :goto_c

    .line 596
    :cond_19
    invoke-virtual {v10}, Lp0/E;->a()I

    .line 597
    .line 598
    .line 599
    move-result v13

    .line 600
    if-lez v13, :cond_1a

    .line 601
    .line 602
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 603
    .line 604
    .line 605
    move-result v12

    .line 606
    invoke-interface {v4, v12, v10}, LW0/L;->e(ILp0/E;)V

    .line 607
    .line 608
    .line 609
    goto :goto_d

    .line 610
    :cond_1a
    invoke-interface {v4, v1, v12, v8}, LW0/L;->f(Lm0/j;IZ)I

    .line 611
    .line 612
    .line 613
    move-result v12

    .line 614
    :goto_d
    iget v13, v0, Lm1/d;->V:I

    .line 615
    .line 616
    add-int/2addr v13, v12

    .line 617
    iput v13, v0, Lm1/d;->V:I

    .line 618
    .line 619
    iget v13, v0, Lm1/d;->W:I

    .line 620
    .line 621
    add-int/2addr v13, v12

    .line 622
    iput v13, v0, Lm1/d;->W:I

    .line 623
    .line 624
    iget v13, v0, Lm1/d;->X:I

    .line 625
    .line 626
    sub-int/2addr v13, v12

    .line 627
    iput v13, v0, Lm1/d;->X:I

    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_1b
    const-string v1, "A_VORBIS"

    .line 631
    .line 632
    iget-object v2, v2, Lm1/c;->c:Ljava/lang/String;

    .line 633
    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_1c

    .line 639
    .line 640
    iget-object v1, v0, Lm1/d;->j:Lp0/E;

    .line 641
    .line 642
    invoke-virtual {v1, v8}, Lp0/E;->L(I)V

    .line 643
    .line 644
    .line 645
    invoke-interface {v4, v7, v1}, LW0/L;->e(ILp0/E;)V

    .line 646
    .line 647
    .line 648
    iget v1, v0, Lm1/d;->W:I

    .line 649
    .line 650
    add-int/2addr v1, v7

    .line 651
    iput v1, v0, Lm1/d;->W:I

    .line 652
    .line 653
    :cond_1c
    iget v1, v0, Lm1/d;->W:I

    .line 654
    .line 655
    invoke-virtual/range {p0 .. p0}, Lm1/d;->l()V

    .line 656
    .line 657
    .line 658
    return v1

    .line 659
    :cond_1d
    :goto_e
    sget-object v2, Lm1/d;->h0:[B

    .line 660
    .line 661
    invoke-virtual {v0, v1, v2, v3}, Lm1/d;->o(LW0/t;[BI)V

    .line 662
    .line 663
    .line 664
    iget v1, v0, Lm1/d;->W:I

    .line 665
    .line 666
    invoke-virtual/range {p0 .. p0}, Lm1/d;->l()V

    .line 667
    .line 668
    .line 669
    return v1
.end method

.method public final o(LW0/t;[BI)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    add-int/2addr v0, p3

    .line 3
    iget-object v1, p0, Lm1/d;->m:Lp0/E;

    .line 4
    .line 5
    iget-object v2, v1, Lp0/E;->a:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    add-int v2, v0, p3

    .line 12
    .line 13
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    array-length v3, v2

    .line 21
    invoke-virtual {v1, v3, v2}, Lp0/E;->J(I[B)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v3, p2

    .line 26
    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v1, Lp0/E;->a:[B

    .line 30
    .line 31
    array-length p2, p2

    .line 32
    invoke-interface {p1, v2, p2, p3}, LW0/t;->readFully([BII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4}, Lp0/E;->L(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lp0/E;->K(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
