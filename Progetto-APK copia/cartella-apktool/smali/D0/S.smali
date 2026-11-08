.class public final LD0/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/v;


# static fields
.field public static final p0:Ljava/lang/Object;

.field public static q0:Ljava/util/concurrent/ScheduledExecutorService;

.field public static r0:I


# instance fields
.field public A:LD0/f;

.field public B:Lm2/u;

.field public C:Lm0/d;

.field public D:LD0/K;

.field public E:LD0/K;

.field public F:Lm0/S;

.field public G:Z

.field public H:Ljava/nio/ByteBuffer;

.field public I:I

.field public J:J

.field public K:J

.field public L:J

.field public M:J

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:J

.field public R:F

.field public S:Ljava/nio/ByteBuffer;

.field public T:I

.field public U:Ljava/nio/ByteBuffer;

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public final a:Landroid/content/Context;

.field public a0:I

.field public final b:Lm2/u;

.field public b0:Z

.field public final c:Z

.field public c0:Lm0/e;

.field public final d:LD0/A;

.field public d0:Lf/S;

.field public final e:LD0/Z;

.field public e0:Z

.field public final f:Ln0/k;

.field public f0:J

.field public final g:LD0/Y;

.field public g0:J

.field public final h:Lz4/d0;

.field public h0:Z

.field public final i:LD0/z;

.field public i0:Z

.field public final j:Ljava/util/ArrayDeque;

.field public j0:Landroid/os/Looper;

.field public final k:Z

.field public k0:J

.field public l:I

.field public l0:J

.field public m:LD0/Q;

.field public m0:Landroid/os/Handler;

.field public final n:LD0/M;

.field public n0:Landroid/content/Context;

.field public final o:LD0/M;

.field public final o0:Z

.field public final p:LD0/G;

.field public final q:LD0/C;

.field public final r:LD0/H;

.field public final s:I

.field public t:LC0/I;

.field public u:LD0/s;

.field public v:LD0/J;

.field public w:LD0/J;

.field public x:Ln0/d;

.field public y:Landroid/media/AudioTrack;

