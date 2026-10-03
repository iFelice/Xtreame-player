.class public final LW6/b;
.super Lf/H;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public d:F

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LT6/a;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/H;-><init>(LT6/a;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LW6/b;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-boolean p2, p0, LW6/b;->c:Z

    .line 12
    .line 13
    iput p3, p0, LW6/b;->d:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final s(I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lf/H;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, LT6/a;

    .line 8
    .line 9
    instance-of v3, v2, LT6/e;

    .line 10
    .line 11
    if-eqz v3, :cond_e

    .line 12
    .line 13
    iget-object v2, v1, Lf/H;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, LV6/b;

    .line 16
    .line 17
    iget v2, v2, LV6/b;->t0:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    :goto_0
    if-ge v5, v2, :cond_c

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Lf/H;->f(I)[D

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v1, v5, v6}, Lf/H;->a(I[D)V

    .line 28
    .line 29
    .line 30
    iget-object v7, v1, Lf/H;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, LV6/b;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    aget-wide v7, v6, v3

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    aget-wide v10, v6, v9

    .line 41
    .line 42
    add-double v12, v7, v10

    .line 43
    .line 44
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 45
    .line 46
    div-double/2addr v12, v14

    .line 47
    const/4 v3, 0x2

    .line 48
    aget-wide v16, v6, v3

    .line 49
    .line 50
    const/16 v18, 0x3

    .line 51
    .line 52
    aget-wide v18, v6, v18

    .line 53
    .line 54
    add-double v20, v16, v18

    .line 55
    .line 56
    div-double v20, v20, v14

    .line 57
    .line 58
    sub-double/2addr v10, v7

    .line 59
    sub-double v18, v18, v16

    .line 60
    .line 61
    iget-boolean v6, v1, LW6/b;->c:Z

    .line 62
    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    iget-object v6, v1, Lf/H;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, LV6/b;

    .line 68
    .line 69
    iget-boolean v7, v6, LV6/b;->n0:Z

    .line 70
    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    if-eq v0, v9, :cond_0

    .line 74
    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    :cond_0
    iget v7, v1, LW6/b;->d:F

    .line 78
    .line 79
    float-to-double v7, v7

    .line 80
    div-double/2addr v10, v7

    .line 81
    :cond_1
    iget-boolean v6, v6, LV6/b;->o0:Z

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    if-eq v0, v3, :cond_2

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    :cond_2
    iget v6, v1, LW6/b;->d:F

    .line 90
    .line 91
    float-to-double v6, v6

    .line 92
    div-double v18, v18, v6

    .line 93
    .line 94
    :cond_3
    :goto_1
    move-wide/from16 v6, v18

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-object v6, v1, Lf/H;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v6, LV6/b;

    .line 100
    .line 101
    iget-boolean v7, v6, LV6/b;->n0:Z

    .line 102
    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    if-eq v0, v9, :cond_5

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    :cond_5
    iget v7, v1, LW6/b;->d:F

    .line 110
    .line 111
    float-to-double v7, v7

    .line 112
    mul-double v10, v10, v7

    .line 113
    .line 114
    :cond_6
    iget-boolean v6, v6, LV6/b;->o0:Z

    .line 115
    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    if-eq v0, v3, :cond_7

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    :cond_7
    iget v6, v1, LW6/b;->d:F

    .line 123
    .line 124
    float-to-double v6, v6

    .line 125
    mul-double v18, v18, v6

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :goto_2
    iget-object v8, v1, Lf/H;->b:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v8, LV6/b;

    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object v8, v1, Lf/H;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v8, LV6/b;

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const-wide/16 v3, 0x0

    .line 143
    .line 144
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 145
    .line 146
    .line 147
    move-result-wide v10

    .line 148
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 149
    .line 150
    .line 151
    move-result-wide v3

    .line 152
    iget-object v6, v1, Lf/H;->b:Ljava/lang/Object;

    .line 153
    .line 154
    move-object v7, v6

    .line 155
    check-cast v7, LV6/b;

    .line 156
    .line 157
    iget-boolean v7, v7, LV6/b;->n0:Z

    .line 158
    .line 159
    if-eqz v7, :cond_9

    .line 160
    .line 161
    if-eq v0, v9, :cond_8

    .line 162
    .line 163
    if-nez v0, :cond_9

    .line 164
    .line 165
    :cond_8
    div-double/2addr v10, v14

    .line 166
    sub-double v8, v12, v10

    .line 167
    .line 168
    add-double/2addr v12, v10

    .line 169
    check-cast v6, LV6/b;

    .line 170
    .line 171
    invoke-virtual {v6, v5, v8, v9}, LV6/b;->k(ID)V

    .line 172
    .line 173
    .line 174
    iget-object v6, v1, Lf/H;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v6, LV6/b;

    .line 177
    .line 178
    invoke-virtual {v6, v5, v12, v13}, LV6/b;->j(ID)V

    .line 179
    .line 180
    .line 181
    :cond_9
    iget-object v6, v1, Lf/H;->b:Ljava/lang/Object;

    .line 182
    .line 183
    move-object v8, v6

    .line 184
    check-cast v8, LV6/b;

    .line 185
    .line 186
    iget-boolean v8, v8, LV6/b;->o0:Z

    .line 187
    .line 188
    if-eqz v8, :cond_b

    .line 189
    .line 190
    const/4 v8, 0x2

    .line 191
    if-eq v0, v8, :cond_a

    .line 192
    .line 193
    if-nez v0, :cond_b

    .line 194
    .line 195
    :cond_a
    div-double/2addr v3, v14

    .line 196
    sub-double v8, v20, v3

    .line 197
    .line 198
    add-double v3, v20, v3

    .line 199
    .line 200
    check-cast v6, LV6/b;

    .line 201
    .line 202
    invoke-virtual {v6, v5, v8, v9}, LV6/b;->m(ID)V

    .line 203
    .line 204
    .line 205
    iget-object v6, v1, Lf/H;->b:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v6, LV6/b;

    .line 208
    .line 209
    invoke-virtual {v6, v5, v3, v4}, LV6/b;->l(ID)V

    .line 210
    .line 211
    .line 212
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_c
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, v1, LW6/b;->e:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    if-nez v2, :cond_d

    .line 229
    .line 230
    monitor-exit p0

    .line 231
    return-void

    .line 232
    :cond_d
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    monitor-exit p0

    .line 243
    throw v0

    .line 244
    :cond_e
    invoke-static {v2}, LA0/O;->G(LT6/a;)V

    .line 245
    .line 246
    .line 247
    const/4 v0, 0x0

    .line 248
    throw v0
.end method

.method public final declared-synchronized t()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LW6/b;->e:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method
