.class public final LA1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lm2/o;

.field public final b:Z

.field public final c:Z

.field public final d:LA1/x;

.field public final e:LA1/x;

.field public final f:LA1/x;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:LW0/L;

.field public k:LA1/q;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lp0/E;


# direct methods
.method public constructor <init>(Lm2/o;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/r;->a:Lm2/o;

    .line 5
    .line 6
    iput-boolean p2, p0, LA1/r;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, LA1/r;->c:Z

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Z

    .line 12
    .line 13
    iput-object p1, p0, LA1/r;->h:[Z

    .line 14
    .line 15
    new-instance p1, LA1/x;

    .line 16
    .line 17
    const/4 p2, 0x7

    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-direct {p1, p2, p3}, LA1/x;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, LA1/r;->d:LA1/x;

    .line 23
    .line 24
    new-instance p1, LA1/x;

    .line 25
    .line 26
    const/16 p2, 0x8

    .line 27
    .line 28
    invoke-direct {p1, p2, p3}, LA1/x;-><init>(II)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, LA1/r;->e:LA1/x;

    .line 32
    .line 33
    new-instance p1, LA1/x;

    .line 34
    .line 35
    const/4 p2, 0x6

    .line 36
    invoke-direct {p1, p2, p3}, LA1/x;-><init>(II)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, LA1/r;->f:LA1/x;

    .line 40
    .line 41
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    iput-wide p1, p0, LA1/r;->m:J

    .line 47
    .line 48
    new-instance p1, Lp0/E;

    .line 49
    .line 50
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, LA1/r;->o:Lp0/E;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LA1/r;->g:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, LA1/r;->n:Z

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, LA1/r;->m:J

    .line 14
    .line 15
    iget-object v1, p0, LA1/r;->h:[Z

    .line 16
    .line 17
    invoke-static {v1}, Lq0/p;->a([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, LA1/r;->d:LA1/x;

    .line 21
    .line 22
    invoke-virtual {v1}, LA1/x;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, LA1/r;->e:LA1/x;

    .line 26
    .line 27
    invoke-virtual {v1}, LA1/x;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, LA1/r;->f:LA1/x;

    .line 31
    .line 32
    invoke-virtual {v1}, LA1/x;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, LA1/r;->a:Lm2/o;

    .line 36
    .line 37
    iget-object v1, v1, Lm2/o;->J:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ll/s;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ll/s;->c(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, LA1/r;->k:LA1/q;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iput-boolean v0, v1, LA1/q;->k:Z

    .line 49
    .line 50
    iput-boolean v0, v1, LA1/q;->o:Z

    .line 51
    .line 52
    iget-object v1, v1, LA1/q;->n:LA1/p;

    .line 53
    .line 54
    iput-boolean v0, v1, LA1/p;->b:Z

    .line 55
    .line 56
    iput-boolean v0, v1, LA1/p;->a:Z

    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iget-object v1, v7, LA1/r;->j:LW0/L;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget v1, v0, Lp0/E;->b:I

    .line 12
    .line 13
    iget v8, v0, Lp0/E;->c:I

    .line 14
    .line 15
    iget-object v9, v0, Lp0/E;->a:[B

    .line 16
    .line 17
    iget-wide v2, v7, LA1/r;->g:J

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    int-to-long v4, v4

    .line 24
    add-long/2addr v2, v4

    .line 25
    iput-wide v2, v7, LA1/r;->g:J

    .line 26
    .line 27
    iget-object v2, v7, LA1/r;->j:LW0/L;

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-interface {v2, v3, v0}, LW0/L;->e(ILp0/E;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, v7, LA1/r;->h:[Z

    .line 37
    .line 38
    invoke-static {v9, v1, v8, v0}, Lq0/p;->b([BII[Z)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v8, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v1, v9, v8}, LA1/r;->g(I[BI)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    add-int/lit8 v2, v0, 0x3

    .line 49
    .line 50
    aget-byte v2, v9, v2

    .line 51
    .line 52
    and-int/lit8 v10, v2, 0x1f

    .line 53
    .line 54
    if-lez v0, :cond_1

    .line 55
    .line 56
    add-int/lit8 v2, v0, -0x1

    .line 57
    .line 58
    aget-byte v2, v9, v2

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    move v11, v0

    .line 66
    const/4 v12, 0x4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v2, 0x3

    .line 69
    move v11, v0

    .line 70
    const/4 v12, 0x3

    .line 71
    :goto_1
    sub-int v0, v11, v1

    .line 72
    .line 73
    if-lez v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v1, v9, v11}, LA1/r;->g(I[BI)V

    .line 76
    .line 77
    .line 78
    :cond_2
    sub-int v1, v8, v11

    .line 79
    .line 80
    iget-wide v2, v7, LA1/r;->g:J

    .line 81
    .line 82
    int-to-long v4, v1

    .line 83
    sub-long v13, v2, v4

    .line 84
    .line 85
    if-gez v0, :cond_3

    .line 86
    .line 87
    neg-int v0, v0

    .line 88
    move v2, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_2
    iget-wide v5, v7, LA1/r;->m:J

    .line 93
    .line 94
    move-object v0, p0

    .line 95
    move-wide v3, v13

    .line 96
    invoke-virtual/range {v0 .. v6}, LA1/r;->f(IIJJ)V

    .line 97
    .line 98
    .line 99
    iget-wide v4, v7, LA1/r;->m:J

    .line 100
    .line 101
    move v1, v10

    .line 102
    move-wide v2, v13

    .line 103
    invoke-virtual/range {v0 .. v5}, LA1/r;->h(IJJ)V

    .line 104
    .line 105
    .line 106
    add-int v1, v11, v12

    .line 107
    .line 108
    goto :goto_0
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, LA1/I;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, LA1/r;->i:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->b()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, LA1/r;->j:LW0/L;

    .line 22
    .line 23
    new-instance v1, LA1/q;

    .line 24
    .line 25
    iget-boolean v2, p0, LA1/r;->b:Z

    .line 26
    .line 27
    iget-boolean v3, p0, LA1/r;->c:Z

    .line 28
    .line 29
    invoke-direct {v1, v0, v2, v3}, LA1/q;-><init>(LW0/L;ZZ)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, LA1/r;->k:LA1/q;

    .line 33
    .line 34
    iget-object v0, p0, LA1/r;->a:Lm2/o;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Lm2/o;->f(LW0/u;LA1/I;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final d(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, LA1/r;->j:LW0/L;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LA1/r;->a:Lm2/o;

    .line 11
    .line 12
    iget-object p1, p1, Lm2/o;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ll/s;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Ll/s;->c(I)V

    .line 18
    .line 19
    .line 20
    iget-wide v4, p0, LA1/r;->g:J

    .line 21
    .line 22
    iget-wide v6, p0, LA1/r;->m:J

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-virtual/range {v1 .. v7}, LA1/r;->f(IIJJ)V

    .line 28
    .line 29
    .line 30
    iget-wide v10, p0, LA1/r;->g:J

    .line 31
    .line 32
    const/16 v9, 0x9

    .line 33
    .line 34
    iget-wide v12, p0, LA1/r;->m:J

    .line 35
    .line 36
    move-object v8, p0

    .line 37
    invoke-virtual/range {v8 .. v13}, LA1/r;->h(IJJ)V

    .line 38
    .line 39
    .line 40
    iget-wide v3, p0, LA1/r;->g:J

    .line 41
    .line 42
    iget-wide v5, p0, LA1/r;->m:J

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v6}, LA1/r;->f(IIJJ)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/r;->m:J

    .line 2
    .line 3
    iget-boolean p2, p0, LA1/r;->n:Z

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    or-int/2addr p1, p2

    .line 13
    iput-boolean p1, p0, LA1/r;->n:Z

    .line 14
    .line 15
    return-void
.end method

.method public final f(IIJJ)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x3

    .line 8
    iget-boolean v5, v0, LA1/r;->l:Z

    .line 9
    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x1

    .line 12
    iget-object v8, v0, LA1/r;->a:Lm2/o;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    iget-object v5, v0, LA1/r;->k:LA1/q;

    .line 17
    .line 18
    iget-boolean v5, v5, LA1/q;->c:Z

    .line 19
    .line 20
    if-eqz v5, :cond_3

    .line 21
    .line 22
    :cond_0
    iget-object v5, v0, LA1/r;->d:LA1/x;

    .line 23
    .line 24
    invoke-virtual {v5, v1}, LA1/x;->b(I)Z

    .line 25
    .line 26
    .line 27
    iget-object v9, v0, LA1/r;->e:LA1/x;

    .line 28
    .line 29
    invoke-virtual {v9, v1}, LA1/x;->b(I)Z

    .line 30
    .line 31
    .line 32
    iget-boolean v10, v0, LA1/r;->l:Z

    .line 33
    .line 34
    if-nez v10, :cond_1

    .line 35
    .line 36
    iget-boolean v10, v5, LA1/x;->c:Z

    .line 37
    .line 38
    if-eqz v10, :cond_3

    .line 39
    .line 40
    iget-boolean v10, v9, LA1/x;->c:Z

    .line 41
    .line 42
    if-eqz v10, :cond_3

    .line 43
    .line 44
    new-instance v10, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v11, v5, LA1/x;->d:[B

    .line 50
    .line 51
    iget v12, v5, LA1/x;->e:I

    .line 52
    .line 53
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object v11, v9, LA1/x;->d:[B

    .line 61
    .line 62
    iget v12, v9, LA1/x;->e:I

    .line 63
    .line 64
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v11, v5, LA1/x;->d:[B

    .line 72
    .line 73
    iget v12, v5, LA1/x;->e:I

    .line 74
    .line 75
    invoke-static {v4, v11, v12}, Lq0/p;->k(I[BI)Lq0/o;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-object v12, v9, LA1/x;->d:[B

    .line 80
    .line 81
    iget v13, v9, LA1/x;->e:I

    .line 82
    .line 83
    new-instance v14, Lp0/D;

    .line 84
    .line 85
    invoke-direct {v14, v12, v6, v13}, Lp0/D;-><init>([BII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v14}, Lp0/D;->m()I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    invoke-virtual {v14}, Lp0/D;->m()I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    invoke-virtual {v14}, Lp0/D;->t()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14}, Lp0/D;->h()Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    new-instance v15, Lq0/n;

    .line 104
    .line 105
    invoke-direct {v15, v14, v12, v13}, Lq0/n;-><init>(ZII)V

    .line 106
    .line 107
    .line 108
    sget-object v13, Lp0/g;->a:[B

    .line 109
    .line 110
    iget v13, v11, Lq0/o;->a:I

    .line 111
    .line 112
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    iget v14, v11, Lq0/o;->b:I

    .line 117
    .line 118
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    iget v6, v11, Lq0/o;->c:I

    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    new-array v4, v4, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v13, v4, v3

    .line 131
    .line 132
    aput-object v14, v4, v7

    .line 133
    .line 134
    aput-object v6, v4, v2

    .line 135
    .line 136
    const-string v6, "avc1.%02X%02X%02X"

    .line 137
    .line 138
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-object v6, v0, LA1/r;->j:LW0/L;

    .line 143
    .line 144
    new-instance v13, Lm0/s;

    .line 145
    .line 146
    invoke-direct {v13}, Lm0/s;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v14, v0, LA1/r;->i:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v14, v13, Lm0/s;->a:Ljava/lang/String;

    .line 152
    .line 153
    const-string v14, "video/mp2t"

    .line 154
    .line 155
    invoke-static {v14}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    iput-object v14, v13, Lm0/s;->m:Ljava/lang/String;

    .line 160
    .line 161
    const-string v14, "video/avc"

    .line 162
    .line 163
    invoke-static {v14}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    iput-object v14, v13, Lm0/s;->n:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v4, v13, Lm0/s;->j:Ljava/lang/String;

    .line 170
    .line 171
    iget v4, v11, Lq0/o;->e:I

    .line 172
    .line 173
    iput v4, v13, Lm0/s;->u:I

    .line 174
    .line 175
    iget v4, v11, Lq0/o;->f:I

    .line 176
    .line 177
    iput v4, v13, Lm0/s;->v:I

    .line 178
    .line 179
    iget v4, v11, Lq0/o;->h:I

    .line 180
    .line 181
    add-int/lit8 v21, v4, 0x8

    .line 182
    .line 183
    iget v4, v11, Lq0/o;->i:I

    .line 184
    .line 185
    add-int/lit8 v22, v4, 0x8

    .line 186
    .line 187
    new-instance v4, Lm0/i;

    .line 188
    .line 189
    iget v14, v11, Lq0/o;->r:I

    .line 190
    .line 191
    const/16 v20, 0x0

    .line 192
    .line 193
    iget v2, v11, Lq0/o;->p:I

    .line 194
    .line 195
    iget v3, v11, Lq0/o;->q:I

    .line 196
    .line 197
    move-object/from16 v16, v4

    .line 198
    .line 199
    move/from16 v17, v2

    .line 200
    .line 201
    move/from16 v18, v3

    .line 202
    .line 203
    move/from16 v19, v14

    .line 204
    .line 205
    invoke-direct/range {v16 .. v22}, Lm0/i;-><init>(III[BII)V

    .line 206
    .line 207
    .line 208
    iput-object v4, v13, Lm0/s;->D:Lm0/i;

    .line 209
    .line 210
    iget v2, v11, Lq0/o;->g:F

    .line 211
    .line 212
    iput v2, v13, Lm0/s;->A:F

    .line 213
    .line 214
    iput-object v10, v13, Lm0/s;->q:Ljava/util/List;

    .line 215
    .line 216
    iget v2, v11, Lq0/o;->s:I

    .line 217
    .line 218
    iput v2, v13, Lm0/s;->p:I

    .line 219
    .line 220
    new-instance v3, Lm0/t;

    .line 221
    .line 222
    invoke-direct {v3, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v6, v3}, LW0/L;->b(Lm0/t;)V

    .line 226
    .line 227
    .line 228
    iput-boolean v7, v0, LA1/r;->l:Z

    .line 229
    .line 230
    iget-object v3, v8, Lm2/o;->J:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v3, Ll/s;

    .line 233
    .line 234
    invoke-virtual {v3, v2}, Ll/s;->j(I)V

    .line 235
    .line 236
    .line 237
    iget-object v2, v0, LA1/r;->k:LA1/q;

    .line 238
    .line 239
    iget-object v2, v2, LA1/q;->d:Landroid/util/SparseArray;

    .line 240
    .line 241
    iget v3, v11, Lq0/o;->d:I

    .line 242
    .line 243
    invoke-virtual {v2, v3, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v0, LA1/r;->k:LA1/q;

    .line 247
    .line 248
    iget-object v2, v2, LA1/q;->e:Landroid/util/SparseArray;

    .line 249
    .line 250
    invoke-virtual {v2, v12, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, LA1/x;->c()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v9}, LA1/x;->c()V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_1
    iget-boolean v2, v5, LA1/x;->c:Z

    .line 261
    .line 262
    if-eqz v2, :cond_2

    .line 263
    .line 264
    iget-object v2, v5, LA1/x;->d:[B

    .line 265
    .line 266
    iget v3, v5, LA1/x;->e:I

    .line 267
    .line 268
    invoke-static {v4, v2, v3}, Lq0/p;->k(I[BI)Lq0/o;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v3, v8, Lm2/o;->J:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v3, Ll/s;

    .line 275
    .line 276
    iget v4, v2, Lq0/o;->s:I

    .line 277
    .line 278
    invoke-virtual {v3, v4}, Ll/s;->j(I)V

    .line 279
    .line 280
    .line 281
    iget-object v3, v0, LA1/r;->k:LA1/q;

    .line 282
    .line 283
    iget-object v3, v3, LA1/q;->d:Landroid/util/SparseArray;

    .line 284
    .line 285
    iget v4, v2, Lq0/o;->d:I

    .line 286
    .line 287
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, LA1/x;->c()V

    .line 291
    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_2
    iget-boolean v2, v9, LA1/x;->c:Z

    .line 295
    .line 296
    if-eqz v2, :cond_3

    .line 297
    .line 298
    iget-object v2, v9, LA1/x;->d:[B

    .line 299
    .line 300
    iget v3, v9, LA1/x;->e:I

    .line 301
    .line 302
    sget-object v4, Lq0/p;->a:[B

    .line 303
    .line 304
    new-instance v4, Lp0/D;

    .line 305
    .line 306
    const/4 v5, 0x4

    .line 307
    invoke-direct {v4, v2, v5, v3}, Lp0/D;-><init>([BII)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lp0/D;->m()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    invoke-virtual {v4}, Lp0/D;->m()I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    invoke-virtual {v4}, Lp0/D;->t()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Lp0/D;->h()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    new-instance v5, Lq0/n;

    .line 326
    .line 327
    invoke-direct {v5, v4, v2, v3}, Lq0/n;-><init>(ZII)V

    .line 328
    .line 329
    .line 330
    iget-object v3, v0, LA1/r;->k:LA1/q;

    .line 331
    .line 332
    iget-object v3, v3, LA1/q;->e:Landroid/util/SparseArray;

    .line 333
    .line 334
    invoke-virtual {v3, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9}, LA1/x;->c()V

    .line 338
    .line 339
    .line 340
    :cond_3
    :goto_0
    iget-object v2, v0, LA1/r;->f:LA1/x;

    .line 341
    .line 342
    invoke-virtual {v2, v1}, LA1/x;->b(I)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_4

    .line 347
    .line 348
    iget-object v1, v2, LA1/x;->d:[B

    .line 349
    .line 350
    iget v3, v2, LA1/x;->e:I

    .line 351
    .line 352
    invoke-static {v3, v1}, Lq0/p;->m(I[B)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    iget-object v2, v2, LA1/x;->d:[B

    .line 357
    .line 358
    iget-object v3, v0, LA1/r;->o:Lp0/E;

    .line 359
    .line 360
    invoke-virtual {v3, v1, v2}, Lp0/E;->J(I[B)V

    .line 361
    .line 362
    .line 363
    const/4 v1, 0x4

    .line 364
    invoke-virtual {v3, v1}, Lp0/E;->L(I)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v8, Lm2/o;->J:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v1, Ll/s;

    .line 370
    .line 371
    move-wide/from16 v4, p5

    .line 372
    .line 373
    invoke-virtual {v1, v4, v5, v3}, Ll/s;->a(JLp0/E;)V

    .line 374
    .line 375
    .line 376
    :cond_4
    iget-object v1, v0, LA1/r;->k:LA1/q;

    .line 377
    .line 378
    iget-boolean v2, v0, LA1/r;->l:Z

    .line 379
    .line 380
    iget v3, v1, LA1/q;->i:I

    .line 381
    .line 382
    const/16 v4, 0x9

    .line 383
    .line 384
    if-eq v3, v4, :cond_b

    .line 385
    .line 386
    iget-boolean v3, v1, LA1/q;->c:Z

    .line 387
    .line 388
    if-eqz v3, :cond_e

    .line 389
    .line 390
    iget-object v3, v1, LA1/q;->n:LA1/p;

    .line 391
    .line 392
    iget-object v4, v1, LA1/q;->m:LA1/p;

    .line 393
    .line 394
    iget-boolean v5, v3, LA1/p;->a:Z

    .line 395
    .line 396
    if-nez v5, :cond_5

    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_5
    iget-boolean v5, v4, LA1/p;->a:Z

    .line 401
    .line 402
    if-nez v5, :cond_6

    .line 403
    .line 404
    goto :goto_1

    .line 405
    :cond_6
    iget-object v5, v3, LA1/p;->c:Lq0/o;

    .line 406
    .line 407
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v6, v4, LA1/p;->c:Lq0/o;

    .line 411
    .line 412
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    iget v8, v3, LA1/p;->f:I

    .line 416
    .line 417
    iget v9, v4, LA1/p;->f:I

    .line 418
    .line 419
    if-ne v8, v9, :cond_b

    .line 420
    .line 421
    iget v8, v3, LA1/p;->g:I

    .line 422
    .line 423
    iget v9, v4, LA1/p;->g:I

    .line 424
    .line 425
    if-ne v8, v9, :cond_b

    .line 426
    .line 427
    iget-boolean v8, v3, LA1/p;->h:Z

    .line 428
    .line 429
    iget-boolean v9, v4, LA1/p;->h:Z

    .line 430
    .line 431
    if-ne v8, v9, :cond_b

    .line 432
    .line 433
    iget-boolean v8, v3, LA1/p;->i:Z

    .line 434
    .line 435
    if-eqz v8, :cond_7

    .line 436
    .line 437
    iget-boolean v8, v4, LA1/p;->i:Z

    .line 438
    .line 439
    if-eqz v8, :cond_7

    .line 440
    .line 441
    iget-boolean v8, v3, LA1/p;->j:Z

    .line 442
    .line 443
    iget-boolean v9, v4, LA1/p;->j:Z

    .line 444
    .line 445
    if-ne v8, v9, :cond_b

    .line 446
    .line 447
    :cond_7
    iget v8, v3, LA1/p;->d:I

    .line 448
    .line 449
    iget v9, v4, LA1/p;->d:I

    .line 450
    .line 451
    if-eq v8, v9, :cond_8

    .line 452
    .line 453
    if-eqz v8, :cond_b

    .line 454
    .line 455
    if-eqz v9, :cond_b

    .line 456
    .line 457
    :cond_8
    iget v6, v6, Lq0/o;->m:I

    .line 458
    .line 459
    iget v5, v5, Lq0/o;->m:I

    .line 460
    .line 461
    if-nez v5, :cond_9

    .line 462
    .line 463
    if-nez v6, :cond_9

    .line 464
    .line 465
    iget v8, v3, LA1/p;->m:I

    .line 466
    .line 467
    iget v9, v4, LA1/p;->m:I

    .line 468
    .line 469
    if-ne v8, v9, :cond_b

    .line 470
    .line 471
    iget v8, v3, LA1/p;->n:I

    .line 472
    .line 473
    iget v9, v4, LA1/p;->n:I

    .line 474
    .line 475
    if-ne v8, v9, :cond_b

    .line 476
    .line 477
    :cond_9
    if-ne v5, v7, :cond_a

    .line 478
    .line 479
    if-ne v6, v7, :cond_a

    .line 480
    .line 481
    iget v5, v3, LA1/p;->o:I

    .line 482
    .line 483
    iget v6, v4, LA1/p;->o:I

    .line 484
    .line 485
    if-ne v5, v6, :cond_b

    .line 486
    .line 487
    iget v5, v3, LA1/p;->p:I

    .line 488
    .line 489
    iget v6, v4, LA1/p;->p:I

    .line 490
    .line 491
    if-ne v5, v6, :cond_b

    .line 492
    .line 493
    :cond_a
    iget-boolean v5, v3, LA1/p;->k:Z

    .line 494
    .line 495
    iget-boolean v6, v4, LA1/p;->k:Z

    .line 496
    .line 497
    if-ne v5, v6, :cond_b

    .line 498
    .line 499
    if-eqz v5, :cond_e

    .line 500
    .line 501
    iget v3, v3, LA1/p;->l:I

    .line 502
    .line 503
    iget v4, v4, LA1/p;->l:I

    .line 504
    .line 505
    if-eq v3, v4, :cond_e

    .line 506
    .line 507
    :cond_b
    :goto_1
    if-eqz v2, :cond_d

    .line 508
    .line 509
    iget-boolean v2, v1, LA1/q;->o:Z

    .line 510
    .line 511
    if-eqz v2, :cond_d

    .line 512
    .line 513
    iget-wide v2, v1, LA1/q;->j:J

    .line 514
    .line 515
    sub-long v4, p3, v2

    .line 516
    .line 517
    long-to-int v5, v4

    .line 518
    add-int v13, p1, v5

    .line 519
    .line 520
    iget-wide v9, v1, LA1/q;->q:J

    .line 521
    .line 522
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    cmp-long v6, v9, v4

    .line 528
    .line 529
    if-eqz v6, :cond_d

    .line 530
    .line 531
    iget-wide v4, v1, LA1/q;->p:J

    .line 532
    .line 533
    cmp-long v6, v2, v4

    .line 534
    .line 535
    if-nez v6, :cond_c

    .line 536
    .line 537
    goto :goto_2

    .line 538
    :cond_c
    iget-boolean v11, v1, LA1/q;->r:Z

    .line 539
    .line 540
    sub-long/2addr v2, v4

    .line 541
    long-to-int v12, v2

    .line 542
    iget-object v8, v1, LA1/q;->a:LW0/L;

    .line 543
    .line 544
    const/4 v14, 0x0

    .line 545
    invoke-interface/range {v8 .. v14}, LW0/L;->d(JIIILW0/K;)V

    .line 546
    .line 547
    .line 548
    :cond_d
    :goto_2
    iget-wide v2, v1, LA1/q;->j:J

    .line 549
    .line 550
    iput-wide v2, v1, LA1/q;->p:J

    .line 551
    .line 552
    iget-wide v2, v1, LA1/q;->l:J

    .line 553
    .line 554
    iput-wide v2, v1, LA1/q;->q:J

    .line 555
    .line 556
    const/4 v2, 0x0

    .line 557
    iput-boolean v2, v1, LA1/q;->r:Z

    .line 558
    .line 559
    iput-boolean v7, v1, LA1/q;->o:Z

    .line 560
    .line 561
    :cond_e
    :goto_3
    iget-boolean v2, v1, LA1/q;->b:Z

    .line 562
    .line 563
    if-eqz v2, :cond_11

    .line 564
    .line 565
    iget-object v2, v1, LA1/q;->n:LA1/p;

    .line 566
    .line 567
    iget-boolean v3, v2, LA1/p;->b:Z

    .line 568
    .line 569
    if-eqz v3, :cond_10

    .line 570
    .line 571
    iget v2, v2, LA1/p;->e:I

    .line 572
    .line 573
    const/4 v3, 0x7

    .line 574
    if-eq v2, v3, :cond_f

    .line 575
    .line 576
    const/4 v3, 0x2

    .line 577
    if-ne v2, v3, :cond_10

    .line 578
    .line 579
    :cond_f
    const/4 v2, 0x1

    .line 580
    goto :goto_4

    .line 581
    :cond_10
    const/4 v2, 0x0

    .line 582
    goto :goto_4

    .line 583
    :cond_11
    iget-boolean v2, v1, LA1/q;->s:Z

    .line 584
    .line 585
    :goto_4
    iget-boolean v3, v1, LA1/q;->r:Z

    .line 586
    .line 587
    iget v4, v1, LA1/q;->i:I

    .line 588
    .line 589
    const/4 v5, 0x5

    .line 590
    if-eq v4, v5, :cond_13

    .line 591
    .line 592
    if-eqz v2, :cond_12

    .line 593
    .line 594
    if-ne v4, v7, :cond_12

    .line 595
    .line 596
    goto :goto_5

    .line 597
    :cond_12
    const/4 v7, 0x0

    .line 598
    :cond_13
    :goto_5
    or-int v2, v3, v7

    .line 599
    .line 600
    iput-boolean v2, v1, LA1/q;->r:Z

    .line 601
    .line 602
    const/16 v3, 0x18

    .line 603
    .line 604
    iput v3, v1, LA1/q;->i:I

    .line 605
    .line 606
    if-eqz v2, :cond_14

    .line 607
    .line 608
    const/4 v1, 0x0

    .line 609
    iput-boolean v1, v0, LA1/r;->n:Z

    .line 610
    .line 611
    :cond_14
    return-void
.end method

.method public final g(I[BI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-boolean v4, v0, LA1/r;->l:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v4, v0, LA1/r;->k:LA1/q;

    .line 14
    .line 15
    iget-boolean v4, v4, LA1/q;->c:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v4, v0, LA1/r;->d:LA1/x;

    .line 20
    .line 21
    invoke-virtual {v4, v1, v2, v3}, LA1/x;->a(I[BI)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, LA1/r;->e:LA1/x;

    .line 25
    .line 26
    invoke-virtual {v4, v1, v2, v3}, LA1/x;->a(I[BI)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, LA1/r;->f:LA1/x;

    .line 30
    .line 31
    invoke-virtual {v4, v1, v2, v3}, LA1/x;->a(I[BI)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v0, LA1/r;->k:LA1/q;

    .line 35
    .line 36
    iget-boolean v5, v4, LA1/q;->k:Z

    .line 37
    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    sub-int/2addr v3, v1

    .line 43
    iget-object v5, v4, LA1/q;->g:[B

    .line 44
    .line 45
    array-length v6, v5

    .line 46
    iget v7, v4, LA1/q;->h:I

    .line 47
    .line 48
    add-int/2addr v7, v3

    .line 49
    const/4 v8, 0x2

    .line 50
    if-ge v6, v7, :cond_3

    .line 51
    .line 52
    mul-int/lit8 v7, v7, 0x2

    .line 53
    .line 54
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iput-object v5, v4, LA1/q;->g:[B

    .line 59
    .line 60
    :cond_3
    iget-object v5, v4, LA1/q;->g:[B

    .line 61
    .line 62
    iget v6, v4, LA1/q;->h:I

    .line 63
    .line 64
    invoke-static {v2, v1, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    iget v1, v4, LA1/q;->h:I

    .line 68
    .line 69
    add-int/2addr v1, v3

    .line 70
    iput v1, v4, LA1/q;->h:I

    .line 71
    .line 72
    iget-object v2, v4, LA1/q;->g:[B

    .line 73
    .line 74
    iget-object v3, v4, LA1/q;->f:Lp0/D;

    .line 75
    .line 76
    iput-object v2, v3, Lp0/D;->b:[B

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    iput v2, v3, Lp0/D;->d:I

    .line 80
    .line 81
    iput v1, v3, Lp0/D;->c:I

    .line 82
    .line 83
    iput v2, v3, Lp0/D;->e:I

    .line 84
    .line 85
    invoke-virtual {v3}, Lp0/D;->a()V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x8

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Lp0/D;->d(I)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_4
    invoke-virtual {v3}, Lp0/D;->t()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v8}, Lp0/D;->i(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v5, 0x5

    .line 106
    invoke-virtual {v3, v5}, Lp0/D;->u(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_5

    .line 114
    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :cond_5
    invoke-virtual {v3}, Lp0/D;->m()I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_6

    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_6
    invoke-virtual {v3}, Lp0/D;->m()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    iget-boolean v7, v4, LA1/q;->c:Z

    .line 133
    .line 134
    const/4 v9, 0x1

    .line 135
    if-nez v7, :cond_7

    .line 136
    .line 137
    iput-boolean v2, v4, LA1/q;->k:Z

    .line 138
    .line 139
    iget-object v1, v4, LA1/q;->n:LA1/p;

    .line 140
    .line 141
    iput v6, v1, LA1/p;->e:I

    .line 142
    .line 143
    iput-boolean v9, v1, LA1/p;->b:Z

    .line 144
    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :cond_7
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_8

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_8
    invoke-virtual {v3}, Lp0/D;->m()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    iget-object v10, v4, LA1/q;->e:Landroid/util/SparseArray;

    .line 160
    .line 161
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-gez v11, :cond_9

    .line 166
    .line 167
    iput-boolean v2, v4, LA1/q;->k:Z

    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_9
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    check-cast v10, Lq0/n;

    .line 176
    .line 177
    iget-object v11, v4, LA1/q;->d:Landroid/util/SparseArray;

    .line 178
    .line 179
    iget v12, v10, Lq0/n;->a:I

    .line 180
    .line 181
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    check-cast v11, Lq0/o;

    .line 186
    .line 187
    iget-boolean v12, v11, Lq0/o;->j:Z

    .line 188
    .line 189
    if-eqz v12, :cond_b

    .line 190
    .line 191
    invoke-virtual {v3, v8}, Lp0/D;->d(I)Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    if-nez v12, :cond_a

    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :cond_a
    invoke-virtual {v3, v8}, Lp0/D;->u(I)V

    .line 200
    .line 201
    .line 202
    :cond_b
    iget v8, v11, Lq0/o;->l:I

    .line 203
    .line 204
    invoke-virtual {v3, v8}, Lp0/D;->d(I)Z

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    if-nez v12, :cond_c

    .line 209
    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :cond_c
    invoke-virtual {v3, v8}, Lp0/D;->i(I)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    iget-boolean v12, v11, Lq0/o;->k:Z

    .line 217
    .line 218
    if-nez v12, :cond_10

    .line 219
    .line 220
    invoke-virtual {v3, v9}, Lp0/D;->d(I)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-nez v12, :cond_d

    .line 225
    .line 226
    goto/16 :goto_7

    .line 227
    .line 228
    :cond_d
    invoke-virtual {v3}, Lp0/D;->h()Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_f

    .line 233
    .line 234
    invoke-virtual {v3, v9}, Lp0/D;->d(I)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-nez v13, :cond_e

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_e
    invoke-virtual {v3}, Lp0/D;->h()Z

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    const/4 v14, 0x1

    .line 247
    goto :goto_1

    .line 248
    :cond_f
    :goto_0
    const/4 v13, 0x0

    .line 249
    const/4 v14, 0x0

    .line 250
    goto :goto_1

    .line 251
    :cond_10
    const/4 v12, 0x0

    .line 252
    goto :goto_0

    .line 253
    :goto_1
    iget v15, v4, LA1/q;->i:I

    .line 254
    .line 255
    if-ne v15, v5, :cond_11

    .line 256
    .line 257
    const/4 v5, 0x1

    .line 258
    goto :goto_2

    .line 259
    :cond_11
    const/4 v5, 0x0

    .line 260
    :goto_2
    if-eqz v5, :cond_13

    .line 261
    .line 262
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    if-nez v15, :cond_12

    .line 267
    .line 268
    goto/16 :goto_7

    .line 269
    .line 270
    :cond_12
    invoke-virtual {v3}, Lp0/D;->m()I

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    goto :goto_3

    .line 275
    :cond_13
    const/4 v15, 0x0

    .line 276
    :goto_3
    iget-boolean v10, v10, Lq0/n;->b:Z

    .line 277
    .line 278
    iget v2, v11, Lq0/o;->m:I

    .line 279
    .line 280
    if-nez v2, :cond_17

    .line 281
    .line 282
    iget v2, v11, Lq0/o;->n:I

    .line 283
    .line 284
    invoke-virtual {v3, v2}, Lp0/D;->d(I)Z

    .line 285
    .line 286
    .line 287
    move-result v16

    .line 288
    if-nez v16, :cond_14

    .line 289
    .line 290
    goto/16 :goto_7

    .line 291
    .line 292
    :cond_14
    invoke-virtual {v3, v2}, Lp0/D;->i(I)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v10, :cond_16

    .line 297
    .line 298
    if-nez v12, :cond_16

    .line 299
    .line 300
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    if-nez v10, :cond_15

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_15
    invoke-virtual {v3}, Lp0/D;->n()I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    move v10, v3

    .line 312
    const/4 v3, 0x0

    .line 313
    const/4 v9, 0x0

    .line 314
    goto :goto_6

    .line 315
    :cond_16
    :goto_4
    const/4 v3, 0x0

    .line 316
    :goto_5
    const/4 v9, 0x0

    .line 317
    const/4 v10, 0x0

    .line 318
    goto :goto_6

    .line 319
    :cond_17
    if-ne v2, v9, :cond_1b

    .line 320
    .line 321
    iget-boolean v2, v11, Lq0/o;->o:Z

    .line 322
    .line 323
    if-nez v2, :cond_1b

    .line 324
    .line 325
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_18

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_18
    invoke-virtual {v3}, Lp0/D;->n()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v10, :cond_1a

    .line 337
    .line 338
    if-nez v12, :cond_1a

    .line 339
    .line 340
    invoke-virtual {v3}, Lp0/D;->e()Z

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    if-nez v10, :cond_19

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_19
    invoke-virtual {v3}, Lp0/D;->n()I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    move v9, v3

    .line 352
    const/4 v10, 0x0

    .line 353
    move v3, v2

    .line 354
    const/4 v2, 0x0

    .line 355
    goto :goto_6

    .line 356
    :cond_1a
    move v3, v2

    .line 357
    const/4 v2, 0x0

    .line 358
    goto :goto_5

    .line 359
    :cond_1b
    const/4 v2, 0x0

    .line 360
    goto :goto_4

    .line 361
    :goto_6
    iget-object v0, v4, LA1/q;->n:LA1/p;

    .line 362
    .line 363
    iput-object v11, v0, LA1/p;->c:Lq0/o;

    .line 364
    .line 365
    iput v1, v0, LA1/p;->d:I

    .line 366
    .line 367
    iput v6, v0, LA1/p;->e:I

    .line 368
    .line 369
    iput v8, v0, LA1/p;->f:I

    .line 370
    .line 371
    iput v7, v0, LA1/p;->g:I

    .line 372
    .line 373
    iput-boolean v12, v0, LA1/p;->h:Z

    .line 374
    .line 375
    iput-boolean v14, v0, LA1/p;->i:Z

    .line 376
    .line 377
    iput-boolean v13, v0, LA1/p;->j:Z

    .line 378
    .line 379
    iput-boolean v5, v0, LA1/p;->k:Z

    .line 380
    .line 381
    iput v15, v0, LA1/p;->l:I

    .line 382
    .line 383
    iput v2, v0, LA1/p;->m:I

    .line 384
    .line 385
    iput v10, v0, LA1/p;->n:I

    .line 386
    .line 387
    iput v3, v0, LA1/p;->o:I

    .line 388
    .line 389
    iput v9, v0, LA1/p;->p:I

    .line 390
    .line 391
    const/4 v1, 0x1

    .line 392
    iput-boolean v1, v0, LA1/p;->a:Z

    .line 393
    .line 394
    iput-boolean v1, v0, LA1/p;->b:Z

    .line 395
    .line 396
    const/4 v0, 0x0

    .line 397
    iput-boolean v0, v4, LA1/q;->k:Z

    .line 398
    .line 399
    :goto_7
    return-void
.end method

.method public final h(IJJ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LA1/r;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LA1/r;->k:LA1/q;

    .line 6
    .line 7
    iget-boolean v0, v0, LA1/q;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, LA1/r;->d:LA1/x;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LA1/x;->d(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LA1/r;->e:LA1/x;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, LA1/x;->d(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, LA1/r;->f:LA1/x;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, LA1/x;->d(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, LA1/r;->k:LA1/q;

    .line 27
    .line 28
    iget-boolean v1, p0, LA1/r;->n:Z

    .line 29
    .line 30
    iput p1, v0, LA1/q;->i:I

    .line 31
    .line 32
    iput-wide p4, v0, LA1/q;->l:J

    .line 33
    .line 34
    iput-wide p2, v0, LA1/q;->j:J

    .line 35
    .line 36
    iput-boolean v1, v0, LA1/q;->s:Z

    .line 37
    .line 38
    iget-boolean p2, v0, LA1/q;->b:Z

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    if-eq p1, p3, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-boolean p2, v0, LA1/q;->c:Z

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    const/4 p2, 0x5

    .line 50
    if-eq p1, p2, :cond_3

    .line 51
    .line 52
    if-eq p1, p3, :cond_3

    .line 53
    .line 54
    const/4 p2, 0x2

    .line 55
    if-ne p1, p2, :cond_4

    .line 56
    .line 57
    :cond_3
    iget-object p1, v0, LA1/q;->m:LA1/p;

    .line 58
    .line 59
    iget-object p2, v0, LA1/q;->n:LA1/p;

    .line 60
    .line 61
    iput-object p2, v0, LA1/q;->m:LA1/p;

    .line 62
    .line 63
    iput-object p1, v0, LA1/q;->n:LA1/p;

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p1, LA1/p;->b:Z

    .line 67
    .line 68
    iput-boolean p2, p1, LA1/p;->a:Z

    .line 69
    .line 70
    iput p2, v0, LA1/q;->h:I

    .line 71
    .line 72
    iput-boolean p3, v0, LA1/q;->k:Z

    .line 73
    .line 74
    :cond_4
    return-void
.end method
