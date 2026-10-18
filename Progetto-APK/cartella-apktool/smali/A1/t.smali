.class public final LA1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA1/j;


# instance fields
.field public final a:Lm2/o;

.field public b:Ljava/lang/String;

.field public c:LW0/L;

.field public d:LA1/s;

.field public e:Z

.field public final f:[Z

.field public final g:LA1/x;

.field public final h:LA1/x;

.field public final i:LA1/x;

.field public final j:LA1/x;

.field public final k:LA1/x;

.field public l:J

.field public m:J

.field public final n:Lp0/E;


# direct methods
.method public constructor <init>(Lm2/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/t;->a:Lm2/o;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, LA1/t;->f:[Z

    .line 10
    .line 11
    new-instance p1, LA1/x;

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LA1/t;->g:LA1/x;

    .line 20
    .line 21
    new-instance p1, LA1/x;

    .line 22
    .line 23
    const/16 v0, 0x21

    .line 24
    .line 25
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LA1/t;->h:LA1/x;

    .line 29
    .line 30
    new-instance p1, LA1/x;

    .line 31
    .line 32
    const/16 v0, 0x22

    .line 33
    .line 34
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, LA1/t;->i:LA1/x;

    .line 38
    .line 39
    new-instance p1, LA1/x;

    .line 40
    .line 41
    const/16 v0, 0x27

    .line 42
    .line 43
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, LA1/t;->j:LA1/x;

    .line 47
    .line 48
    new-instance p1, LA1/x;

    .line 49
    .line 50
    const/16 v0, 0x28

    .line 51
    .line 52
    invoke-direct {p1, v0, v1}, LA1/x;-><init>(II)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, LA1/t;->k:LA1/x;

    .line 56
    .line 57
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    iput-wide v0, p0, LA1/t;->m:J

    .line 63
    .line 64
    new-instance p1, Lp0/E;

    .line 65
    .line 66
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, LA1/t;->n:Lp0/E;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LA1/t;->l:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, LA1/t;->m:J

    .line 11
    .line 12
    iget-object v0, p0, LA1/t;->f:[Z

    .line 13
    .line 14
    invoke-static {v0}, Lq0/p;->a([Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, LA1/t;->g:LA1/x;

    .line 18
    .line 19
    invoke-virtual {v0}, LA1/x;->c()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, LA1/t;->h:LA1/x;

    .line 23
    .line 24
    invoke-virtual {v0}, LA1/x;->c()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, LA1/t;->i:LA1/x;

    .line 28
    .line 29
    invoke-virtual {v0}, LA1/x;->c()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, LA1/t;->j:LA1/x;

    .line 33
    .line 34
    invoke-virtual {v0}, LA1/x;->c()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LA1/t;->k:LA1/x;

    .line 38
    .line 39
    invoke-virtual {v0}, LA1/x;->c()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, LA1/t;->a:Lm2/o;

    .line 43
    .line 44
    iget-object v0, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ll/s;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Ll/s;->c(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, LA1/t;->d:LA1/s;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iput-boolean v1, v0, LA1/s;->e:Z

    .line 57
    .line 58
    iput-boolean v1, v0, LA1/s;->f:Z

    .line 59
    .line 60
    iput-boolean v1, v0, LA1/s;->g:Z

    .line 61
    .line 62
    iput-boolean v1, v0, LA1/s;->h:Z

    .line 63
    .line 64
    iput-boolean v1, v0, LA1/s;->i:Z

    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final b(Lp0/E;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v0, v7, LA1/t;->c:LW0/L;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 11
    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    iget v0, v8, Lp0/E;->b:I

    .line 19
    .line 20
    iget v9, v8, Lp0/E;->c:I

    .line 21
    .line 22
    iget-object v10, v8, Lp0/E;->a:[B

    .line 23
    .line 24
    iget-wide v1, v7, LA1/t;->l:J

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-long v3, v3

    .line 31
    add-long/2addr v1, v3

    .line 32
    iput-wide v1, v7, LA1/t;->l:J

    .line 33
    .line 34
    iget-object v1, v7, LA1/t;->c:LW0/L;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lp0/E;->a()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v1, v2, v8}, LW0/L;->e(ILp0/E;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-ge v0, v9, :cond_0

    .line 44
    .line 45
    iget-object v1, v7, LA1/t;->f:[Z

    .line 46
    .line 47
    invoke-static {v10, v0, v9, v1}, Lq0/p;->b([BII[Z)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v1, v9, :cond_1

    .line 52
    .line 53
    invoke-virtual {v7, v0, v10, v9}, LA1/t;->g(I[BI)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    add-int/lit8 v2, v1, 0x3

    .line 58
    .line 59
    aget-byte v2, v10, v2

    .line 60
    .line 61
    and-int/lit8 v2, v2, 0x7e

    .line 62
    .line 63
    shr-int/lit8 v11, v2, 0x1

    .line 64
    .line 65
    if-lez v1, :cond_2

    .line 66
    .line 67
    add-int/lit8 v2, v1, -0x1

    .line 68
    .line 69
    aget-byte v2, v10, v2

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    const/4 v2, 0x4

    .line 76
    move v12, v1

    .line 77
    const/4 v13, 0x4

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v2, 0x3

    .line 80
    move v12, v1

    .line 81
    const/4 v13, 0x3

    .line 82
    :goto_1
    sub-int v1, v12, v0

    .line 83
    .line 84
    if-lez v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v7, v0, v10, v12}, LA1/t;->g(I[BI)V

    .line 87
    .line 88
    .line 89
    :cond_3
    sub-int v14, v9, v12

    .line 90
    .line 91
    iget-wide v2, v7, LA1/t;->l:J

    .line 92
    .line 93
    int-to-long v4, v14

    .line 94
    sub-long v15, v2, v4

    .line 95
    .line 96
    if-gez v1, :cond_4

    .line 97
    .line 98
    neg-int v0, v1

    .line 99
    move v2, v0

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    const/4 v0, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_2
    iget-wide v5, v7, LA1/t;->m:J

    .line 104
    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move v1, v14

    .line 108
    move-wide v3, v15

    .line 109
    invoke-virtual/range {v0 .. v6}, LA1/t;->f(IIJJ)V

    .line 110
    .line 111
    .line 112
    iget-wide v5, v7, LA1/t;->m:J

    .line 113
    .line 114
    move v2, v11

    .line 115
    invoke-virtual/range {v0 .. v6}, LA1/t;->h(IIJJ)V

    .line 116
    .line 117
    .line 118
    add-int v0, v12, v13

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    return-void
.end method

.method public final c(LW0/u;LA1/I;)V
    .locals 2

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
    iput-object v0, p0, LA1/t;->b:Ljava/lang/String;

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
    iput-object v0, p0, LA1/t;->c:LW0/L;

    .line 22
    .line 23
    new-instance v1, LA1/s;

    .line 24
    .line 25
    invoke-direct {v1, v0}, LA1/s;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, LA1/t;->d:LA1/s;

    .line 29
    .line 30
    iget-object v0, p0, LA1/t;->a:Lm2/o;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lm2/o;->f(LW0/u;LA1/I;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final d(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, LA1/t;->c:LW0/L;

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
    iget-object v0, p0, LA1/t;->a:Lm2/o;

    .line 11
    .line 12
    iget-object v0, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ll/s;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ll/s;->c(I)V

    .line 18
    .line 19
    .line 20
    iget-wide v3, p0, LA1/t;->l:J

    .line 21
    .line 22
    iget-wide v5, p0, LA1/t;->m:J

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    move-object v0, p0

    .line 27
    invoke-virtual/range {v0 .. v6}, LA1/t;->f(IIJJ)V

    .line 28
    .line 29
    .line 30
    iget-wide v3, p0, LA1/t;->l:J

    .line 31
    .line 32
    iget-wide v5, p0, LA1/t;->m:J

    .line 33
    .line 34
    const/16 v2, 0x30

    .line 35
    .line 36
    invoke-virtual/range {v0 .. v6}, LA1/t;->h(IIJJ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, LA1/t;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public final f(IIJJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    iget-object v4, v0, LA1/t;->d:LA1/s;

    .line 8
    .line 9
    iget-boolean v5, v0, LA1/t;->e:Z

    .line 10
    .line 11
    iget-boolean v6, v4, LA1/s;->i:Z

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    iget-boolean v6, v4, LA1/s;->f:Z

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    iget-boolean v5, v4, LA1/s;->b:Z

    .line 22
    .line 23
    iput-boolean v5, v4, LA1/s;->l:Z

    .line 24
    .line 25
    iput-boolean v7, v4, LA1/s;->i:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v6, v4, LA1/s;->g:Z

    .line 29
    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    iget-boolean v6, v4, LA1/s;->f:Z

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    :cond_1
    if-eqz v5, :cond_2

    .line 37
    .line 38
    iget-boolean v5, v4, LA1/s;->h:Z

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    iget-wide v5, v4, LA1/s;->a:J

    .line 43
    .line 44
    sub-long v5, p3, v5

    .line 45
    .line 46
    long-to-int v6, v5

    .line 47
    add-int v5, p1, v6

    .line 48
    .line 49
    invoke-virtual {v4, v5}, LA1/s;->a(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-wide v5, v4, LA1/s;->a:J

    .line 53
    .line 54
    iput-wide v5, v4, LA1/s;->j:J

    .line 55
    .line 56
    iget-wide v5, v4, LA1/s;->d:J

    .line 57
    .line 58
    iput-wide v5, v4, LA1/s;->k:J

    .line 59
    .line 60
    iget-boolean v5, v4, LA1/s;->b:Z

    .line 61
    .line 62
    iput-boolean v5, v4, LA1/s;->l:Z

    .line 63
    .line 64
    iput-boolean v8, v4, LA1/s;->h:Z

    .line 65
    .line 66
    :cond_3
    :goto_0
    iget-boolean v4, v0, LA1/t;->e:Z

    .line 67
    .line 68
    iget-object v5, v0, LA1/t;->a:Lm2/o;

    .line 69
    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    iget-object v4, v0, LA1/t;->g:LA1/x;

    .line 73
    .line 74
    invoke-virtual {v4, v1}, LA1/x;->b(I)Z

    .line 75
    .line 76
    .line 77
    iget-object v6, v0, LA1/t;->h:LA1/x;

    .line 78
    .line 79
    invoke-virtual {v6, v1}, LA1/x;->b(I)Z

    .line 80
    .line 81
    .line 82
    iget-object v9, v0, LA1/t;->i:LA1/x;

    .line 83
    .line 84
    invoke-virtual {v9, v1}, LA1/x;->b(I)Z

    .line 85
    .line 86
    .line 87
    iget-boolean v10, v4, LA1/x;->c:Z

    .line 88
    .line 89
    if-eqz v10, :cond_6

    .line 90
    .line 91
    iget-boolean v10, v6, LA1/x;->c:Z

    .line 92
    .line 93
    if-eqz v10, :cond_6

    .line 94
    .line 95
    iget-boolean v10, v9, LA1/x;->c:Z

    .line 96
    .line 97
    if-eqz v10, :cond_6

    .line 98
    .line 99
    iget-object v10, v0, LA1/t;->b:Ljava/lang/String;

    .line 100
    .line 101
    iget v11, v4, LA1/x;->e:I

    .line 102
    .line 103
    iget v12, v6, LA1/x;->e:I

    .line 104
    .line 105
    add-int/2addr v12, v11

    .line 106
    iget v13, v9, LA1/x;->e:I

    .line 107
    .line 108
    add-int/2addr v12, v13

    .line 109
    new-array v12, v12, [B

    .line 110
    .line 111
    iget-object v13, v4, LA1/x;->d:[B

    .line 112
    .line 113
    invoke-static {v13, v7, v12, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    iget-object v11, v6, LA1/x;->d:[B

    .line 117
    .line 118
    iget v13, v4, LA1/x;->e:I

    .line 119
    .line 120
    iget v14, v6, LA1/x;->e:I

    .line 121
    .line 122
    invoke-static {v11, v7, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    iget-object v11, v9, LA1/x;->d:[B

    .line 126
    .line 127
    iget v4, v4, LA1/x;->e:I

    .line 128
    .line 129
    iget v13, v6, LA1/x;->e:I

    .line 130
    .line 131
    add-int/2addr v4, v13

    .line 132
    iget v9, v9, LA1/x;->e:I

    .line 133
    .line 134
    invoke-static {v11, v7, v12, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    iget-object v4, v6, LA1/x;->d:[B

    .line 138
    .line 139
    iget v6, v6, LA1/x;->e:I

    .line 140
    .line 141
    const/4 v9, 0x3

    .line 142
    const/4 v11, 0x0

    .line 143
    invoke-static {v4, v9, v6, v11}, Lq0/p;->i([BIILq0/m;)Lq0/k;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object v6, v4, Lq0/k;->b:Lq0/i;

    .line 148
    .line 149
    if-eqz v6, :cond_4

    .line 150
    .line 151
    iget v15, v6, Lq0/i;->c:I

    .line 152
    .line 153
    iget v9, v6, Lq0/i;->d:I

    .line 154
    .line 155
    iget v13, v6, Lq0/i;->a:I

    .line 156
    .line 157
    iget-boolean v14, v6, Lq0/i;->b:Z

    .line 158
    .line 159
    iget-object v11, v6, Lq0/i;->e:[I

    .line 160
    .line 161
    iget v6, v6, Lq0/i;->f:I

    .line 162
    .line 163
    move/from16 v16, v9

    .line 164
    .line 165
    move-object/from16 v17, v11

    .line 166
    .line 167
    move/from16 v18, v6

    .line 168
    .line 169
    invoke-static/range {v13 .. v18}, Lp0/g;->a(IZII[II)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    :cond_4
    new-instance v6, Lm0/s;

    .line 174
    .line 175
    invoke-direct {v6}, Lm0/s;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v10, v6, Lm0/s;->a:Ljava/lang/String;

    .line 179
    .line 180
    const-string v9, "video/mp2t"

    .line 181
    .line 182
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    iput-object v9, v6, Lm0/s;->m:Ljava/lang/String;

    .line 187
    .line 188
    const-string v9, "video/hevc"

    .line 189
    .line 190
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    iput-object v9, v6, Lm0/s;->n:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v11, v6, Lm0/s;->j:Ljava/lang/String;

    .line 197
    .line 198
    iget v9, v4, Lq0/k;->e:I

    .line 199
    .line 200
    iput v9, v6, Lm0/s;->u:I

    .line 201
    .line 202
    iget v9, v4, Lq0/k;->f:I

    .line 203
    .line 204
    iput v9, v6, Lm0/s;->v:I

    .line 205
    .line 206
    iget v9, v4, Lq0/k;->g:I

    .line 207
    .line 208
    iput v9, v6, Lm0/s;->w:I

    .line 209
    .line 210
    iget v9, v4, Lq0/k;->h:I

    .line 211
    .line 212
    iput v9, v6, Lm0/s;->x:I

    .line 213
    .line 214
    iget v9, v4, Lq0/k;->c:I

    .line 215
    .line 216
    add-int/lit8 v18, v9, 0x8

    .line 217
    .line 218
    iget v9, v4, Lq0/k;->d:I

    .line 219
    .line 220
    add-int/lit8 v19, v9, 0x8

    .line 221
    .line 222
    new-instance v9, Lm0/i;

    .line 223
    .line 224
    iget v14, v4, Lq0/k;->k:I

    .line 225
    .line 226
    iget v15, v4, Lq0/k;->l:I

    .line 227
    .line 228
    iget v10, v4, Lq0/k;->m:I

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    move-object v13, v9

    .line 233
    move/from16 v16, v10

    .line 234
    .line 235
    invoke-direct/range {v13 .. v19}, Lm0/i;-><init>(III[BII)V

    .line 236
    .line 237
    .line 238
    iput-object v9, v6, Lm0/s;->D:Lm0/i;

    .line 239
    .line 240
    iget v9, v4, Lq0/k;->i:F

    .line 241
    .line 242
    iput v9, v6, Lm0/s;->A:F

    .line 243
    .line 244
    iget v9, v4, Lq0/k;->j:I

    .line 245
    .line 246
    iput v9, v6, Lm0/s;->p:I

    .line 247
    .line 248
    iget v4, v4, Lq0/k;->a:I

    .line 249
    .line 250
    add-int/2addr v4, v8

    .line 251
    iput v4, v6, Lm0/s;->E:I

    .line 252
    .line 253
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    iput-object v4, v6, Lm0/s;->q:Ljava/util/List;

    .line 258
    .line 259
    new-instance v4, Lm0/t;

    .line 260
    .line 261
    invoke-direct {v4, v6}, Lm0/t;-><init>(Lm0/s;)V

    .line 262
    .line 263
    .line 264
    iget-object v6, v0, LA1/t;->c:LW0/L;

    .line 265
    .line 266
    invoke-interface {v6, v4}, LW0/L;->b(Lm0/t;)V

    .line 267
    .line 268
    .line 269
    const/4 v6, -0x1

    .line 270
    iget v4, v4, Lm0/t;->q:I

    .line 271
    .line 272
    if-eq v4, v6, :cond_5

    .line 273
    .line 274
    const/4 v7, 0x1

    .line 275
    :cond_5
    invoke-static {v7}, Ly4/k;->w(Z)V

    .line 276
    .line 277
    .line 278
    iget-object v6, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v6, Ll/s;

    .line 281
    .line 282
    invoke-virtual {v6, v4}, Ll/s;->j(I)V

    .line 283
    .line 284
    .line 285
    iput-boolean v8, v0, LA1/t;->e:Z

    .line 286
    .line 287
    :cond_6
    iget-object v4, v0, LA1/t;->j:LA1/x;

    .line 288
    .line 289
    invoke-virtual {v4, v1}, LA1/x;->b(I)Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    const/4 v7, 0x5

    .line 294
    iget-object v8, v0, LA1/t;->n:Lp0/E;

    .line 295
    .line 296
    if-eqz v6, :cond_7

    .line 297
    .line 298
    iget-object v6, v4, LA1/x;->d:[B

    .line 299
    .line 300
    iget v9, v4, LA1/x;->e:I

    .line 301
    .line 302
    invoke-static {v9, v6}, Lq0/p;->m(I[B)I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    iget-object v4, v4, LA1/x;->d:[B

    .line 307
    .line 308
    invoke-virtual {v8, v6, v4}, Lp0/E;->J(I[B)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8, v7}, Lp0/E;->M(I)V

    .line 312
    .line 313
    .line 314
    iget-object v4, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v4, Ll/s;

    .line 317
    .line 318
    invoke-virtual {v4, v2, v3, v8}, Ll/s;->a(JLp0/E;)V

    .line 319
    .line 320
    .line 321
    :cond_7
    iget-object v4, v0, LA1/t;->k:LA1/x;

    .line 322
    .line 323
    invoke-virtual {v4, v1}, LA1/x;->b(I)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_8

    .line 328
    .line 329
    iget-object v1, v4, LA1/x;->d:[B

    .line 330
    .line 331
    iget v6, v4, LA1/x;->e:I

    .line 332
    .line 333
    invoke-static {v6, v1}, Lq0/p;->m(I[B)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iget-object v4, v4, LA1/x;->d:[B

    .line 338
    .line 339
    invoke-virtual {v8, v1, v4}, Lp0/E;->J(I[B)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v7}, Lp0/E;->M(I)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v1, Ll/s;

    .line 348
    .line 349
    invoke-virtual {v1, v2, v3, v8}, Ll/s;->a(JLp0/E;)V

    .line 350
    .line 351
    .line 352
    :cond_8
    return-void
.end method

.method public final g(I[BI)V
    .locals 3

    .line 1
    iget-object v0, p0, LA1/t;->d:LA1/s;

    .line 2
    .line 3
    iget-boolean v1, v0, LA1/s;->e:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x2

    .line 8
    .line 9
    iget v2, v0, LA1/s;->c:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-ge v1, p3, :cond_1

    .line 13
    .line 14
    aget-byte v1, p2, v1

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0x80

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iput-boolean v1, v0, LA1/s;->f:Z

    .line 25
    .line 26
    iput-boolean v2, v0, LA1/s;->e:Z

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sub-int v1, p3, p1

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, v0, LA1/s;->c:I

    .line 33
    .line 34
    :cond_2
    :goto_1
    iget-boolean v0, p0, LA1/t;->e:Z

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, LA1/t;->g:LA1/x;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, LA1/x;->a(I[BI)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, LA1/t;->h:LA1/x;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, LA1/x;->a(I[BI)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, LA1/t;->i:LA1/x;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2, p3}, LA1/x;->a(I[BI)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, LA1/t;->j:LA1/x;

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2, p3}, LA1/x;->a(I[BI)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, LA1/t;->k:LA1/x;

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2, p3}, LA1/x;->a(I[BI)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final h(IIJJ)V
    .locals 3

    .line 1
    iget-object v0, p0, LA1/t;->d:LA1/s;

    .line 2
    .line 3
    iget-boolean v1, p0, LA1/t;->e:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, LA1/s;->f:Z

    .line 7
    .line 8
    iput-boolean v2, v0, LA1/s;->g:Z

    .line 9
    .line 10
    iput-wide p5, v0, LA1/s;->d:J

    .line 11
    .line 12
    iput v2, v0, LA1/s;->c:I

    .line 13
    .line 14
    iput-wide p3, v0, LA1/s;->a:J

    .line 15
    .line 16
    const/16 p3, 0x20

    .line 17
    .line 18
    const/4 p4, 0x1

    .line 19
    if-lt p2, p3, :cond_5

    .line 20
    .line 21
    const/16 p5, 0x28

    .line 22
    .line 23
    if-ne p2, p5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean p5, v0, LA1/s;->h:Z

    .line 27
    .line 28
    if-eqz p5, :cond_2

    .line 29
    .line 30
    iget-boolean p5, v0, LA1/s;->i:Z

    .line 31
    .line 32
    if-nez p5, :cond_2

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p1}, LA1/s;->a(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-boolean v2, v0, LA1/s;->h:Z

    .line 40
    .line 41
    :cond_2
    if-gt p3, p2, :cond_3

    .line 42
    .line 43
    const/16 p1, 0x23

    .line 44
    .line 45
    if-le p2, p1, :cond_4

    .line 46
    .line 47
    :cond_3
    const/16 p1, 0x27

    .line 48
    .line 49
    if-ne p2, p1, :cond_5

    .line 50
    .line 51
    :cond_4
    iget-boolean p1, v0, LA1/s;->i:Z

    .line 52
    .line 53
    xor-int/2addr p1, p4

    .line 54
    iput-boolean p1, v0, LA1/s;->g:Z

    .line 55
    .line 56
    iput-boolean p4, v0, LA1/s;->i:Z

    .line 57
    .line 58
    :cond_5
    :goto_0
    const/16 p1, 0x10

    .line 59
    .line 60
    if-lt p2, p1, :cond_6

    .line 61
    .line 62
    const/16 p1, 0x15

    .line 63
    .line 64
    if-gt p2, p1, :cond_6

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_6
    const/4 p1, 0x0

    .line 69
    :goto_1
    iput-boolean p1, v0, LA1/s;->b:Z

    .line 70
    .line 71
    if-nez p1, :cond_7

    .line 72
    .line 73
    const/16 p1, 0x9

    .line 74
    .line 75
    if-gt p2, p1, :cond_8

    .line 76
    .line 77
    :cond_7
    const/4 v2, 0x1

    .line 78
    :cond_8
    iput-boolean v2, v0, LA1/s;->e:Z

    .line 79
    .line 80
    iget-boolean p1, p0, LA1/t;->e:Z

    .line 81
    .line 82
    if-nez p1, :cond_9

    .line 83
    .line 84
    iget-object p1, p0, LA1/t;->g:LA1/x;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, LA1/x;->d(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, LA1/t;->h:LA1/x;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, LA1/x;->d(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, LA1/t;->i:LA1/x;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, LA1/x;->d(I)V

    .line 97
    .line 98
    .line 99
    :cond_9
    iget-object p1, p0, LA1/t;->j:LA1/x;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, LA1/x;->d(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, LA1/t;->k:LA1/x;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, LA1/x;->d(I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
