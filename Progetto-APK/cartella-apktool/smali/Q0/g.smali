.class public final LQ0/g;
.super LB0/h;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final G:LF2/G;

.field public final H:Lw0/g;

.field public I:LQ0/a;

.field public final J:LQ0/e;

.field public K:Z

.field public L:I

.field public M:Lq1/e;

.field public N:Lq1/i;

.field public O:Lq1/j;

.field public P:Lq1/j;

.field public Q:I

.field public final R:Landroid/os/Handler;

.field public final S:LQ0/f;

.field public final T:LB0/Z;

.field public U:Z

.field public V:Z

.field public W:Lm0/t;

.field public X:J

.field public Y:J


# direct methods
.method public constructor <init>(LB0/L;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, LQ0/e;->j:LD0/U;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1}, LB0/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LQ0/g;->S:LQ0/f;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, LQ0/g;->R:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object v0, p0, LQ0/g;->J:LQ0/e;

    .line 21
    .line 22
    new-instance p1, LF2/G;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-direct {p1, p2}, LF2/G;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LQ0/g;->G:LF2/G;

    .line 29
    .line 30
    new-instance p1, Lw0/g;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p1, p2, v0}, Lw0/g;-><init>(II)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LQ0/g;->H:Lw0/g;

    .line 37
    .line 38
    new-instance p1, LB0/Z;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, LQ0/g;->T:LB0/Z;

    .line 44
    .line 45
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    iput-wide p1, p0, LQ0/g;->Y:J

    .line 51
    .line 52
    iput-wide p1, p0, LQ0/g;->X:J

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LQ0/g;->W:Lm0/t;

    .line 2
    .line 3
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "application/cea-608"

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, LQ0/g;->W:Lm0/t;

    .line 14
    .line 15
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "application/x-mp4-cea-608"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, LQ0/g;->W:Lm0/t;

    .line 26
    .line 27
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "application/cea-708"

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "Legacy decoding is disabled, can\'t handle "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, LQ0/g;->W:Lm0/t;

    .line 49
    .line 50
    iget-object v2, v2, Lm0/t;->o:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " samples (expected application/x-media3-cues)."

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    iget v0, p0, LQ0/g;->Q:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v0, p0, LQ0/g;->O:Lq1/j;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v0, p0, LQ0/g;->Q:I

    .line 18
    .line 19
    iget-object v1, p0, LQ0/g;->O:Lq1/j;

    .line 20
    .line 21
    invoke-virtual {v1}, Lq1/j;->d()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, LQ0/g;->O:Lq1/j;

    .line 29
    .line 30
    iget v1, p0, LQ0/g;->Q:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lq1/j;->b(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    :goto_0
    return-wide v2
.end method

.method public final c(J)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LB0/h;->getStreamOffsetUs()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sub-long/2addr p1, v0

    .line 21
    return-wide p1
.end method

.method public final d()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LQ0/g;->K:Z

    .line 3
    .line 4
    iget-object v1, p0, LQ0/g;->W:Lm0/t;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, LQ0/g;->J:LQ0/e;

    .line 10
    .line 11
    check-cast v2, LD0/U;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, v1, Lm0/t;->o:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_8

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const v5, 0x37713300

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    const/4 v7, -0x1

    .line 29
    if-eq v4, v5, :cond_4

    .line 30
    .line 31
    const v5, 0x5d578071

    .line 32
    .line 33
    .line 34
    if-eq v4, v5, :cond_2

    .line 35
    .line 36
    const v5, 0x5d578432

    .line 37
    .line 38
    .line 39
    if-eq v4, v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v4, "application/cea-708"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v7, 0x2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v4, "application/cea-608"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v7, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const-string v4, "application/x-mp4-cea-608"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const/4 v7, 0x0

    .line 74
    :goto_0
    iget v4, v1, Lm0/t;->L:I

    .line 75
    .line 76
    if-eqz v7, :cond_7

    .line 77
    .line 78
    if-eq v7, v0, :cond_7

    .line 79
    .line 80
    if-eq v7, v6, :cond_6

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    new-instance v0, Lr1/f;

    .line 84
    .line 85
    iget-object v1, v1, Lm0/t;->r:Ljava/util/List;

    .line 86
    .line 87
    invoke-direct {v0, v4, v1}, Lr1/f;-><init>(ILjava/util/List;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_7
    new-instance v0, Lr1/c;

    .line 92
    .line 93
    invoke-direct {v0, v4, v3}, Lr1/c;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_8
    :goto_1
    iget-object v0, v2, LD0/U;->H:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, LF2/G;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, LF2/G;->K(Lm0/t;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    iget-object v0, v2, LD0/U;->H:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, LF2/G;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, LF2/G;->x(Lm0/t;)Lq1/m;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, LQ0/b;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "Decoder"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-direct {v1, v2, v0}, LQ0/b;-><init>(Ljava/lang/String;Lq1/m;)V

    .line 132
    .line 133
    .line 134
    move-object v0, v1

    .line 135
    :goto_2
    iput-object v0, p0, LQ0/g;->M:Lq1/e;

    .line 136
    .line 137
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    invoke-interface {v0, v1, v2}, Lw0/d;->setOutputStartTimeUs(J)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    .line 148
    .line 149
    invoke-static {v1, v3}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0
.end method

.method public final e(Lo0/c;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lo0/c;->a:Lz4/d0;

    .line 2
    .line 3
    iget-object v1, p0, LQ0/g;->S:LQ0/f;

    .line 4
    .line 5
    check-cast v1, LB0/L;

    .line 6
    .line 7
    iget-object v2, v1, LB0/L;->G:LB0/O;

    .line 8
    .line 9
    iget-object v2, v2, LB0/O;->S:Lx/e;

    .line 10
    .line 11
    new-instance v3, LB0/x;

    .line 12
    .line 13
    const/16 v4, 0xc

    .line 14
    .line 15
    invoke-direct {v3, v0, v4}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x1b

    .line 19
    .line 20
    invoke-virtual {v2, v0, v3}, Lx/e;->l(ILp0/u;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v1, LB0/L;->G:LB0/O;

    .line 24
    .line 25
    iput-object p1, v1, LB0/O;->G0:Lo0/c;

    .line 26
    .line 27
    new-instance v2, LB0/x;

    .line 28
    .line 29
    const/16 v3, 0x9

    .line 30
    .line 31
    invoke-direct {v2, p1, v3}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v1, LB0/O;->S:Lx/e;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v2}, Lx/e;->l(ILp0/u;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LQ0/g;->N:Lq1/i;

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, LQ0/g;->Q:I

    .line 6
    .line 7
    iget-object v1, p0, LQ0/g;->O:Lq1/j;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lw0/i;->release()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LQ0/g;->O:Lq1/j;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, LQ0/g;->P:Lq1/j;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lw0/i;->release()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LQ0/g;->P:Lq1/j;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TextRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lo0/c;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, LQ0/g;->e(Lo0/c;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LQ0/g;->V:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isReady()Z
    .locals 7

    .line 1
    iget-object v0, p0, LQ0/g;->W:Lm0/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "application/x-media3-cues"

    .line 10
    .line 11
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, LQ0/g;->I:LQ0/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-wide v3, p0, LQ0/g;->X:J

    .line 24
    .line 25
    invoke-interface {v0, v3, v4}, LQ0/a;->a(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const-wide/high16 v5, -0x8000000000000000L

    .line 30
    .line 31
    cmp-long v0, v3, v5

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    :try_start_0
    invoke-virtual {p0}, LB0/h;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :catch_0
    return v2

    .line 41
    :cond_2
    iget-boolean v0, p0, LQ0/g;->V:Z

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    iget-boolean v0, p0, LQ0/g;->U:Z

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    iget-object v0, p0, LQ0/g;->O:Lq1/j;

    .line 50
    .line 51
    iget-wide v3, p0, LQ0/g;->X:J

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Lq1/j;->d()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-lez v5, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lq1/j;->d()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    sub-int/2addr v5, v1

    .line 66
    invoke-virtual {v0, v5}, Lq1/j;->b(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    cmp-long v0, v5, v3

    .line 71
    .line 72
    if-lez v0, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, LQ0/g;->P:Lq1/j;

    .line 76
    .line 77
    iget-wide v3, p0, LQ0/g;->X:J

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Lq1/j;->d()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-lez v5, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Lq1/j;->d()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sub-int/2addr v5, v1

    .line 92
    invoke-virtual {v0, v5}, Lq1/j;->b(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    cmp-long v0, v5, v3

    .line 97
    .line 98
    if-lez v0, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, LQ0/g;->N:Lq1/i;

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/4 v1, 0x0

    .line 107
    :cond_6
    :goto_0
    return v1
.end method

.method public final onDisabled()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LQ0/g;->W:Lm0/t;

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, LQ0/g;->Y:J

    .line 10
    .line 11
    new-instance v3, Lo0/c;

    .line 12
    .line 13
    sget-object v4, Lz4/d0;->K:Lz4/d0;

    .line 14
    .line 15
    iget-wide v5, p0, LQ0/g;->X:J

    .line 16
    .line 17
    invoke-virtual {p0, v5, v6}, LQ0/g;->c(J)J

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, LQ0/g;->R:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v3}, LQ0/g;->e(Lo0/c;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-wide v1, p0, LQ0/g;->X:J

    .line 40
    .line 41
    iget-object v1, p0, LQ0/g;->M:Lq1/e;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, LQ0/g;->f()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, LQ0/g;->M:Lq1/e;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lw0/d;->release()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, LQ0/g;->M:Lq1/e;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput v0, p0, LQ0/g;->L:I

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 2

    .line 1
    iput-wide p1, p0, LQ0/g;->X:J

    .line 2
    .line 3
    iget-object p1, p0, LQ0/g;->I:LQ0/a;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, LQ0/a;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance p1, Lo0/c;

    .line 11
    .line 12
    sget-object p2, Lz4/d0;->K:Lz4/d0;

    .line 13
    .line 14
    iget-wide v0, p0, LQ0/g;->X:J

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, LQ0/g;->c(J)J

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, LQ0/g;->R:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, LQ0/g;->e(Lo0/c;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, LQ0/g;->U:Z

    .line 40
    .line 41
    iput-boolean p1, p0, LQ0/g;->V:Z

    .line 42
    .line 43
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iput-wide p2, p0, LQ0/g;->Y:J

    .line 49
    .line 50
    iget-object p2, p0, LQ0/g;->W:Lm0/t;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    iget-object p2, p2, Lm0/t;->o:Ljava/lang/String;

    .line 55
    .line 56
    const-string p3, "application/x-media3-cues"

    .line 57
    .line 58
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget p2, p0, LQ0/g;->L:I

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, LQ0/g;->f()V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, LQ0/g;->M:Lq1/e;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Lw0/d;->release()V

    .line 77
    .line 78
    .line 79
    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, LQ0/g;->M:Lq1/e;

    .line 81
    .line 82
    iput p1, p0, LQ0/g;->L:I

    .line 83
    .line 84
    invoke-virtual {p0}, LQ0/g;->d()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p0}, LQ0/g;->f()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, LQ0/g;->M:Lq1/e;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Lw0/d;->flush()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 100
    .line 101
    .line 102
    move-result-wide p2

    .line 103
    invoke-interface {p1, p2, p3}, Lw0/d;->setOutputStartTimeUs(J)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_1
    return-void
.end method

.method public final onStreamChanged([Lm0/t;JJLO0/y;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p1, p1, p2

    .line 3
    .line 4
    iput-object p1, p0, LQ0/g;->W:Lm0/t;

    .line 5
    .line 6
    iget-object p1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 7
    .line 8
    const-string p2, "application/x-media3-cues"

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, LQ0/g;->a()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, LQ0/g;->M:Lq1/e;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput p2, p0, LQ0/g;->L:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, LQ0/g;->d()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, LQ0/g;->W:Lm0/t;

    .line 32
    .line 33
    iget p1, p1, Lm0/t;->M:I

    .line 34
    .line 35
    if-ne p1, p2, :cond_2

    .line 36
    .line 37
    new-instance p1, LQ0/c;

    .line 38
    .line 39
    invoke-direct {p1}, LQ0/c;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, LQ0/d;

    .line 44
    .line 45
    invoke-direct {p1}, LQ0/d;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_0
    iput-object p1, p0, LQ0/g;->I:LQ0/a;

    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method public final render(JJ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, LB0/h;->isCurrentStreamFinal()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-wide v5, v1, LQ0/g;->Y:J

    .line 13
    .line 14
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v0, v5, v7

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    cmp-long v0, v2, v5

    .line 24
    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, LQ0/g;->f()V

    .line 28
    .line 29
    .line 30
    iput-boolean v4, v1, LQ0/g;->V:Z

    .line 31
    .line 32
    :cond_0
    iget-boolean v0, v1, LQ0/g;->V:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, v1, LQ0/g;->W:Lm0/t;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 43
    .line 44
    const-string v5, "application/x-media3-cues"

    .line 45
    .line 46
    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v5, v1, LQ0/g;->R:Landroid/os/Handler;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, -0x4

    .line 54
    iget-object v8, v1, LQ0/g;->T:LB0/Z;

    .line 55
    .line 56
    if-eqz v0, :cond_a

    .line 57
    .line 58
    iget-object v0, v1, LQ0/g;->I:LQ0/a;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-boolean v0, v1, LQ0/g;->U:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    iget-object v0, v1, LQ0/g;->H:Lw0/g;

    .line 70
    .line 71
    invoke-virtual {v1, v8, v0, v6}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eq v8, v7, :cond_3

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_3
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_4

    .line 84
    .line 85
    iput-boolean v4, v1, LQ0/g;->U:Z

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_4
    invoke-virtual {v0}, Lw0/g;->g()V

    .line 90
    .line 91
    .line 92
    iget-object v7, v0, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-wide v10, v0, Lw0/g;->K:J

    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iget-object v12, v1, LQ0/g;->G:LF2/G;

    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-virtual {v12, v8, v9, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    .line 125
    .line 126
    const-class v7, Landroid/os/Bundle;

    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 137
    .line 138
    .line 139
    const-string v8, "c"

    .line 140
    .line 141
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    new-instance v14, Lq1/a;

    .line 149
    .line 150
    new-instance v9, LC0/h;

    .line 151
    .line 152
    const/16 v12, 0xb

    .line 153
    .line 154
    invoke-direct {v9, v12}, LC0/h;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-ge v6, v13, :cond_5

    .line 166
    .line 167
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    check-cast v13, Landroid/os/Bundle;

    .line 172
    .line 173
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v13}, LC0/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    invoke-virtual {v12, v13}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {v12}, Lz4/E;->m0()Lz4/d0;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    const-string v6, "d"

    .line 191
    .line 192
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v12

    .line 196
    move-object v8, v14

    .line 197
    invoke-direct/range {v8 .. v13}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lw0/g;->clear()V

    .line 201
    .line 202
    .line 203
    iget-object v0, v1, LQ0/g;->I:LQ0/a;

    .line 204
    .line 205
    invoke-interface {v0, v14, v2, v3}, LQ0/a;->d(Lq1/a;J)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    :goto_1
    iget-object v0, v1, LQ0/g;->I:LQ0/a;

    .line 210
    .line 211
    iget-wide v7, v1, LQ0/g;->X:J

    .line 212
    .line 213
    invoke-interface {v0, v7, v8}, LQ0/a;->a(J)J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    const-wide/high16 v9, -0x8000000000000000L

    .line 218
    .line 219
    cmp-long v0, v7, v9

    .line 220
    .line 221
    if-nez v0, :cond_6

    .line 222
    .line 223
    iget-boolean v9, v1, LQ0/g;->U:Z

    .line 224
    .line 225
    if-eqz v9, :cond_6

    .line 226
    .line 227
    if-nez v6, :cond_6

    .line 228
    .line 229
    iput-boolean v4, v1, LQ0/g;->V:Z

    .line 230
    .line 231
    :cond_6
    if-eqz v0, :cond_7

    .line 232
    .line 233
    cmp-long v0, v7, v2

    .line 234
    .line 235
    if-gtz v0, :cond_7

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    if-eqz v6, :cond_9

    .line 239
    .line 240
    :goto_2
    iget-object v0, v1, LQ0/g;->I:LQ0/a;

    .line 241
    .line 242
    invoke-interface {v0, v2, v3}, LQ0/a;->b(J)Lz4/H;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v6, v1, LQ0/g;->I:LQ0/a;

    .line 247
    .line 248
    invoke-interface {v6, v2, v3}, LQ0/a;->c(J)J

    .line 249
    .line 250
    .line 251
    move-result-wide v6

    .line 252
    new-instance v8, Lo0/c;

    .line 253
    .line 254
    invoke-virtual {v1, v6, v7}, LQ0/g;->c(J)J

    .line 255
    .line 256
    .line 257
    invoke-direct {v8, v0}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    if-eqz v5, :cond_8

    .line 261
    .line 262
    invoke-virtual {v5, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_8
    invoke-virtual {v1, v8}, LQ0/g;->e(Lo0/c;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    iget-object v0, v1, LQ0/g;->I:LQ0/a;

    .line 274
    .line 275
    invoke-interface {v0, v6, v7}, LQ0/a;->e(J)V

    .line 276
    .line 277
    .line 278
    :cond_9
    iput-wide v2, v1, LQ0/g;->X:J

    .line 279
    .line 280
    goto/16 :goto_11

    .line 281
    .line 282
    :cond_a
    invoke-virtual/range {p0 .. p0}, LQ0/g;->a()V

    .line 283
    .line 284
    .line 285
    iput-wide v2, v1, LQ0/g;->X:J

    .line 286
    .line 287
    iget-object v0, v1, LQ0/g;->P:Lq1/j;

    .line 288
    .line 289
    const-string v9, "TextRenderer"

    .line 290
    .line 291
    const-string v10, "Subtitle decoding failed. streamFormat="

    .line 292
    .line 293
    const/4 v11, 0x0

    .line 294
    if-nez v0, :cond_c

    .line 295
    .line 296
    iget-object v0, v1, LQ0/g;->M:Lq1/e;

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-interface {v0, v2, v3}, Lq1/e;->a(J)V

    .line 302
    .line 303
    .line 304
    :try_start_0
    iget-object v0, v1, LQ0/g;->M:Lq1/e;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-interface {v0}, Lw0/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Lq1/j;

    .line 314
    .line 315
    iput-object v0, v1, LQ0/g;->P:Lq1/j;
    :try_end_0
    .catch Lq1/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :catch_0
    move-exception v0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v3, v1, LQ0/g;->W:Lm0/t;

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v9, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    new-instance v0, Lo0/c;

    .line 337
    .line 338
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 339
    .line 340
    iget-wide v7, v1, LQ0/g;->X:J

    .line 341
    .line 342
    invoke-virtual {v1, v7, v8}, LQ0/g;->c(J)J

    .line 343
    .line 344
    .line 345
    invoke-direct {v0, v2}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 346
    .line 347
    .line 348
    if-eqz v5, :cond_b

    .line 349
    .line 350
    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_b
    invoke-virtual {v1, v0}, LQ0/g;->e(Lo0/c;)V

    .line 359
    .line 360
    .line 361
    :goto_4
    invoke-virtual/range {p0 .. p0}, LQ0/g;->f()V

    .line 362
    .line 363
    .line 364
    iget-object v0, v1, LQ0/g;->M:Lq1/e;

    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-interface {v0}, Lw0/d;->release()V

    .line 370
    .line 371
    .line 372
    iput-object v11, v1, LQ0/g;->M:Lq1/e;

    .line 373
    .line 374
    iput v6, v1, LQ0/g;->L:I

    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, LQ0/g;->d()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_11

    .line 380
    .line 381
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, LB0/h;->getState()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    const/4 v12, 0x2

    .line 386
    if-eq v0, v12, :cond_d

    .line 387
    .line 388
    goto/16 :goto_11

    .line 389
    .line 390
    :cond_d
    iget-object v0, v1, LQ0/g;->O:Lq1/j;

    .line 391
    .line 392
    if-eqz v0, :cond_e

    .line 393
    .line 394
    invoke-virtual/range {p0 .. p0}, LQ0/g;->b()J

    .line 395
    .line 396
    .line 397
    move-result-wide v13

    .line 398
    const/4 v0, 0x0

    .line 399
    :goto_6
    cmp-long v15, v13, v2

    .line 400
    .line 401
    if-gtz v15, :cond_f

    .line 402
    .line 403
    iget v0, v1, LQ0/g;->Q:I

    .line 404
    .line 405
    add-int/2addr v0, v4

    .line 406
    iput v0, v1, LQ0/g;->Q:I

    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, LQ0/g;->b()J

    .line 409
    .line 410
    .line 411
    move-result-wide v13

    .line 412
    const/4 v0, 0x1

    .line 413
    goto :goto_6

    .line 414
    :cond_e
    const/4 v0, 0x0

    .line 415
    :cond_f
    iget-object v13, v1, LQ0/g;->P:Lq1/j;

    .line 416
    .line 417
    if-eqz v13, :cond_13

    .line 418
    .line 419
    invoke-virtual {v13}, Lw0/a;->isEndOfStream()Z

    .line 420
    .line 421
    .line 422
    move-result v14

    .line 423
    if-eqz v14, :cond_11

    .line 424
    .line 425
    if-nez v0, :cond_13

    .line 426
    .line 427
    invoke-virtual/range {p0 .. p0}, LQ0/g;->b()J

    .line 428
    .line 429
    .line 430
    move-result-wide v13

    .line 431
    const-wide v15, 0x7fffffffffffffffL

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    cmp-long v17, v13, v15

    .line 437
    .line 438
    if-nez v17, :cond_13

    .line 439
    .line 440
    iget v13, v1, LQ0/g;->L:I

    .line 441
    .line 442
    if-ne v13, v12, :cond_10

    .line 443
    .line 444
    invoke-virtual/range {p0 .. p0}, LQ0/g;->f()V

    .line 445
    .line 446
    .line 447
    iget-object v13, v1, LQ0/g;->M:Lq1/e;

    .line 448
    .line 449
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    invoke-interface {v13}, Lw0/d;->release()V

    .line 453
    .line 454
    .line 455
    iput-object v11, v1, LQ0/g;->M:Lq1/e;

    .line 456
    .line 457
    iput v6, v1, LQ0/g;->L:I

    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, LQ0/g;->d()V

    .line 460
    .line 461
    .line 462
    goto :goto_7

    .line 463
    :cond_10
    invoke-virtual/range {p0 .. p0}, LQ0/g;->f()V

    .line 464
    .line 465
    .line 466
    iput-boolean v4, v1, LQ0/g;->V:Z

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_11
    iget-wide v14, v13, Lw0/i;->timeUs:J

    .line 470
    .line 471
    cmp-long v16, v14, v2

    .line 472
    .line 473
    if-gtz v16, :cond_13

    .line 474
    .line 475
    iget-object v0, v1, LQ0/g;->O:Lq1/j;

    .line 476
    .line 477
    if-eqz v0, :cond_12

    .line 478
    .line 479
    invoke-virtual {v0}, Lw0/i;->release()V

    .line 480
    .line 481
    .line 482
    :cond_12
    invoke-virtual {v13, v2, v3}, Lq1/j;->a(J)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    iput v0, v1, LQ0/g;->Q:I

    .line 487
    .line 488
    iput-object v13, v1, LQ0/g;->O:Lq1/j;

    .line 489
    .line 490
    iput-object v11, v1, LQ0/g;->P:Lq1/j;

    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_13
    :goto_7
    if-eqz v0, :cond_18

    .line 494
    .line 495
    :goto_8
    iget-object v0, v1, LQ0/g;->O:Lq1/j;

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    iget-object v0, v1, LQ0/g;->O:Lq1/j;

    .line 501
    .line 502
    invoke-virtual {v0, v2, v3}, Lq1/j;->a(J)I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_16

    .line 507
    .line 508
    iget-object v13, v1, LQ0/g;->O:Lq1/j;

    .line 509
    .line 510
    invoke-virtual {v13}, Lq1/j;->d()I

    .line 511
    .line 512
    .line 513
    move-result v13

    .line 514
    if-nez v13, :cond_14

    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_14
    const/4 v13, -0x1

    .line 518
    if-ne v0, v13, :cond_15

    .line 519
    .line 520
    iget-object v0, v1, LQ0/g;->O:Lq1/j;

    .line 521
    .line 522
    invoke-virtual {v0}, Lq1/j;->d()I

    .line 523
    .line 524
    .line 525
    move-result v13

    .line 526
    sub-int/2addr v13, v4

    .line 527
    invoke-virtual {v0, v13}, Lq1/j;->b(I)J

    .line 528
    .line 529
    .line 530
    move-result-wide v13

    .line 531
    goto :goto_a

    .line 532
    :cond_15
    iget-object v13, v1, LQ0/g;->O:Lq1/j;

    .line 533
    .line 534
    sub-int/2addr v0, v4

    .line 535
    invoke-virtual {v13, v0}, Lq1/j;->b(I)J

    .line 536
    .line 537
    .line 538
    move-result-wide v13

    .line 539
    goto :goto_a

    .line 540
    :cond_16
    :goto_9
    iget-object v0, v1, LQ0/g;->O:Lq1/j;

    .line 541
    .line 542
    iget-wide v13, v0, Lw0/i;->timeUs:J

    .line 543
    .line 544
    :goto_a
    invoke-virtual {v1, v13, v14}, LQ0/g;->c(J)J

    .line 545
    .line 546
    .line 547
    new-instance v0, Lo0/c;

    .line 548
    .line 549
    iget-object v13, v1, LQ0/g;->O:Lq1/j;

    .line 550
    .line 551
    invoke-virtual {v13, v2, v3}, Lq1/j;->c(J)Ljava/util/List;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-direct {v0, v2}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 556
    .line 557
    .line 558
    if-eqz v5, :cond_17

    .line 559
    .line 560
    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 565
    .line 566
    .line 567
    goto :goto_b

    .line 568
    :cond_17
    invoke-virtual {v1, v0}, LQ0/g;->e(Lo0/c;)V

    .line 569
    .line 570
    .line 571
    :cond_18
    :goto_b
    iget v0, v1, LQ0/g;->L:I

    .line 572
    .line 573
    if-ne v0, v12, :cond_19

    .line 574
    .line 575
    goto/16 :goto_11

    .line 576
    .line 577
    :cond_19
    :goto_c
    :try_start_1
    iget-boolean v0, v1, LQ0/g;->U:Z

    .line 578
    .line 579
    if-nez v0, :cond_21

    .line 580
    .line 581
    iget-object v0, v1, LQ0/g;->N:Lq1/i;

    .line 582
    .line 583
    if-nez v0, :cond_1b

    .line 584
    .line 585
    iget-object v0, v1, LQ0/g;->M:Lq1/e;

    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    invoke-interface {v0}, Lw0/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    check-cast v0, Lq1/i;

    .line 595
    .line 596
    if-nez v0, :cond_1a

    .line 597
    .line 598
    goto/16 :goto_11

    .line 599
    .line 600
    :cond_1a
    iput-object v0, v1, LQ0/g;->N:Lq1/i;

    .line 601
    .line 602
    goto :goto_d

    .line 603
    :catch_1
    move-exception v0

    .line 604
    goto :goto_f

    .line 605
    :cond_1b
    :goto_d
    iget v2, v1, LQ0/g;->L:I

    .line 606
    .line 607
    if-ne v2, v4, :cond_1c

    .line 608
    .line 609
    const/4 v2, 0x4

    .line 610
    invoke-virtual {v0, v2}, Lw0/a;->setFlags(I)V

    .line 611
    .line 612
    .line 613
    iget-object v2, v1, LQ0/g;->M:Lq1/e;

    .line 614
    .line 615
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    invoke-interface {v2, v0}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    iput-object v11, v1, LQ0/g;->N:Lq1/i;

    .line 622
    .line 623
    iput v12, v1, LQ0/g;->L:I

    .line 624
    .line 625
    goto/16 :goto_11

    .line 626
    .line 627
    :cond_1c
    invoke-virtual {v1, v8, v0, v6}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    if-ne v2, v7, :cond_1f

    .line 632
    .line 633
    invoke-virtual {v0}, Lw0/a;->isEndOfStream()Z

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-eqz v2, :cond_1d

    .line 638
    .line 639
    iput-boolean v4, v1, LQ0/g;->U:Z

    .line 640
    .line 641
    iput-boolean v6, v1, LQ0/g;->K:Z

    .line 642
    .line 643
    goto :goto_e

    .line 644
    :cond_1d
    iget-object v2, v8, LB0/Z;->b:Lm0/t;

    .line 645
    .line 646
    if-nez v2, :cond_1e

    .line 647
    .line 648
    goto :goto_11

    .line 649
    :cond_1e
    iget-wide v2, v2, Lm0/t;->t:J

    .line 650
    .line 651
    iput-wide v2, v0, Lq1/i;->O:J

    .line 652
    .line 653
    invoke-virtual {v0}, Lw0/g;->g()V

    .line 654
    .line 655
    .line 656
    iget-boolean v2, v1, LQ0/g;->K:Z

    .line 657
    .line 658
    invoke-virtual {v0}, Lw0/a;->isKeyFrame()Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    xor-int/2addr v3, v4

    .line 663
    and-int/2addr v2, v3

    .line 664
    iput-boolean v2, v1, LQ0/g;->K:Z

    .line 665
    .line 666
    :goto_e
    iget-boolean v2, v1, LQ0/g;->K:Z

    .line 667
    .line 668
    if-nez v2, :cond_19

    .line 669
    .line 670
    iget-object v2, v1, LQ0/g;->M:Lq1/e;

    .line 671
    .line 672
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-interface {v2, v0}, Lw0/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    iput-object v11, v1, LQ0/g;->N:Lq1/i;
    :try_end_1
    .catch Lq1/f; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    .line 680
    goto :goto_c

    .line 681
    :cond_1f
    const/4 v0, -0x3

    .line 682
    if-ne v2, v0, :cond_19

    .line 683
    .line 684
    goto :goto_11

    .line 685
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    iget-object v3, v1, LQ0/g;->W:Lm0/t;

    .line 691
    .line 692
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-static {v9, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    .line 701
    .line 702
    new-instance v0, Lo0/c;

    .line 703
    .line 704
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 705
    .line 706
    iget-wide v7, v1, LQ0/g;->X:J

    .line 707
    .line 708
    invoke-virtual {v1, v7, v8}, LQ0/g;->c(J)J

    .line 709
    .line 710
    .line 711
    invoke-direct {v0, v2}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 712
    .line 713
    .line 714
    if-eqz v5, :cond_20

    .line 715
    .line 716
    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 721
    .line 722
    .line 723
    goto :goto_10

    .line 724
    :cond_20
    invoke-virtual {v1, v0}, LQ0/g;->e(Lo0/c;)V

    .line 725
    .line 726
    .line 727
    :goto_10
    invoke-virtual/range {p0 .. p0}, LQ0/g;->f()V

    .line 728
    .line 729
    .line 730
    iget-object v0, v1, LQ0/g;->M:Lq1/e;

    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    invoke-interface {v0}, Lw0/d;->release()V

    .line 736
    .line 737
    .line 738
    iput-object v11, v1, LQ0/g;->M:Lq1/e;

    .line 739
    .line 740
    iput v6, v1, LQ0/g;->L:I

    .line 741
    .line 742
    invoke-virtual/range {p0 .. p0}, LQ0/g;->d()V

    .line 743
    .line 744
    .line 745
    :cond_21
    :goto_11
    return-void
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 3

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "application/x-media3-cues"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, LQ0/g;->J:LQ0/e;

    .line 13
    .line 14
    check-cast v0, LD0/U;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, LF2/G;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, LF2/G;->K(Lm0/t;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "application/cea-608"

    .line 32
    .line 33
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-string v2, "application/x-mp4-cea-608"

    .line 40
    .line 41
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    const-string v2, "application/cea-708"

    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Lm0/O;->n(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-static {p1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_1
    invoke-static {v1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_2
    :goto_0
    iget p1, p1, Lm0/t;->P:I

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x4

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 p1, 0x2

    .line 80
    :goto_1
    invoke-static {p1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1
.end method
