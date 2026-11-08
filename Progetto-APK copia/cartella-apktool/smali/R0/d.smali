.class public final synthetic LR0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR0/n;
.implements Lb3/h;


# instance fields
.field public final synthetic G:Ljava/lang/String;

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LR0/k;Ljava/lang/Object;Landroid/graphics/Point;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR0/d;->H:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p4, p0, LR0/d;->G:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, LR0/d;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, LR0/d;->J:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, LR0/d;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb3/j;

    .line 4
    .line 5
    iget-object v1, p0, LR0/d;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v2, p0, LR0/d;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lm2/i;

    .line 12
    .line 13
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    sget-object v3, Lb3/j;->L:LR2/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    new-array v3, v3, [Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, LR0/d;->G:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v3, LO0/A;

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    invoke-direct {v3, v0, v1, v2, v4}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v3}, Lb3/j;->c0(Landroid/database/Cursor;Lb3/h;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, LX2/a;

    .line 40
    .line 41
    return-object p1
.end method

.method public final d(ILm0/g0;[I)Lz4/d0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    iget-object v1, v0, LR0/d;->H:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v11, v1

    .line 8
    check-cast v11, LR0/k;

    .line 9
    .line 10
    iget-object v1, v0, LR0/d;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [I

    .line 13
    .line 14
    iget-object v2, v0, LR0/d;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/graphics/Point;

    .line 17
    .line 18
    aget v12, v1, p1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v1, v11, Lm0/k0;->i:I

    .line 26
    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v2, v11, Lm0/k0;->j:I

    .line 33
    .line 34
    :goto_1
    iget-boolean v3, v11, Lm0/k0;->l:Z

    .line 35
    .line 36
    const v14, 0x7fffffff

    .line 37
    .line 38
    .line 39
    if-eq v1, v14, :cond_9

    .line 40
    .line 41
    if-ne v2, v14, :cond_2

    .line 42
    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_2
    const/4 v4, 0x0

    .line 46
    const v5, 0x7fffffff

    .line 47
    .line 48
    .line 49
    :goto_2
    iget v6, v10, Lm0/g0;->a:I

    .line 50
    .line 51
    if-ge v4, v6, :cond_8

    .line 52
    .line 53
    iget-object v6, v10, Lm0/g0;->d:[Lm0/t;

    .line 54
    .line 55
    aget-object v6, v6, v4

    .line 56
    .line 57
    iget v7, v6, Lm0/t;->v:I

    .line 58
    .line 59
    if-lez v7, :cond_7

    .line 60
    .line 61
    iget v8, v6, Lm0/t;->w:I

    .line 62
    .line 63
    if-lez v8, :cond_7

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    if-le v7, v8, :cond_3

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/4 v9, 0x0

    .line 72
    :goto_3
    if-le v1, v2, :cond_4

    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const/4 v13, 0x0

    .line 77
    :goto_4
    if-eq v9, v13, :cond_5

    .line 78
    .line 79
    move v9, v1

    .line 80
    move v13, v2

    .line 81
    goto :goto_5

    .line 82
    :cond_5
    move v13, v1

    .line 83
    move v9, v2

    .line 84
    :goto_5
    mul-int v15, v7, v9

    .line 85
    .line 86
    mul-int v14, v8, v13

    .line 87
    .line 88
    if-lt v15, v14, :cond_6

    .line 89
    .line 90
    new-instance v9, Landroid/graphics/Point;

    .line 91
    .line 92
    invoke-static {v14, v7}, Lp0/M;->f(II)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-direct {v9, v13, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_6
    new-instance v7, Landroid/graphics/Point;

    .line 101
    .line 102
    invoke-static {v15, v8}, Lp0/M;->f(II)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    invoke-direct {v7, v13, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 107
    .line 108
    .line 109
    move-object v9, v7

    .line 110
    :goto_6
    iget v6, v6, Lm0/t;->v:I

    .line 111
    .line 112
    mul-int v7, v6, v8

    .line 113
    .line 114
    iget v13, v9, Landroid/graphics/Point;->x:I

    .line 115
    .line 116
    int-to-float v13, v13

    .line 117
    const v14, 0x3f7ae148    # 0.98f

    .line 118
    .line 119
    .line 120
    mul-float v13, v13, v14

    .line 121
    .line 122
    float-to-int v13, v13

    .line 123
    if-lt v6, v13, :cond_7

    .line 124
    .line 125
    iget v6, v9, Landroid/graphics/Point;->y:I

    .line 126
    .line 127
    int-to-float v6, v6

    .line 128
    mul-float v6, v6, v14

    .line 129
    .line 130
    float-to-int v6, v6

    .line 131
    if-lt v8, v6, :cond_7

    .line 132
    .line 133
    if-ge v7, v5, :cond_7

    .line 134
    .line 135
    move v5, v7

    .line 136
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    const v14, 0x7fffffff

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    move v13, v5

    .line 143
    goto :goto_8

    .line 144
    :cond_9
    :goto_7
    const v13, 0x7fffffff

    .line 145
    .line 146
    .line 147
    :goto_8
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    const/4 v15, 0x0

    .line 152
    :goto_9
    iget v1, v10, Lm0/g0;->a:I

    .line 153
    .line 154
    if-ge v15, v1, :cond_c

    .line 155
    .line 156
    iget-object v1, v10, Lm0/g0;->d:[Lm0/t;

    .line 157
    .line 158
    aget-object v1, v1, v15

    .line 159
    .line 160
    invoke-virtual {v1}, Lm0/t;->b()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const v9, 0x7fffffff

    .line 165
    .line 166
    .line 167
    if-eq v13, v9, :cond_b

    .line 168
    .line 169
    const/4 v2, -0x1

    .line 170
    if-eq v1, v2, :cond_a

    .line 171
    .line 172
    if-gt v1, v13, :cond_a

    .line 173
    .line 174
    goto :goto_a

    .line 175
    :cond_a
    const/16 v16, 0x0

    .line 176
    .line 177
    goto :goto_b

    .line 178
    :cond_b
    :goto_a
    const/16 v16, 0x1

    .line 179
    .line 180
    :goto_b
    new-instance v8, LR0/p;

    .line 181
    .line 182
    aget v6, p3, v15

    .line 183
    .line 184
    iget-object v7, v0, LR0/d;->G:Ljava/lang/String;

    .line 185
    .line 186
    move-object v1, v8

    .line 187
    move/from16 v2, p1

    .line 188
    .line 189
    move-object/from16 v3, p2

    .line 190
    .line 191
    move v4, v15

    .line 192
    move-object v5, v11

    .line 193
    move-object v0, v8

    .line 194
    move v8, v12

    .line 195
    const v17, 0x7fffffff

    .line 196
    .line 197
    .line 198
    move/from16 v9, v16

    .line 199
    .line 200
    invoke-direct/range {v1 .. v9}, LR0/p;-><init>(ILm0/g0;ILR0/k;ILjava/lang/String;IZ)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v14, v0}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    add-int/lit8 v15, v15, 0x1

    .line 207
    .line 208
    move-object/from16 v0, p0

    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_c
    invoke-virtual {v14}, Lz4/E;->m0()Lz4/d0;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    return-object v0
.end method
