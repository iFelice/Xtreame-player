.class public final Ln1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# static fields
.field public static final v:LN/i;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lp0/E;

.field public final d:LW0/b;

.field public final e:LW0/A;

.field public final f:LW0/C;

.field public final g:LW0/q;

.field public h:LW0/u;

.field public i:LW0/L;

.field public j:LW0/L;

.field public k:I

.field public l:Lm0/N;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:I

.field public r:Ln1/f;

.field public s:Z

.field public t:Z

.field public u:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LN/i;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, LN/i;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ln1/d;->v:LN/i;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, v0, v1}, Ln1/d;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln1/d;->a:I

    .line 5
    iput-wide p1, p0, Ln1/d;->b:J

    .line 6
    new-instance p1, Lp0/E;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lp0/E;-><init>(I)V

    iput-object p1, p0, Ln1/d;->c:Lp0/E;

    .line 7
    new-instance p1, LW0/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/d;->d:LW0/b;

    .line 8
    new-instance p1, LW0/A;

    invoke-direct {p1}, LW0/A;-><init>()V

    iput-object p1, p0, Ln1/d;->e:LW0/A;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Ln1/d;->m:J

    .line 10
    new-instance p1, LW0/C;

    invoke-direct {p1, v0}, LW0/C;-><init>(I)V

    iput-object p1, p0, Ln1/d;->f:LW0/C;

    .line 11
    new-instance p1, LW0/q;

    invoke-direct {p1}, LW0/q;-><init>()V

    iput-object p1, p0, Ln1/d;->g:LW0/q;

    .line 12
    iput-object p1, p0, Ln1/d;->j:LW0/L;

    const-wide/16 p1, -0x1

    .line 13
    iput-wide p1, p0, Ln1/d;->p:J

    return-void
.end method

