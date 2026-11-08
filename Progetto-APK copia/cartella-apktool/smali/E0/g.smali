.class public final LE0/g;
.super Lm0/f0;
.source "SourceFile"


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:LF0/c;

.field public final j:Lm0/I;

.field public final k:Lm0/D;


# direct methods
.method public constructor <init>(JJJIJJJLF0/c;Lm0/I;Lm0/D;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p14

    .line 3
    .line 4
    move-object/from16 v2, p16

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-boolean v3, v1, LF0/c;->d:Z

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v6, 0x0

    .line 18
    :goto_0
    if-ne v3, v6, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v4, 0x0

    .line 22
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 23
    .line 24
    .line 25
    move-wide v3, p1

    .line 26
    iput-wide v3, v0, LE0/g;->b:J

    .line 27
    .line 28
    move-wide v3, p3

    .line 29
    iput-wide v3, v0, LE0/g;->c:J

    .line 30
    .line 31
    move-wide v3, p5

    .line 32
    iput-wide v3, v0, LE0/g;->d:J

    .line 33
    .line 34
    move v3, p7

    .line 35
    iput v3, v0, LE0/g;->e:I

    .line 36
    .line 37
    move-wide v3, p8

    .line 38
    iput-wide v3, v0, LE0/g;->f:J

    .line 39
    .line 40
    move-wide/from16 v3, p10

    .line 41
    .line 42
    iput-wide v3, v0, LE0/g;->g:J

    .line 43
    .line 44
    move-wide/from16 v3, p12

    .line 45
    .line 46
    iput-wide v3, v0, LE0/g;->h:J

    .line 47
    .line 48
    iput-object v1, v0, LE0/g;->i:LF0/c;

    .line 49
    .line 50
    move-object/from16 v1, p15

    .line 51
    .line 52
    iput-object v1, v0, LE0/g;->j:Lm0/I;

    .line 53
    .line 54
    iput-object v2, v0, LE0/g;->k:Lm0/D;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, LE0/g;->e:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, LE0/g;->i()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lt p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, p1

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public final g(ILm0/d0;Z)Lm0/d0;
    .locals 9

    .line 1
    invoke-virtual {p0}, LE0/g;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H1;->e(II)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, LE0/g;->i:LF0/c;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p1}, LF0/c;->b(I)LF0/h;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, LF0/h;->a:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v0

    .line 21
    :goto_0
    if-eqz p3, :cond_1

    .line 22
    .line 23
    iget p3, p0, LE0/g;->e:I

    .line 24
    .line 25
    add-int/2addr p3, p1

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    invoke-virtual {v1, p1}, LF0/c;->d(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-virtual {v1, p1}, LF0/c;->b(I)LF0/h;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-wide v5, p1, LF0/h;->b:J

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v1, p1}, LF0/c;->b(I)LF0/h;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    iget-wide v7, p3, LF0/h;->b:J

    .line 46
    .line 47
    sub-long/2addr v5, v7

    .line 48
    invoke-static {v5, v6}, Lp0/M;->R(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iget-wide v7, p0, LE0/g;->f:J

    .line 53
    .line 54
    sub-long/2addr v5, v7

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p3, Lm0/c;->c:Lm0/c;

    .line 59
    .line 60
    iput-object v2, p2, Lm0/d0;->a:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object v0, p2, Lm0/d0;->b:Ljava/lang/Object;

    .line 63
    .line 64
    iput p1, p2, Lm0/d0;->c:I

    .line 65
    .line 66
    iput-wide v3, p2, Lm0/d0;->d:J

    .line 67
    .line 68
    iput-wide v5, p2, Lm0/d0;->e:J

    .line 69
    .line 70
    iput-object p3, p2, Lm0/d0;->g:Lm0/c;

    .line 71
    .line 72
    iput-boolean p1, p2, Lm0/d0;->f:Z

    .line 73
    .line 74
    return-object p2
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, LE0/g;->i:LF0/c;

    .line 2
    .line 3
    iget-object v0, v0, LF0/c;->m:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LE0/g;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H1;->e(II)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, LE0/g;->e:I

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final n(ILm0/e0;J)Lm0/e0;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/H1;->e(II)V

    .line 7
    .line 8
    .line 9
    iget-object v4, v0, LE0/g;->i:LF0/c;

    .line 10
    .line 11
    iget-boolean v2, v4, LF0/c;->d:Z

    .line 12
    .line 13
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-wide v7, v4, LF0/c;->e:J

    .line 22
    .line 23
    cmp-long v2, v7, v5

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-wide v7, v4, LF0/c;->b:J

    .line 28
    .line 29
    cmp-long v2, v7, v5

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-wide v7, v0, LE0/g;->h:J

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    :cond_1
    :goto_1
    move-wide v14, v7

    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_2
    const-wide/16 v9, 0x0

    .line 44
    .line 45
    cmp-long v2, p3, v9

    .line 46
    .line 47
    if-lez v2, :cond_3

    .line 48
    .line 49
    add-long v7, v7, p3

    .line 50
    .line 51
    iget-wide v11, v0, LE0/g;->g:J

    .line 52
    .line 53
    cmp-long v2, v7, v11

    .line 54
    .line 55
    if-lez v2, :cond_3

    .line 56
    .line 57
    move-wide v14, v5

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_3
    iget-wide v11, v0, LE0/g;->f:J

    .line 61
    .line 62
    add-long/2addr v11, v7

    .line 63
    invoke-virtual {v4, v3}, LF0/c;->d(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v13

    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_2
    iget-object v15, v4, LF0/c;->m:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    sub-int/2addr v15, v1

    .line 75
    if-ge v2, v15, :cond_4

    .line 76
    .line 77
    cmp-long v15, v11, v13

    .line 78
    .line 79
    if-ltz v15, :cond_4

    .line 80
    .line 81
    sub-long/2addr v11, v13

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    invoke-virtual {v4, v2}, LF0/c;->d(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v13

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {v4, v2}, LF0/c;->b(I)LF0/h;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v15, v2, LF0/h;->c:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v5, 0x0

    .line 100
    :goto_3
    const/4 v6, -0x1

    .line 101
    if-ge v5, v1, :cond_6

    .line 102
    .line 103
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v19

    .line 107
    move-object/from16 v9, v19

    .line 108
    .line 109
    check-cast v9, LF0/a;

    .line 110
    .line 111
    iget v9, v9, LF0/a;->b:I

    .line 112
    .line 113
    const/4 v10, 0x2

    .line 114
    if-ne v9, v10, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    const-wide/16 v9, 0x0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    const/4 v5, -0x1

    .line 123
    :goto_4
    if-ne v5, v6, :cond_7

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    iget-object v1, v2, LF0/h;->c:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, LF0/a;

    .line 133
    .line 134
    iget-object v1, v1, LF0/a;->c:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, LF0/m;

    .line 141
    .line 142
    invoke-virtual {v1}, LF0/m;->l()LE0/k;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    invoke-interface {v1, v13, v14}, LE0/k;->i(J)J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    const-wide/16 v9, 0x0

    .line 153
    .line 154
    cmp-long v2, v5, v9

    .line 155
    .line 156
    if-nez v2, :cond_8

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    invoke-interface {v1, v11, v12, v13, v14}, LE0/k;->f(JJ)J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    invoke-interface {v1, v5, v6}, LE0/k;->a(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    add-long/2addr v1, v7

    .line 168
    sub-long/2addr v1, v11

    .line 169
    move-wide v14, v1

    .line 170
    :goto_5
    sget-object v1, Lm0/e0;->q:Ljava/lang/Object;

    .line 171
    .line 172
    iget-boolean v1, v4, LF0/c;->d:Z

    .line 173
    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    iget-wide v1, v4, LF0/c;->e:J

    .line 177
    .line 178
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    cmp-long v7, v1, v5

    .line 184
    .line 185
    if-eqz v7, :cond_9

    .line 186
    .line 187
    iget-wide v1, v4, LF0/c;->b:J

    .line 188
    .line 189
    cmp-long v7, v1, v5

    .line 190
    .line 191
    if-nez v7, :cond_9

    .line 192
    .line 193
    const/4 v12, 0x1

    .line 194
    goto :goto_6

    .line 195
    :cond_9
    const/4 v12, 0x0

    .line 196
    :goto_6
    invoke-virtual/range {p0 .. p0}, LE0/g;->i()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/4 v2, 0x1

    .line 201
    add-int/lit8 v18, v1, -0x1

    .line 202
    .line 203
    iget-object v13, v0, LE0/g;->k:Lm0/D;

    .line 204
    .line 205
    iget-wide v1, v0, LE0/g;->g:J

    .line 206
    .line 207
    move-wide/from16 v16, v1

    .line 208
    .line 209
    iget-object v3, v0, LE0/g;->j:Lm0/I;

    .line 210
    .line 211
    iget-wide v5, v0, LE0/g;->b:J

    .line 212
    .line 213
    iget-wide v7, v0, LE0/g;->c:J

    .line 214
    .line 215
    iget-wide v9, v0, LE0/g;->d:J

    .line 216
    .line 217
    const/4 v11, 0x1

    .line 218
    iget-wide v1, v0, LE0/g;->f:J

    .line 219
    .line 220
    move-wide/from16 v19, v1

    .line 221
    .line 222
    move-object/from16 v2, p2

    .line 223
    .line 224
    invoke-virtual/range {v2 .. v20}, Lm0/e0;->b(Lm0/I;Ljava/lang/Object;JJJZZLm0/D;JJIJ)V

    .line 225
    .line 226
    .line 227
    return-object p2
.end method

.method public final p()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
