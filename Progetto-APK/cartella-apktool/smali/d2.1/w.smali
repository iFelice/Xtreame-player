.class public abstract Ld2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lm2/q;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "randomUUID()"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Ld2/w;->a:Ljava/util/UUID;

    .line 16
    .line 17
    new-instance v1, Lm2/q;

    .line 18
    .line 19
    iget-object v2, v0, Ld2/w;->a:Ljava/util/UUID;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v2, "id.toString()"

    .line 26
    .line 27
    invoke-static {v4, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/16 v28, 0x0

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const-wide/16 v10, 0x0

    .line 43
    .line 44
    const-wide/16 v12, 0x0

    .line 45
    .line 46
    const-wide/16 v14, 0x0

    .line 47
    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    const-wide/16 v19, 0x0

    .line 53
    .line 54
    const-wide/16 v21, 0x0

    .line 55
    .line 56
    const-wide/16 v23, 0x0

    .line 57
    .line 58
    const-wide/16 v25, 0x0

    .line 59
    .line 60
    const/16 v27, 0x0

    .line 61
    .line 62
    const/16 v29, 0x0

    .line 63
    .line 64
    const v30, 0xffffa

    .line 65
    .line 66
    .line 67
    const/16 v31, 0x0

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    invoke-direct/range {v3 .. v31}, Lm2/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ld2/e;Ld2/e;JJJLd2/d;IIJJJJZIIII)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Ld2/w;->b:Lm2/q;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    filled-new-array {v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    invoke-static {v3}, Ly4/k;->X(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    aget-object v1, v1, v3

    .line 95
    .line 96
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iput-object v2, v0, Ld2/w;->c:Ljava/util/LinkedHashSet;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a()Ld2/p;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ld2/o;

    .line 5
    .line 6
    new-instance v2, Ld2/p;

    .line 7
    .line 8
    iget-object v3, v1, Ld2/w;->a:Ljava/util/UUID;

    .line 9
    .line 10
    iget-object v4, v1, Ld2/w;->b:Lm2/q;

    .line 11
    .line 12
    iget-object v1, v1, Ld2/w;->c:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v2, v3, v4, v1}, Ld2/x;-><init>(Ljava/util/UUID;Lm2/q;Ljava/util/LinkedHashSet;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Ld2/w;->b:Lm2/q;

    .line 18
    .line 19
    iget-object v1, v1, Lm2/q;->j:Ld2/d;

    .line 20
    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v4, 0x18

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    iget-object v4, v1, Ld2/d;->h:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    xor-int/2addr v4, v5

    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    :cond_0
    iget-boolean v4, v1, Ld2/d;->d:Z

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    iget-boolean v4, v1, Ld2/d;->b:Z

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    const/16 v4, 0x17

    .line 46
    .line 47
    if-lt v3, v4, :cond_1

    .line 48
    .line 49
    iget-boolean v1, v1, Ld2/d;->c:Z

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 57
    :goto_1
    iget-object v3, v0, Ld2/w;->b:Lm2/q;

    .line 58
    .line 59
    iget-boolean v4, v3, Lm2/q;->q:Z

    .line 60
    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    xor-int/2addr v1, v5

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-wide v3, v3, Lm2/q;->g:J

    .line 67
    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    cmp-long v1, v3, v5

    .line 71
    .line 72
    if-gtz v1, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v2, "Expedited jobs cannot be delayed"

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string v2, "Expedited jobs only support network and storage constraints"

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v3, "randomUUID()"

    .line 104
    .line 105
    invoke-static {v1, v3}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Ld2/w;->a:Ljava/util/UUID;

    .line 109
    .line 110
    new-instance v3, Lm2/q;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-string v1, "id.toString()"

    .line 117
    .line 118
    invoke-static {v5, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Ld2/w;->b:Lm2/q;

    .line 122
    .line 123
    const-string v4, "other"

    .line 124
    .line 125
    invoke-static {v1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v6, v1, Lm2/q;->b:I

    .line 129
    .line 130
    iget-object v8, v1, Lm2/q;->d:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v9, Ld2/e;

    .line 133
    .line 134
    iget-object v7, v1, Lm2/q;->e:Ld2/e;

    .line 135
    .line 136
    invoke-direct {v9, v7}, Ld2/e;-><init>(Ld2/e;)V

    .line 137
    .line 138
    .line 139
    new-instance v10, Ld2/e;

    .line 140
    .line 141
    iget-object v7, v1, Lm2/q;->f:Ld2/e;

    .line 142
    .line 143
    invoke-direct {v10, v7}, Ld2/e;-><init>(Ld2/e;)V

    .line 144
    .line 145
    .line 146
    new-instance v33, Ld2/d;

    .line 147
    .line 148
    iget-object v7, v1, Lm2/q;->j:Ld2/d;

    .line 149
    .line 150
    invoke-static {v7, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v4, v7, Ld2/d;->e:Z

    .line 154
    .line 155
    iget-object v15, v7, Ld2/d;->h:Ljava/util/Set;

    .line 156
    .line 157
    iget v12, v7, Ld2/d;->a:I

    .line 158
    .line 159
    iget-boolean v13, v7, Ld2/d;->b:Z

    .line 160
    .line 161
    iget-boolean v14, v7, Ld2/d;->c:Z

    .line 162
    .line 163
    iget-boolean v11, v7, Ld2/d;->d:Z

    .line 164
    .line 165
    move-object/from16 v34, v9

    .line 166
    .line 167
    move-object/from16 v35, v10

    .line 168
    .line 169
    iget-wide v9, v7, Ld2/d;->f:J

    .line 170
    .line 171
    move-object/from16 v36, v8

    .line 172
    .line 173
    iget-wide v7, v7, Ld2/d;->g:J

    .line 174
    .line 175
    move/from16 v16, v11

    .line 176
    .line 177
    move-object/from16 v11, v33

    .line 178
    .line 179
    move-object/from16 v21, v15

    .line 180
    .line 181
    move/from16 v15, v16

    .line 182
    .line 183
    move/from16 v16, v4

    .line 184
    .line 185
    move-wide/from16 v17, v9

    .line 186
    .line 187
    move-wide/from16 v19, v7

    .line 188
    .line 189
    invoke-direct/range {v11 .. v21}, Ld2/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 190
    .line 191
    .line 192
    iget-wide v7, v1, Lm2/q;->n:J

    .line 193
    .line 194
    move-wide/from16 v22, v7

    .line 195
    .line 196
    iget-boolean v4, v1, Lm2/q;->q:Z

    .line 197
    .line 198
    move/from16 v28, v4

    .line 199
    .line 200
    iget v4, v1, Lm2/q;->s:I

    .line 201
    .line 202
    move/from16 v30, v4

    .line 203
    .line 204
    iget-object v7, v1, Lm2/q;->c:Ljava/lang/String;

    .line 205
    .line 206
    iget-wide v11, v1, Lm2/q;->g:J

    .line 207
    .line 208
    iget-wide v13, v1, Lm2/q;->h:J

    .line 209
    .line 210
    iget-wide v8, v1, Lm2/q;->i:J

    .line 211
    .line 212
    move-wide v15, v8

    .line 213
    iget v4, v1, Lm2/q;->k:I

    .line 214
    .line 215
    move/from16 v18, v4

    .line 216
    .line 217
    iget v4, v1, Lm2/q;->l:I

    .line 218
    .line 219
    move/from16 v19, v4

    .line 220
    .line 221
    iget-wide v8, v1, Lm2/q;->m:J

    .line 222
    .line 223
    move-wide/from16 v20, v8

    .line 224
    .line 225
    iget-wide v8, v1, Lm2/q;->o:J

    .line 226
    .line 227
    move-wide/from16 v24, v8

    .line 228
    .line 229
    iget-wide v8, v1, Lm2/q;->p:J

    .line 230
    .line 231
    move-wide/from16 v26, v8

    .line 232
    .line 233
    iget v1, v1, Lm2/q;->r:I

    .line 234
    .line 235
    move/from16 v29, v1

    .line 236
    .line 237
    const/16 v32, 0x0

    .line 238
    .line 239
    const/high16 v31, 0x80000

    .line 240
    .line 241
    move-object v4, v3

    .line 242
    move-object/from16 v8, v36

    .line 243
    .line 244
    move-object/from16 v9, v34

    .line 245
    .line 246
    move-object/from16 v10, v35

    .line 247
    .line 248
    move-object/from16 v17, v33

    .line 249
    .line 250
    invoke-direct/range {v4 .. v32}, Lm2/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ld2/e;Ld2/e;JJJLd2/d;IIJJJJZIIII)V

    .line 251
    .line 252
    .line 253
    iput-object v3, v0, Ld2/w;->b:Lm2/q;

    .line 254
    .line 255
    return-object v2
.end method
