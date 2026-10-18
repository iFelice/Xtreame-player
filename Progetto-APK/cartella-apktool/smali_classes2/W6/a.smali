.class public final LW6/a;
.super Lf/H;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LT6/a;)V
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
    iput-object p1, p0, LW6/a;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final s(FFFF)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lf/H;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LT6/a;

    .line 6
    .line 7
    instance-of v2, v0, LT6/e;

    .line 8
    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    iget-object v0, v1, Lf/H;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LV6/b;

    .line 14
    .line 15
    iget v2, v0, LV6/b;->t0:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lf/H;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, LT6/a;

    .line 23
    .line 24
    check-cast v0, LT6/e;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Lf/H;->f(I)[D

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v7, v0, LT6/e;->M:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, [D

    .line 45
    .line 46
    invoke-virtual {v1, v5, v6}, Lf/H;->a(I[D)V

    .line 47
    .line 48
    .line 49
    move/from16 v7, p1

    .line 50
    .line 51
    move/from16 v8, p2

    .line 52
    .line 53
    invoke-virtual {v0, v7, v8, v5}, LT6/e;->v(FFI)[D

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    move/from16 v10, p3

    .line 58
    .line 59
    move/from16 v11, p4

    .line 60
    .line 61
    invoke-virtual {v0, v10, v11, v5}, LT6/e;->v(FFI)[D

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    aget-wide v13, v9, v4

    .line 66
    .line 67
    aget-wide v15, v12, v4

    .line 68
    .line 69
    sub-double/2addr v13, v15

    .line 70
    const/4 v15, 0x1

    .line 71
    aget-wide v16, v9, v15

    .line 72
    .line 73
    aget-wide v18, v12, v15

    .line 74
    .line 75
    sub-double v3, v16, v18

    .line 76
    .line 77
    aget-wide v16, v6, v15

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    aget-wide v18, v6, v12

    .line 81
    .line 82
    sub-double v16, v16, v18

    .line 83
    .line 84
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v16

    .line 88
    const/16 v18, 0x3

    .line 89
    .line 90
    aget-wide v19, v6, v18

    .line 91
    .line 92
    const/16 v21, 0x2

    .line 93
    .line 94
    aget-wide v22, v6, v21

    .line 95
    .line 96
    sub-double v19, v19, v22

    .line 97
    .line 98
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v19

    .line 102
    div-double v16, v16, v19

    .line 103
    .line 104
    iget-object v9, v1, Lf/H;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v9, LV6/b;

    .line 107
    .line 108
    invoke-static {v9}, LT6/a;->j(LV6/b;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_0

    .line 113
    .line 114
    neg-double v3, v3

    .line 115
    mul-double v3, v3, v16

    .line 116
    .line 117
    div-double v13, v13, v16

    .line 118
    .line 119
    move-wide/from16 v24, v3

    .line 120
    .line 121
    move-wide v3, v13

    .line 122
    move-wide/from16 v13, v24

    .line 123
    .line 124
    :cond_0
    iget-object v9, v1, Lf/H;->b:Ljava/lang/Object;

    .line 125
    .line 126
    move-object v12, v9

    .line 127
    check-cast v12, LV6/b;

    .line 128
    .line 129
    iget-boolean v12, v12, LV6/b;->l0:Z

    .line 130
    .line 131
    if-eqz v12, :cond_1

    .line 132
    .line 133
    const/4 v12, 0x0

    .line 134
    aget-wide v16, v6, v12

    .line 135
    .line 136
    add-double v7, v16, v13

    .line 137
    .line 138
    aget-wide v15, v6, v15

    .line 139
    .line 140
    add-double/2addr v13, v15

    .line 141
    check-cast v9, LV6/b;

    .line 142
    .line 143
    invoke-virtual {v9, v5, v7, v8}, LV6/b;->k(ID)V

    .line 144
    .line 145
    .line 146
    iget-object v7, v1, Lf/H;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v7, LV6/b;

    .line 149
    .line 150
    invoke-virtual {v7, v5, v13, v14}, LV6/b;->j(ID)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    const/4 v12, 0x0

    .line 155
    :goto_1
    iget-object v7, v1, Lf/H;->b:Ljava/lang/Object;

    .line 156
    .line 157
    move-object v8, v7

    .line 158
    check-cast v8, LV6/b;

    .line 159
    .line 160
    iget-boolean v8, v8, LV6/b;->m0:Z

    .line 161
    .line 162
    if-eqz v8, :cond_2

    .line 163
    .line 164
    aget-wide v8, v6, v21

    .line 165
    .line 166
    add-double/2addr v8, v3

    .line 167
    aget-wide v13, v6, v18

    .line 168
    .line 169
    add-double/2addr v13, v3

    .line 170
    check-cast v7, LV6/b;

    .line 171
    .line 172
    invoke-virtual {v7, v5, v8, v9}, LV6/b;->m(ID)V

    .line 173
    .line 174
    .line 175
    iget-object v3, v1, Lf/H;->b:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v3, LV6/b;

    .line 178
    .line 179
    invoke-virtual {v3, v5, v13, v14}, LV6/b;->l(ID)V

    .line 180
    .line 181
    .line 182
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_3
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, v1, LW6/a;->c:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-nez v2, :cond_4

    .line 199
    .line 200
    monitor-exit p0

    .line 201
    return-void

    .line 202
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const/4 v0, 0x0

    .line 210
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    monitor-exit p0

    .line 213
    throw v0

    .line 214
    :cond_5
    invoke-static {v0}, LA0/O;->G(LT6/a;)V

    .line 215
    .line 216
    .line 217
    const/4 v0, 0x0

    .line 218
    throw v0
.end method