.method public static a(Lm0/N;)J
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lm0/N;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lm0/N;->c(I)Lm0/M;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v4, v3, Li1/o;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    check-cast v3, Li1/o;

    .line 20
    .line 21
    iget-object v4, v3, Li1/j;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v5, "TLEN"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object p0, v3, Li1/o;->c:Lz4/H;

    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    return-wide v0
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()V
    .locals 10

    .line 1
    iget-object v0, p0, Ln1/d;->r:Ln1/f;

    .line 2
    .line 3
    instance-of v1, v0, Ln1/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, LW0/F;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Ln1/d;->p:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Ln1/d;->r:Ln1/f;

    .line 22
    .line 23
    invoke-interface {v2}, Ln1/f;->c()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long v4, v0, v2

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Ln1/d;->r:Ln1/f;

    .line 32
    .line 33
    check-cast v0, Ln1/a;

    .line 34
    .line 35
    iget-wide v4, p0, Ln1/d;->p:J

    .line 36
    .line 37
    new-instance v9, Ln1/a;

    .line 38
    .line 39
    iget v3, v0, Ln1/a;->j:I

    .line 40
    .line 41
    iget-wide v6, v0, Ln1/a;->h:J

    .line 42
    .line 43
    iget-boolean v8, v0, Ln1/a;->k:Z

    .line 44
    .line 45
    iget v2, v0, Ln1/a;->i:I

    .line 46
    .line 47
    move-object v1, v9

    .line 48
    invoke-direct/range {v1 .. v8}, Ln1/a;-><init>(IIJJZ)V

    .line 49
    .line 50
    .line 51
    iput-object v9, p0, Ln1/d;->r:Ln1/f;

    .line 52
    .line 53
    iget-object v0, p0, Ln1/d;->h:LW0/u;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Ln1/d;->r:Ln1/f;

    .line 59
    .line 60
    invoke-interface {v0, v1}, LW0/u;->r(LW0/F;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Ln1/d;->i:LW0/L;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Ln1/d;->r:Ln1/f;

    .line 69
    .line 70
    invoke-interface {v0}, LW0/F;->m()J

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln1/d;->h:LW0/u;

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
    move-result-object p1

    .line 9
    iput-object p1, p0, Ln1/d;->i:LW0/L;

    .line 10
    .line 11
    iput-object p1, p0, Ln1/d;->j:LW0/L;

    .line 12
    .line 13
    iget-object p1, p0, Ln1/d;->h:LW0/u;

    .line 14
    .line 15
    invoke-interface {p1}, LW0/u;->j()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(LW0/t;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln1/d;->r:Ln1/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ln1/f;->c()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, LW0/t;->f()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, 0x4

    .line 21
    .line 22
    sub-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Ln1/d;->c:Lp0/E;

    .line 29
    .line 30
    iget-object v0, v0, Lp0/E;->a:[B

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-interface {p1, v0, v2, v3, v1}, LW0/t;->e([BIIZ)Z

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    xor-int/2addr p1, v1

    .line 39
    return p1

    .line 40
    :catch_0
    return v1
.end method

.method public final f(LW0/t;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const v2, 0x8000

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 v2, 0x20000

    .line 12
    .line 13
    :goto_0
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    cmp-long v8, v3, v5

    .line 24
    .line 25
    if-nez v8, :cond_4

    .line 26
    .line 27
    iget v3, v0, Ln1/d;->a:I

    .line 28
    .line 29
    and-int/lit8 v3, v3, 0x8

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v3, Ln1/d;->v:LN/i;

    .line 36
    .line 37
    :goto_1
    iget-object v4, v0, Ln1/d;->f:LW0/C;

    .line 38
    .line 39
    invoke-virtual {v4, v1, v3}, LW0/C;->d(LW0/t;LN/i;)Lm0/N;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v0, Ln1/d;->l:Lm0/N;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object v4, v0, Ln1/d;->e:LW0/A;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, LW0/A;->b(Lm0/N;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface/range {p1 .. p1}, LW0/t;->f()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    long-to-int v4, v3

    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    invoke-interface {v1, v4}, LW0/t;->n(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v3, 0x0

    .line 63
    :goto_2
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    goto :goto_2

    .line 69
    :goto_3
    invoke-virtual/range {p0 .. p1}, Ln1/d;->e(LW0/t;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    const/4 v9, 0x1

    .line 74
    if-eqz v8, :cond_6

    .line 75
    .line 76
    if-lez v5, :cond_5

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ln1/d;->c()V

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/io/EOFException;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_6
    iget-object v8, v0, Ln1/d;->c:Lp0/E;

    .line 89
    .line 90
    invoke-virtual {v8, v7}, Lp0/E;->L(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Lp0/E;->l()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    int-to-long v10, v3

    .line 100
    const v12, -0x1f400

    .line 101
    .line 102
    .line 103
    and-int/2addr v12, v8

    .line 104
    int-to-long v12, v12

    .line 105
    const-wide/32 v14, -0x1f400

    .line 106
    .line 107
    .line 108
    and-long/2addr v10, v14

    .line 109
    cmp-long v14, v12, v10

    .line 110
    .line 111
    if-nez v14, :cond_8

    .line 112
    .line 113
    :cond_7
    invoke-static {v8}, LW0/a;->c(I)I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    const/4 v11, -0x1

    .line 118
    if-ne v10, v11, :cond_c

    .line 119
    .line 120
    :cond_8
    add-int/lit8 v3, v6, 0x1

    .line 121
    .line 122
    if-ne v6, v2, :cond_a

    .line 123
    .line 124
    if-eqz p2, :cond_9

    .line 125
    .line 126
    return v7

    .line 127
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ln1/d;->c()V

    .line 128
    .line 129
    .line 130
    new-instance v1, Ljava/io/EOFException;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_a
    if-eqz p2, :cond_b

    .line 137
    .line 138
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 139
    .line 140
    .line 141
    add-int v5, v4, v3

    .line 142
    .line 143
    invoke-interface {v1, v5}, LW0/t;->g(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_b
    invoke-interface {v1, v9}, LW0/t;->n(I)V

    .line 148
    .line 149
    .line 150
    :goto_4
    move v6, v3

    .line 151
    const/4 v3, 0x0

    .line 152
    const/4 v5, 0x0

    .line 153
    goto :goto_3

    .line 154
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 155
    .line 156
    if-ne v5, v9, :cond_d

    .line 157
    .line 158
    iget-object v3, v0, Ln1/d;->d:LW0/b;

    .line 159
    .line 160
    invoke-virtual {v3, v8}, LW0/b;->a(I)Z

    .line 161
    .line 162
    .line 163
    move v3, v8

    .line 164
    goto :goto_7

    .line 165
    :cond_d
    const/4 v8, 0x4

    .line 166
    if-ne v5, v8, :cond_f

    .line 167
    .line 168
    :goto_5
    if-eqz p2, :cond_e

    .line 169
    .line 170
    add-int/2addr v4, v6

    .line 171
    invoke-interface {v1, v4}, LW0/t;->n(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_e
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 176
    .line 177
    .line 178
    :goto_6
    iput v3, v0, Ln1/d;->k:I

    .line 179
    .line 180
    return v9

    .line 181
    :cond_f
    :goto_7
    add-int/lit8 v10, v10, -0x4

    .line 182
    .line 183
    invoke-interface {v1, v10}, LW0/t;->g(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_3
.end method

.method public final g(LW0/t;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ln1/d;->f(LW0/t;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
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
    iget-object v2, v0, Ln1/d;->i:LW0/L;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, Ln1/d;->k:I

    .line 13
    .line 14
    iget-object v6, v0, Ln1/d;->d:LW0/b;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v0, v1, v7}, Ln1/d;->f(LW0/t;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    nop

    .line 24
    move-object v1, v0

    .line 25
    const/4 v0, -0x1

    .line 26
    const/4 v7, -0x1

    .line 27
    goto/16 :goto_31

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object v2, v0, Ln1/d;->r:Ln1/f;

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    iget-object v13, v0, Ln1/d;->c:Lp0/E;

    .line 33
    .line 34
    if-nez v2, :cond_35

    .line 35
    .line 36
    new-instance v2, Lp0/E;

    .line 37
    .line 38
    iget v14, v6, LW0/b;->c:I

    .line 39
    .line 40
    invoke-direct {v2, v14}, Lp0/E;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object v14, v2, Lp0/E;->a:[B

    .line 44
    .line 45
    iget v15, v6, LW0/b;->c:I

    .line 46
    .line 47
    invoke-interface {v1, v7, v14, v15}, LW0/t;->c(I[BI)V

    .line 48
    .line 49
    .line 50
    iget v14, v6, LW0/b;->a:I

    .line 51
    .line 52
    and-int/2addr v14, v12

    .line 53
    const/16 v15, 0x24

    .line 54
    .line 55
    const/16 v4, 0x15

    .line 56
    .line 57
    if-eqz v14, :cond_2

    .line 58
    .line 59
    iget v5, v6, LW0/b;->e:I

    .line 60
    .line 61
    if-eq v5, v12, :cond_1

    .line 62
    .line 63
    const/16 v5, 0x24

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    const/16 v5, 0x15

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget v5, v6, LW0/b;->e:I

    .line 70
    .line 71
    if-eq v5, v12, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/16 v5, 0xd

    .line 75
    .line 76
    :goto_2
    iget v14, v2, Lp0/E;->c:I

    .line 77
    .line 78
    add-int/lit8 v7, v5, 0x4

    .line 79
    .line 80
    const v10, 0x56425249

    .line 81
    .line 82
    .line 83
    const v11, 0x496e666f

    .line 84
    .line 85
    .line 86
    const v8, 0x58696e67

    .line 87
    .line 88
    .line 89
    if-lt v14, v7, :cond_4

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Lp0/E;->L(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lp0/E;->l()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eq v5, v8, :cond_6

    .line 99
    .line 100
    if-ne v5, v11, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget v5, v2, Lp0/E;->c:I

    .line 104
    .line 105
    const/16 v7, 0x28

    .line 106
    .line 107
    if-lt v5, v7, :cond_5

    .line 108
    .line 109
    invoke-virtual {v2, v15}, Lp0/E;->L(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lp0/E;->l()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-ne v5, v10, :cond_5

    .line 117
    .line 118
    const v5, 0x56425249

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    const/4 v5, 0x0

    .line 123
    :cond_6
    :goto_3
    const-wide/16 v14, 0x1

    .line 124
    .line 125
    const-wide/16 v16, -0x1

    .line 126
    .line 127
    iget-object v9, v0, Ln1/d;->e:LW0/A;

    .line 128
    .line 129
    const/16 v18, 0x0

    .line 130
    .line 131
    if-eq v5, v11, :cond_7

    .line 132
    .line 133
    if-eq v5, v10, :cond_8

    .line 134
    .line 135
    if-eq v5, v8, :cond_7

    .line 136
    .line 137
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 138
    .line 139
    .line 140
    move-object v2, v1

    .line 141
    move-object/from16 v19, v13

    .line 142
    .line 143
    move-object v1, v0

    .line 144
    move-object/from16 v0, v18

    .line 145
    .line 146
    goto/16 :goto_1a

    .line 147
    .line 148
    :cond_7
    move-object/from16 v22, v2

    .line 149
    .line 150
    move-object/from16 v19, v13

    .line 151
    .line 152
    move-object v2, v1

    .line 153
    goto/16 :goto_b

    .line 154
    .line 155
    :cond_8
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 160
    .line 161
    .line 162
    move-result-wide v10

    .line 163
    const/4 v8, 0x6

    .line 164
    invoke-virtual {v2, v8}, Lp0/E;->M(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lp0/E;->l()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    iget v3, v6, LW0/b;->c:I

    .line 172
    .line 173
    move-object/from16 v19, v13

    .line 174
    .line 175
    int-to-long v12, v3

    .line 176
    add-long v25, v10, v12

    .line 177
    .line 178
    int-to-long v12, v8

    .line 179
    add-long v12, v25, v12

    .line 180
    .line 181
    invoke-virtual {v2}, Lp0/E;->l()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-gtz v3, :cond_9

    .line 186
    .line 187
    :goto_4
    move-object/from16 v0, v18

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_9
    iget v8, v6, LW0/b;->d:I

    .line 192
    .line 193
    move/from16 v20, v8

    .line 194
    .line 195
    int-to-long v7, v3

    .line 196
    iget v3, v6, LW0/b;->g:I

    .line 197
    .line 198
    int-to-long v0, v3

    .line 199
    mul-long v7, v7, v0

    .line 200
    .line 201
    sub-long/2addr v7, v14

    .line 202
    move/from16 v0, v20

    .line 203
    .line 204
    invoke-static {v0, v7, v8}, Lp0/M;->X(IJ)J

    .line 205
    .line 206
    .line 207
    move-result-wide v23

    .line 208
    invoke-virtual {v2}, Lp0/E;->F()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {v2}, Lp0/E;->F()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-virtual {v2}, Lp0/E;->F()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    const/4 v7, 0x2

    .line 221
    invoke-virtual {v2, v7}, Lp0/E;->M(I)V

    .line 222
    .line 223
    .line 224
    iget v8, v6, LW0/b;->c:I

    .line 225
    .line 226
    int-to-long v14, v8

    .line 227
    add-long/2addr v10, v14

    .line 228
    new-array v8, v0, [J

    .line 229
    .line 230
    new-array v14, v0, [J

    .line 231
    .line 232
    move-wide/from16 v30, v10

    .line 233
    .line 234
    const/4 v10, 0x0

    .line 235
    :goto_5
    if-ge v10, v0, :cond_e

    .line 236
    .line 237
    move-object v15, v8

    .line 238
    int-to-long v7, v10

    .line 239
    mul-long v7, v7, v23

    .line 240
    .line 241
    move-wide/from16 v20, v12

    .line 242
    .line 243
    int-to-long v11, v0

    .line 244
    div-long/2addr v7, v11

    .line 245
    aput-wide v7, v15, v10

    .line 246
    .line 247
    move-wide/from16 v7, v30

    .line 248
    .line 249
    aput-wide v7, v14, v10

    .line 250
    .line 251
    const/4 v11, 0x1

    .line 252
    if-eq v3, v11, :cond_d

    .line 253
    .line 254
    const/4 v11, 0x2

    .line 255
    if-eq v3, v11, :cond_c

    .line 256
    .line 257
    const/4 v12, 0x3

    .line 258
    if-eq v3, v12, :cond_b

    .line 259
    .line 260
    const/4 v12, 0x4

    .line 261
    if-eq v3, v12, :cond_a

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_a
    invoke-virtual {v2}, Lp0/E;->D()I

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    goto :goto_6

    .line 269
    :cond_b
    invoke-virtual {v2}, Lp0/E;->C()I

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    goto :goto_6

    .line 274
    :cond_c
    invoke-virtual {v2}, Lp0/E;->F()I

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    goto :goto_6

    .line 279
    :cond_d
    const/4 v11, 0x2

    .line 280
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    :goto_6
    int-to-long v12, v12

    .line 285
    move-object/from16 v22, v2

    .line 286
    .line 287
    move/from16 v27, v3

    .line 288
    .line 289
    int-to-long v2, v1

    .line 290
    mul-long v12, v12, v2

    .line 291
    .line 292
    add-long v30, v12, v7

    .line 293
    .line 294
    add-int/lit8 v10, v10, 0x1

    .line 295
    .line 296
    move-object v8, v15

    .line 297
    move-wide/from16 v12, v20

    .line 298
    .line 299
    move-object/from16 v2, v22

    .line 300
    .line 301
    move/from16 v3, v27

    .line 302
    .line 303
    const/4 v7, 0x2

    .line 304
    goto :goto_5

    .line 305
    :cond_e
    move-object v15, v8

    .line 306
    move-wide/from16 v20, v12

    .line 307
    .line 308
    move-wide/from16 v7, v30

    .line 309
    .line 310
    const-string v0, ", "

    .line 311
    .line 312
    const-string v1, "VbriSeeker"

    .line 313
    .line 314
    cmp-long v2, v4, v16

    .line 315
    .line 316
    if-eqz v2, :cond_f

    .line 317
    .line 318
    cmp-long v2, v4, v20

    .line 319
    .line 320
    if-eqz v2, :cond_f

    .line 321
    .line 322
    const-string v2, "VBRI data size mismatch: "

    .line 323
    .line 324
    invoke-static {v2, v4, v5, v0}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    move-wide/from16 v12, v20

    .line 329
    .line 330
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {v1, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_f
    move-wide/from16 v12, v20

    .line 342
    .line 343
    :goto_7
    cmp-long v2, v12, v7

    .line 344
    .line 345
    if-eqz v2, :cond_10

    .line 346
    .line 347
    const-string v2, "VBRI bytes and ToC mismatch (using max): "

    .line 348
    .line 349
    invoke-static {v2, v12, v13, v0}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v2, "\nSeeking will be inaccurate."

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v1, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 369
    .line 370
    .line 371
    move-result-wide v0

    .line 372
    move-wide/from16 v27, v0

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_10
    move-wide/from16 v27, v12

    .line 376
    .line 377
    :goto_8
    new-instance v0, Ln1/g;

    .line 378
    .line 379
    iget v1, v6, LW0/b;->f:I

    .line 380
    .line 381
    move-object/from16 v20, v0

    .line 382
    .line 383
    move-object/from16 v21, v15

    .line 384
    .line 385
    move-object/from16 v22, v14

    .line 386
    .line 387
    move/from16 v29, v1

    .line 388
    .line 389
    invoke-direct/range {v20 .. v29}, Ln1/g;-><init>([J[JJJJI)V

    .line 390
    .line 391
    .line 392
    :goto_9
    iget v1, v6, LW0/b;->c:I

    .line 393
    .line 394
    move-object/from16 v2, p1

    .line 395
    .line 396
    invoke-interface {v2, v1}, LW0/t;->n(I)V

    .line 397
    .line 398
    .line 399
    :goto_a
    move-object/from16 v1, p0

    .line 400
    .line 401
    goto/16 :goto_1a

    .line 402
    .line 403
    :goto_b
    invoke-virtual/range {v22 .. v22}, Lp0/E;->l()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    and-int/lit8 v1, v0, 0x1

    .line 408
    .line 409
    if-eqz v1, :cond_11

    .line 410
    .line 411
    invoke-virtual/range {v22 .. v22}, Lp0/E;->D()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    goto :goto_c

    .line 416
    :cond_11
    const/4 v1, -0x1

    .line 417
    :goto_c
    and-int/lit8 v3, v0, 0x2

    .line 418
    .line 419
    if-eqz v3, :cond_12

    .line 420
    .line 421
    invoke-virtual/range {v22 .. v22}, Lp0/E;->B()J

    .line 422
    .line 423
    .line 424
    move-result-wide v10

    .line 425
    move-wide/from16 v37, v10

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :cond_12
    move-wide/from16 v37, v16

    .line 429
    .line 430
    :goto_d
    and-int/lit8 v3, v0, 0x4

    .line 431
    .line 432
    const/4 v7, 0x4

    .line 433
    if-ne v3, v7, :cond_14

    .line 434
    .line 435
    const/16 v3, 0x64

    .line 436
    .line 437
    new-array v7, v3, [J

    .line 438
    .line 439
    const/4 v10, 0x0

    .line 440
    :goto_e
    if-ge v10, v3, :cond_13

    .line 441
    .line 442
    invoke-virtual/range {v22 .. v22}, Lp0/E;->z()I

    .line 443
    .line 444
    .line 445
    move-result v11

    .line 446
    int-to-long v11, v11

    .line 447
    aput-wide v11, v7, v10

    .line 448
    .line 449
    add-int/lit8 v10, v10, 0x1

    .line 450
    .line 451
    goto :goto_e

    .line 452
    :cond_13
    move-object/from16 v39, v7

    .line 453
    .line 454
    goto :goto_f

    .line 455
    :cond_14
    move-object/from16 v39, v18

    .line 456
    .line 457
    :goto_f
    and-int/lit8 v0, v0, 0x8

    .line 458
    .line 459
    if-eqz v0, :cond_15

    .line 460
    .line 461
    move-object/from16 v0, v22

    .line 462
    .line 463
    const/4 v3, 0x4

    .line 464
    invoke-virtual {v0, v3}, Lp0/E;->M(I)V

    .line 465
    .line 466
    .line 467
    goto :goto_10

    .line 468
    :cond_15
    move-object/from16 v0, v22

    .line 469
    .line 470
    :goto_10
    invoke-virtual {v0}, Lp0/E;->a()I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    const/16 v7, 0x18

    .line 475
    .line 476
    if-lt v3, v7, :cond_16

    .line 477
    .line 478
    invoke-virtual {v0, v4}, Lp0/E;->M(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Lp0/E;->C()I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    const v3, 0xfff000

    .line 486
    .line 487
    .line 488
    and-int/2addr v3, v0

    .line 489
    shr-int/lit8 v3, v3, 0xc

    .line 490
    .line 491
    and-int/lit16 v0, v0, 0xfff

    .line 492
    .line 493
    goto :goto_11

    .line 494
    :cond_16
    const/4 v0, -0x1

    .line 495
    const/4 v3, -0x1

    .line 496
    :goto_11
    int-to-long v10, v1

    .line 497
    new-instance v1, LW0/b;

    .line 498
    .line 499
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 500
    .line 501
    .line 502
    iget v4, v6, LW0/b;->a:I

    .line 503
    .line 504
    iput v4, v1, LW0/b;->a:I

    .line 505
    .line 506
    iget-object v4, v6, LW0/b;->b:Ljava/lang/String;

    .line 507
    .line 508
    iput-object v4, v1, LW0/b;->b:Ljava/lang/String;

    .line 509
    .line 510
    iget v4, v6, LW0/b;->c:I

    .line 511
    .line 512
    iput v4, v1, LW0/b;->c:I

    .line 513
    .line 514
    iget v4, v6, LW0/b;->d:I

    .line 515
    .line 516
    iput v4, v1, LW0/b;->d:I

    .line 517
    .line 518
    iget v4, v6, LW0/b;->e:I

    .line 519
    .line 520
    iput v4, v1, LW0/b;->e:I

    .line 521
    .line 522
    iget v4, v6, LW0/b;->f:I

    .line 523
    .line 524
    iput v4, v1, LW0/b;->f:I

    .line 525
    .line 526
    iget v4, v6, LW0/b;->g:I

    .line 527
    .line 528
    iput v4, v1, LW0/b;->g:I

    .line 529
    .line 530
    iget v4, v9, LW0/A;->a:I

    .line 531
    .line 532
    const/4 v7, -0x1

    .line 533
    if-eq v4, v7, :cond_17

    .line 534
    .line 535
    iget v4, v9, LW0/A;->b:I

    .line 536
    .line 537
    if-eq v4, v7, :cond_17

    .line 538
    .line 539
    goto :goto_12

    .line 540
    :cond_17
    if-eq v3, v7, :cond_18

    .line 541
    .line 542
    if-eq v0, v7, :cond_18

    .line 543
    .line 544
    iput v3, v9, LW0/A;->a:I

    .line 545
    .line 546
    iput v0, v9, LW0/A;->b:I

    .line 547
    .line 548
    :cond_18
    :goto_12
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 549
    .line 550
    .line 551
    move-result-wide v31

    .line 552
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 553
    .line 554
    .line 555
    move-result-wide v3

    .line 556
    cmp-long v0, v3, v16

    .line 557
    .line 558
    if-eqz v0, :cond_19

    .line 559
    .line 560
    cmp-long v0, v37, v16

    .line 561
    .line 562
    if-eqz v0, :cond_19

    .line 563
    .line 564
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 565
    .line 566
    .line 567
    move-result-wide v3

    .line 568
    add-long v12, v31, v37

    .line 569
    .line 570
    cmp-long v0, v3, v12

    .line 571
    .line 572
    if-eqz v0, :cond_19

    .line 573
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v3, "Data size mismatch between stream ("

    .line 577
    .line 578
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 582
    .line 583
    .line 584
    move-result-wide v3

    .line 585
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v3, ") and Xing frame ("

    .line 589
    .line 590
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v3, "), using Xing value."

    .line 597
    .line 598
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    const-string v3, "Mp3Extractor"

    .line 606
    .line 607
    invoke-static {v3, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    :cond_19
    iget v0, v6, LW0/b;->c:I

    .line 611
    .line 612
    invoke-interface {v2, v0}, LW0/t;->n(I)V

    .line 613
    .line 614
    .line 615
    if-ne v5, v8, :cond_1e

    .line 616
    .line 617
    cmp-long v0, v10, v16

    .line 618
    .line 619
    if-eqz v0, :cond_1b

    .line 620
    .line 621
    const-wide/16 v3, 0x0

    .line 622
    .line 623
    cmp-long v0, v10, v3

    .line 624
    .line 625
    if-nez v0, :cond_1a

    .line 626
    .line 627
    goto :goto_13

    .line 628
    :cond_1a
    iget v0, v1, LW0/b;->g:I

    .line 629
    .line 630
    int-to-long v3, v0

    .line 631
    mul-long v10, v10, v3

    .line 632
    .line 633
    sub-long/2addr v10, v14

    .line 634
    iget v0, v1, LW0/b;->d:I

    .line 635
    .line 636
    invoke-static {v0, v10, v11}, Lp0/M;->X(IJ)J

    .line 637
    .line 638
    .line 639
    move-result-wide v3

    .line 640
    move-wide/from16 v34, v3

    .line 641
    .line 642
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    goto :goto_14

    .line 648
    :cond_1b
    :goto_13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    :goto_14
    cmp-long v0, v34, v3

    .line 659
    .line 660
    if-nez v0, :cond_1d

    .line 661
    .line 662
    :cond_1c
    :goto_15
    move-object/from16 v0, v18

    .line 663
    .line 664
    goto/16 :goto_a

    .line 665
    .line 666
    :cond_1d
    new-instance v0, Ln1/i;

    .line 667
    .line 668
    iget v3, v1, LW0/b;->c:I

    .line 669
    .line 670
    iget v1, v1, LW0/b;->f:I

    .line 671
    .line 672
    move-object/from16 v30, v0

    .line 673
    .line 674
    move/from16 v33, v3

    .line 675
    .line 676
    move/from16 v36, v1

    .line 677
    .line 678
    invoke-direct/range {v30 .. v39}, Ln1/i;-><init>(JIJIJ[J)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_a

    .line 682
    .line 683
    :cond_1e
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 684
    .line 685
    .line 686
    move-result-wide v3

    .line 687
    cmp-long v0, v10, v16

    .line 688
    .line 689
    if-eqz v0, :cond_20

    .line 690
    .line 691
    const-wide/16 v7, 0x0

    .line 692
    .line 693
    cmp-long v0, v10, v7

    .line 694
    .line 695
    if-nez v0, :cond_1f

    .line 696
    .line 697
    goto :goto_16

    .line 698
    :cond_1f
    iget v0, v1, LW0/b;->g:I

    .line 699
    .line 700
    int-to-long v7, v0

    .line 701
    mul-long v7, v7, v10

    .line 702
    .line 703
    sub-long/2addr v7, v14

    .line 704
    iget v0, v1, LW0/b;->d:I

    .line 705
    .line 706
    invoke-static {v0, v7, v8}, Lp0/M;->X(IJ)J

    .line 707
    .line 708
    .line 709
    move-result-wide v7

    .line 710
    move-wide/from16 v24, v7

    .line 711
    .line 712
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    goto :goto_17

    .line 718
    :cond_20
    :goto_16
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    :goto_17
    cmp-long v0, v24, v7

    .line 729
    .line 730
    if-nez v0, :cond_21

    .line 731
    .line 732
    goto :goto_15

    .line 733
    :cond_21
    cmp-long v0, v37, v16

    .line 734
    .line 735
    if-eqz v0, :cond_22

    .line 736
    .line 737
    add-long v3, v31, v37

    .line 738
    .line 739
    iget v0, v1, LW0/b;->c:I

    .line 740
    .line 741
    int-to-long v7, v0

    .line 742
    sub-long v37, v37, v7

    .line 743
    .line 744
    :goto_18
    move-wide/from16 v42, v3

    .line 745
    .line 746
    move-wide/from16 v3, v37

    .line 747
    .line 748
    goto :goto_19

    .line 749
    :cond_22
    cmp-long v0, v3, v16

    .line 750
    .line 751
    if-eqz v0, :cond_1c

    .line 752
    .line 753
    sub-long v7, v3, v31

    .line 754
    .line 755
    iget v0, v1, LW0/b;->c:I

    .line 756
    .line 757
    int-to-long v12, v0

    .line 758
    sub-long v37, v7, v12

    .line 759
    .line 760
    goto :goto_18

    .line 761
    :goto_19
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 762
    .line 763
    const-wide/32 v22, 0x7a1200

    .line 764
    .line 765
    .line 766
    move-wide/from16 v20, v3

    .line 767
    .line 768
    move-object/from16 v26, v0

    .line 769
    .line 770
    invoke-static/range {v20 .. v26}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 771
    .line 772
    .line 773
    move-result-wide v7

    .line 774
    invoke-static {v7, v8}, Ly4/k;->y(J)I

    .line 775
    .line 776
    .line 777
    move-result v40

    .line 778
    invoke-static {v3, v4, v10, v11, v0}, LQ3/b;->d(JJLjava/math/RoundingMode;)J

    .line 779
    .line 780
    .line 781
    move-result-wide v3

    .line 782
    invoke-static {v3, v4}, Ly4/k;->y(J)I

    .line 783
    .line 784
    .line 785
    move-result v41

    .line 786
    new-instance v0, Ln1/a;

    .line 787
    .line 788
    iget v1, v1, LW0/b;->c:I

    .line 789
    .line 790
    int-to-long v3, v1

    .line 791
    add-long v44, v31, v3

    .line 792
    .line 793
    const/16 v46, 0x0

    .line 794
    .line 795
    move-object/from16 v39, v0

    .line 796
    .line 797
    invoke-direct/range {v39 .. v46}, Ln1/a;-><init>(IIJJZ)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_a

    .line 801
    .line 802
    :goto_1a
    iget-object v3, v1, Ln1/d;->l:Lm0/N;

    .line 803
    .line 804
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 805
    .line 806
    .line 807
    move-result-wide v4

    .line 808
    if-eqz v3, :cond_25

    .line 809
    .line 810
    iget-object v7, v3, Lm0/N;->a:[Lm0/M;

    .line 811
    .line 812
    array-length v8, v7

    .line 813
    const/4 v10, 0x0

    .line 814
    :goto_1b
    if-ge v10, v8, :cond_25

    .line 815
    .line 816
    aget-object v11, v7, v10

    .line 817
    .line 818
    instance-of v12, v11, Li1/m;

    .line 819
    .line 820
    if-eqz v12, :cond_24

    .line 821
    .line 822
    check-cast v11, Li1/m;

    .line 823
    .line 824
    invoke-static {v3}, Ln1/d;->a(Lm0/N;)J

    .line 825
    .line 826
    .line 827
    move-result-wide v7

    .line 828
    iget-object v3, v11, Li1/m;->e:[I

    .line 829
    .line 830
    array-length v3, v3

    .line 831
    add-int/lit8 v10, v3, 0x1

    .line 832
    .line 833
    new-array v12, v10, [J

    .line 834
    .line 835
    new-array v10, v10, [J

    .line 836
    .line 837
    const/4 v13, 0x0

    .line 838
    aput-wide v4, v12, v13

    .line 839
    .line 840
    const-wide/16 v14, 0x0

    .line 841
    .line 842
    aput-wide v14, v10, v13

    .line 843
    .line 844
    const-wide/16 v13, 0x0

    .line 845
    .line 846
    const/4 v15, 0x1

    .line 847
    :goto_1c
    if-gt v15, v3, :cond_23

    .line 848
    .line 849
    add-int/lit8 v20, v15, -0x1

    .line 850
    .line 851
    move/from16 v21, v3

    .line 852
    .line 853
    iget-object v3, v11, Li1/m;->e:[I

    .line 854
    .line 855
    aget v3, v3, v20

    .line 856
    .line 857
    move-object/from16 v22, v9

    .line 858
    .line 859
    iget v9, v11, Li1/m;->c:I

    .line 860
    .line 861
    add-int/2addr v9, v3

    .line 862
    int-to-long v2, v9

    .line 863
    add-long/2addr v4, v2

    .line 864
    iget-object v2, v11, Li1/m;->f:[I

    .line 865
    .line 866
    aget v2, v2, v20

    .line 867
    .line 868
    iget v3, v11, Li1/m;->d:I

    .line 869
    .line 870
    add-int/2addr v3, v2

    .line 871
    int-to-long v2, v3

    .line 872
    add-long/2addr v13, v2

    .line 873
    aput-wide v4, v12, v15

    .line 874
    .line 875
    aput-wide v13, v10, v15

    .line 876
    .line 877
    add-int/lit8 v15, v15, 0x1

    .line 878
    .line 879
    move-object/from16 v2, p1

    .line 880
    .line 881
    move/from16 v3, v21

    .line 882
    .line 883
    move-object/from16 v9, v22

    .line 884
    .line 885
    goto :goto_1c

    .line 886
    :cond_23
    move-object/from16 v22, v9

    .line 887
    .line 888
    new-instance v2, Ln1/c;

    .line 889
    .line 890
    invoke-direct {v2, v7, v8, v12, v10}, Ln1/c;-><init>(J[J[J)V

    .line 891
    .line 892
    .line 893
    goto :goto_1d

    .line 894
    :cond_24
    move-object/from16 v22, v9

    .line 895
    .line 896
    add-int/lit8 v10, v10, 0x1

    .line 897
    .line 898
    move-object/from16 v2, p1

    .line 899
    .line 900
    goto :goto_1b

    .line 901
    :cond_25
    move-object/from16 v22, v9

    .line 902
    .line 903
    move-object/from16 v2, v18

    .line 904
    .line 905
    :goto_1d
    iget-boolean v3, v1, Ln1/d;->s:Z

    .line 906
    .line 907
    iget v4, v1, Ln1/d;->a:I

    .line 908
    .line 909
    if-eqz v3, :cond_26

    .line 910
    .line 911
    new-instance v0, Ln1/e;

    .line 912
    .line 913
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    invoke-direct {v0, v2, v3}, LW0/x;-><init>(J)V

    .line 919
    .line 920
    .line 921
    move-object/from16 v3, p1

    .line 922
    .line 923
    move-object v2, v0

    .line 924
    move-object/from16 v0, v19

    .line 925
    .line 926
    goto/16 :goto_26

    .line 927
    .line 928
    :cond_26
    and-int/lit8 v3, v4, 0x4

    .line 929
    .line 930
    if-eqz v3, :cond_29

    .line 931
    .line 932
    if-eqz v2, :cond_27

    .line 933
    .line 934
    iget-wide v2, v2, Ln1/c;->c:J

    .line 935
    .line 936
    :goto_1e
    move-wide v8, v2

    .line 937
    move-wide/from16 v12, v16

    .line 938
    .line 939
    goto :goto_1f

    .line 940
    :cond_27
    if-eqz v0, :cond_28

    .line 941
    .line 942
    invoke-interface {v0}, LW0/F;->m()J

    .line 943
    .line 944
    .line 945
    move-result-wide v2

    .line 946
    invoke-interface {v0}, Ln1/f;->c()J

    .line 947
    .line 948
    .line 949
    move-result-wide v7

    .line 950
    move-wide v12, v7

    .line 951
    move-wide v8, v2

    .line 952
    goto :goto_1f

    .line 953
    :cond_28
    iget-object v0, v1, Ln1/d;->l:Lm0/N;

    .line 954
    .line 955
    invoke-static {v0}, Ln1/d;->a(Lm0/N;)J

    .line 956
    .line 957
    .line 958
    move-result-wide v2

    .line 959
    goto :goto_1e

    .line 960
    :goto_1f
    new-instance v0, Ln1/b;

    .line 961
    .line 962
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 963
    .line 964
    .line 965
    move-result-wide v10

    .line 966
    move-object v7, v0

    .line 967
    invoke-direct/range {v7 .. v13}, Ln1/b;-><init>(JJJ)V

    .line 968
    .line 969
    .line 970
    goto :goto_20

    .line 971
    :cond_29
    if-eqz v2, :cond_2a

    .line 972
    .line 973
    move-object v0, v2

    .line 974
    goto :goto_20

    .line 975
    :cond_2a
    if-eqz v0, :cond_2b

    .line 976
    .line 977
    goto :goto_20

    .line 978
    :cond_2b
    move-object/from16 v0, v18

    .line 979
    .line 980
    :goto_20
    if-eqz v0, :cond_30

    .line 981
    .line 982
    invoke-interface {v0}, LW0/F;->f()Z

    .line 983
    .line 984
    .line 985
    move-result v2

    .line 986
    if-nez v2, :cond_30

    .line 987
    .line 988
    and-int/lit8 v2, v4, 0x1

    .line 989
    .line 990
    if-eqz v2, :cond_30

    .line 991
    .line 992
    invoke-interface {v0}, LW0/F;->m()J

    .line 993
    .line 994
    .line 995
    move-result-wide v2

    .line 996
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    cmp-long v5, v2, v7

    .line 1002
    .line 1003
    if-eqz v5, :cond_30

    .line 1004
    .line 1005
    invoke-interface {v0}, Ln1/f;->c()J

    .line 1006
    .line 1007
    .line 1008
    move-result-wide v2

    .line 1009
    cmp-long v5, v2, v16

    .line 1010
    .line 1011
    if-nez v5, :cond_2c

    .line 1012
    .line 1013
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 1014
    .line 1015
    .line 1016
    move-result-wide v2

    .line 1017
    cmp-long v5, v2, v16

    .line 1018
    .line 1019
    if-eqz v5, :cond_30

    .line 1020
    .line 1021
    :cond_2c
    invoke-interface {v0}, Ln1/f;->e()J

    .line 1022
    .line 1023
    .line 1024
    move-result-wide v2

    .line 1025
    cmp-long v5, v2, v16

    .line 1026
    .line 1027
    if-eqz v5, :cond_2d

    .line 1028
    .line 1029
    invoke-interface {v0}, Ln1/f;->e()J

    .line 1030
    .line 1031
    .line 1032
    move-result-wide v2

    .line 1033
    move-wide v12, v2

    .line 1034
    goto :goto_21

    .line 1035
    :cond_2d
    const-wide/16 v12, 0x0

    .line 1036
    .line 1037
    :goto_21
    invoke-interface {v0}, Ln1/f;->c()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v2

    .line 1041
    cmp-long v5, v2, v16

    .line 1042
    .line 1043
    if-eqz v5, :cond_2e

    .line 1044
    .line 1045
    invoke-interface {v0}, Ln1/f;->c()J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v2

    .line 1049
    :goto_22
    move-wide v10, v2

    .line 1050
    goto :goto_23

    .line 1051
    :cond_2e
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v2

    .line 1055
    goto :goto_22

    .line 1056
    :goto_23
    sub-long v23, v10, v12

    .line 1057
    .line 1058
    invoke-interface {v0}, LW0/F;->m()J

    .line 1059
    .line 1060
    .line 1061
    move-result-wide v27

    .line 1062
    sget-object v29, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 1063
    .line 1064
    const-wide/32 v25, 0x7a1200

    .line 1065
    .line 1066
    .line 1067
    invoke-static/range {v23 .. v29}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 1068
    .line 1069
    .line 1070
    move-result-wide v2

    .line 1071
    invoke-static {v2, v3}, Ly4/k;->d0(J)I

    .line 1072
    .line 1073
    .line 1074
    move-result v8

    .line 1075
    new-instance v0, Ln1/a;

    .line 1076
    .line 1077
    const/4 v9, -0x1

    .line 1078
    const/4 v14, 0x0

    .line 1079
    move-object v7, v0

    .line 1080
    invoke-direct/range {v7 .. v14}, Ln1/a;-><init>(IIJJZ)V

    .line 1081
    .line 1082
    .line 1083
    :cond_2f
    move-object/from16 v3, p1

    .line 1084
    .line 1085
    move-object v2, v0

    .line 1086
    move-object/from16 v0, v19

    .line 1087
    .line 1088
    goto :goto_25

    .line 1089
    :cond_30
    if-eqz v0, :cond_31

    .line 1090
    .line 1091
    invoke-interface {v0}, LW0/F;->f()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v2

    .line 1095
    if-nez v2, :cond_2f

    .line 1096
    .line 1097
    and-int/lit8 v2, v4, 0x1

    .line 1098
    .line 1099
    if-eqz v2, :cond_2f

    .line 1100
    .line 1101
    :cond_31
    and-int/lit8 v0, v4, 0x2

    .line 1102
    .line 1103
    if-eqz v0, :cond_32

    .line 1104
    .line 1105
    move-object/from16 v0, v19

    .line 1106
    .line 1107
    const/4 v14, 0x1

    .line 1108
    goto :goto_24

    .line 1109
    :cond_32
    move-object/from16 v0, v19

    .line 1110
    .line 1111
    const/4 v14, 0x0

    .line 1112
    :goto_24
    iget-object v2, v0, Lp0/E;->a:[B

    .line 1113
    .line 1114
    move-object/from16 v3, p1

    .line 1115
    .line 1116
    const/4 v5, 0x0

    .line 1117
    const/4 v7, 0x4

    .line 1118
    invoke-interface {v3, v5, v2, v7}, LW0/t;->c(I[BI)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v0, v5}, Lp0/E;->L(I)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 1125
    .line 1126
    .line 1127
    move-result v2

    .line 1128
    invoke-virtual {v6, v2}, LW0/b;->a(I)Z

    .line 1129
    .line 1130
    .line 1131
    new-instance v2, Ln1/a;

    .line 1132
    .line 1133
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 1134
    .line 1135
    .line 1136
    move-result-wide v10

    .line 1137
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1138
    .line 1139
    .line 1140
    move-result-wide v12

    .line 1141
    iget v8, v6, LW0/b;->f:I

    .line 1142
    .line 1143
    iget v9, v6, LW0/b;->c:I

    .line 1144
    .line 1145
    move-object v7, v2

    .line 1146
    invoke-direct/range {v7 .. v14}, Ln1/a;-><init>(IIJJZ)V

    .line 1147
    .line 1148
    .line 1149
    :goto_25
    iget-object v5, v1, Ln1/d;->i:LW0/L;

    .line 1150
    .line 1151
    invoke-interface {v2}, LW0/F;->m()J

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1155
    .line 1156
    .line 1157
    :goto_26
    iput-object v2, v1, Ln1/d;->r:Ln1/f;

    .line 1158
    .line 1159
    iget-object v5, v1, Ln1/d;->h:LW0/u;

    .line 1160
    .line 1161
    invoke-interface {v5, v2}, LW0/u;->r(LW0/F;)V

    .line 1162
    .line 1163
    .line 1164
    new-instance v2, Lm0/s;

    .line 1165
    .line 1166
    invoke-direct {v2}, Lm0/s;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    const-string v5, "audio/mpeg"

    .line 1170
    .line 1171
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v5

    .line 1175
    iput-object v5, v2, Lm0/s;->m:Ljava/lang/String;

    .line 1176
    .line 1177
    iget-object v5, v6, LW0/b;->b:Ljava/lang/String;

    .line 1178
    .line 1179
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v5

    .line 1183
    iput-object v5, v2, Lm0/s;->n:Ljava/lang/String;

    .line 1184
    .line 1185
    const/16 v5, 0x1000

    .line 1186
    .line 1187
    iput v5, v2, Lm0/s;->o:I

    .line 1188
    .line 1189
    iget v5, v6, LW0/b;->e:I

    .line 1190
    .line 1191
    iput v5, v2, Lm0/s;->F:I

    .line 1192
    .line 1193
    iget v5, v6, LW0/b;->d:I

    .line 1194
    .line 1195
    iput v5, v2, Lm0/s;->G:I

    .line 1196
    .line 1197
    move-object/from16 v5, v22

    .line 1198
    .line 1199
    iget v7, v5, LW0/A;->a:I

    .line 1200
    .line 1201
    iput v7, v2, Lm0/s;->I:I

    .line 1202
    .line 1203
    iget v5, v5, LW0/A;->b:I

    .line 1204
    .line 1205
    iput v5, v2, Lm0/s;->J:I

    .line 1206
    .line 1207
    and-int/lit8 v4, v4, 0x8

    .line 1208
    .line 1209
    if-eqz v4, :cond_33

    .line 1210
    .line 1211
    move-object/from16 v4, v18

    .line 1212
    .line 1213
    goto :goto_27

    .line 1214
    :cond_33
    iget-object v4, v1, Ln1/d;->l:Lm0/N;

    .line 1215
    .line 1216
    :goto_27
    iput-object v4, v2, Lm0/s;->k:Lm0/N;

    .line 1217
    .line 1218
    iget-object v4, v1, Ln1/d;->r:Ln1/f;

    .line 1219
    .line 1220
    invoke-interface {v4}, Ln1/f;->l()I

    .line 1221
    .line 1222
    .line 1223
    move-result v4

    .line 1224
    const v5, -0x7fffffff

    .line 1225
    .line 1226
    .line 1227
    if-eq v4, v5, :cond_34

    .line 1228
    .line 1229
    iget-object v4, v1, Ln1/d;->r:Ln1/f;

    .line 1230
    .line 1231
    invoke-interface {v4}, Ln1/f;->l()I

    .line 1232
    .line 1233
    .line 1234
    move-result v4

    .line 1235
    iput v4, v2, Lm0/s;->h:I

    .line 1236
    .line 1237
    :cond_34
    iget-object v4, v1, Ln1/d;->j:LW0/L;

    .line 1238
    .line 1239
    new-instance v5, Lm0/t;

    .line 1240
    .line 1241
    invoke-direct {v5, v2}, Lm0/t;-><init>(Lm0/s;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-interface {v4, v5}, LW0/L;->b(Lm0/t;)V

    .line 1245
    .line 1246
    .line 1247
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v4

    .line 1251
    iput-wide v4, v1, Ln1/d;->o:J

    .line 1252
    .line 1253
    goto :goto_28

    .line 1254
    :cond_35
    move-object v3, v1

    .line 1255
    move-object v1, v0

    .line 1256
    move-object v0, v13

    .line 1257
    iget-wide v4, v1, Ln1/d;->o:J

    .line 1258
    .line 1259
    const-wide/16 v7, 0x0

    .line 1260
    .line 1261
    cmp-long v2, v4, v7

    .line 1262
    .line 1263
    if-eqz v2, :cond_36

    .line 1264
    .line 1265
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1266
    .line 1267
    .line 1268
    move-result-wide v4

    .line 1269
    iget-wide v7, v1, Ln1/d;->o:J

    .line 1270
    .line 1271
    cmp-long v2, v4, v7

    .line 1272
    .line 1273
    if-gez v2, :cond_36

    .line 1274
    .line 1275
    sub-long/2addr v7, v4

    .line 1276
    long-to-int v2, v7

    .line 1277
    invoke-interface {v3, v2}, LW0/t;->n(I)V

    .line 1278
    .line 1279
    .line 1280
    :cond_36
    :goto_28
    iget v2, v1, Ln1/d;->q:I

    .line 1281
    .line 1282
    if-nez v2, :cond_3f

    .line 1283
    .line 1284
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual/range {p0 .. p1}, Ln1/d;->e(LW0/t;)Z

    .line 1288
    .line 1289
    .line 1290
    move-result v2

    .line 1291
    if-eqz v2, :cond_37

    .line 1292
    .line 1293
    :goto_29
    const/4 v7, -0x1

    .line 1294
    goto/16 :goto_30

    .line 1295
    .line 1296
    :cond_37
    const/4 v2, 0x0

    .line 1297
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 1301
    .line 1302
    .line 1303
    move-result v0

    .line 1304
    iget v2, v1, Ln1/d;->k:I

    .line 1305
    .line 1306
    int-to-long v4, v2

    .line 1307
    const v2, -0x1f400

    .line 1308
    .line 1309
    .line 1310
    and-int/2addr v2, v0

    .line 1311
    int-to-long v7, v2

    .line 1312
    const-wide/32 v9, -0x1f400

    .line 1313
    .line 1314
    .line 1315
    and-long/2addr v4, v9

    .line 1316
    cmp-long v2, v7, v4

    .line 1317
    .line 1318
    if-nez v2, :cond_38

    .line 1319
    .line 1320
    invoke-static {v0}, LW0/a;->c(I)I

    .line 1321
    .line 1322
    .line 1323
    move-result v2

    .line 1324
    const/4 v4, -0x1

    .line 1325
    if-ne v2, v4, :cond_39

    .line 1326
    .line 1327
    :cond_38
    const/4 v0, 0x0

    .line 1328
    const/4 v2, 0x1

    .line 1329
    goto/16 :goto_2d

    .line 1330
    .line 1331
    :cond_39
    invoke-virtual {v6, v0}, LW0/b;->a(I)Z

    .line 1332
    .line 1333
    .line 1334
    iget-wide v4, v1, Ln1/d;->m:J

    .line 1335
    .line 1336
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    cmp-long v0, v4, v7

    .line 1342
    .line 1343
    if-nez v0, :cond_3a

    .line 1344
    .line 1345
    iget-object v0, v1, Ln1/d;->r:Ln1/f;

    .line 1346
    .line 1347
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1348
    .line 1349
    .line 1350
    move-result-wide v4

    .line 1351
    invoke-interface {v0, v4, v5}, Ln1/f;->a(J)J

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v4

    .line 1355
    iput-wide v4, v1, Ln1/d;->m:J

    .line 1356
    .line 1357
    iget-wide v4, v1, Ln1/d;->b:J

    .line 1358
    .line 1359
    cmp-long v0, v4, v7

    .line 1360
    .line 1361
    if-eqz v0, :cond_3a

    .line 1362
    .line 1363
    iget-object v0, v1, Ln1/d;->r:Ln1/f;

    .line 1364
    .line 1365
    const-wide/16 v7, 0x0

    .line 1366
    .line 1367
    invoke-interface {v0, v7, v8}, Ln1/f;->a(J)J

    .line 1368
    .line 1369
    .line 1370
    move-result-wide v7

    .line 1371
    iget-wide v9, v1, Ln1/d;->m:J

    .line 1372
    .line 1373
    sub-long/2addr v4, v7

    .line 1374
    add-long/2addr v4, v9

    .line 1375
    iput-wide v4, v1, Ln1/d;->m:J

    .line 1376
    .line 1377
    :cond_3a
    iget v0, v6, LW0/b;->c:I

    .line 1378
    .line 1379
    iput v0, v1, Ln1/d;->q:I

    .line 1380
    .line 1381
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1382
    .line 1383
    .line 1384
    move-result-wide v4

    .line 1385
    iget v0, v6, LW0/b;->c:I

    .line 1386
    .line 1387
    int-to-long v7, v0

    .line 1388
    add-long/2addr v4, v7

    .line 1389
    iput-wide v4, v1, Ln1/d;->p:J

    .line 1390
    .line 1391
    iget-object v0, v1, Ln1/d;->r:Ln1/f;

    .line 1392
    .line 1393
    instance-of v2, v0, Ln1/b;

    .line 1394
    .line 1395
    if-eqz v2, :cond_3f

    .line 1396
    .line 1397
    check-cast v0, Ln1/b;

    .line 1398
    .line 1399
    iget-wide v7, v1, Ln1/d;->n:J

    .line 1400
    .line 1401
    iget v2, v6, LW0/b;->g:I

    .line 1402
    .line 1403
    int-to-long v9, v2

    .line 1404
    add-long/2addr v7, v9

    .line 1405
    iget-wide v9, v1, Ln1/d;->m:J

    .line 1406
    .line 1407
    const-wide/32 v11, 0xf4240

    .line 1408
    .line 1409
    .line 1410
    mul-long v7, v7, v11

    .line 1411
    .line 1412
    iget v2, v6, LW0/b;->d:I

    .line 1413
    .line 1414
    int-to-long v11, v2

    .line 1415
    div-long/2addr v7, v11

    .line 1416
    add-long/2addr v7, v9

    .line 1417
    iget-object v2, v0, Ln1/b;->d:LW0/D;

    .line 1418
    .line 1419
    iget-object v2, v2, LW0/D;->b:Lp0/y;

    .line 1420
    .line 1421
    iget v9, v2, Lp0/y;->a:I

    .line 1422
    .line 1423
    const-wide/32 v10, 0x186a0

    .line 1424
    .line 1425
    .line 1426
    iget-object v0, v0, Ln1/b;->d:LW0/D;

    .line 1427
    .line 1428
    if-nez v9, :cond_3b

    .line 1429
    .line 1430
    goto :goto_2a

    .line 1431
    :cond_3b
    const/4 v12, 0x1

    .line 1432
    sub-int/2addr v9, v12

    .line 1433
    invoke-virtual {v2, v9}, Lp0/y;->c(I)J

    .line 1434
    .line 1435
    .line 1436
    move-result-wide v12

    .line 1437
    sub-long v12, v7, v12

    .line 1438
    .line 1439
    cmp-long v2, v12, v10

    .line 1440
    .line 1441
    if-gez v2, :cond_3c

    .line 1442
    .line 1443
    goto :goto_2b

    .line 1444
    :cond_3c
    :goto_2a
    invoke-virtual {v0, v7, v8, v4, v5}, LW0/D;->b(JJ)V

    .line 1445
    .line 1446
    .line 1447
    :goto_2b
    iget-boolean v2, v1, Ln1/d;->t:Z

    .line 1448
    .line 1449
    if-eqz v2, :cond_3f

    .line 1450
    .line 1451
    iget-wide v4, v1, Ln1/d;->u:J

    .line 1452
    .line 1453
    iget-object v0, v0, LW0/D;->b:Lp0/y;

    .line 1454
    .line 1455
    iget v2, v0, Lp0/y;->a:I

    .line 1456
    .line 1457
    if-nez v2, :cond_3e

    .line 1458
    .line 1459
    :cond_3d
    const/4 v0, 0x0

    .line 1460
    goto :goto_2c

    .line 1461
    :cond_3e
    const/4 v7, 0x1

    .line 1462
    sub-int/2addr v2, v7

    .line 1463
    invoke-virtual {v0, v2}, Lp0/y;->c(I)J

    .line 1464
    .line 1465
    .line 1466
    move-result-wide v7

    .line 1467
    sub-long/2addr v4, v7

    .line 1468
    cmp-long v0, v4, v10

    .line 1469
    .line 1470
    if-gez v0, :cond_3d

    .line 1471
    .line 1472
    const/4 v0, 0x0

    .line 1473
    iput-boolean v0, v1, Ln1/d;->t:Z

    .line 1474
    .line 1475
    iget-object v2, v1, Ln1/d;->i:LW0/L;

    .line 1476
    .line 1477
    iput-object v2, v1, Ln1/d;->j:LW0/L;

    .line 1478
    .line 1479
    :cond_3f
    :goto_2c
    const/4 v2, 0x1

    .line 1480
    goto :goto_2f

    .line 1481
    :goto_2d
    invoke-interface {v3, v2}, LW0/t;->n(I)V

    .line 1482
    .line 1483
    .line 1484
    iput v0, v1, Ln1/d;->k:I

    .line 1485
    .line 1486
    :goto_2e
    const/4 v7, 0x0

    .line 1487
    goto :goto_30

    .line 1488
    :goto_2f
    iget-object v0, v1, Ln1/d;->j:LW0/L;

    .line 1489
    .line 1490
    iget v4, v1, Ln1/d;->q:I

    .line 1491
    .line 1492
    invoke-interface {v0, v3, v4, v2}, LW0/L;->f(Lm0/j;IZ)I

    .line 1493
    .line 1494
    .line 1495
    move-result v0

    .line 1496
    const/4 v2, -0x1

    .line 1497
    if-ne v0, v2, :cond_40

    .line 1498
    .line 1499
    goto/16 :goto_29

    .line 1500
    .line 1501
    :cond_40
    iget v2, v1, Ln1/d;->q:I

    .line 1502
    .line 1503
    sub-int/2addr v2, v0

    .line 1504
    iput v2, v1, Ln1/d;->q:I

    .line 1505
    .line 1506
    if-lez v2, :cond_41

    .line 1507
    .line 1508
    goto :goto_2e

    .line 1509
    :cond_41
    iget-object v7, v1, Ln1/d;->j:LW0/L;

    .line 1510
    .line 1511
    iget-wide v2, v1, Ln1/d;->n:J

    .line 1512
    .line 1513
    iget-wide v4, v1, Ln1/d;->m:J

    .line 1514
    .line 1515
    const-wide/32 v8, 0xf4240

    .line 1516
    .line 1517
    .line 1518
    mul-long v2, v2, v8

    .line 1519
    .line 1520
    iget v0, v6, LW0/b;->d:I

    .line 1521
    .line 1522
    int-to-long v8, v0

    .line 1523
    div-long/2addr v2, v8

    .line 1524
    add-long v8, v2, v4

    .line 1525
    .line 1526
    iget v11, v6, LW0/b;->c:I

    .line 1527
    .line 1528
    const/4 v12, 0x0

    .line 1529
    const/4 v13, 0x0

    .line 1530
    const/4 v10, 0x1

    .line 1531
    invoke-interface/range {v7 .. v13}, LW0/L;->d(JIIILW0/K;)V

    .line 1532
    .line 1533
    .line 1534
    iget-wide v2, v1, Ln1/d;->n:J

    .line 1535
    .line 1536
    iget v0, v6, LW0/b;->g:I

    .line 1537
    .line 1538
    int-to-long v4, v0

    .line 1539
    add-long/2addr v2, v4

    .line 1540
    iput-wide v2, v1, Ln1/d;->n:J

    .line 1541
    .line 1542
    const/4 v0, 0x0

    .line 1543
    iput v0, v1, Ln1/d;->q:I

    .line 1544
    .line 1545
    goto :goto_2e

    .line 1546
    :goto_30
    const/4 v0, -0x1

    .line 1547
    :goto_31
    if-ne v7, v0, :cond_42

    .line 1548
    .line 1549
    iget-object v0, v1, Ln1/d;->r:Ln1/f;

    .line 1550
    .line 1551
    instance-of v2, v0, Ln1/b;

    .line 1552
    .line 1553
    if-eqz v2, :cond_42

    .line 1554
    .line 1555
    iget-wide v2, v1, Ln1/d;->n:J

    .line 1556
    .line 1557
    iget-wide v4, v1, Ln1/d;->m:J

    .line 1558
    .line 1559
    const-wide/32 v8, 0xf4240

    .line 1560
    .line 1561
    .line 1562
    mul-long v2, v2, v8

    .line 1563
    .line 1564
    iget v6, v6, LW0/b;->d:I

    .line 1565
    .line 1566
    int-to-long v8, v6

    .line 1567
    div-long/2addr v2, v8

    .line 1568
    add-long/2addr v2, v4

    .line 1569
    invoke-interface {v0}, LW0/F;->m()J

    .line 1570
    .line 1571
    .line 1572
    move-result-wide v4

    .line 1573
    cmp-long v0, v4, v2

    .line 1574
    .line 1575
    if-eqz v0, :cond_42

    .line 1576
    .line 1577
    iget-object v0, v1, Ln1/d;->r:Ln1/f;

    .line 1578
    .line 1579
    move-object v4, v0

    .line 1580
    check-cast v4, Ln1/b;

    .line 1581
    .line 1582
    iget-object v4, v4, Ln1/b;->d:LW0/D;

    .line 1583
    .line 1584
    iput-wide v2, v4, LW0/D;->c:J

    .line 1585
    .line 1586
    iget-object v2, v1, Ln1/d;->h:LW0/u;

    .line 1587
    .line 1588
    invoke-interface {v2, v0}, LW0/u;->r(LW0/F;)V

    .line 1589
    .line 1590
    .line 1591
    iget-object v0, v1, Ln1/d;->i:LW0/L;

    .line 1592
    .line 1593
    iget-object v2, v1, Ln1/d;->r:Ln1/f;

    .line 1594
    .line 1595
    invoke-interface {v2}, LW0/F;->m()J

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1599
    .line 1600
    .line 1601
    :cond_42
    return v7
.end method

.method public final i(JJ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln1/d;->k:I

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Ln1/d;->m:J

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Ln1/d;->n:J

    .line 14
    .line 15
    iput p1, p0, Ln1/d;->q:I

    .line 16
    .line 17
    iput-wide p3, p0, Ln1/d;->u:J

    .line 18
    .line 19
    iget-object p1, p0, Ln1/d;->r:Ln1/f;

    .line 20
    .line 21
    instance-of p2, p1, Ln1/b;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    check-cast p1, Ln1/b;

    .line 26
    .line 27
    iget-object p1, p1, Ln1/b;->d:LW0/D;

    .line 28
    .line 29
    iget-object p1, p1, LW0/D;->b:Lp0/y;

    .line 30
    .line 31
    iget p2, p1, Lp0/y;->a:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sub-int/2addr p2, v0

    .line 38
    invoke-virtual {p1, p2}, Lp0/y;->c(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    sub-long/2addr p3, p1

    .line 43
    const-wide/32 p1, 0x186a0

    .line 44
    .line 45
    .line 46
    cmp-long v1, p3, p1

    .line 47
    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iput-boolean v0, p0, Ln1/d;->t:Z

    .line 52
    .line 53
    iget-object p1, p0, Ln1/d;->g:LW0/q;

    .line 54
    .line 55
    iput-object p1, p0, Ln1/d;->j:LW0/L;

    .line 56
    .line 57
    :cond_2
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
