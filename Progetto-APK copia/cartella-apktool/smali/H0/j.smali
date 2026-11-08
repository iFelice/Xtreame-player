.class public final LH0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LH0/k;

.field public final b:Ls0/i;

.field public final c:Ls0/i;

.field public final d:LD0/U;

.field public final e:[Landroid/net/Uri;

.field public final f:[Lm0/t;

.field public final g:LI0/w;

.field public final h:Lm0/g0;

.field public final i:Ljava/util/List;

.field public final j:Ls/b;

.field public final k:LC0/I;

.field public final l:J

.field public m:Z

.field public n:[B

.field public o:LO0/b;

.field public p:Landroid/net/Uri;

.field public q:Landroid/net/Uri;

.field public r:Z

.field public s:LR0/t;

.field public t:J


# direct methods
.method public constructor <init>(LH0/k;LI0/w;[Landroid/net/Uri;[Lm0/t;LH0/c;Ls0/O;LD0/U;JLjava/util/List;LC0/I;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LH0/j;->a:LH0/k;

    .line 5
    .line 6
    iput-object p2, p0, LH0/j;->g:LI0/w;

    .line 7
    .line 8
    iput-object p3, p0, LH0/j;->e:[Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, LH0/j;->f:[Lm0/t;

    .line 11
    .line 12
    iput-object p7, p0, LH0/j;->d:LD0/U;

    .line 13
    .line 14
    iput-wide p8, p0, LH0/j;->l:J

    .line 15
    .line 16
    iput-object p10, p0, LH0/j;->i:Ljava/util/List;

    .line 17
    .line 18
    iput-object p11, p0, LH0/j;->k:LC0/I;

    .line 19
    .line 20
    new-instance p1, Ls/b;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-direct {p1, p2}, Ls/b;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, LH0/j;->j:Ls/b;

    .line 27
    .line 28
    sget-object p1, Lp0/M;->b:[B

    .line 29
    .line 30
    iput-object p1, p0, LH0/j;->n:[B

    .line 31
    .line 32
    const-wide p7, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    iput-wide p7, p0, LH0/j;->t:J

    .line 38
    .line 39
    iget-object p1, p5, LH0/c;->a:Ls0/h;

    .line 40
    .line 41
    invoke-interface {p1}, Ls0/h;->a()Ls0/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, LH0/j;->b:Ls0/i;

    .line 46
    .line 47
    if-eqz p6, :cond_0

    .line 48
    .line 49
    invoke-interface {p1, p6}, Ls0/i;->p(Ls0/O;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p5, LH0/c;->a:Ls0/h;

    .line 53
    .line 54
    invoke-interface {p1}, Ls0/h;->a()Ls0/i;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, LH0/j;->c:Ls0/i;

    .line 59
    .line 60
    new-instance p1, Lm0/g0;

    .line 61
    .line 62
    const-string p5, ""

    .line 63
    .line 64
    invoke-direct {p1, p5, p4}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, LH0/j;->h:Lm0/g0;

    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 p5, 0x0

    .line 75
    :goto_0
    array-length p6, p3

    .line 76
    if-ge p5, p6, :cond_2

    .line 77
    .line 78
    aget-object p6, p4, p5

    .line 79
    .line 80
    iget p6, p6, Lm0/t;->f:I

    .line 81
    .line 82
    and-int/lit16 p6, p6, 0x4000

    .line 83
    .line 84
    if-nez p6, :cond_1

    .line 85
    .line 86
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p6

    .line 90
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    add-int/lit8 p5, p5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance p3, LH0/h;

    .line 97
    .line 98
    iget-object p4, p0, LH0/j;->h:Lm0/g0;

    .line 99
    .line 100
    invoke-static {p1}, Ly4/k;->g0(Ljava/util/Collection;)[I

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p3, p4, p1}, LR0/c;-><init>(Lm0/g0;[I)V

    .line 105
    .line 106
    .line 107
    aget p1, p1, p2

    .line 108
    .line 109
    iget-object p2, p4, Lm0/g0;->d:[Lm0/t;

    .line 110
    .line 111
    aget-object p1, p2, p1

    .line 112
    .line 113
    invoke-virtual {p3, p1}, LR0/c;->o(Lm0/t;)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput p1, p3, LH0/h;->g:I

    .line 118
    .line 119
    iput-object p3, p0, LH0/j;->s:LR0/t;

    .line 120
    .line 121
    return-void
.end method

.method public static d(LI0/l;JI)LH0/i;
    .locals 8

    .line 1
    iget-wide v0, p0, LI0/l;->k:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    iget-object v0, p0, LI0/l;->r:Lz4/H;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, -0x1

    .line 15
    iget-object p0, p0, LI0/l;->s:Lz4/H;

    .line 16
    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    if-eq p3, v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, 0x0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ge p3, v0, :cond_1

    .line 28
    .line 29
    new-instance v3, LH0/i;

    .line 30
    .line 31
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, LI0/j;

    .line 36
    .line 37
    invoke-direct {v3, p0, p1, p2, p3}, LH0/i;-><init>(LI0/j;JI)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-object v3

    .line 41
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, LI0/i;

    .line 46
    .line 47
    if-ne p3, v5, :cond_3

    .line 48
    .line 49
    new-instance p0, LH0/i;

    .line 50
    .line 51
    invoke-direct {p0, v2, p1, p2, v5}, LH0/i;-><init>(LI0/j;JI)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    iget-object v6, v2, LI0/i;->S:Lz4/H;

    .line 56
    .line 57
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-ge p3, v6, :cond_4

    .line 62
    .line 63
    new-instance p0, LH0/i;

    .line 64
    .line 65
    iget-object v0, v2, LI0/i;->S:Lz4/H;

    .line 66
    .line 67
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, LI0/j;

    .line 72
    .line 73
    invoke-direct {p0, v0, p1, p2, p3}, LH0/i;-><init>(LI0/j;JI)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    const-wide/16 v6, 0x1

    .line 84
    .line 85
    if-ge v1, p3, :cond_5

    .line 86
    .line 87
    new-instance p0, LH0/i;

    .line 88
    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, LI0/j;

    .line 94
    .line 95
    add-long/2addr p1, v6

    .line 96
    invoke-direct {p0, p3, p1, p2, v5}, LH0/i;-><init>(LI0/j;JI)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-nez p3, :cond_6

    .line 105
    .line 106
    new-instance p3, LH0/i;

    .line 107
    .line 108
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, LI0/j;

    .line 113
    .line 114
    add-long/2addr p1, v6

    .line 115
    invoke-direct {p3, p0, p1, p2, v4}, LH0/i;-><init>(LI0/j;JI)V

    .line 116
    .line 117
    .line 118
    return-object p3

    .line 119
    :cond_6
    return-object v3
.end method


# virtual methods
.method public final a(JLH0/l;)[LP0/q;
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    const/4 v10, -0x1

    .line 6
    if-nez v9, :cond_0

    .line 7
    .line 8
    const/4 v11, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v8, LH0/j;->h:Lm0/g0;

    .line 11
    .line 12
    iget-object v1, v9, LP0/f;->J:Lm0/t;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lm0/g0;->b(Lm0/t;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move v11, v0

    .line 19
    :goto_0
    iget-object v0, v8, LH0/j;->s:LR0/t;

    .line 20
    .line 21
    check-cast v0, LR0/c;

    .line 22
    .line 23
    iget-object v0, v0, LR0/c;->c:[I

    .line 24
    .line 25
    array-length v12, v0

    .line 26
    new-array v13, v12, [LP0/q;

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    :goto_1
    if-ge v15, v12, :cond_b

    .line 31
    .line 32
    iget-object v0, v8, LH0/j;->s:LR0/t;

    .line 33
    .line 34
    check-cast v0, LR0/c;

    .line 35
    .line 36
    iget-object v0, v0, LR0/c;->c:[I

    .line 37
    .line 38
    aget v0, v0, v15

    .line 39
    .line 40
    iget-object v1, v8, LH0/j;->e:[Landroid/net/Uri;

    .line 41
    .line 42
    aget-object v1, v1, v0

    .line 43
    .line 44
    iget-object v2, v8, LH0/j;->g:LI0/w;

    .line 45
    .line 46
    check-cast v2, LI0/c;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, LI0/c;->d(Landroid/net/Uri;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    sget-object v0, LP0/q;->i:LU4/b;

    .line 55
    .line 56
    aput-object v0, v13, v15

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_1
    invoke-virtual {v2, v1, v14}, LI0/c;->a(Landroid/net/Uri;Z)LI0/l;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-wide v1, v2, LI0/c;->T:J

    .line 68
    .line 69
    iget-wide v3, v6, LI0/l;->h:J

    .line 70
    .line 71
    sub-long v4, v3, v1

    .line 72
    .line 73
    if-eq v0, v11, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    const/4 v2, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/4 v2, 0x0

    .line 79
    :goto_2
    move-object/from16 v0, p0

    .line 80
    .line 81
    move-object/from16 v1, p3

    .line 82
    .line 83
    move-object v3, v6

    .line 84
    move-wide/from16 v16, v4

    .line 85
    .line 86
    move-object v14, v6

    .line 87
    move-wide/from16 v6, p1

    .line 88
    .line 89
    invoke-virtual/range {v0 .. v7}, LH0/j;->c(LH0/l;ZLI0/l;JJ)Landroid/util/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    new-instance v3, LH0/g;

    .line 110
    .line 111
    iget-wide v4, v14, LI0/l;->k:J

    .line 112
    .line 113
    sub-long/2addr v1, v4

    .line 114
    long-to-int v2, v1

    .line 115
    if-ltz v2, :cond_a

    .line 116
    .line 117
    iget-object v1, v14, LI0/l;->r:Lz4/H;

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-ge v4, v2, :cond_3

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-ge v2, v5, :cond_7

    .line 136
    .line 137
    if-eq v0, v10, :cond_6

    .line 138
    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, LI0/i;

    .line 144
    .line 145
    if-nez v0, :cond_4

    .line 146
    .line 147
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    iget-object v6, v5, LI0/i;->S:Lz4/H;

    .line 152
    .line 153
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-ge v0, v6, :cond_5

    .line 158
    .line 159
    iget-object v5, v5, LI0/i;->S:Lz4/H;

    .line 160
    .line 161
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-interface {v5, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    .line 171
    .line 172
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 173
    .line 174
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    :cond_7
    iget-wide v1, v14, LI0/l;->n:J

    .line 187
    .line 188
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    cmp-long v7, v1, v5

    .line 194
    .line 195
    if-eqz v7, :cond_9

    .line 196
    .line 197
    if-ne v0, v10, :cond_8

    .line 198
    .line 199
    const/4 v0, 0x0

    .line 200
    :cond_8
    iget-object v1, v14, LI0/l;->s:Lz4/H;

    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-ge v0, v2, :cond_9

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :goto_4
    move-wide/from16 v1, v16

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    :goto_5
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 227
    .line 228
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :goto_6
    invoke-direct {v3, v1, v2, v0}, LH0/g;-><init>(JLjava/util/List;)V

    .line 232
    .line 233
    .line 234
    aput-object v3, v13, v15

    .line 235
    .line 236
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 237
    .line 238
    const/4 v14, 0x0

    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_b
    return-object v13
.end method

.method public final b(LH0/l;)I
    .locals 8

    .line 1
    iget v0, p1, LH0/l;->U:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, LH0/j;->h:Lm0/g0;

    .line 9
    .line 10
    iget-object v1, p1, LP0/f;->J:Lm0/t;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lm0/g0;->b(Lm0/t;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, LH0/j;->e:[Landroid/net/Uri;

    .line 17
    .line 18
    aget-object v0, v1, v0

    .line 19
    .line 20
    iget-object v1, p0, LH0/j;->g:LI0/w;

    .line 21
    .line 22
    check-cast v1, LI0/c;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v0, v3}, LI0/c;->a(Landroid/net/Uri;Z)LI0/l;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-wide v4, p1, LP0/p;->P:J

    .line 33
    .line 34
    iget-wide v6, v0, LI0/l;->k:J

    .line 35
    .line 36
    sub-long/2addr v4, v6

    .line 37
    long-to-int v1, v4

    .line 38
    if-gez v1, :cond_1

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    iget-object v4, v0, LI0/l;->r:Lz4/H;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ge v1, v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, LI0/i;

    .line 54
    .line 55
    iget-object v1, v1, LI0/i;->S:Lz4/H;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v1, v0, LI0/l;->s:Lz4/H;

    .line 59
    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/4 v5, 0x2

    .line 65
    iget v6, p1, LH0/l;->U:I

    .line 66
    .line 67
    if-lt v6, v4, :cond_3

    .line 68
    .line 69
    return v5

    .line 70
    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, LI0/g;

    .line 75
    .line 76
    iget-boolean v4, v1, LI0/g;->S:Z

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    return v3

    .line 81
    :cond_4
    iget-object v0, v0, LI0/p;->a:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, v1, LI0/j;->G:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0, v1}, LQ3/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object p1, p1, LP0/f;->H:Ls0/m;

    .line 94
    .line 95
    iget-object p1, p1, Ls0/m;->a:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/4 v2, 0x2

    .line 105
    :goto_1
    return v2
.end method

.method public final c(LH0/l;ZLI0/l;JJ)Landroid/util/Pair;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-boolean p2, p1, LH0/l;->o0:Z

    .line 9
    .line 10
    iget-wide p3, p1, LP0/p;->P:J

    .line 11
    .line 12
    iget p5, p1, LH0/l;->U:I

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    new-instance p2, Landroid/util/Pair;

    .line 17
    .line 18
    if-ne p5, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, LP0/p;->a()J

    .line 21
    .line 22
    .line 23
    move-result-wide p3

    .line 24
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-ne p5, v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    add-int/lit8 v1, p5, 0x1

    .line 32
    .line 33
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    new-instance p2, Landroid/util/Pair;

    .line 42
    .line 43
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-object p2

    .line 55
    :cond_4
    :goto_2
    iget-wide v2, p3, LI0/l;->u:J

    .line 56
    .line 57
    add-long/2addr v2, p4

    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    iget-boolean p2, p0, LH0/j;->r:Z

    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    iget-wide p6, p1, LP0/f;->M:J

    .line 66
    .line 67
    :cond_6
    :goto_3
    iget-boolean p2, p3, LI0/l;->o:Z

    .line 68
    .line 69
    iget-wide v4, p3, LI0/l;->k:J

    .line 70
    .line 71
    iget-object v6, p3, LI0/l;->r:Lz4/H;

    .line 72
    .line 73
    if-nez p2, :cond_7

    .line 74
    .line 75
    cmp-long p2, p6, v2

    .line 76
    .line 77
    if-ltz p2, :cond_7

    .line 78
    .line 79
    new-instance p1, Landroid/util/Pair;

    .line 80
    .line 81
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    int-to-long p2, p2

    .line 86
    add-long/2addr v4, p2

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_7
    sub-long/2addr p6, p4

    .line 100
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iget-object p4, p0, LH0/j;->g:LI0/w;

    .line 105
    .line 106
    check-cast p4, LI0/c;

    .line 107
    .line 108
    iget-boolean p4, p4, LI0/c;->S:Z

    .line 109
    .line 110
    const/4 p5, 0x0

    .line 111
    if-eqz p4, :cond_9

    .line 112
    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    const/4 v0, 0x0

    .line 117
    :cond_9
    :goto_4
    invoke-static {v6, p2, v0}, Lp0/M;->c(Lz4/H;Ljava/lang/Long;Z)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    int-to-long v2, p1

    .line 122
    add-long/2addr v2, v4

    .line 123
    if-ltz p1, :cond_d

    .line 124
    .line 125
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, LI0/i;

    .line 130
    .line 131
    iget-wide v4, p1, LI0/j;->K:J

    .line 132
    .line 133
    iget-wide v6, p1, LI0/j;->I:J

    .line 134
    .line 135
    add-long/2addr v4, v6

    .line 136
    iget-object p2, p3, LI0/l;->s:Lz4/H;

    .line 137
    .line 138
    cmp-long p3, p6, v4

    .line 139
    .line 140
    if-gez p3, :cond_a

    .line 141
    .line 142
    iget-object p1, p1, LI0/i;->S:Lz4/H;

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_a
    move-object p1, p2

    .line 146
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    if-ge p5, p3, :cond_d

    .line 151
    .line 152
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    check-cast p3, LI0/g;

    .line 157
    .line 158
    iget-wide v4, p3, LI0/j;->K:J

    .line 159
    .line 160
    iget-wide v6, p3, LI0/j;->I:J

    .line 161
    .line 162
    add-long/2addr v4, v6

    .line 163
    cmp-long p4, p6, v4

    .line 164
    .line 165
    if-gez p4, :cond_c

    .line 166
    .line 167
    iget-boolean p3, p3, LI0/g;->R:Z

    .line 168
    .line 169
    if-eqz p3, :cond_d

    .line 170
    .line 171
    if-ne p1, p2, :cond_b

    .line 172
    .line 173
    const-wide/16 p1, 0x1

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_b
    const-wide/16 p1, 0x0

    .line 177
    .line 178
    :goto_6
    add-long/2addr v2, p1

    .line 179
    move v1, p5

    .line 180
    goto :goto_7

    .line 181
    :cond_c
    add-int/lit8 p5, p5, 0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_d
    :goto_7
    new-instance p1, Landroid/util/Pair;

    .line 185
    .line 186
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    return-object p1
.end method

.method public final e(Landroid/net/Uri;IZ)LH0/f;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v3, v0, LH0/j;->j:Ls/b;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, v3, Ls/b;->a:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [B

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, [B

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    new-instance v15, Ls0/m;

    .line 36
    .line 37
    const/4 v13, 0x1

    .line 38
    const/4 v14, 0x0

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    const-wide/16 v8, 0x0

    .line 44
    .line 45
    const-wide/16 v10, -0x1

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    move-object v1, v15

    .line 49
    move-object/from16 v2, p1

    .line 50
    .line 51
    invoke-direct/range {v1 .. v14}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, LH0/f;

    .line 55
    .line 56
    iget-object v2, v0, LH0/j;->f:[Lm0/t;

    .line 57
    .line 58
    aget-object v12, v2, p2

    .line 59
    .line 60
    iget-object v2, v0, LH0/j;->s:LR0/t;

    .line 61
    .line 62
    invoke-interface {v2}, LR0/t;->f()I

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    iget-object v2, v0, LH0/j;->s:LR0/t;

    .line 67
    .line 68
    invoke-interface {v2}, LR0/t;->h()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    iget-object v2, v0, LH0/j;->n:[B

    .line 73
    .line 74
    iget-object v9, v0, LH0/j;->c:Ls0/i;

    .line 75
    .line 76
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const/4 v11, 0x3

    .line 82
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    move-object v8, v1

    .line 88
    move-object v10, v15

    .line 89
    move-wide v15, v3

    .line 90
    invoke-direct/range {v8 .. v18}, LP0/f;-><init>(Ls0/i;Ls0/m;ILm0/t;ILjava/lang/Object;JJ)V

    .line 91
    .line 92
    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    sget-object v2, Lp0/M;->b:[B

    .line 96
    .line 97
    :cond_2
    iput-object v2, v1, LH0/f;->P:[B

    .line 98
    .line 99
    return-object v1
.end method
