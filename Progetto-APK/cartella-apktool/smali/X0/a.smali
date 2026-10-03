.class public final LX0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# static fields
.field public static final s:[I

.field public static final t:[I

.field public static final u:[B

.field public static final v:[B


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:LW0/q;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:J

.field public l:LW0/u;

.field public m:LW0/L;

.field public n:LW0/L;

.field public o:LW0/F;

.field public p:Z

.field public q:J

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, LX0/a;->s:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, LX0/a;->t:[I

    .line 16
    .line 17
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    const-string v1, "#!AMR\n"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, LX0/a;->u:[B

    .line 28
    .line 29
    const-string v1, "#!AMR-WB\n"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, LX0/a;->v:[B

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LX0/a;->b:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, LX0/a;->a:[B

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, LX0/a;->i:I

    .line 14
    .line 15
    new-instance v0, LW0/q;

    .line 16
    .line 17
    invoke-direct {v0}, LW0/q;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LX0/a;->c:LW0/q;

    .line 21
    .line 22
    iput-object v0, p0, LX0/a;->n:LW0/L;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(LW0/t;)I
    .locals 3

    .line 1
    invoke-interface {p1}, LW0/t;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, LX0/a;->a:[B

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {p1, v0, v1, v2}, LW0/t;->c(I[BI)V

    .line 9
    .line 10
    .line 11
    aget-byte p1, v1, v0

    .line 12
    .line 13
    and-int/lit16 v0, p1, 0x83

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-gtz v0, :cond_5

    .line 17
    .line 18
    shr-int/lit8 p1, p1, 0x3

    .line 19
    .line 20
    const/16 v0, 0xf

    .line 21
    .line 22
    and-int/2addr p1, v0

    .line 23
    if-ltz p1, :cond_3

    .line 24
    .line 25
    if-gt p1, v0, :cond_3

    .line 26
    .line 27
    iget-boolean v0, p0, LX0/a;->d:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    if-lt p1, v2, :cond_1

    .line 34
    .line 35
    const/16 v2, 0xd

    .line 36
    .line 37
    if-le p1, v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-nez v0, :cond_3

    .line 41
    .line 42
    const/16 v2, 0xc

    .line 43
    .line 44
    if-lt p1, v2, :cond_1

    .line 45
    .line 46
    const/16 v2, 0xe

    .line 47
    .line 48
    if-le p1, v2, :cond_3

    .line 49
    .line 50
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget-object v0, LX0/a;->t:[I

    .line 53
    .line 54
    aget p1, v0, p1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v0, LX0/a;->s:[I

    .line 58
    .line 59
    aget p1, v0, p1

    .line 60
    .line 61
    :goto_1
    return p1

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Illegal AMR "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v2, p0, LX0/a;->d:Z

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    const-string v2, "WB"

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const-string v2, "NB"

    .line 77
    .line 78
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, " frame type "

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    throw p1

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "Invalid padding bits for frame header "

    .line 101
    .line 102
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    throw p1
.end method

.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(LW0/t;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, LW0/t;->m()V

    .line 2
    .line 3
    .line 4
    sget-object v0, LX0/a;->u:[B

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-interface {p1, v3, v1, v2}, LW0/t;->c(I[BI)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, LX0/a;->d:Z

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    invoke-interface {p1, v0}, LW0/t;->n(I)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    invoke-interface {p1}, LW0/t;->m()V

    .line 29
    .line 30
    .line 31
    sget-object v0, LX0/a;->v:[B

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    array-length v4, v0

    .line 37
    invoke-interface {p1, v3, v1, v4}, LW0/t;->c(I[BI)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iput-boolean v2, p0, LX0/a;->d:Z

    .line 47
    .line 48
    array-length v0, v0

    .line 49
    invoke-interface {p1, v0}, LW0/t;->n(I)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    return v3
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iput-object p1, p0, LX0/a;->l:LW0/u;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, LX0/a;->m:LW0/L;

    .line 10
    .line 11
    iput-object v0, p0, LX0/a;->n:LW0/L;

    .line 12
    .line 13
    invoke-interface {p1}, LW0/u;->j()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LX0/a;->c(LW0/t;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, LX0/a;->m:LW0/L;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    cmp-long v7, v3, v5

    .line 19
    .line 20
    if-nez v7, :cond_1

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, LX0/a;->c(LW0/t;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "Could not find AMR header."

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v1, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    iget-boolean v3, v0, LX0/a;->r:Z

    .line 38
    .line 39
    if-nez v3, :cond_6

    .line 40
    .line 41
    iput-boolean v2, v0, LX0/a;->r:Z

    .line 42
    .line 43
    iget-boolean v3, v0, LX0/a;->d:Z

    .line 44
    .line 45
    const-string v4, "audio/amr-wb"

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    move-object v7, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v7, "audio/amr"

    .line 52
    .line 53
    :goto_1
    if-eqz v3, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const-string v4, "audio/3gpp"

    .line 57
    .line 58
    :goto_2
    if-eqz v3, :cond_4

    .line 59
    .line 60
    const/16 v8, 0x3e80

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    const/16 v8, 0x1f40

    .line 64
    .line 65
    :goto_3
    if-eqz v3, :cond_5

    .line 66
    .line 67
    sget-object v3, LX0/a;->t:[I

    .line 68
    .line 69
    const/16 v9, 0x8

    .line 70
    .line 71
    aget v3, v3, v9

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    sget-object v3, LX0/a;->s:[I

    .line 75
    .line 76
    const/4 v9, 0x7

    .line 77
    aget v3, v3, v9

    .line 78
    .line 79
    :goto_4
    iget-object v9, v0, LX0/a;->m:LW0/L;

    .line 80
    .line 81
    new-instance v10, Lm0/s;

    .line 82
    .line 83
    invoke-direct {v10}, Lm0/s;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {v7}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iput-object v7, v10, Lm0/s;->m:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iput-object v4, v10, Lm0/s;->n:Ljava/lang/String;

    .line 97
    .line 98
    iput v3, v10, Lm0/s;->o:I

    .line 99
    .line 100
    iput v2, v10, Lm0/s;->F:I

    .line 101
    .line 102
    iput v8, v10, Lm0/s;->G:I

    .line 103
    .line 104
    new-instance v3, Lm0/t;

    .line 105
    .line 106
    invoke-direct {v3, v10}, Lm0/t;-><init>(Lm0/s;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v9, v3}, LW0/L;->b(Lm0/t;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget v3, v0, LX0/a;->g:I

    .line 113
    .line 114
    const-wide/16 v7, 0x4e20

    .line 115
    .line 116
    const/4 v4, -0x1

    .line 117
    if-nez v3, :cond_b

    .line 118
    .line 119
    :try_start_0
    invoke-virtual/range {p0 .. p1}, LX0/a;->a(LW0/t;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iput v3, v0, LX0/a;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    iput v3, v0, LX0/a;->g:I

    .line 126
    .line 127
    iget v3, v0, LX0/a;->i:I

    .line 128
    .line 129
    if-ne v3, v4, :cond_7

    .line 130
    .line 131
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 132
    .line 133
    .line 134
    move-result-wide v9

    .line 135
    iput-wide v9, v0, LX0/a;->h:J

    .line 136
    .line 137
    iget v3, v0, LX0/a;->f:I

    .line 138
    .line 139
    iput v3, v0, LX0/a;->i:I

    .line 140
    .line 141
    :cond_7
    iget v3, v0, LX0/a;->i:I

    .line 142
    .line 143
    iget v9, v0, LX0/a;->f:I

    .line 144
    .line 145
    if-ne v3, v9, :cond_8

    .line 146
    .line 147
    iget v3, v0, LX0/a;->j:I

    .line 148
    .line 149
    add-int/2addr v3, v2

    .line 150
    iput v3, v0, LX0/a;->j:I

    .line 151
    .line 152
    :cond_8
    iget-object v3, v0, LX0/a;->o:LW0/F;

    .line 153
    .line 154
    instance-of v9, v3, LW0/D;

    .line 155
    .line 156
    if-eqz v9, :cond_b

    .line 157
    .line 158
    check-cast v3, LW0/D;

    .line 159
    .line 160
    iget-wide v9, v0, LX0/a;->k:J

    .line 161
    .line 162
    iget-wide v11, v0, LX0/a;->e:J

    .line 163
    .line 164
    add-long/2addr v9, v11

    .line 165
    add-long/2addr v9, v7

    .line 166
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 167
    .line 168
    .line 169
    move-result-wide v11

    .line 170
    iget v13, v0, LX0/a;->f:I

    .line 171
    .line 172
    int-to-long v13, v13

    .line 173
    add-long/2addr v11, v13

    .line 174
    iget-object v13, v3, LW0/D;->b:Lp0/y;

    .line 175
    .line 176
    iget v14, v13, Lp0/y;->a:I

    .line 177
    .line 178
    if-nez v14, :cond_9

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_9
    sub-int/2addr v14, v2

    .line 182
    invoke-virtual {v13, v14}, Lp0/y;->c(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v13

    .line 186
    sub-long v13, v9, v13

    .line 187
    .line 188
    const-wide/32 v15, 0x186a0

    .line 189
    .line 190
    .line 191
    cmp-long v17, v13, v15

    .line 192
    .line 193
    if-gez v17, :cond_a

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_a
    :goto_5
    invoke-virtual {v3, v9, v10, v11, v12}, LW0/D;->b(JJ)V

    .line 197
    .line 198
    .line 199
    :goto_6
    iget-boolean v3, v0, LX0/a;->p:Z

    .line 200
    .line 201
    if-eqz v3, :cond_b

    .line 202
    .line 203
    iget-wide v11, v0, LX0/a;->q:J

    .line 204
    .line 205
    sub-long/2addr v11, v9

    .line 206
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    cmp-long v3, v9, v7

    .line 211
    .line 212
    if-gez v3, :cond_b

    .line 213
    .line 214
    iput-boolean v1, v0, LX0/a;->p:Z

    .line 215
    .line 216
    iget-object v3, v0, LX0/a;->m:LW0/L;

    .line 217
    .line 218
    iput-object v3, v0, LX0/a;->n:LW0/L;

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :catch_0
    move-object/from16 v10, p1

    .line 222
    .line 223
    :goto_7
    const/4 v3, -0x1

    .line 224
    goto :goto_a

    .line 225
    :cond_b
    :goto_8
    iget-object v3, v0, LX0/a;->n:LW0/L;

    .line 226
    .line 227
    iget v9, v0, LX0/a;->g:I

    .line 228
    .line 229
    move-object/from16 v10, p1

    .line 230
    .line 231
    invoke-interface {v3, v10, v9, v2}, LW0/L;->f(Lm0/j;IZ)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-ne v3, v4, :cond_c

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_c
    iget v9, v0, LX0/a;->g:I

    .line 239
    .line 240
    sub-int/2addr v9, v3

    .line 241
    iput v9, v0, LX0/a;->g:I

    .line 242
    .line 243
    if-lez v9, :cond_d

    .line 244
    .line 245
    :goto_9
    const/4 v3, 0x0

    .line 246
    goto :goto_a

    .line 247
    :cond_d
    iget-object v11, v0, LX0/a;->n:LW0/L;

    .line 248
    .line 249
    iget-wide v12, v0, LX0/a;->k:J

    .line 250
    .line 251
    iget-wide v14, v0, LX0/a;->e:J

    .line 252
    .line 253
    add-long/2addr v12, v14

    .line 254
    iget v15, v0, LX0/a;->f:I

    .line 255
    .line 256
    const/4 v14, 0x1

    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    const/16 v17, 0x0

    .line 260
    .line 261
    invoke-interface/range {v11 .. v17}, LW0/L;->d(JIIILW0/K;)V

    .line 262
    .line 263
    .line 264
    iget-wide v11, v0, LX0/a;->e:J

    .line 265
    .line 266
    add-long/2addr v11, v7

    .line 267
    iput-wide v11, v0, LX0/a;->e:J

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :goto_a
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 271
    .line 272
    .line 273
    move-result-wide v12

    .line 274
    iget-object v9, v0, LX0/a;->o:LW0/F;

    .line 275
    .line 276
    if-eqz v9, :cond_e

    .line 277
    .line 278
    goto :goto_e

    .line 279
    :cond_e
    iget v9, v0, LX0/a;->b:I

    .line 280
    .line 281
    and-int/lit8 v10, v9, 0x4

    .line 282
    .line 283
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    if-eqz v10, :cond_f

    .line 289
    .line 290
    new-instance v7, LW0/D;

    .line 291
    .line 292
    iget-wide v8, v0, LX0/a;->h:J

    .line 293
    .line 294
    new-array v10, v2, [J

    .line 295
    .line 296
    aput-wide v8, v10, v1

    .line 297
    .line 298
    new-array v2, v2, [J

    .line 299
    .line 300
    aput-wide v5, v2, v1

    .line 301
    .line 302
    invoke-direct {v7, v14, v15, v10, v2}, LW0/D;-><init>(J[J[J)V

    .line 303
    .line 304
    .line 305
    iput-object v7, v0, LX0/a;->o:LW0/F;

    .line 306
    .line 307
    goto :goto_d

    .line 308
    :cond_f
    and-int/lit8 v5, v9, 0x1

    .line 309
    .line 310
    if-eqz v5, :cond_13

    .line 311
    .line 312
    iget v11, v0, LX0/a;->i:I

    .line 313
    .line 314
    if-eq v11, v4, :cond_10

    .line 315
    .line 316
    iget v5, v0, LX0/a;->f:I

    .line 317
    .line 318
    if-eq v11, v5, :cond_10

    .line 319
    .line 320
    goto :goto_c

    .line 321
    :cond_10
    iget v5, v0, LX0/a;->j:I

    .line 322
    .line 323
    const/16 v6, 0x14

    .line 324
    .line 325
    if-ge v5, v6, :cond_11

    .line 326
    .line 327
    if-ne v3, v4, :cond_14

    .line 328
    .line 329
    :cond_11
    and-int/lit8 v5, v9, 0x2

    .line 330
    .line 331
    if-eqz v5, :cond_12

    .line 332
    .line 333
    const/16 v16, 0x1

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_12
    const/16 v16, 0x0

    .line 337
    .line 338
    :goto_b
    int-to-long v1, v11

    .line 339
    const-wide/32 v5, 0x7a1200

    .line 340
    .line 341
    .line 342
    mul-long v1, v1, v5

    .line 343
    .line 344
    div-long/2addr v1, v7

    .line 345
    long-to-int v10, v1

    .line 346
    new-instance v1, LW0/m;

    .line 347
    .line 348
    iget-wide v14, v0, LX0/a;->h:J

    .line 349
    .line 350
    move-object v9, v1

    .line 351
    invoke-direct/range {v9 .. v16}, LW0/m;-><init>(IIJJZ)V

    .line 352
    .line 353
    .line 354
    iput-object v1, v0, LX0/a;->o:LW0/F;

    .line 355
    .line 356
    iget-object v1, v0, LX0/a;->m:LW0/L;

    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    goto :goto_d

    .line 362
    :cond_13
    :goto_c
    new-instance v1, LW0/x;

    .line 363
    .line 364
    invoke-direct {v1, v14, v15}, LW0/x;-><init>(J)V

    .line 365
    .line 366
    .line 367
    iput-object v1, v0, LX0/a;->o:LW0/F;

    .line 368
    .line 369
    :cond_14
    :goto_d
    iget-object v1, v0, LX0/a;->o:LW0/F;

    .line 370
    .line 371
    if-eqz v1, :cond_15

    .line 372
    .line 373
    iget-object v2, v0, LX0/a;->l:LW0/u;

    .line 374
    .line 375
    invoke-interface {v2, v1}, LW0/u;->r(LW0/F;)V

    .line 376
    .line 377
    .line 378
    :cond_15
    :goto_e
    if-ne v3, v4, :cond_16

    .line 379
    .line 380
    iget-object v1, v0, LX0/a;->o:LW0/F;

    .line 381
    .line 382
    instance-of v2, v1, LW0/D;

    .line 383
    .line 384
    if-eqz v2, :cond_16

    .line 385
    .line 386
    iget-wide v4, v0, LX0/a;->k:J

    .line 387
    .line 388
    iget-wide v6, v0, LX0/a;->e:J

    .line 389
    .line 390
    add-long/2addr v4, v6

    .line 391
    move-object v2, v1

    .line 392
    check-cast v2, LW0/D;

    .line 393
    .line 394
    iput-wide v4, v2, LW0/D;->c:J

    .line 395
    .line 396
    iget-object v2, v0, LX0/a;->l:LW0/u;

    .line 397
    .line 398
    invoke-interface {v2, v1}, LW0/u;->r(LW0/F;)V

    .line 399
    .line 400
    .line 401
    iget-object v1, v0, LX0/a;->m:LW0/L;

    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    :cond_16
    return v3
.end method

.method public final i(JJ)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LX0/a;->e:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, LX0/a;->f:I

    .line 7
    .line 8
    iput v2, p0, LX0/a;->g:I

    .line 9
    .line 10
    iput-wide p3, p0, LX0/a;->q:J

    .line 11
    .line 12
    iget-object p3, p0, LX0/a;->o:LW0/F;

    .line 13
    .line 14
    instance-of p4, p3, LW0/D;

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    check-cast p3, LW0/D;

    .line 19
    .line 20
    iget-object p4, p3, LW0/D;->b:Lp0/y;

    .line 21
    .line 22
    iget v0, p4, Lp0/y;->a:I

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p3, p3, LW0/D;->a:Lp0/y;

    .line 33
    .line 34
    invoke-static {p3, p1, p2}, Lp0/M;->b(Lp0/y;J)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p4, p1}, Lp0/y;->c(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    :goto_0
    iput-wide p1, p0, LX0/a;->k:J

    .line 43
    .line 44
    iget-wide p3, p0, LX0/a;->q:J

    .line 45
    .line 46
    sub-long/2addr p3, p1

    .line 47
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    const-wide/16 p3, 0x4e20

    .line 52
    .line 53
    cmp-long v0, p1, p3

    .line 54
    .line 55
    if-gez v0, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, LX0/a;->p:Z

    .line 60
    .line 61
    iget-object p1, p0, LX0/a;->c:LW0/q;

    .line 62
    .line 63
    iput-object p1, p0, LX0/a;->n:LW0/L;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    cmp-long p4, p1, v0

    .line 67
    .line 68
    if-eqz p4, :cond_3

    .line 69
    .line 70
    instance-of p4, p3, LW0/m;

    .line 71
    .line 72
    if-eqz p4, :cond_3

    .line 73
    .line 74
    check-cast p3, LW0/m;

    .line 75
    .line 76
    iget-wide v2, p3, LW0/m;->b:J

    .line 77
    .line 78
    sub-long/2addr p1, v2

    .line 79
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide p1

    .line 83
    const-wide/32 v0, 0x7a1200

    .line 84
    .line 85
    .line 86
    mul-long p1, p1, v0

    .line 87
    .line 88
    iget p3, p3, LW0/m;->e:I

    .line 89
    .line 90
    int-to-long p3, p3

    .line 91
    div-long/2addr p1, p3

    .line 92
    iput-wide p1, p0, LX0/a;->k:J

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iput-wide v0, p0, LX0/a;->k:J

    .line 96
    .line 97
    :goto_1
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

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
