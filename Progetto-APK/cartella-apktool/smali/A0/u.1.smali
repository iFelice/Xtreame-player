.class public final synthetic LA0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:LA0/v;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lm0/k;

.field public final synthetic d:Lm0/i;

.field public final synthetic e:Z

.field public final synthetic f:LA0/h0;

.field public final synthetic g:Ljava/util/concurrent/Executor;

.field public final synthetic h:Lm0/r0;

.field public final synthetic i:LF/i;


# direct methods
.method public synthetic constructor <init>(LA0/v;Landroid/content/Context;Lm0/k;Lm0/i;ZLA0/h0;Lf6/c;LF/i;)V
    .locals 1

    .line 1
    sget-object v0, LD4/a;->G:LD4/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LA0/u;->a:LA0/v;

    .line 7
    .line 8
    iput-object p2, p0, LA0/u;->b:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, LA0/u;->c:Lm0/k;

    .line 11
    .line 12
    iput-object p4, p0, LA0/u;->d:Lm0/i;

    .line 13
    .line 14
    iput-boolean p5, p0, LA0/u;->e:Z

    .line 15
    .line 16
    iput-object p6, p0, LA0/u;->f:LA0/h0;

    .line 17
    .line 18
    iput-object v0, p0, LA0/u;->g:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object p7, p0, LA0/u;->h:Lm0/r0;

    .line 21
    .line 22
    iput-object p8, p0, LA0/u;->i:LF/i;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v11, v0, LA0/u;->i:LF/i;

    .line 4
    .line 5
    iget-object v12, v0, LA0/u;->a:LA0/v;

    .line 6
    .line 7
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget v1, LA0/x;->x:I

    .line 11
    .line 12
    invoke-static {}, Lp0/b;->t()Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    .line 15
    move-result-object v15

    .line 16
    iget-object v14, v0, LA0/u;->d:Lm0/i;

    .line 17
    .line 18
    invoke-static {v14}, Lm0/i;->g(Lm0/i;)Z

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    if-eqz v13, :cond_0

    .line 23
    .line 24
    sget-object v1, Lp0/b;->c:[I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Lp0/b;->b:[I

    .line 28
    .line 29
    :goto_0
    :try_start_0
    iget-object v2, v11, LF/i;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/opengl/EGLContext;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-static {v2, v15, v3, v1}, Lp0/b;->m(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, v11, LF/i;->I:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v15}, Lp0/b;->n(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v1
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    move-object v10, v1

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    iget-object v2, v11, LF/i;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroid/opengl/EGLContext;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-static {v2, v15, v3, v1}, Lp0/b;->m(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, v11, LF/i;->I:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v15}, Lp0/b;->n(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_1

    .line 80
    :goto_2
    invoke-virtual {v14}, Lm0/i;->a()Lm0/h;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x1

    .line 85
    iput v2, v1, Lm0/h;->c:I

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    iput-object v9, v1, Lm0/h;->f:[B

    .line 89
    .line 90
    new-instance v16, Lm0/i;

    .line 91
    .line 92
    iget v3, v1, Lm0/h;->a:I

    .line 93
    .line 94
    iget v4, v1, Lm0/h;->b:I

    .line 95
    .line 96
    iget v5, v1, Lm0/h;->c:I

    .line 97
    .line 98
    iget-object v6, v1, Lm0/h;->f:[B

    .line 99
    .line 100
    iget v7, v1, Lm0/h;->d:I

    .line 101
    .line 102
    iget v8, v1, Lm0/h;->e:I

    .line 103
    .line 104
    move-object/from16 v2, v16

    .line 105
    .line 106
    invoke-direct/range {v2 .. v8}, Lm0/i;-><init>(III[BII)V

    .line 107
    .line 108
    .line 109
    if-eqz v13, :cond_1

    .line 110
    .line 111
    move-object/from16 v3, v16

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_1
    move-object v3, v14

    .line 115
    :goto_3
    new-instance v23, LA0/N;

    .line 116
    .line 117
    iget-object v8, v0, LA0/u;->h:Lm0/r0;

    .line 118
    .line 119
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    new-instance v7, LA0/n;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-direct {v7, v8, v1}, LA0/n;-><init>(Lm0/r0;I)V

    .line 126
    .line 127
    .line 128
    iget-boolean v6, v12, LA0/v;->c:Z

    .line 129
    .line 130
    iget-boolean v5, v12, LA0/v;->d:Z

    .line 131
    .line 132
    iget-object v4, v0, LA0/u;->b:Landroid/content/Context;

    .line 133
    .line 134
    iget-object v2, v0, LA0/u;->f:LA0/h0;

    .line 135
    .line 136
    iget-object v1, v0, LA0/u;->g:Ljava/util/concurrent/Executor;

    .line 137
    .line 138
    iget-boolean v9, v12, LA0/v;->a:Z

    .line 139
    .line 140
    move-object/from16 v24, v1

    .line 141
    .line 142
    move-object/from16 v1, v23

    .line 143
    .line 144
    move-object/from16 v25, v2

    .line 145
    .line 146
    move-object v2, v4

    .line 147
    move-object/from16 v26, v4

    .line 148
    .line 149
    move-object v4, v11

    .line 150
    move/from16 v17, v5

    .line 151
    .line 152
    move-object/from16 v5, v25

    .line 153
    .line 154
    move/from16 v18, v6

    .line 155
    .line 156
    move-object/from16 v6, v24

    .line 157
    .line 158
    move-object/from16 v27, v8

    .line 159
    .line 160
    move v8, v9

    .line 161
    const/16 v28, 0x0

    .line 162
    .line 163
    move/from16 v9, v18

    .line 164
    .line 165
    move/from16 v16, v13

    .line 166
    .line 167
    move-object v13, v10

    .line 168
    move/from16 v10, v17

    .line 169
    .line 170
    invoke-direct/range {v1 .. v10}, LA0/N;-><init>(Landroid/content/Context;Lm0/i;LF/i;LA0/h0;Ljava/util/concurrent/Executor;LA0/n;ZZZ)V

    .line 171
    .line 172
    .line 173
    new-instance v9, LA0/D;

    .line 174
    .line 175
    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v1, Landroid/opengl/EGLContext;

    .line 178
    .line 179
    iget-object v2, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 180
    .line 181
    move-object/from16 v17, v2

    .line 182
    .line 183
    check-cast v17, Landroid/opengl/EGLSurface;

    .line 184
    .line 185
    iget-boolean v10, v0, LA0/u;->e:Z

    .line 186
    .line 187
    move/from16 v2, v16

    .line 188
    .line 189
    move-object v13, v9

    .line 190
    move-object/from16 v29, v14

    .line 191
    .line 192
    move-object/from16 v14, v26

    .line 193
    .line 194
    move-object v4, v15

    .line 195
    move-object/from16 v16, v1

    .line 196
    .line 197
    move-object/from16 v18, v29

    .line 198
    .line 199
    move-object/from16 v19, v25

    .line 200
    .line 201
    move-object/from16 v20, v24

    .line 202
    .line 203
    move-object/from16 v21, v27

    .line 204
    .line 205
    move/from16 v22, v10

    .line 206
    .line 207
    invoke-direct/range {v13 .. v22}, LA0/D;-><init>(Landroid/content/Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Lm0/i;LA0/h0;Ljava/util/concurrent/Executor;Lm0/r0;Z)V

    .line 208
    .line 209
    .line 210
    new-instance v14, LA0/x;

    .line 211
    .line 212
    iget-boolean v1, v12, LA0/v;->b:Z

    .line 213
    .line 214
    if-eqz v1, :cond_2

    .line 215
    .line 216
    new-instance v1, LA0/U;

    .line 217
    .line 218
    move-object/from16 v3, v26

    .line 219
    .line 220
    invoke-direct {v1, v3, v2}, LA0/U;-><init>(Landroid/content/Context;Z)V

    .line 221
    .line 222
    .line 223
    move-object v13, v1

    .line 224
    goto :goto_4

    .line 225
    :cond_2
    move-object/from16 v3, v26

    .line 226
    .line 227
    move-object/from16 v13, v28

    .line 228
    .line 229
    :goto_4
    iget-object v12, v0, LA0/u;->c:Lm0/k;

    .line 230
    .line 231
    move-object v1, v14

    .line 232
    move-object v2, v3

    .line 233
    move-object v3, v11

    .line 234
    move-object/from16 v5, v23

    .line 235
    .line 236
    move-object/from16 v6, v25

    .line 237
    .line 238
    move-object/from16 v7, v27

    .line 239
    .line 240
    move-object/from16 v8, v24

    .line 241
    .line 242
    move-object/from16 v11, v29

    .line 243
    .line 244
    invoke-direct/range {v1 .. v13}, LA0/x;-><init>(Landroid/content/Context;LF/i;Landroid/opengl/EGLDisplay;LA0/N;LA0/h0;Lm0/r0;Ljava/util/concurrent/Executor;LA0/D;ZLm0/i;Lm0/k;LA0/U;)V

    .line 245
    .line 246
    .line 247
    return-object v14
.end method