.field public z:LD0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LD0/S;->p0:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(LD0/I;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LD0/I;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    iput-object v0, p0, LD0/S;->a:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v2, Lm0/d;->b:Lm0/d;

    .line 18
    .line 19
    iput-object v2, p0, LD0/S;->C:Lm0/d;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v1, p1, LD0/I;->b:LD0/d;

    .line 25
    .line 26
    :goto_1
    iput-object v1, p0, LD0/S;->z:LD0/d;

    .line 27
    .line 28
    iget-object v0, p1, LD0/I;->c:Lm2/u;

    .line 29
    .line 30
    iput-object v0, p0, LD0/S;->b:Lm2/u;

    .line 31
    .line 32
    iget-boolean v0, p1, LD0/I;->d:Z

    .line 33
    .line 34
    iput-boolean v0, p0, LD0/S;->c:Z

    .line 35
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const/16 v2, 0x17

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-lt v0, v2, :cond_2

    .line 43
    .line 44
    iget-boolean v2, p1, LD0/I;->e:Z

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    :goto_2
    iput-boolean v2, p0, LD0/S;->k:Z

    .line 52
    .line 53
    iput v3, p0, LD0/S;->l:I

    .line 54
    .line 55
    iget-object v2, p1, LD0/I;->g:LD0/T;

    .line 56
    .line 57
    iput-object v2, p0, LD0/S;->p:LD0/G;

    .line 58
    .line 59
    iget-object v2, p1, LD0/I;->i:LD0/C;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, LD0/S;->q:LD0/C;

    .line 65
    .line 66
    new-instance v2, LD0/z;

    .line 67
    .line 68
    new-instance v4, LD0/N;

    .line 69
    .line 70
    invoke-direct {v4, p0}, LD0/N;-><init>(LD0/S;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v4}, LD0/z;-><init>(LD0/N;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, LD0/S;->i:LD0/z;

    .line 77
    .line 78
    new-instance v2, LD0/A;

    .line 79
    .line 80
    invoke-direct {v2}, Ln0/h;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, LD0/S;->d:LD0/A;

    .line 84
    .line 85
    new-instance v4, LD0/Z;

    .line 86
    .line 87
    invoke-direct {v4}, Ln0/h;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v5, Lp0/M;->b:[B

    .line 91
    .line 92
    iput-object v5, v4, LD0/Z;->m:[B

    .line 93
    .line 94
    iput-object v4, p0, LD0/S;->e:LD0/Z;

    .line 95
    .line 96
    new-instance v5, Ln0/k;

    .line 97
    .line 98
    invoke-direct {v5}, Ln0/h;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v5, p0, LD0/S;->f:Ln0/k;

    .line 102
    .line 103
    new-instance v5, LD0/Y;

    .line 104
    .line 105
    invoke-direct {v5}, Ln0/h;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v5, p0, LD0/S;->g:LD0/Y;

    .line 109
    .line 110
    invoke-static {v4, v2}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iput-object v2, p0, LD0/S;->h:Lz4/d0;

    .line 115
    .line 116
    const/high16 v2, 0x3f800000    # 1.0f

    .line 117
    .line 118
    iput v2, p0, LD0/S;->R:F

    .line 119
    .line 120
    iput v3, p0, LD0/S;->a0:I

    .line 121
    .line 122
    new-instance v2, Lm0/e;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, LD0/S;->c0:Lm0/e;

    .line 128
    .line 129
    new-instance v2, LD0/K;

    .line 130
    .line 131
    sget-object v10, Lm0/S;->d:Lm0/S;

    .line 132
    .line 133
    const-wide/16 v6, 0x0

    .line 134
    .line 135
    const-wide/16 v8, 0x0

    .line 136
    .line 137
    move-object v4, v2

    .line 138
    move-object v5, v10

    .line 139
    invoke-direct/range {v4 .. v9}, LD0/K;-><init>(Lm0/S;JJ)V

    .line 140
    .line 141
    .line 142
    iput-object v2, p0, LD0/S;->E:LD0/K;

    .line 143
    .line 144
    iput-object v10, p0, LD0/S;->F:Lm0/S;

    .line 145
    .line 146
    iput-boolean v3, p0, LD0/S;->G:Z

    .line 147
    .line 148
    new-instance v2, Ljava/util/ArrayDeque;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v2, p0, LD0/S;->j:Ljava/util/ArrayDeque;

    .line 154
    .line 155
    new-instance v2, LD0/M;

    .line 156
    .line 157
    invoke-direct {v2}, LD0/M;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, p0, LD0/S;->n:LD0/M;

    .line 161
    .line 162
    new-instance v2, LD0/M;

    .line 163
    .line 164
    invoke-direct {v2}, LD0/M;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v2, p0, LD0/S;->o:LD0/M;

    .line 168
    .line 169
    iget-object v2, p1, LD0/I;->h:LU4/b;

    .line 170
    .line 171
    iput-object v2, p0, LD0/S;->r:LD0/H;

    .line 172
    .line 173
    const/16 v2, 0x22

    .line 174
    .line 175
    const/4 v3, -0x1

    .line 176
    if-lt v0, v2, :cond_4

    .line 177
    .line 178
    iget-object p1, p1, LD0/I;->a:Landroid/content/Context;

    .line 179
    .line 180
    if-nez p1, :cond_3

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    invoke-static {p1}, LA0/F;->b(Landroid/content/Context;)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_4

    .line 188
    .line 189
    if-eq p1, v3, :cond_4

    .line 190
    .line 191
    move v3, p1

    .line 192
    :cond_4
    :goto_3
    iput v3, p0, LD0/S;->s:I

    .line 193
    .line 194
    iput-boolean v1, p0, LD0/S;->o0:Z

    .line 195
    .line 196
    return-void
.end method

.method public static r(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, LD0/a;->t(Landroid/media/AudioTrack;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LD0/S;->b0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, LD0/S;->a0:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, LD0/S;->b0:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iget v0, p0, LD0/S;->a0:I

    .line 15
    .line 16
    if-eq v0, p1, :cond_3

    .line 17
    .line 18
    iput p1, p0, LD0/S;->a0:I

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_2
    iput-boolean v1, p0, LD0/S;->Z:Z

    .line 24
    .line 25
    invoke-virtual {p0}, LD0/S;->g()V

    .line 26
    .line 27
    .line 28
    :cond_3
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, LB0/q;->n()Landroid/media/PlaybackParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, LB0/q;->p(Landroid/media/PlaybackParams;)Landroid/media/PlaybackParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, LD0/S;->F:Lm0/S;

    .line 16
    .line 17
    iget v1, v1, Lm0/S;->a:F

    .line 18
    .line 19
    invoke-static {v0, v1}, LB0/q;->q(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, LD0/S;->F:Lm0/S;

    .line 24
    .line 25
    iget v1, v1, Lm0/S;->b:F

    .line 26
    .line 27
    invoke-static {v0, v1}, LB0/q;->D(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, LB0/q;->C(Landroid/media/PlaybackParams;)Landroid/media/PlaybackParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :try_start_0
    iget-object v1, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 36
    .line 37
    invoke-static {v1, v0}, LB0/q;->w(Landroid/media/AudioTrack;Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "DefaultAudioSink"

    .line 43
    .line 44
    const-string v2, "Failed to set playback params"

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v0, Lm0/S;

    .line 50
    .line 51
    iget-object v1, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 52
    .line 53
    invoke-static {v1}, LB0/q;->o(Landroid/media/AudioTrack;)Landroid/media/PlaybackParams;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, LB0/q;->a(Landroid/media/PlaybackParams;)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 62
    .line 63
    invoke-static {v2}, LB0/q;->o(Landroid/media/AudioTrack;)Landroid/media/PlaybackParams;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, LB0/q;->z(Landroid/media/PlaybackParams;)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-direct {v0, v1, v2}, Lm0/S;-><init>(FF)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, LD0/S;->F:Lm0/S;

    .line 75
    .line 76
    iget v0, v0, Lm0/S;->a:F

    .line 77
    .line 78
    iget-object v1, p0, LD0/S;->i:LD0/z;

    .line 79
    .line 80
    iput v0, v1, LD0/z;->i:F

    .line 81
    .line 82
    iget-object v0, v1, LD0/z;->e:LD0/x;

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v2}, LD0/x;->a(I)V

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual {v1}, LD0/z;->g()V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public final C(Lm0/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/S;->c0:Lm0/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/e;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, LD0/S;->c0:Lm0/e;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object p1, p0, LD0/S;->c0:Lm0/e;

    .line 23
    .line 24
    return-void
.end method

.method public final D(Ljava/nio/ByteBuffer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, LD0/S;->w:LD0/J;

    .line 21
    .line 22
    iget v1, v1, LD0/J;->c:I

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :goto_1
    move-object/from16 v3, p1

    .line 27
    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_2
    const-wide/16 v1, 0x14

    .line 31
    .line 32
    invoke-static {v1, v2}, Lp0/M;->R(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-object v1, v0, LD0/S;->w:LD0/J;

    .line 37
    .line 38
    iget v1, v1, LD0/J;->e:I

    .line 39
    .line 40
    int-to-long v5, v1

    .line 41
    const-wide/32 v7, 0xf4240

    .line 42
    .line 43
    .line 44
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 45
    .line 46
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    long-to-int v2, v1

    .line 51
    invoke-virtual/range {p0 .. p0}, LD0/S;->m()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    int-to-long v5, v2

    .line 56
    cmp-long v1, v3, v5

    .line 57
    .line 58
    if-ltz v1, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v1, v0, LD0/S;->w:LD0/J;

    .line 62
    .line 63
    iget v7, v1, LD0/J;->g:I

    .line 64
    .line 65
    long-to-int v4, v3

    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_17

    .line 91
    .line 92
    if-ge v4, v2, :cond_17

    .line 93
    .line 94
    const/high16 v12, 0x50000000

    .line 95
    .line 96
    const/high16 v13, 0x10000000

    .line 97
    .line 98
    const/16 v14, 0x16

    .line 99
    .line 100
    const/16 v15, 0x15

    .line 101
    .line 102
    const/4 v9, 0x4

    .line 103
    const/4 v10, 0x3

    .line 104
    const/4 v11, 0x2

    .line 105
    if-eq v7, v11, :cond_d

    .line 106
    .line 107
    if-eq v7, v10, :cond_c

    .line 108
    .line 109
    if-eq v7, v9, :cond_a

    .line 110
    .line 111
    if-eq v7, v15, :cond_9

    .line 112
    .line 113
    if-eq v7, v14, :cond_8

    .line 114
    .line 115
    if-eq v7, v13, :cond_7

    .line 116
    .line 117
    if-eq v7, v12, :cond_6

    .line 118
    .line 119
    const/high16 v12, 0x60000000

    .line 120
    .line 121
    if-ne v7, v12, :cond_5

    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    and-int/lit16 v12, v12, 0xff

    .line 128
    .line 129
    shl-int/lit8 v12, v12, 0x18

    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    and-int/lit16 v13, v13, 0xff

    .line 136
    .line 137
    shl-int/lit8 v13, v13, 0x10

    .line 138
    .line 139
    or-int/2addr v12, v13

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    and-int/lit16 v13, v13, 0xff

    .line 145
    .line 146
    shl-int/lit8 v13, v13, 0x8

    .line 147
    .line 148
    or-int/2addr v12, v13

    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    and-int/lit16 v13, v13, 0xff

    .line 154
    .line 155
    :goto_3
    or-int/2addr v12, v13

    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw v1

    .line 164
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    and-int/lit16 v12, v12, 0xff

    .line 169
    .line 170
    shl-int/lit8 v12, v12, 0x18

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    and-int/lit16 v13, v13, 0xff

    .line 177
    .line 178
    shl-int/lit8 v13, v13, 0x10

    .line 179
    .line 180
    or-int/2addr v12, v13

    .line 181
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    and-int/lit16 v13, v13, 0xff

    .line 186
    .line 187
    shl-int/lit8 v13, v13, 0x8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    and-int/lit16 v12, v12, 0xff

    .line 195
    .line 196
    shl-int/lit8 v12, v12, 0x18

    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    and-int/lit16 v13, v13, 0xff

    .line 203
    .line 204
    shl-int/lit8 v13, v13, 0x10

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    and-int/lit16 v12, v12, 0xff

    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    and-int/lit16 v13, v13, 0xff

    .line 218
    .line 219
    shl-int/lit8 v13, v13, 0x8

    .line 220
    .line 221
    or-int/2addr v12, v13

    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    and-int/lit16 v13, v13, 0xff

    .line 227
    .line 228
    shl-int/lit8 v13, v13, 0x10

    .line 229
    .line 230
    or-int/2addr v12, v13

    .line 231
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    :goto_4
    and-int/lit16 v13, v13, 0xff

    .line 236
    .line 237
    shl-int/lit8 v13, v13, 0x18

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    and-int/lit16 v12, v12, 0xff

    .line 245
    .line 246
    shl-int/lit8 v12, v12, 0x8

    .line 247
    .line 248
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    and-int/lit16 v13, v13, 0xff

    .line 253
    .line 254
    shl-int/lit8 v13, v13, 0x10

    .line 255
    .line 256
    or-int/2addr v12, v13

    .line 257
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    goto :goto_4

    .line 262
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    const/high16 v13, -0x40800000    # -1.0f

    .line 267
    .line 268
    const/high16 v14, 0x3f800000    # 1.0f

    .line 269
    .line 270
    invoke-static {v12, v13, v14}, Lp0/M;->h(FFF)F

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    const/4 v13, 0x0

    .line 275
    cmpg-float v13, v12, v13

    .line 276
    .line 277
    if-gez v13, :cond_b

    .line 278
    .line 279
    neg-float v12, v12

    .line 280
    const/high16 v13, -0x31000000

    .line 281
    .line 282
    :goto_5
    mul-float v12, v12, v13

    .line 283
    .line 284
    float-to-int v12, v12

    .line 285
    goto :goto_6

    .line 286
    :cond_b
    const/high16 v13, 0x4f000000

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    and-int/lit16 v12, v12, 0xff

    .line 294
    .line 295
    shl-int/lit8 v12, v12, 0x18

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    and-int/lit16 v12, v12, 0xff

    .line 303
    .line 304
    shl-int/lit8 v12, v12, 0x10

    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    goto :goto_4

    .line 311
    :goto_6
    int-to-long v12, v12

    .line 312
    int-to-long v9, v4

    .line 313
    mul-long v12, v12, v9

    .line 314
    .line 315
    div-long/2addr v12, v5

    .line 316
    long-to-int v9, v12

    .line 317
    if-eq v7, v11, :cond_16

    .line 318
    .line 319
    const/4 v10, 0x3

    .line 320
    if-eq v7, v10, :cond_15

    .line 321
    .line 322
    const/4 v10, 0x4

    .line 323
    if-eq v7, v10, :cond_13

    .line 324
    .line 325
    if-eq v7, v15, :cond_12

    .line 326
    .line 327
    const/16 v10, 0x16

    .line 328
    .line 329
    if-eq v7, v10, :cond_11

    .line 330
    .line 331
    const/high16 v10, 0x10000000

    .line 332
    .line 333
    if-eq v7, v10, :cond_10

    .line 334
    .line 335
    const/high16 v10, 0x50000000

    .line 336
    .line 337
    if-eq v7, v10, :cond_f

    .line 338
    .line 339
    const/high16 v10, 0x60000000

    .line 340
    .line 341
    if-ne v7, v10, :cond_e

    .line 342
    .line 343
    shr-int/lit8 v10, v9, 0x18

    .line 344
    .line 345
    int-to-byte v10, v10

    .line 346
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 347
    .line 348
    .line 349
    shr-int/lit8 v10, v9, 0x10

    .line 350
    .line 351
    int-to-byte v10, v10

    .line 352
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 353
    .line 354
    .line 355
    shr-int/lit8 v10, v9, 0x8

    .line 356
    .line 357
    int-to-byte v10, v10

    .line 358
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 359
    .line 360
    .line 361
    int-to-byte v9, v9

    .line 362
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 363
    .line 364
    .line 365
    goto/16 :goto_7

    .line 366
    .line 367
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 368
    .line 369
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 370
    .line 371
    .line 372
    throw v1

    .line 373
    :cond_f
    shr-int/lit8 v10, v9, 0x18

    .line 374
    .line 375
    int-to-byte v10, v10

    .line 376
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 377
    .line 378
    .line 379
    shr-int/lit8 v10, v9, 0x10

    .line 380
    .line 381
    int-to-byte v10, v10

    .line 382
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 383
    .line 384
    .line 385
    shr-int/lit8 v9, v9, 0x8

    .line 386
    .line 387
    int-to-byte v9, v9

    .line 388
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 389
    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_10
    shr-int/lit8 v10, v9, 0x18

    .line 393
    .line 394
    int-to-byte v10, v10

    .line 395
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 396
    .line 397
    .line 398
    shr-int/lit8 v9, v9, 0x10

    .line 399
    .line 400
    int-to-byte v9, v9

    .line 401
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 402
    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_11
    int-to-byte v10, v9

    .line 406
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    .line 408
    .line 409
    shr-int/lit8 v10, v9, 0x8

    .line 410
    .line 411
    int-to-byte v10, v10

    .line 412
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 413
    .line 414
    .line 415
    shr-int/lit8 v10, v9, 0x10

    .line 416
    .line 417
    int-to-byte v10, v10

    .line 418
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 419
    .line 420
    .line 421
    shr-int/lit8 v9, v9, 0x18

    .line 422
    .line 423
    int-to-byte v9, v9

    .line 424
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 425
    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_12
    shr-int/lit8 v10, v9, 0x8

    .line 429
    .line 430
    int-to-byte v10, v10

    .line 431
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 432
    .line 433
    .line 434
    shr-int/lit8 v10, v9, 0x10

    .line 435
    .line 436
    int-to-byte v10, v10

    .line 437
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 438
    .line 439
    .line 440
    shr-int/lit8 v9, v9, 0x18

    .line 441
    .line 442
    int-to-byte v9, v9

    .line 443
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_13
    if-gez v9, :cond_14

    .line 448
    .line 449
    int-to-float v9, v9

    .line 450
    neg-float v9, v9

    .line 451
    const/high16 v10, -0x31000000

    .line 452
    .line 453
    div-float/2addr v9, v10

    .line 454
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 455
    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_14
    int-to-float v9, v9

    .line 459
    const/high16 v10, 0x4f000000

    .line 460
    .line 461
    div-float/2addr v9, v10

    .line 462
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 463
    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_15
    shr-int/lit8 v9, v9, 0x18

    .line 467
    .line 468
    int-to-byte v9, v9

    .line 469
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 470
    .line 471
    .line 472
    goto :goto_7

    .line 473
    :cond_16
    shr-int/lit8 v10, v9, 0x10

    .line 474
    .line 475
    int-to-byte v10, v10

    .line 476
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    .line 478
    .line 479
    shr-int/lit8 v9, v9, 0x18

    .line 480
    .line 481
    int-to-byte v9, v9

    .line 482
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    .line 484
    .line 485
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 486
    .line 487
    .line 488
    move-result v9

    .line 489
    iget v10, v1, LD0/J;->d:I

    .line 490
    .line 491
    add-int/2addr v10, v8

    .line 492
    if-ne v9, v10, :cond_4

    .line 493
    .line 494
    add-int/lit8 v4, v4, 0x1

    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 497
    .line 498
    .line 499
    move-result v8

    .line 500
    goto/16 :goto_2

    .line 501
    .line 502
    :cond_17
    move-object/from16 v1, p1

    .line 503
    .line 504
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 508
    .line 509
    .line 510
    :goto_8
    iput-object v3, v0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 511
    .line 512
    return-void
.end method

.method public final E(Lm0/S;)V
    .locals 7

    .line 1
    new-instance v0, Lm0/S;

    .line 2
    .line 3
    iget v1, p1, Lm0/S;->a:F

    .line 4
    .line 5
    const v2, 0x3dcccccd    # 0.1f

    .line 6
    .line 7
    .line 8
    const/high16 v3, 0x41000000    # 8.0f

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Lp0/M;->h(FFF)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v4, p1, Lm0/S;->b:F

    .line 15
    .line 16
    invoke-static {v4, v2, v3}, Lp0/M;->h(FFF)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v0, v1, v2}, Lm0/S;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LD0/S;->F:Lm0/S;

    .line 24
    .line 25
    invoke-virtual {p0}, LD0/S;->H()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, LD0/S;->B()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, LD0/K;

    .line 36
    .line 37
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    move-object v1, v0

    .line 48
    move-object v2, p1

    .line 49
    invoke-direct/range {v1 .. v6}, LD0/K;-><init>(Lm0/S;JJ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iput-object v0, p0, LD0/S;->D:LD0/K;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iput-object v0, p0, LD0/S;->E:LD0/K;

    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final F(Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lf/S;

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    invoke-direct {v1, p1, v2}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iput-object v1, p0, LD0/S;->d0:Lf/S;

    .line 14
    .line 15
    iget-object v1, p0, LD0/S;->A:LD0/f;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1, p1}, LD0/f;->b(Landroid/media/AudioDeviceInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, LD0/S;->d0:Lf/S;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v0, v1, Lf/S;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 34
    .line 35
    :goto_1
    invoke-static {p1, v0}, LB0/q;->v(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public final G(Lm0/t;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LD0/S;->k(Lm0/t;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, LD0/J;->j:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final a(J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, LD0/S;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    const/high16 v3, 0x60000000

    .line 9
    .line 10
    const/16 v4, 0x16

    .line 11
    .line 12
    const/high16 v5, 0x50000000

    .line 13
    .line 14
    const/16 v6, 0x15

    .line 15
    .line 16
    iget-boolean v7, v0, LD0/S;->c:Z

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    iget-object v9, v0, LD0/S;->b:Lm2/u;

    .line 20
    .line 21
    if-nez v1, :cond_6

    .line 22
    .line 23
    iget-boolean v1, v0, LD0/S;->e0:Z

    .line 24
    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    iget-object v1, v0, LD0/S;->w:LD0/J;

    .line 28
    .line 29
    iget v10, v1, LD0/J;->c:I

    .line 30
    .line 31
    if-nez v10, :cond_4

    .line 32
    .line 33
    iget-object v1, v1, LD0/J;->a:Lm0/t;

    .line 34
    .line 35
    iget v1, v1, Lm0/t;->I:I

    .line 36
    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    sget-object v10, Lp0/M;->a:Ljava/lang/String;

    .line 40
    .line 41
    if-eq v1, v6, :cond_4

    .line 42
    .line 43
    if-eq v1, v5, :cond_4

    .line 44
    .line 45
    if-eq v1, v4, :cond_4

    .line 46
    .line 47
    if-eq v1, v3, :cond_4

    .line 48
    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    iget-object v1, v0, LD0/S;->F:Lm0/S;

    .line 53
    .line 54
    iget-object v10, v9, Lm2/u;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Ln0/j;

    .line 57
    .line 58
    iget v11, v1, Lm0/S;->a:F

    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v12, 0x1

    .line 64
    const/4 v13, 0x0

    .line 65
    cmpl-float v14, v11, v13

    .line 66
    .line 67
    if-lez v14, :cond_1

    .line 68
    .line 69
    const/4 v14, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v14, 0x0

    .line 72
    :goto_0
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 73
    .line 74
    .line 75
    iget v14, v10, Ln0/j;->c:F

    .line 76
    .line 77
    cmpl-float v14, v14, v11

    .line 78
    .line 79
    if-eqz v14, :cond_2

    .line 80
    .line 81
    iput v11, v10, Ln0/j;->c:F

    .line 82
    .line 83
    iput-boolean v12, v10, Ln0/j;->i:Z

    .line 84
    .line 85
    :cond_2
    iget-object v10, v9, Lm2/u;->J:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v10, Ln0/j;

    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget v11, v1, Lm0/S;->b:F

    .line 93
    .line 94
    cmpl-float v13, v11, v13

    .line 95
    .line 96
    if-lez v13, :cond_3

    .line 97
    .line 98
    const/4 v13, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v13, 0x0

    .line 101
    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 102
    .line 103
    .line 104
    iget v13, v10, Ln0/j;->d:F

    .line 105
    .line 106
    cmpl-float v13, v13, v11

    .line 107
    .line 108
    if-eqz v13, :cond_5

    .line 109
    .line 110
    iput v11, v10, Ln0/j;->d:F

    .line 111
    .line 112
    iput-boolean v12, v10, Ln0/j;->i:Z

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    :goto_2
    sget-object v1, Lm0/S;->d:Lm0/S;

    .line 116
    .line 117
    :cond_5
    :goto_3
    iput-object v1, v0, LD0/S;->F:Lm0/S;

    .line 118
    .line 119
    :goto_4
    move-object v11, v1

    .line 120
    goto :goto_5

    .line 121
    :cond_6
    sget-object v1, Lm0/S;->d:Lm0/S;

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_5
    iget-boolean v1, v0, LD0/S;->e0:Z

    .line 125
    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    iget-object v1, v0, LD0/S;->w:LD0/J;

    .line 129
    .line 130
    iget v10, v1, LD0/J;->c:I

    .line 131
    .line 132
    if-nez v10, :cond_8

    .line 133
    .line 134
    iget-object v1, v1, LD0/J;->a:Lm0/t;

    .line 135
    .line 136
    iget v1, v1, Lm0/t;->I:I

    .line 137
    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 141
    .line 142
    if-eq v1, v6, :cond_8

    .line 143
    .line 144
    if-eq v1, v5, :cond_8

    .line 145
    .line 146
    if-eq v1, v4, :cond_8

    .line 147
    .line 148
    if-eq v1, v3, :cond_8

    .line 149
    .line 150
    if-ne v1, v2, :cond_7

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_7
    iget-boolean v8, v0, LD0/S;->G:Z

    .line 154
    .line 155
    iget-object v1, v9, Lm2/u;->I:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, LD0/X;

    .line 158
    .line 159
    iput-boolean v8, v1, LD0/X;->o:Z

    .line 160
    .line 161
    :cond_8
    :goto_6
    iput-boolean v8, v0, LD0/S;->G:Z

    .line 162
    .line 163
    iget-object v1, v0, LD0/S;->j:Ljava/util/ArrayDeque;

    .line 164
    .line 165
    new-instance v2, LD0/K;

    .line 166
    .line 167
    const-wide/16 v3, 0x0

    .line 168
    .line 169
    move-wide/from16 v5, p1

    .line 170
    .line 171
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 172
    .line 173
    .line 174
    move-result-wide v12

    .line 175
    iget-object v3, v0, LD0/S;->w:LD0/J;

    .line 176
    .line 177
    invoke-virtual/range {p0 .. p0}, LD0/S;->m()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    iget v3, v3, LD0/J;->e:I

    .line 182
    .line 183
    invoke-static {v3, v4, v5}, Lp0/M;->X(IJ)J

    .line 184
    .line 185
    .line 186
    move-result-wide v14

    .line 187
    move-object v10, v2

    .line 188
    invoke-direct/range {v10 .. v15}, LD0/K;-><init>(Lm0/S;JJ)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, LD0/S;->w:LD0/J;

    .line 195
    .line 196
    iget-object v1, v1, LD0/J;->i:Ln0/d;

    .line 197
    .line 198
    iput-object v1, v0, LD0/S;->x:Ln0/d;

    .line 199
    .line 200
    invoke-virtual {v1}, Ln0/d;->b()V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, LD0/S;->u:LD0/s;

    .line 204
    .line 205
    if-eqz v1, :cond_9

    .line 206
    .line 207
    iget-boolean v2, v0, LD0/S;->G:Z

    .line 208
    .line 209
    invoke-interface {v1, v2}, LD0/s;->f(Z)V

    .line 210
    .line 211
    .line 212
    :cond_9
    return-void
.end method

.method public final b(LD0/p;Lm0/d;ILm0/t;Landroid/content/Context;)Landroid/media/AudioTrack;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, LD0/S;->r:LD0/H;

    .line 2
    .line 3
    check-cast v0, LU4/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p5}, LU4/b;->S(LD0/p;Lm0/d;ILandroid/content/Context;)Landroid/media/AudioTrack;

    .line 6
    .line 7
    .line 8
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 p3, 0x1

    .line 14
    if-ne v1, p3, :cond_0

    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    new-instance p2, LD0/r;

    .line 21
    .line 22
    iget v4, p1, LD0/p;->a:I

    .line 23
    .line 24
    iget v5, p1, LD0/p;->f:I

    .line 25
    .line 26
    iget v2, p1, LD0/p;->b:I

    .line 27
    .line 28
    iget v3, p1, LD0/p;->c:I

    .line 29
    .line 30
    iget-boolean v7, p1, LD0/p;->e:Z

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v0, p2

    .line 34
    move-object v6, p4

    .line 35
    invoke-direct/range {v0 .. v8}, LD0/r;-><init>(IIIIILm0/t;ZLjava/lang/RuntimeException;)V

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :goto_0
    move-object v8, p2

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p2

    .line 42
    goto :goto_0

    .line 43
    :catch_2
    move-exception p2

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    new-instance p2, LD0/r;

    .line 46
    .line 47
    iget v3, p1, LD0/p;->c:I

    .line 48
    .line 49
    iget v4, p1, LD0/p;->a:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iget v2, p1, LD0/p;->b:I

    .line 53
    .line 54
    iget v5, p1, LD0/p;->f:I

    .line 55
    .line 56
    iget-boolean v7, p1, LD0/p;->e:Z

    .line 57
    .line 58
    move-object v0, p2

    .line 59
    move-object v6, p4

    .line 60
    invoke-direct/range {v0 .. v8}, LD0/r;-><init>(IIIIILm0/t;ZLjava/lang/RuntimeException;)V

    .line 61
    .line 62
    .line 63
    throw p2
.end method

.method public final c(LD0/J;)Landroid/media/AudioTrack;
    .locals 8

    .line 1
    :try_start_0
    iget v0, p0, LD0/S;->a0:I

    .line 2
    .line 3
    iget v1, p0, LD0/S;->s:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, LD0/S;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v4, 0x22

    .line 15
    .line 16
    if-lt v3, v4, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, LD0/S;->n0:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {v2, v1}, LA0/F;->k(Landroid/content/Context;I)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, LD0/S;->n0:Landroid/content/Context;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, LD0/S;->n0:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    move-object v7, v0

    .line 35
    const/4 v5, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    move v5, v0

    .line 39
    move-object v7, v1

    .line 40
    :goto_1
    invoke-virtual {p1}, LD0/J;->a()LD0/p;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, LD0/S;->C:Lm0/d;

    .line 45
    .line 46
    iget-object v6, p1, LD0/J;->a:Lm0/t;

    .line 47
    .line 48
    move-object v2, p0

    .line 49
    invoke-virtual/range {v2 .. v7}, LD0/S;->b(LD0/p;Lm0/d;ILm0/t;Landroid/content/Context;)Landroid/media/AudioTrack;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catch LD0/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p1

    .line 54
    :goto_2
    iget-object v0, p0, LD0/S;->u:LD0/s;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0, p1}, LD0/s;->w(Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    throw p1
.end method

.method public final d(Lm0/t;[I)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, LD0/S;->s()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v3, Lm0/t;->o:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "audio/raw"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean v4, v1, LD0/S;->k:Z

    .line 17
    .line 18
    iget-object v5, v1, LD0/S;->r:LD0/H;

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, -0x1

    .line 22
    iget-object v9, v3, Lm0/t;->o:Ljava/lang/String;

    .line 23
    .line 24
    iget v10, v3, Lm0/t;->H:I

    .line 25
    .line 26
    iget v11, v3, Lm0/t;->G:I

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget v0, v3, Lm0/t;->I:I

    .line 31
    .line 32
    invoke-static {v0}, Lp0/M;->M(I)Z

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lp0/M;->s(I)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    mul-int v12, v12, v11

    .line 44
    .line 45
    new-instance v13, Lz4/E;

    .line 46
    .line 47
    const/4 v14, 0x4

    .line 48
    invoke-direct {v13, v14}, Lz4/B;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iget-object v15, v1, LD0/S;->h:Lz4/d0;

    .line 52
    .line 53
    invoke-virtual {v13, v15}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 54
    .line 55
    .line 56
    iget-boolean v15, v1, LD0/S;->c:Z

    .line 57
    .line 58
    if-eqz v15, :cond_1

    .line 59
    .line 60
    const/16 v15, 0x15

    .line 61
    .line 62
    if-eq v0, v15, :cond_0

    .line 63
    .line 64
    const/high16 v15, 0x50000000

    .line 65
    .line 66
    if-eq v0, v15, :cond_0

    .line 67
    .line 68
    const/16 v15, 0x16

    .line 69
    .line 70
    if-eq v0, v15, :cond_0

    .line 71
    .line 72
    const/high16 v15, 0x60000000

    .line 73
    .line 74
    if-eq v0, v15, :cond_0

    .line 75
    .line 76
    if-ne v0, v14, :cond_1

    .line 77
    .line 78
    :cond_0
    iget-object v14, v1, LD0/S;->g:LD0/Y;

    .line 79
    .line 80
    invoke-virtual {v13, v14}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v14, v1, LD0/S;->f:Ln0/k;

    .line 85
    .line 86
    invoke-virtual {v13, v14}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v14, v1, LD0/S;->b:Lm2/u;

    .line 90
    .line 91
    iget-object v14, v14, Lm2/u;->H:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v14, [Ln0/g;

    .line 94
    .line 95
    invoke-virtual {v13, v14}, Lz4/B;->h0([Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    new-instance v14, Ln0/d;

    .line 99
    .line 100
    invoke-virtual {v13}, Lz4/E;->m0()Lz4/d0;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    invoke-direct {v14, v13}, Ln0/d;-><init>(Lz4/d0;)V

    .line 105
    .line 106
    .line 107
    iget-object v13, v1, LD0/S;->x:Ln0/d;

    .line 108
    .line 109
    invoke-virtual {v14, v13}, Ln0/d;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_2

    .line 114
    .line 115
    iget-object v14, v1, LD0/S;->x:Ln0/d;

    .line 116
    .line 117
    :cond_2
    iget v13, v3, Lm0/t;->J:I

    .line 118
    .line 119
    iget-object v15, v1, LD0/S;->e:LD0/Z;

    .line 120
    .line 121
    iput v13, v15, LD0/Z;->i:I

    .line 122
    .line 123
    iget v13, v3, Lm0/t;->K:I

    .line 124
    .line 125
    iput v13, v15, LD0/Z;->j:I

    .line 126
    .line 127
    iget-object v13, v1, LD0/S;->d:LD0/A;

    .line 128
    .line 129
    move-object/from16 v15, p2

    .line 130
    .line 131
    iput-object v15, v13, LD0/A;->i:[I

    .line 132
    .line 133
    new-instance v13, Ln0/e;

    .line 134
    .line 135
    invoke-direct {v13, v10, v11, v0}, Ln0/e;-><init>(III)V

    .line 136
    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v14, v13}, Ln0/d;->a(Ln0/e;)Ln0/e;

    .line 139
    .line 140
    .line 141
    move-result-object v0
    :try_end_0
    .catch Ln0/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    check-cast v5, LU4/b;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget v5, v0, Ln0/e;->b:I

    .line 148
    .line 149
    invoke-static {v5}, Lp0/M;->r(I)I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    iget v11, v0, Ln0/e;->c:I

    .line 154
    .line 155
    invoke-static {v11}, Lp0/M;->s(I)I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    mul-int v13, v13, v5

    .line 160
    .line 161
    iget v0, v0, Ln0/e;->a:I

    .line 162
    .line 163
    const/4 v5, 0x0

    .line 164
    const/4 v15, 0x0

    .line 165
    move/from16 v24, v10

    .line 166
    .line 167
    move v10, v0

    .line 168
    move/from16 v0, v24

    .line 169
    .line 170
    move/from16 v25, v12

    .line 171
    .line 172
    move v12, v4

    .line 173
    move/from16 v4, v25

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    move-object v2, v0

    .line 178
    new-instance v0, LD0/q;

    .line 179
    .line 180
    invoke-direct {v0, v2, v3}, LD0/q;-><init>(Ln0/f;Lm0/t;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_3
    new-instance v0, Ln0/d;

    .line 185
    .line 186
    sget-object v12, Lz4/d0;->K:Lz4/d0;

    .line 187
    .line 188
    invoke-direct {v0, v12}, Ln0/d;-><init>(Lz4/d0;)V

    .line 189
    .line 190
    .line 191
    iget v12, v1, LD0/S;->l:I

    .line 192
    .line 193
    if-eqz v12, :cond_4

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p1}, LD0/S;->j(Lm0/t;)LD0/h;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    goto :goto_1

    .line 200
    :cond_4
    sget-object v12, LD0/h;->d:LD0/h;

    .line 201
    .line 202
    :goto_1
    iget v13, v1, LD0/S;->l:I

    .line 203
    .line 204
    if-eqz v13, :cond_5

    .line 205
    .line 206
    iget-boolean v13, v12, LD0/h;->a:Z

    .line 207
    .line 208
    if-eqz v13, :cond_5

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object v4, v3, Lm0/t;->k:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v9, v4}, Lm0/O;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    check-cast v5, LU4/b;

    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {v11}, Lp0/M;->r(I)I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    iget-boolean v11, v12, LD0/h;->b:Z

    .line 229
    .line 230
    move-object v14, v0

    .line 231
    move v0, v5

    .line 232
    move v15, v11

    .line 233
    const/4 v5, 0x1

    .line 234
    const/4 v12, 0x1

    .line 235
    const/4 v13, -0x1

    .line 236
    move v11, v4

    .line 237
    const/4 v4, -0x1

    .line 238
    goto :goto_2

    .line 239
    :cond_5
    iget-object v5, v1, LD0/S;->z:LD0/d;

    .line 240
    .line 241
    iget-object v11, v1, LD0/S;->C:Lm0/d;

    .line 242
    .line 243
    invoke-virtual {v5, v11, v3}, LD0/d;->d(Lm0/d;Lm0/t;)Landroid/util/Pair;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    if-eqz v5, :cond_15

    .line 248
    .line 249
    iget-object v11, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v11, Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v5, Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    move-object v14, v0

    .line 266
    move v12, v4

    .line 267
    move v0, v5

    .line 268
    const/4 v4, -0x1

    .line 269
    const/4 v5, 0x2

    .line 270
    const/4 v13, -0x1

    .line 271
    const/4 v15, 0x0

    .line 272
    :goto_2
    const-string v8, ") for: "

    .line 273
    .line 274
    if-eqz v11, :cond_14

    .line 275
    .line 276
    if-eqz v0, :cond_13

    .line 277
    .line 278
    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    .line 279
    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    iget v9, v3, Lm0/t;->j:I

    .line 285
    .line 286
    if-eqz v8, :cond_6

    .line 287
    .line 288
    if-ne v9, v7, :cond_6

    .line 289
    .line 290
    const v9, 0xbb800

    .line 291
    .line 292
    .line 293
    :cond_6
    invoke-static {v10, v0, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    const/4 v2, -0x2

    .line 298
    if-eq v8, v2, :cond_7

    .line 299
    .line 300
    const/4 v2, 0x1

    .line 301
    goto :goto_3

    .line 302
    :cond_7
    const/4 v2, 0x0

    .line 303
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 304
    .line 305
    .line 306
    if-eq v13, v7, :cond_8

    .line 307
    .line 308
    move v2, v13

    .line 309
    goto :goto_4

    .line 310
    :cond_8
    const/4 v2, 0x1

    .line 311
    :goto_4
    if-eqz v12, :cond_9

    .line 312
    .line 313
    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_9
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 317
    .line 318
    :goto_5
    iget-object v7, v1, LD0/S;->p:LD0/G;

    .line 319
    .line 320
    check-cast v7, LD0/T;

    .line 321
    .line 322
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    const-wide/32 v20, 0xf4240

    .line 326
    .line 327
    .line 328
    if-eqz v5, :cond_11

    .line 329
    .line 330
    if-eq v5, v6, :cond_f

    .line 331
    .line 332
    const/4 v6, 0x2

    .line 333
    if-ne v5, v6, :cond_e

    .line 334
    .line 335
    iget v6, v7, LD0/T;->e:I

    .line 336
    .line 337
    const/4 v3, 0x5

    .line 338
    move/from16 v16, v15

    .line 339
    .line 340
    const/16 v15, 0x8

    .line 341
    .line 342
    if-ne v11, v3, :cond_b

    .line 343
    .line 344
    iget v3, v7, LD0/T;->g:I

    .line 345
    .line 346
    :goto_6
    mul-int v6, v6, v3

    .line 347
    .line 348
    :cond_a
    const/4 v3, -0x1

    .line 349
    goto :goto_7

    .line 350
    :cond_b
    if-ne v11, v15, :cond_a

    .line 351
    .line 352
    iget v3, v7, LD0/T;->h:I

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :goto_7
    if-eq v9, v3, :cond_c

    .line 356
    .line 357
    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 358
    .line 359
    invoke-static {v9, v15, v3}, LE3/f;->j(IILjava/math/RoundingMode;)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    goto :goto_9

    .line 364
    :cond_c
    invoke-static {v11}, LE3/f;->n(I)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    const v7, -0x7fffffff

    .line 369
    .line 370
    .line 371
    if-eq v3, v7, :cond_d

    .line 372
    .line 373
    const/4 v7, 0x1

    .line 374
    goto :goto_8

    .line 375
    :cond_d
    const/4 v7, 0x0

    .line 376
    :goto_8
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 377
    .line 378
    .line 379
    :goto_9
    int-to-long v6, v6

    .line 380
    move-object/from16 v19, v14

    .line 381
    .line 382
    int-to-long v14, v3

    .line 383
    mul-long v6, v6, v14

    .line 384
    .line 385
    div-long v6, v6, v20

    .line 386
    .line 387
    invoke-static {v6, v7}, Ly4/k;->y(J)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    :goto_a
    move/from16 v23, v10

    .line 392
    .line 393
    move/from16 p2, v11

    .line 394
    .line 395
    move/from16 v22, v12

    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 399
    .line 400
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_f
    move-object/from16 v19, v14

    .line 405
    .line 406
    move/from16 v16, v15

    .line 407
    .line 408
    invoke-static {v11}, LE3/f;->n(I)I

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    const v6, -0x7fffffff

    .line 413
    .line 414
    .line 415
    if-eq v3, v6, :cond_10

    .line 416
    .line 417
    const/4 v6, 0x1

    .line 418
    goto :goto_b

    .line 419
    :cond_10
    const/4 v6, 0x0

    .line 420
    :goto_b
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 421
    .line 422
    .line 423
    iget v6, v7, LD0/T;->f:I

    .line 424
    .line 425
    int-to-long v6, v6

    .line 426
    int-to-long v14, v3

    .line 427
    mul-long v6, v6, v14

    .line 428
    .line 429
    div-long v6, v6, v20

    .line 430
    .line 431
    invoke-static {v6, v7}, Ly4/k;->y(J)I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    goto :goto_a

    .line 436
    :cond_11
    move-object/from16 v19, v14

    .line 437
    .line 438
    move/from16 v16, v15

    .line 439
    .line 440
    iget v3, v7, LD0/T;->d:I

    .line 441
    .line 442
    mul-int v3, v3, v8

    .line 443
    .line 444
    iget v6, v7, LD0/T;->b:I

    .line 445
    .line 446
    int-to-long v14, v6

    .line 447
    move/from16 p2, v11

    .line 448
    .line 449
    move/from16 v22, v12

    .line 450
    .line 451
    int-to-long v11, v10

    .line 452
    mul-long v14, v14, v11

    .line 453
    .line 454
    move/from16 v23, v10

    .line 455
    .line 456
    int-to-long v9, v2

    .line 457
    mul-long v14, v14, v9

    .line 458
    .line 459
    div-long v14, v14, v20

    .line 460
    .line 461
    invoke-static {v14, v15}, Ly4/k;->y(J)I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    iget v7, v7, LD0/T;->c:I

    .line 466
    .line 467
    int-to-long v14, v7

    .line 468
    mul-long v14, v14, v11

    .line 469
    .line 470
    mul-long v14, v14, v9

    .line 471
    .line 472
    div-long v14, v14, v20

    .line 473
    .line 474
    invoke-static {v14, v15}, Ly4/k;->y(J)I

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    invoke-static {v3, v6, v7}, Lp0/M;->i(III)I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    :goto_c
    int-to-double v6, v3

    .line 483
    mul-double v6, v6, v17

    .line 484
    .line 485
    double-to-int v3, v6

    .line 486
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    add-int/2addr v3, v2

    .line 491
    const/4 v6, 0x1

    .line 492
    sub-int/2addr v3, v6

    .line 493
    div-int/2addr v3, v2

    .line 494
    mul-int v10, v3, v2

    .line 495
    .line 496
    const/4 v2, 0x0

    .line 497
    iput-boolean v2, v1, LD0/S;->h0:Z

    .line 498
    .line 499
    new-instance v15, LD0/J;

    .line 500
    .line 501
    iget-boolean v14, v1, LD0/S;->e0:Z

    .line 502
    .line 503
    move-object v2, v15

    .line 504
    move-object/from16 v3, p1

    .line 505
    .line 506
    move v6, v13

    .line 507
    move/from16 v7, v23

    .line 508
    .line 509
    move v8, v0

    .line 510
    move/from16 v9, p2

    .line 511
    .line 512
    move-object/from16 v11, v19

    .line 513
    .line 514
    move/from16 v12, v22

    .line 515
    .line 516
    move/from16 v13, v16

    .line 517
    .line 518
    invoke-direct/range {v2 .. v14}, LD0/J;-><init>(Lm0/t;IIIIIIILn0/d;ZZZ)V

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p0 .. p0}, LD0/S;->q()Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_12

    .line 526
    .line 527
    iput-object v15, v1, LD0/S;->v:LD0/J;

    .line 528
    .line 529
    goto :goto_d

    .line 530
    :cond_12
    iput-object v15, v1, LD0/S;->w:LD0/J;

    .line 531
    .line 532
    :goto_d
    return-void

    .line 533
    :cond_13
    new-instance v0, LD0/q;

    .line 534
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v3, "Invalid output channel config (mode="

    .line 538
    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    move-object/from16 v3, p1

    .line 549
    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-direct {v0, v2, v3}, LD0/q;-><init>(Ljava/lang/String;Lm0/t;)V

    .line 558
    .line 559
    .line 560
    throw v0

    .line 561
    :cond_14
    new-instance v0, LD0/q;

    .line 562
    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v4, "Invalid output encoding (mode="

    .line 566
    .line 567
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-direct {v0, v2, v3}, LD0/q;-><init>(Ljava/lang/String;Lm0/t;)V

    .line 584
    .line 585
    .line 586
    throw v0

    .line 587
    :cond_15
    new-instance v0, LD0/q;

    .line 588
    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v4, "Unable to configure passthrough for: "

    .line 592
    .line 593
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-direct {v0, v2, v3}, LD0/q;-><init>(Ljava/lang/String;Lm0/t;)V

    .line 604
    .line 605
    .line 606
    throw v0
.end method

.method public final e(J)V
    .locals 12

    .line 1
    iget-object v0, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LD0/S;->o:LD0/M;

    .line 7
    .line 8
    iget-object v1, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    sget-object v1, LD0/S;->p0:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    sget v4, LD0/S;->r0:I

    .line 19
    .line 20
    if-lez v4, :cond_2

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v4, 0x0

    .line 25
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v4, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-wide v6, v0, LD0/M;->c:J

    .line 34
    .line 35
    cmp-long v1, v4, v6

    .line 36
    .line 37
    if-gez v1, :cond_4

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_4
    :goto_2
    iget-object v1, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-boolean v4, p0, LD0/S;->e0:Z

    .line 47
    .line 48
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    if-eqz v4, :cond_d

    .line 54
    .line 55
    cmp-long v4, p1, v5

    .line 56
    .line 57
    if-eqz v4, :cond_5

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    const/4 v4, 0x0

    .line 62
    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 63
    .line 64
    .line 65
    const-wide/high16 v7, -0x8000000000000000L

    .line 66
    .line 67
    cmp-long v4, p1, v7

    .line 68
    .line 69
    if-nez v4, :cond_6

    .line 70
    .line 71
    iget-wide p1, p0, LD0/S;->f0:J

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    iput-wide p1, p0, LD0/S;->f0:J

    .line 75
    .line 76
    :goto_4
    iget-object v4, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 77
    .line 78
    iget-object v7, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v9, 0x1a

    .line 83
    .line 84
    const-wide/16 v10, 0x3e8

    .line 85
    .line 86
    if-lt v8, v9, :cond_7

    .line 87
    .line 88
    mul-long p1, p1, v10

    .line 89
    .line 90
    invoke-static {v4, v7, v1, p1, p2}, LB0/q;->f(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    goto :goto_5

    .line 95
    :cond_7
    iget-object v8, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    if-nez v8, :cond_8

    .line 98
    .line 99
    const/16 v8, 0x10

    .line 100
    .line 101
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    iput-object v8, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 108
    .line 109
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    iget-object v8, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    const v9, 0x55550001

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    :cond_8
    iget v8, p0, LD0/S;->I:I

    .line 121
    .line 122
    if-nez v8, :cond_9

    .line 123
    .line 124
    iget-object v8, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    const/4 v9, 0x4

    .line 127
    invoke-virtual {v8, v9, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    iget-object v8, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    const/16 v9, 0x8

    .line 133
    .line 134
    mul-long p1, p1, v10

    .line 135
    .line 136
    invoke-virtual {v8, v9, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    .line 143
    .line 144
    iput v1, p0, LD0/S;->I:I

    .line 145
    .line 146
    :cond_9
    iget-object p1, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-lez p1, :cond_b

    .line 153
    .line 154
    iget-object p2, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    invoke-virtual {v4, p2, p1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-gez p2, :cond_a

    .line 161
    .line 162
    iput v2, p0, LD0/S;->I:I

    .line 163
    .line 164
    move p1, p2

    .line 165
    goto :goto_5

    .line 166
    :cond_a
    if-ge p2, p1, :cond_b

    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    goto :goto_5

    .line 170
    :cond_b
    invoke-virtual {v4, v7, v1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-gez p1, :cond_c

    .line 175
    .line 176
    iput v2, p0, LD0/S;->I:I

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_c
    iget p2, p0, LD0/S;->I:I

    .line 180
    .line 181
    sub-int/2addr p2, p1

    .line 182
    iput p2, p0, LD0/S;->I:I

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_d
    iget-object p1, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 186
    .line 187
    iget-object p2, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    invoke-virtual {p1, p2, v1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 194
    .line 195
    .line 196
    move-result-wide v7

    .line 197
    iput-wide v7, p0, LD0/S;->g0:J

    .line 198
    .line 199
    const-wide/16 v7, 0x0

    .line 200
    .line 201
    if-gez p1, :cond_16

    .line 202
    .line 203
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    .line 205
    const/16 v1, 0x18

    .line 206
    .line 207
    if-lt p2, v1, :cond_e

    .line 208
    .line 209
    const/4 p2, -0x6

    .line 210
    if-eq p1, p2, :cond_f

    .line 211
    .line 212
    :cond_e
    const/16 p2, -0x20

    .line 213
    .line 214
    if-ne p1, p2, :cond_12

    .line 215
    .line 216
    :cond_f
    invoke-virtual {p0}, LD0/S;->m()J

    .line 217
    .line 218
    .line 219
    move-result-wide v4

    .line 220
    cmp-long p2, v4, v7

    .line 221
    .line 222
    if-lez p2, :cond_11

    .line 223
    .line 224
    :cond_10
    :goto_6
    const/4 v2, 0x1

    .line 225
    goto :goto_7

    .line 226
    :cond_11
    iget-object p2, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 227
    .line 228
    invoke-static {p2}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_12

    .line 233
    .line 234
    iget-object p2, p0, LD0/S;->w:LD0/J;

    .line 235
    .line 236
    iget p2, p2, LD0/J;->c:I

    .line 237
    .line 238
    if-ne p2, v3, :cond_10

    .line 239
    .line 240
    iput-boolean v3, p0, LD0/S;->h0:Z

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_12
    :goto_7
    new-instance p2, LD0/u;

    .line 244
    .line 245
    iget-object v1, p0, LD0/S;->w:LD0/J;

    .line 246
    .line 247
    iget-object v1, v1, LD0/J;->a:Lm0/t;

    .line 248
    .line 249
    invoke-direct {p2, p1, v1, v2}, LD0/u;-><init>(ILm0/t;Z)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, LD0/S;->u:LD0/s;

    .line 253
    .line 254
    if-eqz p1, :cond_13

    .line 255
    .line 256
    invoke-interface {p1, p2}, LD0/s;->w(Ljava/lang/Exception;)V

    .line 257
    .line 258
    .line 259
    :cond_13
    iget-boolean p1, p2, LD0/u;->H:Z

    .line 260
    .line 261
    if-eqz p1, :cond_15

    .line 262
    .line 263
    iget-object p1, p0, LD0/S;->a:Landroid/content/Context;

    .line 264
    .line 265
    if-nez p1, :cond_14

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_14
    sget-object p1, LD0/d;->c:LD0/d;

    .line 269
    .line 270
    iput-object p1, p0, LD0/S;->z:LD0/d;

    .line 271
    .line 272
    iget-object v0, p0, LD0/S;->A:LD0/f;

    .line 273
    .line 274
    invoke-virtual {v0, p1}, LD0/f;->a(LD0/d;)V

    .line 275
    .line 276
    .line 277
    throw p2

    .line 278
    :cond_15
    :goto_8
    invoke-virtual {v0, p2}, LD0/M;->a(Ljava/lang/Exception;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_16
    const/4 p2, 0x0

    .line 283
    iput-object p2, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 284
    .line 285
    iput-wide v5, v0, LD0/M;->b:J

    .line 286
    .line 287
    iput-wide v5, v0, LD0/M;->c:J

    .line 288
    .line 289
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 290
    .line 291
    invoke-static {v0}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_18

    .line 296
    .line 297
    iget-wide v4, p0, LD0/S;->M:J

    .line 298
    .line 299
    cmp-long v0, v4, v7

    .line 300
    .line 301
    if-lez v0, :cond_17

    .line 302
    .line 303
    iput-boolean v2, p0, LD0/S;->i0:Z

    .line 304
    .line 305
    :cond_17
    iget-boolean v0, p0, LD0/S;->Y:Z

    .line 306
    .line 307
    if-eqz v0, :cond_18

    .line 308
    .line 309
    iget-object v0, p0, LD0/S;->u:LD0/s;

    .line 310
    .line 311
    if-eqz v0, :cond_18

    .line 312
    .line 313
    if-ge p1, v1, :cond_18

    .line 314
    .line 315
    iget-boolean v4, p0, LD0/S;->i0:Z

    .line 316
    .line 317
    if-nez v4, :cond_18

    .line 318
    .line 319
    invoke-interface {v0}, LD0/s;->n()V

    .line 320
    .line 321
    .line 322
    :cond_18
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 323
    .line 324
    iget v0, v0, LD0/J;->c:I

    .line 325
    .line 326
    if-nez v0, :cond_19

    .line 327
    .line 328
    iget-wide v4, p0, LD0/S;->L:J

    .line 329
    .line 330
    int-to-long v6, p1

    .line 331
    add-long/2addr v4, v6

    .line 332
    iput-wide v4, p0, LD0/S;->L:J

    .line 333
    .line 334
    :cond_19
    if-ne p1, v1, :cond_1c

    .line 335
    .line 336
    if-eqz v0, :cond_1b

    .line 337
    .line 338
    iget-object p1, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    iget-object v0, p0, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 341
    .line 342
    if-ne p1, v0, :cond_1a

    .line 343
    .line 344
    const/4 v2, 0x1

    .line 345
    :cond_1a
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 346
    .line 347
    .line 348
    iget-wide v0, p0, LD0/S;->M:J

    .line 349
    .line 350
    iget p1, p0, LD0/S;->N:I

    .line 351
    .line 352
    int-to-long v2, p1

    .line 353
    iget p1, p0, LD0/S;->T:I

    .line 354
    .line 355
    int-to-long v4, p1

    .line 356
    mul-long v2, v2, v4

    .line 357
    .line 358
    add-long/2addr v2, v0

    .line 359
    iput-wide v2, p0, LD0/S;->M:J

    .line 360
    .line 361
    :cond_1b
    iput-object p2, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 362
    .line 363
    :cond_1c
    return-void

    .line 364
    :catchall_0
    move-exception p1

    .line 365
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    throw p1
.end method

.method public final f()Z
    .locals 6

    .line 1
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln0/d;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, LD0/S;->e(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    :cond_0
    return v3

    .line 22
    :cond_1
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Ln0/d;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget-boolean v5, v0, Ln0/d;->d:Z

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iput-boolean v4, v0, Ln0/d;->d:Z

    .line 36
    .line 37
    iget-object v0, v0, Ln0/d;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ln0/g;

    .line 44
    .line 45
    invoke-interface {v0}, Ln0/g;->e()V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, LD0/S;->x(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 52
    .line 53
    invoke-virtual {v0}, Ln0/d;->d()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget-object v0, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    :cond_4
    const/4 v3, 0x1

    .line 70
    :cond_5
    return v3
.end method

.method public final g()V
    .locals 12

    .line 1
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iput-wide v1, p0, LD0/S;->J:J

    .line 11
    .line 12
    iput-wide v1, p0, LD0/S;->K:J

    .line 13
    .line 14
    iput-wide v1, p0, LD0/S;->L:J

    .line 15
    .line 16
    iput-wide v1, p0, LD0/S;->M:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, LD0/S;->i0:Z

    .line 20
    .line 21
    iput v0, p0, LD0/S;->N:I

    .line 22
    .line 23
    new-instance v10, LD0/K;

    .line 24
    .line 25
    iget-object v5, p0, LD0/S;->F:Lm0/S;

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    move-object v4, v10

    .line 32
    invoke-direct/range {v4 .. v9}, LD0/K;-><init>(Lm0/S;JJ)V

    .line 33
    .line 34
    .line 35
    iput-object v10, p0, LD0/S;->E:LD0/K;

    .line 36
    .line 37
    iput-wide v1, p0, LD0/S;->Q:J

    .line 38
    .line 39
    iput-object v3, p0, LD0/S;->D:LD0/K;

    .line 40
    .line 41
    iget-object v4, p0, LD0/S;->j:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iput v0, p0, LD0/S;->T:I

    .line 49
    .line 50
    iput-object v3, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iput-boolean v0, p0, LD0/S;->W:Z

    .line 53
    .line 54
    iput-boolean v0, p0, LD0/S;->V:Z

    .line 55
    .line 56
    iput-boolean v0, p0, LD0/S;->X:Z

    .line 57
    .line 58
    iput-object v3, p0, LD0/S;->H:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    iput v0, p0, LD0/S;->I:I

    .line 61
    .line 62
    iget-object v0, p0, LD0/S;->e:LD0/Z;

    .line 63
    .line 64
    iput-wide v1, v0, LD0/Z;->o:J

    .line 65
    .line 66
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 67
    .line 68
    iget-object v0, v0, LD0/J;->i:Ln0/d;

    .line 69
    .line 70
    iput-object v0, p0, LD0/S;->x:Ln0/d;

    .line 71
    .line 72
    invoke-virtual {v0}, Ln0/d;->b()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, LD0/S;->i:LD0/z;

    .line 76
    .line 77
    iget-object v0, v0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v4, 0x3

    .line 87
    if-ne v0, v4, :cond_0

    .line 88
    .line 89
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 95
    .line 96
    invoke-static {v0}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, LD0/S;->m:LD0/Q;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 108
    .line 109
    iget-object v5, v0, LD0/Q;->b:LD0/P;

    .line 110
    .line 111
    invoke-static {v4, v5}, LD0/a;->o(Landroid/media/AudioTrack;LD0/P;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, LD0/Q;->a:Landroid/os/Handler;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 120
    .line 121
    invoke-virtual {v0}, LD0/J;->a()LD0/p;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget-object v0, p0, LD0/S;->v:LD0/J;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iput-object v0, p0, LD0/S;->w:LD0/J;

    .line 130
    .line 131
    iput-object v3, p0, LD0/S;->v:LD0/J;

    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, LD0/S;->i:LD0/z;

    .line 134
    .line 135
    invoke-virtual {v0}, LD0/z;->g()V

    .line 136
    .line 137
    .line 138
    iput-object v3, v0, LD0/z;->c:Landroid/media/AudioTrack;

    .line 139
    .line 140
    iput-object v3, v0, LD0/z;->e:LD0/x;

    .line 141
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .line 144
    const/16 v4, 0x18

    .line 145
    .line 146
    if-lt v0, v4, :cond_3

    .line 147
    .line 148
    iget-object v0, p0, LD0/S;->B:Lm2/u;

    .line 149
    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {v0}, Lm2/u;->Q()V

    .line 153
    .line 154
    .line 155
    iput-object v3, p0, LD0/S;->B:Lm2/u;

    .line 156
    .line 157
    :cond_3
    iget-object v5, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 158
    .line 159
    iget-object v6, p0, LD0/S;->u:LD0/s;

    .line 160
    .line 161
    new-instance v7, Landroid/os/Handler;

    .line 162
    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    .line 169
    .line 170
    sget-object v0, LD0/S;->p0:Ljava/lang/Object;

    .line 171
    .line 172
    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v4, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 174
    .line 175
    const/4 v9, 0x1

    .line 176
    if-nez v4, :cond_4

    .line 177
    .line 178
    const-string v4, "ExoPlayer:AudioTrackReleaseThread"

    .line 179
    .line 180
    sget-object v10, Lp0/M;->a:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v10, Lp0/L;

    .line 183
    .line 184
    invoke-direct {v10, v4, v9}, Lp0/L;-><init>(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v10}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    sput-object v4, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    .line 195
    goto :goto_1

    .line 196
    :cond_4
    :goto_0
    sget v4, LD0/S;->r0:I

    .line 197
    .line 198
    add-int/2addr v4, v9

    .line 199
    sput v4, LD0/S;->r0:I

    .line 200
    .line 201
    sget-object v10, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 202
    .line 203
    new-instance v11, LD0/D;

    .line 204
    .line 205
    const/4 v9, 0x0

    .line 206
    move-object v4, v11

    .line 207
    invoke-direct/range {v4 .. v9}, LD0/D;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    .line 212
    const-wide/16 v5, 0x14

    .line 213
    .line 214
    invoke-interface {v10, v11, v5, v6, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 215
    .line 216
    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iput-object v3, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    throw v1

    .line 223
    :cond_5
    :goto_2
    iget-object v0, p0, LD0/S;->o:LD0/M;

    .line 224
    .line 225
    iput-object v3, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 226
    .line 227
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    iput-wide v4, v0, LD0/M;->b:J

    .line 233
    .line 234
    iput-wide v4, v0, LD0/M;->c:J

    .line 235
    .line 236
    iget-object v0, p0, LD0/S;->n:LD0/M;

    .line 237
    .line 238
    iput-object v3, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 239
    .line 240
    iput-wide v4, v0, LD0/M;->b:J

    .line 241
    .line 242
    iput-wide v4, v0, LD0/M;->c:J

    .line 243
    .line 244
    iput-wide v1, p0, LD0/S;->k0:J

    .line 245
    .line 246
    iput-wide v1, p0, LD0/S;->l0:J

    .line 247
    .line 248
    iget-object v0, p0, LD0/S;->m0:Landroid/os/Handler;

    .line 249
    .line 250
    if-eqz v0, :cond_6

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_6
    return-void
.end method

.method public final h()J
    .locals 12

    .line 1
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x17

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    const v4, -0x7fffffff

    .line 20
    .line 21
    .line 22
    if-lt v0, v1, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 25
    .line 26
    iget-object v1, p0, LD0/S;->w:LD0/J;

    .line 27
    .line 28
    iget v5, v1, LD0/J;->c:I

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, LB0/q;->e(Landroid/media/AudioTrack;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v2, v0

    .line 37
    iget v0, v1, LD0/J;->e:I

    .line 38
    .line 39
    invoke-static {v0, v2, v3}, Lp0/M;->X(IJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v0}, LB0/q;->e(Landroid/media/AudioTrack;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-long v5, v0

    .line 49
    iget v0, v1, LD0/J;->g:I

    .line 50
    .line 51
    invoke-static {v0}, LE3/f;->n(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eq v0, v4, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 59
    .line 60
    .line 61
    int-to-long v9, v0

    .line 62
    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 63
    .line 64
    const-wide/32 v7, 0xf4240

    .line 65
    .line 66
    .line 67
    invoke-static/range {v5 .. v11}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    :goto_0
    return-wide v0

    .line 72
    :cond_3
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 73
    .line 74
    iget v1, v0, LD0/J;->c:I

    .line 75
    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    iget v1, v0, LD0/J;->e:I

    .line 79
    .line 80
    int-to-long v1, v1

    .line 81
    iget v0, v0, LD0/J;->d:I

    .line 82
    .line 83
    int-to-long v3, v0

    .line 84
    mul-long v1, v1, v3

    .line 85
    .line 86
    :goto_1
    move-wide v7, v1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget v0, v0, LD0/J;->g:I

    .line 89
    .line 90
    invoke-static {v0}, LE3/f;->n(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eq v0, v4, :cond_5

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    :cond_5
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 98
    .line 99
    .line 100
    int-to-long v1, v0

    .line 101
    goto :goto_1

    .line 102
    :goto_2
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 103
    .line 104
    iget v0, v0, LD0/J;->h:I

    .line 105
    .line 106
    int-to-long v3, v0

    .line 107
    const-wide/32 v5, 0xf4240

    .line 108
    .line 109
    .line 110
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 111
    .line 112
    invoke-static/range {v3 .. v9}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    return-wide v0
.end method

.method public final i()J
    .locals 13

    .line 1
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-boolean v0, p0, LD0/S;->P:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LD0/S;->i:LD0/z;

    .line 14
    .line 15
    invoke-virtual {v0}, LD0/z;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, LD0/S;->w:LD0/J;

    .line 20
    .line 21
    invoke-virtual {p0}, LD0/S;->m()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    iget v2, v2, LD0/J;->e:I

    .line 26
    .line 27
    invoke-static {v2, v3, v4}, Lp0/M;->X(IJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    iget-object v2, p0, LD0/S;->j:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, LD0/K;

    .line 48
    .line 49
    iget-wide v3, v3, LD0/K;->c:J

    .line 50
    .line 51
    cmp-long v5, v0, v3

    .line 52
    .line 53
    if-ltz v5, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, LD0/K;

    .line 60
    .line 61
    iput-object v2, p0, LD0/S;->E:LD0/K;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, p0, LD0/S;->E:LD0/K;

    .line 65
    .line 66
    iget-wide v4, v3, LD0/K;->c:J

    .line 67
    .line 68
    sub-long v6, v0, v4

    .line 69
    .line 70
    iget-object v0, v3, LD0/K;->a:Lm0/S;

    .line 71
    .line 72
    iget v0, v0, Lm0/S;->a:F

    .line 73
    .line 74
    invoke-static {v6, v7, v0}, Lp0/M;->y(JF)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, LD0/S;->b:Lm2/u;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object v2, v3, Lm2/u;->J:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Ln0/j;

    .line 89
    .line 90
    invoke-virtual {v2}, Ln0/j;->isActive()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    iget-object v2, v3, Lm2/u;->J:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Ln0/j;

    .line 99
    .line 100
    iget-wide v4, v2, Ln0/j;->o:J

    .line 101
    .line 102
    const-wide/16 v8, 0x400

    .line 103
    .line 104
    cmp-long v10, v4, v8

    .line 105
    .line 106
    if-ltz v10, :cond_3

    .line 107
    .line 108
    iget-wide v4, v2, Ln0/j;->n:J

    .line 109
    .line 110
    iget-object v8, v2, Ln0/j;->j:Ln0/i;

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget v9, v8, Ln0/i;->k:I

    .line 116
    .line 117
    iget v8, v8, Ln0/i;->b:I

    .line 118
    .line 119
    mul-int v9, v9, v8

    .line 120
    .line 121
    mul-int/lit8 v9, v9, 0x2

    .line 122
    .line 123
    int-to-long v8, v9

    .line 124
    sub-long v8, v4, v8

    .line 125
    .line 126
    iget-object v4, v2, Ln0/j;->h:Ln0/e;

    .line 127
    .line 128
    iget v4, v4, Ln0/e;->a:I

    .line 129
    .line 130
    iget-object v5, v2, Ln0/j;->g:Ln0/e;

    .line 131
    .line 132
    iget v5, v5, Ln0/e;->a:I

    .line 133
    .line 134
    if-ne v4, v5, :cond_2

    .line 135
    .line 136
    iget-wide v10, v2, Ln0/j;->o:J

    .line 137
    .line 138
    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 139
    .line 140
    invoke-static/range {v6 .. v12}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    int-to-long v10, v4

    .line 146
    mul-long v8, v8, v10

    .line 147
    .line 148
    iget-wide v10, v2, Ln0/j;->o:J

    .line 149
    .line 150
    int-to-long v4, v5

    .line 151
    mul-long v10, v10, v4

    .line 152
    .line 153
    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 154
    .line 155
    invoke-static/range {v6 .. v12}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    :goto_1
    move-wide v6, v4

    .line 160
    goto :goto_2

    .line 161
    :cond_3
    iget v2, v2, Ln0/j;->c:F

    .line 162
    .line 163
    float-to-double v4, v2

    .line 164
    long-to-double v6, v6

    .line 165
    mul-double v4, v4, v6

    .line 166
    .line 167
    double-to-long v4, v4

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    :goto_2
    iget-object v2, p0, LD0/S;->E:LD0/K;

    .line 170
    .line 171
    iget-wide v4, v2, LD0/K;->b:J

    .line 172
    .line 173
    add-long/2addr v4, v6

    .line 174
    sub-long/2addr v6, v0

    .line 175
    iput-wide v6, v2, LD0/K;->d:J

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    iget-object v2, p0, LD0/S;->E:LD0/K;

    .line 179
    .line 180
    iget-wide v4, v2, LD0/K;->b:J

    .line 181
    .line 182
    add-long/2addr v4, v0

    .line 183
    iget-wide v0, v2, LD0/K;->d:J

    .line 184
    .line 185
    add-long/2addr v4, v0

    .line 186
    :goto_3
    iget-object v0, v3, Lm2/u;->I:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, LD0/X;

    .line 189
    .line 190
    iget-wide v0, v0, LD0/X;->q:J

    .line 191
    .line 192
    iget-object v2, p0, LD0/S;->w:LD0/J;

    .line 193
    .line 194
    iget v2, v2, LD0/J;->e:I

    .line 195
    .line 196
    invoke-static {v2, v0, v1}, Lp0/M;->X(IJ)J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    add-long/2addr v2, v4

    .line 201
    iget-wide v4, p0, LD0/S;->k0:J

    .line 202
    .line 203
    cmp-long v6, v0, v4

    .line 204
    .line 205
    if-lez v6, :cond_7

    .line 206
    .line 207
    iget-object v6, p0, LD0/S;->w:LD0/J;

    .line 208
    .line 209
    sub-long v4, v0, v4

    .line 210
    .line 211
    iget v6, v6, LD0/J;->e:I

    .line 212
    .line 213
    invoke-static {v6, v4, v5}, Lp0/M;->X(IJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v4

    .line 217
    iput-wide v0, p0, LD0/S;->k0:J

    .line 218
    .line 219
    iget-wide v0, p0, LD0/S;->l0:J

    .line 220
    .line 221
    add-long/2addr v0, v4

    .line 222
    iput-wide v0, p0, LD0/S;->l0:J

    .line 223
    .line 224
    iget-object v0, p0, LD0/S;->m0:Landroid/os/Handler;

    .line 225
    .line 226
    if-nez v0, :cond_6

    .line 227
    .line 228
    new-instance v0, Landroid/os/Handler;

    .line 229
    .line 230
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, LD0/S;->m0:Landroid/os/Handler;

    .line 238
    .line 239
    :cond_6
    iget-object v0, p0, LD0/S;->m0:Landroid/os/Handler;

    .line 240
    .line 241
    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, LD0/S;->m0:Landroid/os/Handler;

    .line 246
    .line 247
    new-instance v1, La/b;

    .line 248
    .line 249
    const/16 v4, 0xf

    .line 250
    .line 251
    invoke-direct {v1, p0, v4}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 252
    .line 253
    .line 254
    const-wide/16 v4, 0x64

    .line 255
    .line 256
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    .line 258
    .line 259
    :cond_7
    return-wide v2

    .line 260
    :cond_8
    :goto_4
    const-wide/high16 v0, -0x8000000000000000L

    .line 261
    .line 262
    return-wide v0
.end method

.method public final j(Lm0/t;)LD0/h;
    .locals 8

    .line 1
    iget-boolean v0, p0, LD0/S;->h0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, LD0/h;->d:LD0/h;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, LD0/S;->C:Lm0/d;

    .line 9
    .line 10
    iget-object v1, p0, LD0/S;->q:LD0/C;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x1d

    .line 24
    .line 25
    if-lt v2, v3, :cond_c

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    iget v4, p1, Lm0/t;->H:I

    .line 29
    .line 30
    if-ne v4, v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    iget-object v3, v1, LD0/C;->b:Ljava/lang/Boolean;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v3, v1, LD0/C;->a:Landroid/content/Context;

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-static {v3}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v7, "offloadVariableRateSupported"

    .line 54
    .line 55
    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const-string v7, "offloadVariableRateSupported=1"

    .line 62
    .line 63
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x0

    .line 72
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, v1, LD0/C;->b:Ljava/lang/Boolean;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    iput-object v3, v1, LD0/C;->b:Ljava/lang/Boolean;

    .line 82
    .line 83
    :goto_1
    iget-object v1, v1, LD0/C;->b:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :goto_2
    iget-object v3, p1, Lm0/t;->o:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object v7, p1, Lm0/t;->k:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v3, v7}, Lm0/O;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_b

    .line 101
    .line 102
    invoke-static {v3}, Lp0/M;->p(I)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-ge v2, v7, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    iget p1, p1, Lm0/t;->G:I

    .line 110
    .line 111
    invoke-static {p1}, Lp0/M;->r(I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    sget-object p1, LD0/h;->d:LD0/h;

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    :try_start_0
    invoke-static {v4, p1, v3}, Lp0/M;->q(III)Landroid/media/AudioFormat;

    .line 121
    .line 122
    .line 123
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/16 v3, 0x1f

    .line 125
    .line 126
    if-lt v2, v3, :cond_9

    .line 127
    .line 128
    invoke-virtual {v0}, Lm0/d;->a()Lf/S;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Landroid/media/AudioAttributes;

    .line 135
    .line 136
    invoke-static {p1, v0}, LC0/E;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_7

    .line 141
    .line 142
    sget-object p1, LD0/h;->d:LD0/h;

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_7
    new-instance v0, LD0/g;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    const/16 v3, 0x20

    .line 151
    .line 152
    if-le v2, v3, :cond_8

    .line 153
    .line 154
    const/4 v2, 0x2

    .line 155
    if-ne p1, v2, :cond_8

    .line 156
    .line 157
    const/4 v5, 0x1

    .line 158
    :cond_8
    iput-boolean v6, v0, LD0/g;->a:Z

    .line 159
    .line 160
    iput-boolean v5, v0, LD0/g;->b:Z

    .line 161
    .line 162
    iput-boolean v1, v0, LD0/g;->c:Z

    .line 163
    .line 164
    invoke-virtual {v0}, LD0/g;->a()LD0/h;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    invoke-virtual {v0}, Lm0/d;->a()Lf/S;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Landroid/media/AudioAttributes;

    .line 176
    .line 177
    invoke-static {p1, v0}, LD0/a;->y(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_a

    .line 182
    .line 183
    sget-object p1, LD0/h;->d:LD0/h;

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_a
    new-instance p1, LD0/g;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-boolean v6, p1, LD0/g;->a:Z

    .line 192
    .line 193
    iput-boolean v1, p1, LD0/g;->c:Z

    .line 194
    .line 195
    invoke-virtual {p1}, LD0/g;->a()LD0/h;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    goto :goto_5

    .line 200
    :catch_0
    sget-object p1, LD0/h;->d:LD0/h;

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_b
    :goto_3
    sget-object p1, LD0/h;->d:LD0/h;

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_c
    :goto_4
    sget-object p1, LD0/h;->d:LD0/h;

    .line 207
    .line 208
    :goto_5
    return-object p1
.end method

.method public final k(Lm0/t;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, LD0/S;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "audio/raw"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget p1, p1, Lm0/t;->I:I

    .line 17
    .line 18
    invoke-static {p1}, Lp0/M;->M(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Invalid PCM encoding: "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "DefaultAudioSink"

    .line 39
    .line 40
    invoke-static {v0, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    if-eq p1, v2, :cond_2

    .line 45
    .line 46
    iget-boolean v0, p0, LD0/S;->c:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    if-ne p1, v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_2
    :goto_0
    return v2

    .line 57
    :cond_3
    iget-object v0, p0, LD0/S;->z:LD0/d;

    .line 58
    .line 59
    iget-object v3, p0, LD0/S;->C:Lm0/d;

    .line 60
    .line 61
    invoke-virtual {v0, v3, p1}, LD0/d;->d(Lm0/d;Lm0/t;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    return v2

    .line 68
    :cond_4
    return v1
.end method

.method public final l()J
    .locals 5

    .line 1
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 2
    .line 3
    iget v1, v0, LD0/J;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, LD0/S;->J:J

    .line 8
    .line 9
    iget v0, v0, LD0/J;->b:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, p0, LD0/S;->K:J

    .line 15
    .line 16
    :goto_0
    return-wide v1
.end method

.method public final m()J
    .locals 7

    .line 1
    iget-object v0, p0, LD0/S;->w:LD0/J;

    .line 2
    .line 3
    iget v1, v0, LD0/J;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, LD0/S;->L:J

    .line 8
    .line 9
    iget v0, v0, LD0/J;->d:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 13
    .line 14
    add-long/2addr v1, v3

    .line 15
    const-wide/16 v5, 0x1

    .line 16
    .line 17
    sub-long/2addr v1, v5

    .line 18
    div-long/2addr v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v1, p0, LD0/S;->M:J

    .line 21
    .line 22
    :goto_0
    return-wide v1
.end method

.method public final n(JILjava/nio/ByteBuffer;)Z
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    iget-object v5, v1, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v5, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 21
    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v1, LD0/S;->v:LD0/J;

    .line 25
    .line 26
    const/4 v8, 0x3

    .line 27
    const/4 v9, 0x0

    .line 28
    iget-object v10, v1, LD0/S;->i:LD0/z;

    .line 29
    .line 30
    if-eqz v5, :cond_7

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, LD0/S;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    return v7

    .line 39
    :cond_2
    iget-object v5, v1, LD0/S;->v:LD0/J;

    .line 40
    .line 41
    iget-object v11, v1, LD0/S;->w:LD0/J;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v12, v11, LD0/J;->c:I

    .line 47
    .line 48
    iget v13, v5, LD0/J;->c:I

    .line 49
    .line 50
    if-ne v12, v13, :cond_4

    .line 51
    .line 52
    iget v12, v11, LD0/J;->g:I

    .line 53
    .line 54
    iget v13, v5, LD0/J;->g:I

    .line 55
    .line 56
    if-ne v12, v13, :cond_4

    .line 57
    .line 58
    iget v12, v11, LD0/J;->e:I

    .line 59
    .line 60
    iget v13, v5, LD0/J;->e:I

    .line 61
    .line 62
    if-ne v12, v13, :cond_4

    .line 63
    .line 64
    iget v12, v11, LD0/J;->f:I

    .line 65
    .line 66
    iget v13, v5, LD0/J;->f:I

    .line 67
    .line 68
    if-ne v12, v13, :cond_4

    .line 69
    .line 70
    iget v12, v11, LD0/J;->d:I

    .line 71
    .line 72
    iget v13, v5, LD0/J;->d:I

    .line 73
    .line 74
    if-ne v12, v13, :cond_4

    .line 75
    .line 76
    iget-boolean v12, v11, LD0/J;->j:Z

    .line 77
    .line 78
    iget-boolean v13, v5, LD0/J;->j:Z

    .line 79
    .line 80
    if-ne v12, v13, :cond_4

    .line 81
    .line 82
    iget-boolean v11, v11, LD0/J;->k:Z

    .line 83
    .line 84
    iget-boolean v5, v5, LD0/J;->k:Z

    .line 85
    .line 86
    if-ne v11, v5, :cond_4

    .line 87
    .line 88
    iget-object v5, v1, LD0/S;->v:LD0/J;

    .line 89
    .line 90
    iput-object v5, v1, LD0/S;->w:LD0/J;

    .line 91
    .line 92
    iput-object v9, v1, LD0/S;->v:LD0/J;

    .line 93
    .line 94
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 95
    .line 96
    if-eqz v5, :cond_6

    .line 97
    .line 98
    invoke-static {v5}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_6

    .line 103
    .line 104
    iget-object v5, v1, LD0/S;->w:LD0/J;

    .line 105
    .line 106
    iget-boolean v5, v5, LD0/J;->k:Z

    .line 107
    .line 108
    if-eqz v5, :cond_6

    .line 109
    .line 110
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-ne v5, v8, :cond_3

    .line 117
    .line 118
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 119
    .line 120
    invoke-static {v5}, LD0/a;->l(Landroid/media/AudioTrack;)V

    .line 121
    .line 122
    .line 123
    iput-boolean v6, v10, LD0/z;->G:Z

    .line 124
    .line 125
    iget-object v5, v10, LD0/z;->e:LD0/x;

    .line 126
    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    iget-object v5, v5, LD0/x;->a:LD0/w;

    .line 130
    .line 131
    iput-boolean v6, v5, LD0/w;->f:Z

    .line 132
    .line 133
    :cond_3
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 134
    .line 135
    iget-object v11, v1, LD0/S;->w:LD0/J;

    .line 136
    .line 137
    iget-object v11, v11, LD0/J;->a:Lm0/t;

    .line 138
    .line 139
    iget v12, v11, Lm0/t;->J:I

    .line 140
    .line 141
    iget v11, v11, Lm0/t;->K:I

    .line 142
    .line 143
    invoke-static {v5, v12, v11}, LD0/a;->m(Landroid/media/AudioTrack;II)V

    .line 144
    .line 145
    .line 146
    iput-boolean v6, v1, LD0/S;->i0:Z

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual/range {p0 .. p0}, LD0/S;->v()V

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, LD0/S;->o()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_5

    .line 157
    .line 158
    return v7

    .line 159
    :cond_5
    invoke-virtual/range {p0 .. p0}, LD0/S;->g()V

    .line 160
    .line 161
    .line 162
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p2}, LD0/S;->a(J)V

    .line 163
    .line 164
    .line 165
    :cond_7
    invoke-virtual/range {p0 .. p0}, LD0/S;->q()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    iget-object v11, v1, LD0/S;->n:LD0/M;

    .line 170
    .line 171
    if-nez v5, :cond_9

    .line 172
    .line 173
    :try_start_0
    invoke-virtual/range {p0 .. p0}, LD0/S;->p()Z

    .line 174
    .line 175
    .line 176
    move-result v5
    :try_end_0
    .catch LD0/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    if-nez v5, :cond_9

    .line 178
    .line 179
    return v7

    .line 180
    :catch_0
    move-exception v0

    .line 181
    move-object v2, v0

    .line 182
    iget-boolean v0, v2, LD0/r;->H:Z

    .line 183
    .line 184
    if-nez v0, :cond_8

    .line 185
    .line 186
    invoke-virtual {v11, v2}, LD0/M;->a(Ljava/lang/Exception;)V

    .line 187
    .line 188
    .line 189
    return v7

    .line 190
    :cond_8
    throw v2

    .line 191
    :cond_9
    iput-object v9, v11, LD0/M;->a:Ljava/lang/Exception;

    .line 192
    .line 193
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    iput-wide v12, v11, LD0/M;->b:J

    .line 199
    .line 200
    iput-wide v12, v11, LD0/M;->c:J

    .line 201
    .line 202
    iget-boolean v5, v1, LD0/S;->P:Z

    .line 203
    .line 204
    const-wide/16 v14, 0x0

    .line 205
    .line 206
    if-eqz v5, :cond_b

    .line 207
    .line 208
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 209
    .line 210
    .line 211
    move-result-wide v12

    .line 212
    iput-wide v12, v1, LD0/S;->Q:J

    .line 213
    .line 214
    iput-boolean v7, v1, LD0/S;->O:Z

    .line 215
    .line 216
    iput-boolean v7, v1, LD0/S;->P:Z

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, LD0/S;->H()Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_a

    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, LD0/S;->B()V

    .line 225
    .line 226
    .line 227
    :cond_a
    invoke-virtual/range {p0 .. p2}, LD0/S;->a(J)V

    .line 228
    .line 229
    .line 230
    iget-boolean v5, v1, LD0/S;->Y:Z

    .line 231
    .line 232
    if-eqz v5, :cond_b

    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, LD0/S;->u()V

    .line 235
    .line 236
    .line 237
    :cond_b
    invoke-virtual/range {p0 .. p0}, LD0/S;->m()J

    .line 238
    .line 239
    .line 240
    move-result-wide v11

    .line 241
    iget-object v5, v10, LD0/z;->c:Landroid/media/AudioTrack;

    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    iget-boolean v13, v10, LD0/z;->g:Z

    .line 251
    .line 252
    const/4 v8, 0x2

    .line 253
    if-eqz v13, :cond_d

    .line 254
    .line 255
    if-ne v5, v8, :cond_c

    .line 256
    .line 257
    iput-boolean v7, v10, LD0/z;->q:Z

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_c
    if-ne v5, v6, :cond_d

    .line 261
    .line 262
    invoke-virtual {v10}, LD0/z;->b()J

    .line 263
    .line 264
    .line 265
    move-result-wide v17

    .line 266
    cmp-long v13, v17, v14

    .line 267
    .line 268
    if-nez v13, :cond_d

    .line 269
    .line 270
    :goto_3
    return v7

    .line 271
    :cond_d
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 272
    .line 273
    const/16 v14, 0x18

    .line 274
    .line 275
    if-lt v13, v14, :cond_f

    .line 276
    .line 277
    iget-object v5, v10, LD0/z;->c:Landroid/media/AudioTrack;

    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {v5}, LD0/y;->a(Landroid/media/AudioTrack;)I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    iget v11, v10, LD0/z;->l:I

    .line 287
    .line 288
    if-le v5, v11, :cond_e

    .line 289
    .line 290
    const/4 v11, 0x1

    .line 291
    goto :goto_4

    .line 292
    :cond_e
    const/4 v11, 0x0

    .line 293
    :goto_4
    iput v5, v10, LD0/z;->l:I

    .line 294
    .line 295
    if-eqz v11, :cond_10

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_f
    iget-boolean v13, v10, LD0/z;->q:Z

    .line 299
    .line 300
    invoke-virtual {v10, v11, v12}, LD0/z;->e(J)Z

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    iput-boolean v11, v10, LD0/z;->q:Z

    .line 305
    .line 306
    if-eqz v13, :cond_10

    .line 307
    .line 308
    if-nez v11, :cond_10

    .line 309
    .line 310
    if-eq v5, v6, :cond_10

    .line 311
    .line 312
    :goto_5
    iget v5, v10, LD0/z;->d:I

    .line 313
    .line 314
    iget-wide v11, v10, LD0/z;->h:J

    .line 315
    .line 316
    invoke-static {v11, v12}, Lp0/M;->e0(J)J

    .line 317
    .line 318
    .line 319
    move-result-wide v21

    .line 320
    iget-object v11, v10, LD0/z;->a:LD0/N;

    .line 321
    .line 322
    iget-object v11, v11, LD0/N;->a:LD0/S;

    .line 323
    .line 324
    iget-object v12, v11, LD0/S;->u:LD0/s;

    .line 325
    .line 326
    if-eqz v12, :cond_10

    .line 327
    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 329
    .line 330
    .line 331
    move-result-wide v12

    .line 332
    iget-wide v14, v11, LD0/S;->g0:J

    .line 333
    .line 334
    sub-long v23, v12, v14

    .line 335
    .line 336
    iget-object v11, v11, LD0/S;->u:LD0/s;

    .line 337
    .line 338
    move-object/from16 v19, v11

    .line 339
    .line 340
    move/from16 v20, v5

    .line 341
    .line 342
    invoke-interface/range {v19 .. v24}, LD0/s;->s(IJJ)V

    .line 343
    .line 344
    .line 345
    :cond_10
    iget-object v5, v1, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 346
    .line 347
    if-nez v5, :cond_39

    .line 348
    .line 349
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 354
    .line 355
    if-ne v5, v11, :cond_11

    .line 356
    .line 357
    const/4 v5, 0x1

    .line 358
    goto :goto_6

    .line 359
    :cond_11
    const/4 v5, 0x0

    .line 360
    :goto_6
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-nez v5, :cond_12

    .line 368
    .line 369
    return v6

    .line 370
    :cond_12
    iget-object v5, v1, LD0/S;->w:LD0/J;

    .line 371
    .line 372
    iget v11, v5, LD0/J;->c:I

    .line 373
    .line 374
    if-eqz v11, :cond_31

    .line 375
    .line 376
    iget v11, v1, LD0/S;->N:I

    .line 377
    .line 378
    if-nez v11, :cond_31

    .line 379
    .line 380
    const/16 v11, 0x14

    .line 381
    .line 382
    const/4 v12, 0x5

    .line 383
    iget v5, v5, LD0/J;->g:I

    .line 384
    .line 385
    if-eq v5, v11, :cond_2b

    .line 386
    .line 387
    const/16 v11, 0x1e

    .line 388
    .line 389
    const/4 v13, -0x2

    .line 390
    const/16 v14, 0x400

    .line 391
    .line 392
    const/4 v15, -0x1

    .line 393
    if-eq v5, v11, :cond_23

    .line 394
    .line 395
    const/16 v11, 0xa

    .line 396
    .line 397
    packed-switch v5, :pswitch_data_0

    .line 398
    .line 399
    .line 400
    const/16 v8, 0x10

    .line 401
    .line 402
    packed-switch v5, :pswitch_data_1

    .line 403
    .line 404
    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 406
    .line 407
    const-string v2, "Unexpected audio encoding: "

    .line 408
    .line 409
    invoke-static {v2, v5}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v0

    .line 417
    :pswitch_0
    new-array v5, v8, [B

    .line 418
    .line 419
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    .line 428
    .line 429
    new-instance v8, Lp0/D;

    .line 430
    .line 431
    invoke-direct {v8, v5, v7, v9}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v8}, LW0/a;->f(Lp0/D;)LW0/d;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    iget v14, v5, LW0/d;->f:I

    .line 439
    .line 440
    goto/16 :goto_1b

    .line 441
    .line 442
    :pswitch_1
    const/16 v14, 0x200

    .line 443
    .line 444
    goto/16 :goto_1b

    .line 445
    .line 446
    :pswitch_2
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    sub-int/2addr v12, v11

    .line 455
    move v11, v5

    .line 456
    :goto_7
    if-gt v11, v12, :cond_15

    .line 457
    .line 458
    add-int/lit8 v14, v11, 0x4

    .line 459
    .line 460
    sget-object v16, Lp0/M;->a:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 463
    .line 464
    .line 465
    move-result v14

    .line 466
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 471
    .line 472
    if-ne v9, v7, :cond_13

    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_13
    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 476
    .line 477
    .line 478
    move-result v14

    .line 479
    :goto_8
    and-int/lit8 v7, v14, -0x2

    .line 480
    .line 481
    const v9, -0x78d9046

    .line 482
    .line 483
    .line 484
    if-ne v7, v9, :cond_14

    .line 485
    .line 486
    sub-int/2addr v11, v5

    .line 487
    goto :goto_9

    .line 488
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 489
    .line 490
    const/4 v7, 0x0

    .line 491
    const/4 v9, 0x0

    .line 492
    goto :goto_7

    .line 493
    :cond_15
    const/4 v11, -0x1

    .line 494
    :goto_9
    if-ne v11, v15, :cond_16

    .line 495
    .line 496
    const/4 v14, 0x0

    .line 497
    goto/16 :goto_1b

    .line 498
    .line 499
    :cond_16
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    add-int/2addr v5, v11

    .line 504
    add-int/lit8 v5, v5, 0x7

    .line 505
    .line 506
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    and-int/lit16 v5, v5, 0xff

    .line 511
    .line 512
    const/16 v7, 0xbb

    .line 513
    .line 514
    if-ne v5, v7, :cond_17

    .line 515
    .line 516
    const/4 v5, 0x1

    .line 517
    goto :goto_a

    .line 518
    :cond_17
    const/4 v5, 0x0

    .line 519
    :goto_a
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    add-int/2addr v7, v11

    .line 524
    if-eqz v5, :cond_18

    .line 525
    .line 526
    const/16 v5, 0x9

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_18
    const/16 v5, 0x8

    .line 530
    .line 531
    :goto_b
    add-int/2addr v7, v5

    .line 532
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    shr-int/lit8 v5, v5, 0x4

    .line 537
    .line 538
    and-int/lit8 v5, v5, 0x7

    .line 539
    .line 540
    const/16 v7, 0x28

    .line 541
    .line 542
    shl-int v5, v7, v5

    .line 543
    .line 544
    mul-int/lit8 v5, v5, 0x10

    .line 545
    .line 546
    :goto_c
    move v14, v5

    .line 547
    goto/16 :goto_1b

    .line 548
    .line 549
    :pswitch_3
    const/16 v14, 0x800

    .line 550
    .line 551
    goto/16 :goto_1b

    .line 552
    .line 553
    :pswitch_4
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 564
    .line 565
    .line 566
    move-result-object v7

    .line 567
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 568
    .line 569
    if-ne v7, v9, :cond_19

    .line 570
    .line 571
    goto :goto_d

    .line 572
    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    :goto_d
    const/high16 v7, -0x200000

    .line 577
    .line 578
    and-int v9, v5, v7

    .line 579
    .line 580
    if-ne v9, v7, :cond_1a

    .line 581
    .line 582
    ushr-int/lit8 v7, v5, 0x13

    .line 583
    .line 584
    const/4 v9, 0x3

    .line 585
    and-int/2addr v7, v9

    .line 586
    if-ne v7, v6, :cond_1b

    .line 587
    .line 588
    :cond_1a
    :goto_e
    const/4 v14, -0x1

    .line 589
    goto :goto_10

    .line 590
    :cond_1b
    ushr-int/lit8 v12, v5, 0x11

    .line 591
    .line 592
    and-int/2addr v12, v9

    .line 593
    if-nez v12, :cond_1c

    .line 594
    .line 595
    goto :goto_e

    .line 596
    :cond_1c
    ushr-int/lit8 v13, v5, 0xc

    .line 597
    .line 598
    const/16 v14, 0xf

    .line 599
    .line 600
    and-int/2addr v13, v14

    .line 601
    ushr-int/2addr v5, v11

    .line 602
    and-int/2addr v5, v9

    .line 603
    if-eqz v13, :cond_1a

    .line 604
    .line 605
    if-eq v13, v14, :cond_1a

    .line 606
    .line 607
    if-ne v5, v9, :cond_1d

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_1d
    const/16 v5, 0x480

    .line 611
    .line 612
    if-eq v12, v6, :cond_1f

    .line 613
    .line 614
    if-eq v12, v8, :cond_21

    .line 615
    .line 616
    if-ne v12, v9, :cond_1e

    .line 617
    .line 618
    const/16 v5, 0x180

    .line 619
    .line 620
    goto :goto_f

    .line 621
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 622
    .line 623
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 624
    .line 625
    .line 626
    throw v0

    .line 627
    :cond_1f
    if-ne v7, v9, :cond_20

    .line 628
    .line 629
    goto :goto_f

    .line 630
    :cond_20
    const/16 v5, 0x240

    .line 631
    .line 632
    :cond_21
    :goto_f
    move v14, v5

    .line 633
    :goto_10
    if-eq v14, v15, :cond_22

    .line 634
    .line 635
    goto/16 :goto_1b

    .line 636
    .line 637
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 638
    .line 639
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :cond_23
    :pswitch_5
    const/4 v5, 0x0

    .line 644
    goto :goto_12

    .line 645
    :pswitch_6
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    add-int/2addr v5, v12

    .line 650
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    and-int/lit16 v5, v5, 0xf8

    .line 655
    .line 656
    const/4 v7, 0x3

    .line 657
    shr-int/2addr v5, v7

    .line 658
    if-le v5, v11, :cond_25

    .line 659
    .line 660
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    add-int/lit8 v5, v5, 0x4

    .line 665
    .line 666
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    and-int/lit16 v5, v5, 0xc0

    .line 671
    .line 672
    shr-int/lit8 v5, v5, 0x6

    .line 673
    .line 674
    if-ne v5, v7, :cond_24

    .line 675
    .line 676
    const/4 v8, 0x3

    .line 677
    goto :goto_11

    .line 678
    :cond_24
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    add-int/lit8 v5, v5, 0x4

    .line 683
    .line 684
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    and-int/lit8 v5, v5, 0x30

    .line 689
    .line 690
    shr-int/lit8 v8, v5, 0x4

    .line 691
    .line 692
    :goto_11
    sget-object v5, LW0/a;->c:[I

    .line 693
    .line 694
    aget v5, v5, v8

    .line 695
    .line 696
    mul-int/lit16 v5, v5, 0x100

    .line 697
    .line 698
    goto/16 :goto_c

    .line 699
    .line 700
    :cond_25
    const/16 v5, 0x600

    .line 701
    .line 702
    const/16 v14, 0x600

    .line 703
    .line 704
    goto/16 :goto_1b

    .line 705
    .line 706
    :goto_12
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    const v9, -0xde4bec0

    .line 711
    .line 712
    .line 713
    if-eq v7, v9, :cond_30

    .line 714
    .line 715
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    const v9, -0x17bd3b8f

    .line 720
    .line 721
    .line 722
    if-ne v7, v9, :cond_26

    .line 723
    .line 724
    goto/16 :goto_1b

    .line 725
    .line 726
    :cond_26
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    const v5, 0x25205864

    .line 731
    .line 732
    .line 733
    if-ne v7, v5, :cond_27

    .line 734
    .line 735
    const/16 v14, 0x1000

    .line 736
    .line 737
    goto/16 :goto_1b

    .line 738
    .line 739
    :cond_27
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 744
    .line 745
    .line 746
    move-result v7

    .line 747
    if-eq v7, v13, :cond_2a

    .line 748
    .line 749
    if-eq v7, v15, :cond_29

    .line 750
    .line 751
    const/16 v9, 0x1f

    .line 752
    .line 753
    if-eq v7, v9, :cond_28

    .line 754
    .line 755
    add-int/lit8 v7, v5, 0x4

    .line 756
    .line 757
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 758
    .line 759
    .line 760
    move-result v7

    .line 761
    and-int/2addr v7, v6

    .line 762
    shl-int/lit8 v7, v7, 0x6

    .line 763
    .line 764
    add-int/2addr v5, v12

    .line 765
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 766
    .line 767
    .line 768
    move-result v5

    .line 769
    :goto_13
    and-int/lit16 v5, v5, 0xfc

    .line 770
    .line 771
    :goto_14
    shr-int/2addr v5, v8

    .line 772
    or-int/2addr v5, v7

    .line 773
    goto :goto_16

    .line 774
    :cond_28
    add-int/lit8 v7, v5, 0x5

    .line 775
    .line 776
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 777
    .line 778
    .line 779
    move-result v7

    .line 780
    and-int/lit8 v7, v7, 0x7

    .line 781
    .line 782
    shl-int/lit8 v7, v7, 0x4

    .line 783
    .line 784
    add-int/lit8 v5, v5, 0x6

    .line 785
    .line 786
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 787
    .line 788
    .line 789
    move-result v5

    .line 790
    :goto_15
    and-int/lit8 v5, v5, 0x3c

    .line 791
    .line 792
    goto :goto_14

    .line 793
    :cond_29
    add-int/lit8 v7, v5, 0x4

    .line 794
    .line 795
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 796
    .line 797
    .line 798
    move-result v7

    .line 799
    and-int/lit8 v7, v7, 0x7

    .line 800
    .line 801
    shl-int/lit8 v7, v7, 0x4

    .line 802
    .line 803
    add-int/lit8 v5, v5, 0x7

    .line 804
    .line 805
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    goto :goto_15

    .line 810
    :cond_2a
    add-int/lit8 v7, v5, 0x5

    .line 811
    .line 812
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    and-int/2addr v7, v6

    .line 817
    shl-int/lit8 v7, v7, 0x6

    .line 818
    .line 819
    add-int/lit8 v5, v5, 0x4

    .line 820
    .line 821
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    goto :goto_13

    .line 826
    :goto_16
    add-int/2addr v5, v6

    .line 827
    mul-int/lit8 v14, v5, 0x20

    .line 828
    .line 829
    goto :goto_1b

    .line 830
    :cond_2b
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 831
    .line 832
    .line 833
    move-result v5

    .line 834
    and-int/2addr v5, v8

    .line 835
    if-nez v5, :cond_2c

    .line 836
    .line 837
    const/4 v5, 0x0

    .line 838
    goto :goto_19

    .line 839
    :cond_2c
    const/16 v5, 0x1a

    .line 840
    .line 841
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 842
    .line 843
    .line 844
    move-result v5

    .line 845
    const/16 v7, 0x1c

    .line 846
    .line 847
    const/4 v8, 0x0

    .line 848
    const/16 v9, 0x1c

    .line 849
    .line 850
    :goto_17
    if-ge v8, v5, :cond_2d

    .line 851
    .line 852
    add-int/lit8 v11, v8, 0x1b

    .line 853
    .line 854
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 855
    .line 856
    .line 857
    move-result v11

    .line 858
    add-int/2addr v9, v11

    .line 859
    add-int/lit8 v8, v8, 0x1

    .line 860
    .line 861
    goto :goto_17

    .line 862
    :cond_2d
    add-int/lit8 v5, v9, 0x1a

    .line 863
    .line 864
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    const/4 v8, 0x0

    .line 869
    :goto_18
    if-ge v8, v5, :cond_2e

    .line 870
    .line 871
    add-int/lit8 v11, v9, 0x1b

    .line 872
    .line 873
    add-int/2addr v11, v8

    .line 874
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 875
    .line 876
    .line 877
    move-result v11

    .line 878
    add-int/2addr v7, v11

    .line 879
    add-int/lit8 v8, v8, 0x1

    .line 880
    .line 881
    goto :goto_18

    .line 882
    :cond_2e
    add-int v5, v9, v7

    .line 883
    .line 884
    :goto_19
    add-int/lit8 v7, v5, 0x1a

    .line 885
    .line 886
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 887
    .line 888
    .line 889
    move-result v7

    .line 890
    add-int/lit8 v7, v7, 0x1b

    .line 891
    .line 892
    add-int/2addr v7, v5

    .line 893
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 894
    .line 895
    .line 896
    move-result v5

    .line 897
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    .line 898
    .line 899
    .line 900
    move-result v8

    .line 901
    sub-int/2addr v8, v7

    .line 902
    if-le v8, v6, :cond_2f

    .line 903
    .line 904
    add-int/2addr v7, v6

    .line 905
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 906
    .line 907
    .line 908
    move-result v7

    .line 909
    goto :goto_1a

    .line 910
    :cond_2f
    const/4 v7, 0x0

    .line 911
    :goto_1a
    invoke-static {v5, v7}, LZ3/H;->h(BB)J

    .line 912
    .line 913
    .line 914
    move-result-wide v7

    .line 915
    const-wide/32 v11, 0xbb80

    .line 916
    .line 917
    .line 918
    mul-long v7, v7, v11

    .line 919
    .line 920
    const-wide/32 v11, 0xf4240

    .line 921
    .line 922
    .line 923
    div-long/2addr v7, v11

    .line 924
    long-to-int v14, v7

    .line 925
    :cond_30
    :goto_1b
    :pswitch_7
    iput v14, v1, LD0/S;->N:I

    .line 926
    .line 927
    if-nez v14, :cond_31

    .line 928
    .line 929
    return v6

    .line 930
    :cond_31
    iget-object v5, v1, LD0/S;->D:LD0/K;

    .line 931
    .line 932
    if-eqz v5, :cond_33

    .line 933
    .line 934
    invoke-virtual/range {p0 .. p0}, LD0/S;->f()Z

    .line 935
    .line 936
    .line 937
    move-result v5

    .line 938
    if-nez v5, :cond_32

    .line 939
    .line 940
    const/4 v5, 0x0

    .line 941
    return v5

    .line 942
    :cond_32
    invoke-virtual/range {p0 .. p2}, LD0/S;->a(J)V

    .line 943
    .line 944
    .line 945
    const/4 v5, 0x0

    .line 946
    iput-object v5, v1, LD0/S;->D:LD0/K;

    .line 947
    .line 948
    :cond_33
    iget-wide v7, v1, LD0/S;->Q:J

    .line 949
    .line 950
    iget-object v5, v1, LD0/S;->w:LD0/J;

    .line 951
    .line 952
    invoke-virtual/range {p0 .. p0}, LD0/S;->l()J

    .line 953
    .line 954
    .line 955
    move-result-wide v11

    .line 956
    iget-object v9, v1, LD0/S;->e:LD0/Z;

    .line 957
    .line 958
    iget-wide v13, v9, LD0/Z;->o:J

    .line 959
    .line 960
    sub-long/2addr v11, v13

    .line 961
    iget-object v5, v5, LD0/J;->a:Lm0/t;

    .line 962
    .line 963
    iget v5, v5, Lm0/t;->H:I

    .line 964
    .line 965
    invoke-static {v5, v11, v12}, Lp0/M;->X(IJ)J

    .line 966
    .line 967
    .line 968
    move-result-wide v11

    .line 969
    add-long/2addr v11, v7

    .line 970
    iget-boolean v5, v1, LD0/S;->O:Z

    .line 971
    .line 972
    if-nez v5, :cond_35

    .line 973
    .line 974
    sub-long v7, v11, v2

    .line 975
    .line 976
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 977
    .line 978
    .line 979
    move-result-wide v7

    .line 980
    const-wide/32 v13, 0x30d40

    .line 981
    .line 982
    .line 983
    cmp-long v5, v7, v13

    .line 984
    .line 985
    if-lez v5, :cond_35

    .line 986
    .line 987
    iget-object v5, v1, LD0/S;->u:LD0/s;

    .line 988
    .line 989
    if-eqz v5, :cond_34

    .line 990
    .line 991
    new-instance v7, LD0/t;

    .line 992
    .line 993
    const-string v8, "Unexpected audio track timestamp discontinuity: expected "

    .line 994
    .line 995
    const-string v9, ", got "

    .line 996
    .line 997
    invoke-static {v8, v11, v12, v9}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    move-result-object v8

    .line 1001
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v8

    .line 1008
    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-interface {v5, v7}, LD0/s;->w(Ljava/lang/Exception;)V

    .line 1012
    .line 1013
    .line 1014
    :cond_34
    iput-boolean v6, v1, LD0/S;->O:Z

    .line 1015
    .line 1016
    :cond_35
    iget-boolean v5, v1, LD0/S;->O:Z

    .line 1017
    .line 1018
    if-eqz v5, :cond_37

    .line 1019
    .line 1020
    invoke-virtual/range {p0 .. p0}, LD0/S;->f()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v5

    .line 1024
    if-nez v5, :cond_36

    .line 1025
    .line 1026
    const/4 v5, 0x0

    .line 1027
    return v5

    .line 1028
    :cond_36
    const/4 v5, 0x0

    .line 1029
    sub-long v7, v2, v11

    .line 1030
    .line 1031
    iget-wide v11, v1, LD0/S;->Q:J

    .line 1032
    .line 1033
    add-long/2addr v11, v7

    .line 1034
    iput-wide v11, v1, LD0/S;->Q:J

    .line 1035
    .line 1036
    iput-boolean v5, v1, LD0/S;->O:Z

    .line 1037
    .line 1038
    invoke-virtual/range {p0 .. p2}, LD0/S;->a(J)V

    .line 1039
    .line 1040
    .line 1041
    iget-object v5, v1, LD0/S;->u:LD0/s;

    .line 1042
    .line 1043
    if-eqz v5, :cond_37

    .line 1044
    .line 1045
    const-wide/16 v11, 0x0

    .line 1046
    .line 1047
    cmp-long v9, v7, v11

    .line 1048
    .line 1049
    if-eqz v9, :cond_37

    .line 1050
    .line 1051
    invoke-interface {v5}, LD0/s;->y()V

    .line 1052
    .line 1053
    .line 1054
    :cond_37
    iget-object v5, v1, LD0/S;->w:LD0/J;

    .line 1055
    .line 1056
    iget v5, v5, LD0/J;->c:I

    .line 1057
    .line 1058
    if-nez v5, :cond_38

    .line 1059
    .line 1060
    iget-wide v7, v1, LD0/S;->J:J

    .line 1061
    .line 1062
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->remaining()I

    .line 1063
    .line 1064
    .line 1065
    move-result v5

    .line 1066
    int-to-long v11, v5

    .line 1067
    add-long/2addr v7, v11

    .line 1068
    iput-wide v7, v1, LD0/S;->J:J

    .line 1069
    .line 1070
    goto :goto_1c

    .line 1071
    :cond_38
    iget-wide v7, v1, LD0/S;->K:J

    .line 1072
    .line 1073
    iget v5, v1, LD0/S;->N:I

    .line 1074
    .line 1075
    int-to-long v11, v5

    .line 1076
    int-to-long v13, v0

    .line 1077
    mul-long v11, v11, v13

    .line 1078
    .line 1079
    add-long/2addr v11, v7

    .line 1080
    iput-wide v11, v1, LD0/S;->K:J

    .line 1081
    .line 1082
    :goto_1c
    iput-object v4, v1, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 1083
    .line 1084
    iput v0, v1, LD0/S;->T:I

    .line 1085
    .line 1086
    :cond_39
    invoke-virtual/range {p0 .. p2}, LD0/S;->x(J)V

    .line 1087
    .line 1088
    .line 1089
    iget-object v0, v1, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 1090
    .line 1091
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v0

    .line 1095
    if-nez v0, :cond_3a

    .line 1096
    .line 1097
    const/4 v0, 0x0

    .line 1098
    iput-object v0, v1, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 1099
    .line 1100
    const/4 v2, 0x0

    .line 1101
    iput v2, v1, LD0/S;->T:I

    .line 1102
    .line 1103
    return v6

    .line 1104
    :cond_3a
    invoke-virtual/range {p0 .. p0}, LD0/S;->m()J

    .line 1105
    .line 1106
    .line 1107
    move-result-wide v2

    .line 1108
    iget-wide v4, v10, LD0/z;->A:J

    .line 1109
    .line 1110
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    cmp-long v0, v4, v7

    .line 1116
    .line 1117
    if-eqz v0, :cond_3b

    .line 1118
    .line 1119
    const-wide/16 v4, 0x0

    .line 1120
    .line 1121
    cmp-long v0, v2, v4

    .line 1122
    .line 1123
    if-lez v0, :cond_3b

    .line 1124
    .line 1125
    iget-object v0, v10, LD0/z;->I:Lp0/f;

    .line 1126
    .line 1127
    check-cast v0, Lp0/G;

    .line 1128
    .line 1129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1130
    .line 1131
    .line 1132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1133
    .line 1134
    .line 1135
    move-result-wide v2

    .line 1136
    iget-wide v4, v10, LD0/z;->A:J

    .line 1137
    .line 1138
    sub-long/2addr v2, v4

    .line 1139
    const-wide/16 v4, 0xc8

    .line 1140
    .line 1141
    cmp-long v0, v2, v4

    .line 1142
    .line 1143
    if-ltz v0, :cond_3b

    .line 1144
    .line 1145
    const-string v0, "DefaultAudioSink"

    .line 1146
    .line 1147
    const-string v2, "Resetting stalled audio track"

    .line 1148
    .line 1149
    invoke-static {v0, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual/range {p0 .. p0}, LD0/S;->g()V

    .line 1153
    .line 1154
    .line 1155
    return v6

    .line 1156
    :cond_3b
    const/4 v2, 0x0

    .line 1157
    return v2

    .line 1158
    nop

    .line 1159
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final o()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-static {v0}, LD0/a;->t(Landroid/media/AudioTrack;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, LD0/S;->X:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, LD0/S;->i:LD0/z;

    .line 26
    .line 27
    invoke-virtual {p0}, LD0/S;->m()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, LD0/z;->e(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method

.method public final p()Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LD0/S;->n:LD0/M;

    .line 4
    .line 5
    iget-object v2, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_2

    .line 13
    :cond_1
    sget-object v2, LD0/S;->p0:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    sget v5, LD0/S;->r0:I

    .line 17
    .line 18
    if-lez v5, :cond_2

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v5, 0x0

    .line 23
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    :goto_1
    const/4 v0, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    iget-wide v7, v0, LD0/M;->c:J

    .line 33
    .line 34
    cmp-long v0, v5, v7

    .line 35
    .line 36
    if-gez v0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :goto_2
    if-eqz v0, :cond_4

    .line 40
    .line 41
    return v3

    .line 42
    :cond_4
    :try_start_1
    iget-object v0, v1, LD0/S;->w:LD0/J;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, LD0/S;->c(LD0/J;)Landroid/media/AudioTrack;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catch LD0/r; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    move-object v2, v0

    .line 54
    iget-object v0, v1, LD0/S;->w:LD0/J;

    .line 55
    .line 56
    iget v5, v0, LD0/J;->h:I

    .line 57
    .line 58
    const v6, 0xf4240

    .line 59
    .line 60
    .line 61
    if-le v5, v6, :cond_11

    .line 62
    .line 63
    new-instance v5, LD0/J;

    .line 64
    .line 65
    iget-boolean v6, v0, LD0/J;->l:Z

    .line 66
    .line 67
    iget-object v8, v0, LD0/J;->a:Lm0/t;

    .line 68
    .line 69
    iget v9, v0, LD0/J;->b:I

    .line 70
    .line 71
    iget v10, v0, LD0/J;->c:I

    .line 72
    .line 73
    iget v11, v0, LD0/J;->d:I

    .line 74
    .line 75
    iget v12, v0, LD0/J;->e:I

    .line 76
    .line 77
    iget v13, v0, LD0/J;->f:I

    .line 78
    .line 79
    iget v14, v0, LD0/J;->g:I

    .line 80
    .line 81
    iget-object v15, v0, LD0/J;->i:Ln0/d;

    .line 82
    .line 83
    iget-boolean v7, v0, LD0/J;->j:Z

    .line 84
    .line 85
    iget-boolean v0, v0, LD0/J;->k:Z

    .line 86
    .line 87
    const v16, 0xf4240

    .line 88
    .line 89
    .line 90
    move/from16 v17, v7

    .line 91
    .line 92
    move-object v7, v5

    .line 93
    move-object/from16 v18, v15

    .line 94
    .line 95
    move/from16 v15, v16

    .line 96
    .line 97
    move-object/from16 v16, v18

    .line 98
    .line 99
    move/from16 v18, v0

    .line 100
    .line 101
    move/from16 v19, v6

    .line 102
    .line 103
    invoke-direct/range {v7 .. v19}, LD0/J;-><init>(Lm0/t;IIIIIIILn0/d;ZZZ)V

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-virtual {v1, v5}, LD0/S;->c(LD0/J;)Landroid/media/AudioTrack;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v5, v1, LD0/S;->w:LD0/J;
    :try_end_2
    .catch LD0/r; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    .line 112
    :goto_3
    iput-object v0, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 113
    .line 114
    invoke-static {v0}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    iget-object v0, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 121
    .line 122
    iget-object v2, v1, LD0/S;->m:LD0/Q;

    .line 123
    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    new-instance v2, LD0/Q;

    .line 127
    .line 128
    invoke-direct {v2, v1}, LD0/Q;-><init>(LD0/S;)V

    .line 129
    .line 130
    .line 131
    iput-object v2, v1, LD0/S;->m:LD0/Q;

    .line 132
    .line 133
    :cond_5
    iget-object v2, v1, LD0/S;->m:LD0/Q;

    .line 134
    .line 135
    iget-object v5, v2, LD0/Q;->a:Landroid/os/Handler;

    .line 136
    .line 137
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    new-instance v6, LD0/O;

    .line 141
    .line 142
    invoke-direct {v6, v3, v5}, LD0/O;-><init>(ILandroid/os/Handler;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v2, LD0/Q;->b:LD0/P;

    .line 146
    .line 147
    invoke-static {v0, v6, v2}, LD0/a;->n(Landroid/media/AudioTrack;LD0/O;LD0/P;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v1, LD0/S;->w:LD0/J;

    .line 151
    .line 152
    iget-boolean v2, v0, LD0/J;->k:Z

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    iget-object v2, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 157
    .line 158
    iget-object v0, v0, LD0/J;->a:Lm0/t;

    .line 159
    .line 160
    iget v5, v0, Lm0/t;->J:I

    .line 161
    .line 162
    iget v0, v0, Lm0/t;->K:I

    .line 163
    .line 164
    invoke-static {v2, v5, v0}, LD0/a;->m(Landroid/media/AudioTrack;II)V

    .line 165
    .line 166
    .line 167
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    .line 169
    const/16 v2, 0x1f

    .line 170
    .line 171
    if-lt v0, v2, :cond_7

    .line 172
    .line 173
    iget-object v2, v1, LD0/S;->t:LC0/I;

    .line 174
    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 178
    .line 179
    invoke-virtual {v2}, LC0/I;->a()Landroid/media/metrics/LogSessionId;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {}, LC0/E;->h()Landroid/media/metrics/LogSessionId;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v2, v6}, LC0/E;->z(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_7

    .line 192
    .line 193
    invoke-static {v5, v2}, LC0/E;->o(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    iget-object v2, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 197
    .line 198
    iget-object v5, v1, LD0/S;->w:LD0/J;

    .line 199
    .line 200
    iget v6, v5, LD0/J;->c:I

    .line 201
    .line 202
    const/4 v7, 0x2

    .line 203
    if-ne v6, v7, :cond_8

    .line 204
    .line 205
    const/4 v6, 0x1

    .line 206
    goto :goto_4

    .line 207
    :cond_8
    const/4 v6, 0x0

    .line 208
    :goto_4
    iget v7, v5, LD0/J;->g:I

    .line 209
    .line 210
    iget v8, v5, LD0/J;->d:I

    .line 211
    .line 212
    iget v5, v5, LD0/J;->h:I

    .line 213
    .line 214
    iget-object v9, v1, LD0/S;->i:LD0/z;

    .line 215
    .line 216
    iput-object v2, v9, LD0/z;->c:Landroid/media/AudioTrack;

    .line 217
    .line 218
    iput v5, v9, LD0/z;->d:I

    .line 219
    .line 220
    new-instance v10, LD0/x;

    .line 221
    .line 222
    iget-object v11, v9, LD0/z;->a:LD0/N;

    .line 223
    .line 224
    invoke-direct {v10, v2, v11}, LD0/x;-><init>(Landroid/media/AudioTrack;LD0/N;)V

    .line 225
    .line 226
    .line 227
    iput-object v10, v9, LD0/z;->e:LD0/x;

    .line 228
    .line 229
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    iput v2, v9, LD0/z;->f:I

    .line 234
    .line 235
    const/16 v2, 0x17

    .line 236
    .line 237
    if-eqz v6, :cond_a

    .line 238
    .line 239
    if-ge v0, v2, :cond_a

    .line 240
    .line 241
    const/4 v6, 0x5

    .line 242
    if-eq v7, v6, :cond_9

    .line 243
    .line 244
    const/4 v6, 0x6

    .line 245
    if-ne v7, v6, :cond_a

    .line 246
    .line 247
    :cond_9
    const/4 v6, 0x1

    .line 248
    goto :goto_5

    .line 249
    :cond_a
    const/4 v6, 0x0

    .line 250
    :goto_5
    iput-boolean v6, v9, LD0/z;->g:Z

    .line 251
    .line 252
    invoke-static {v7}, Lp0/M;->M(I)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    iput-boolean v6, v9, LD0/z;->r:Z

    .line 257
    .line 258
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    if-eqz v6, :cond_b

    .line 264
    .line 265
    div-int/2addr v5, v8

    .line 266
    int-to-long v5, v5

    .line 267
    iget v7, v9, LD0/z;->f:I

    .line 268
    .line 269
    invoke-static {v7, v5, v6}, Lp0/M;->X(IJ)J

    .line 270
    .line 271
    .line 272
    move-result-wide v5

    .line 273
    goto :goto_6

    .line 274
    :cond_b
    move-wide v5, v10

    .line 275
    :goto_6
    iput-wide v5, v9, LD0/z;->h:J

    .line 276
    .line 277
    const-wide/16 v5, 0x0

    .line 278
    .line 279
    iput-wide v5, v9, LD0/z;->u:J

    .line 280
    .line 281
    iput-wide v5, v9, LD0/z;->v:J

    .line 282
    .line 283
    iput-boolean v3, v9, LD0/z;->G:Z

    .line 284
    .line 285
    iput-wide v5, v9, LD0/z;->H:J

    .line 286
    .line 287
    iput-wide v5, v9, LD0/z;->w:J

    .line 288
    .line 289
    iput-boolean v3, v9, LD0/z;->q:Z

    .line 290
    .line 291
    iput-wide v10, v9, LD0/z;->z:J

    .line 292
    .line 293
    iput-wide v10, v9, LD0/z;->A:J

    .line 294
    .line 295
    iput-wide v5, v9, LD0/z;->s:J

    .line 296
    .line 297
    iput-wide v5, v9, LD0/z;->p:J

    .line 298
    .line 299
    const/high16 v5, 0x3f800000    # 1.0f

    .line 300
    .line 301
    iput v5, v9, LD0/z;->i:F

    .line 302
    .line 303
    iput v3, v9, LD0/z;->l:I

    .line 304
    .line 305
    iput-wide v10, v9, LD0/z;->k:J

    .line 306
    .line 307
    iget-boolean v5, v1, LD0/S;->o0:Z

    .line 308
    .line 309
    iput-boolean v5, v9, LD0/z;->D:Z

    .line 310
    .line 311
    invoke-virtual/range {p0 .. p0}, LD0/S;->q()Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_c

    .line 316
    .line 317
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 318
    .line 319
    iget v6, v1, LD0/S;->R:F

    .line 320
    .line 321
    invoke-virtual {v5, v6}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 322
    .line 323
    .line 324
    :cond_c
    iget-object v5, v1, LD0/S;->c0:Lm0/e;

    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    iget-object v5, v1, LD0/S;->d0:Lf/S;

    .line 330
    .line 331
    if-eqz v5, :cond_d

    .line 332
    .line 333
    if-lt v0, v2, :cond_d

    .line 334
    .line 335
    iget-object v2, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 336
    .line 337
    iget-object v5, v5, Lf/S;->H:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 340
    .line 341
    invoke-static {v2, v5}, LB0/q;->v(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v1, LD0/S;->A:LD0/f;

    .line 345
    .line 346
    if-eqz v2, :cond_d

    .line 347
    .line 348
    iget-object v5, v1, LD0/S;->d0:Lf/S;

    .line 349
    .line 350
    iget-object v5, v5, Lf/S;->H:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 353
    .line 354
    invoke-virtual {v2, v5}, LD0/f;->b(Landroid/media/AudioDeviceInfo;)V

    .line 355
    .line 356
    .line 357
    :cond_d
    const/16 v2, 0x18

    .line 358
    .line 359
    if-lt v0, v2, :cond_e

    .line 360
    .line 361
    iget-object v0, v1, LD0/S;->A:LD0/f;

    .line 362
    .line 363
    if-eqz v0, :cond_e

    .line 364
    .line 365
    new-instance v2, Lm2/u;

    .line 366
    .line 367
    iget-object v5, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 368
    .line 369
    invoke-direct {v2, v5, v0}, Lm2/u;-><init>(Landroid/media/AudioTrack;LD0/f;)V

    .line 370
    .line 371
    .line 372
    iput-object v2, v1, LD0/S;->B:Lm2/u;

    .line 373
    .line 374
    :cond_e
    iput-boolean v4, v1, LD0/S;->P:Z

    .line 375
    .line 376
    iget-object v0, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 377
    .line 378
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    iget v2, v1, LD0/S;->a0:I

    .line 383
    .line 384
    if-eq v0, v2, :cond_f

    .line 385
    .line 386
    const/4 v3, 0x1

    .line 387
    :cond_f
    iput v0, v1, LD0/S;->a0:I

    .line 388
    .line 389
    iget-object v0, v1, LD0/S;->u:LD0/s;

    .line 390
    .line 391
    if-eqz v0, :cond_10

    .line 392
    .line 393
    iget-object v2, v1, LD0/S;->w:LD0/J;

    .line 394
    .line 395
    invoke-virtual {v2}, LD0/J;->a()LD0/p;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-interface {v0, v2}, LD0/s;->p(LD0/p;)V

    .line 400
    .line 401
    .line 402
    if-eqz v3, :cond_10

    .line 403
    .line 404
    iput-boolean v4, v1, LD0/S;->b0:Z

    .line 405
    .line 406
    iget-object v0, v1, LD0/S;->u:LD0/s;

    .line 407
    .line 408
    iget v2, v1, LD0/S;->a0:I

    .line 409
    .line 410
    invoke-interface {v0, v2}, LD0/s;->c(I)V

    .line 411
    .line 412
    .line 413
    :cond_10
    return v4

    .line 414
    :catch_1
    move-exception v0

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 416
    .line 417
    .line 418
    :cond_11
    iget-object v0, v1, LD0/S;->w:LD0/J;

    .line 419
    .line 420
    iget v0, v0, LD0/J;->c:I

    .line 421
    .line 422
    if-ne v0, v4, :cond_12

    .line 423
    .line 424
    iput-boolean v4, v1, LD0/S;->h0:Z

    .line 425
    .line 426
    :cond_12
    throw v2

    .line 427
    :catchall_0
    move-exception v0

    .line 428
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    throw v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final s()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LD0/S;->A:LD0/f;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, LD0/S;->j0:Landroid/os/Looper;

    .line 12
    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "DefaultAudioSink accessed on multiple threads: "

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, LD0/S;->j0:Landroid/os/Looper;

    .line 27
    .line 28
    const-string v6, "null"

    .line 29
    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    move-object v5, v6

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, " and "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, LD0/S;->A:LD0/f;

    .line 72
    .line 73
    if-nez v1, :cond_7

    .line 74
    .line 75
    iget-object v1, p0, LD0/S;->a:Landroid/content/Context;

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    iput-object v0, p0, LD0/S;->j0:Landroid/os/Looper;

    .line 80
    .line 81
    new-instance v0, LD0/f;

    .line 82
    .line 83
    new-instance v4, LD0/E;

    .line 84
    .line 85
    invoke-direct {v4, p0}, LD0/E;-><init>(LD0/S;)V

    .line 86
    .line 87
    .line 88
    iget-object v5, p0, LD0/S;->C:Lm0/d;

    .line 89
    .line 90
    iget-object v6, p0, LD0/S;->d0:Lf/S;

    .line 91
    .line 92
    invoke-direct {v0, v1, v4, v5, v6}, LD0/f;-><init>(Landroid/content/Context;LD0/E;Lm0/d;Lf/S;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, LD0/S;->A:LD0/f;

    .line 96
    .line 97
    iget-boolean v1, v0, LD0/f;->j:Z

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object v0, v0, LD0/f;->g:LD0/d;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    iput-boolean v2, v0, LD0/f;->j:Z

    .line 108
    .line 109
    iget-object v1, v0, LD0/f;->f:LD0/e;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    iget-object v2, v1, LD0/e;->c:Landroid/net/Uri;

    .line 114
    .line 115
    iget-object v4, v1, LD0/e;->b:Landroid/content/ContentResolver;

    .line 116
    .line 117
    invoke-virtual {v4, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    iget-object v2, v0, LD0/f;->c:Landroid/os/Handler;

    .line 123
    .line 124
    const/16 v3, 0x17

    .line 125
    .line 126
    iget-object v4, v0, LD0/f;->a:Landroid/content/Context;

    .line 127
    .line 128
    if-lt v1, v3, :cond_6

    .line 129
    .line 130
    iget-object v1, v0, LD0/f;->d:LB0/r;

    .line 131
    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-static {v4}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3, v1, v2}, LB0/q;->t(Landroid/media/AudioManager;LB0/r;Landroid/os/Handler;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    new-instance v1, Landroid/content/IntentFilter;

    .line 142
    .line 143
    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    .line 144
    .line 145
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    iget-object v5, v0, LD0/f;->e:Lf/G;

    .line 150
    .line 151
    invoke-virtual {v4, v5, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-object v2, v0, LD0/f;->i:Lm0/d;

    .line 156
    .line 157
    iget-object v3, v0, LD0/f;->h:Lf/S;

    .line 158
    .line 159
    invoke-static {v4, v1, v2, v3}, LD0/d;->b(Landroid/content/Context;Landroid/content/Intent;Lm0/d;Lf/S;)LD0/d;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, v0, LD0/f;->g:LD0/d;

    .line 164
    .line 165
    move-object v0, v1

    .line 166
    :goto_4
    iput-object v0, p0, LD0/S;->z:LD0/d;

    .line 167
    .line 168
    :cond_7
    iget-object v0, p0, LD0/S;->z:LD0/d;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LD0/S;->Y:Z

    .line 3
    .line 4
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, LD0/S;->i:LD0/z;

    .line 11
    .line 12
    invoke-virtual {v1}, LD0/z;->g()V

    .line 13
    .line 14
    .line 15
    iget-wide v2, v1, LD0/z;->z:J

    .line 16
    .line 17
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v6, v2, v4

    .line 23
    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, LD0/z;->e:LD0/x;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, LD0/x;->a(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v1}, LD0/z;->b()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-wide v2, v1, LD0/z;->B:J

    .line 39
    .line 40
    iget-boolean v0, p0, LD0/S;->W:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 45
    .line 46
    invoke-static {v0}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public final u()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LD0/S;->Y:Z

    .line 3
    .line 4
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, LD0/S;->i:LD0/z;

    .line 11
    .line 12
    iget-wide v1, v0, LD0/z;->z:J

    .line 13
    .line 14
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v5, v1, v3

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, LD0/z;->I:Lp0/f;

    .line 24
    .line 25
    check-cast v1, Lp0/G;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Lp0/M;->R(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, LD0/z;->z:J

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0}, LD0/z;->b()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iget v3, v0, LD0/z;->f:I

    .line 45
    .line 46
    invoke-static {v3, v1, v2}, Lp0/M;->X(IJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iput-wide v1, v0, LD0/z;->k:J

    .line 51
    .line 52
    iget-object v0, v0, LD0/z;->e:LD0/x;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, LD0/x;->a(I)V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, LD0/S;->W:Z

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 66
    .line 67
    invoke-static {v0}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LD0/S;->W:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LD0/S;->W:Z

    .line 7
    .line 8
    invoke-virtual {p0}, LD0/S;->m()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, LD0/S;->i:LD0/z;

    .line 13
    .line 14
    invoke-virtual {v2}, LD0/z;->b()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iput-wide v3, v2, LD0/z;->B:J

    .line 19
    .line 20
    iget-object v3, v2, LD0/z;->I:Lp0/f;

    .line 21
    .line 22
    check-cast v3, Lp0/G;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Lp0/M;->R(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iput-wide v3, v2, LD0/z;->z:J

    .line 36
    .line 37
    iput-wide v0, v2, LD0/z;->C:J

    .line 38
    .line 39
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 40
    .line 41
    invoke-static {v0}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iput-boolean v1, p0, LD0/S;->X:Z

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 53
    .line 54
    .line 55
    iput v1, p0, LD0/S;->I:I

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LD0/S;->V:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LD0/S;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, LD0/S;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, LD0/S;->v()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, LD0/S;->V:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final x(J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, LD0/S;->e(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ln0/d;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, LD0/S;->D(Ljava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, LD0/S;->e(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Ln0/d;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_9

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 37
    .line 38
    invoke-virtual {v0}, Ln0/d;->e()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    sget-object v0, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget-object v1, v0, Ln0/d;->c:[Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ln0/d;->c()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    aget-object v1, v1, v2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    sget-object v1, Ln0/g;->a:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ln0/d;->f(Ljava/nio/ByteBuffer;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Ln0/d;->c:[Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ln0/d;->c()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    aget-object v0, v1, v0

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0, v0}, LD0/S;->D(Ljava/nio/ByteBuffer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, LD0/S;->e(J)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, LD0/S;->U:Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    iget-object v0, p0, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 105
    .line 106
    iget-object v1, p0, LD0/S;->S:Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    invoke-virtual {v0}, Ln0/d;->e()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-boolean v2, v0, Ln0/d;->d:Z

    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    invoke-virtual {v0, v1}, Ln0/d;->f(Ljava/nio/ByteBuffer;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_9
    :goto_2
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LD0/S;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD0/S;->h:Lz4/d0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lz4/H;->v(I)Lz4/F;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {v0}, Lz4/a;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lz4/a;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ln0/g;

    .line 22
    .line 23
    invoke-interface {v2}, Ln0/g;->a()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, LD0/S;->f:Ln0/k;

    .line 28
    .line 29
    invoke-virtual {v0}, Ln0/h;->a()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, LD0/S;->g:LD0/Y;

    .line 33
    .line 34
    invoke-virtual {v0}, Ln0/h;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LD0/S;->x:Ln0/d;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ln0/d;->g()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iput-boolean v1, p0, LD0/S;->Y:Z

    .line 45
    .line 46
    iput-boolean v1, p0, LD0/S;->h0:Z

    .line 47
    .line 48
    return-void
.end method

.method public final z(Lm0/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, LD0/S;->C:Lm0/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/d;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, LD0/S;->C:Lm0/d;

    .line 11
    .line 12
    iget-boolean v0, p0, LD0/S;->e0:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, LD0/S;->A:LD0/f;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iput-object p1, v0, LD0/f;->i:Lm0/d;

    .line 22
    .line 23
    iget-object v1, v0, LD0/f;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, v0, LD0/f;->h:Lf/S;

    .line 26
    .line 27
    invoke-static {v1, p1, v2}, LD0/d;->c(Landroid/content/Context;Lm0/d;Lf/S;)LD0/d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, LD0/f;->a(LD0/d;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, LD0/S;->g()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
