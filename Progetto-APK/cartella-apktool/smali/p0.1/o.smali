.class public final Lp0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lp0/m;

.field public final c:[Lp0/n;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lp0/M;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p1, p3}, Lp0/M;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, p2, p1}, Lp0/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, v0, Lp0/o;->a:I

    .line 4
    invoke-static {}, Lp0/b;->e()V

    const v2, 0x8b31

    move-object/from16 v3, p1

    .line 5
    invoke-static {v1, v2, v3}, Lp0/o;->a(IILjava/lang/String;)V

    const v2, 0x8b30

    move-object/from16 v3, p2

    .line 6
    invoke-static {v1, v2, v3}, Lp0/o;->a(IILjava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x0

    .line 8
    filled-new-array {v2}, [I

    move-result-object v3

    const v4, 0x8b82

    .line 9
    invoke-static {v1, v4, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 10
    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to link shader program: \n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5, v3}, Lp0/b;->f(Ljava/lang/String;Z)V

    .line 13
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lp0/o;->d:Ljava/util/HashMap;

    .line 15
    new-array v3, v4, [I

    const v5, 0x8b89

    .line 16
    invoke-static {v1, v5, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 17
    aget v1, v3, v2

    new-array v1, v1, [Lp0/m;

    iput-object v1, v0, Lp0/o;->b:[Lp0/m;

    const/4 v1, 0x0

    .line 18
    :goto_1
    aget v5, v3, v2

    if-ge v1, v5, :cond_3

    .line 19
    iget v15, v0, Lp0/o;->a:I

    .line 20
    new-array v5, v4, [I

    const v6, 0x8b8a

    .line 21
    invoke-static {v15, v6, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 22
    aget v14, v5, v2

    new-array v13, v14, [B

    .line 23
    new-array v8, v4, [I

    new-array v10, v4, [I

    new-array v12, v4, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v5, v15

    move v6, v1

    move v7, v14

    move-object/from16 p1, v13

    move/from16 v13, v16

    move v4, v14

    move-object/from16 v14, p1

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 24
    new-instance v5, Ljava/lang/String;

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v4, :cond_2

    move-object/from16 v6, p1

    .line 25
    aget-byte v7, v6, v14

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p1

    move v14, v4

    .line 26
    :goto_3
    invoke-direct {v5, v6, v2, v14}, Ljava/lang/String;-><init>([BII)V

    move/from16 v4, v18

    .line 27
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    .line 28
    new-instance v6, Lp0/m;

    invoke-direct {v6, v5, v4}, Lp0/m;-><init>(Ljava/lang/String;I)V

    .line 29
    iget-object v4, v0, Lp0/o;->b:[Lp0/m;

    aput-object v6, v4, v1

    .line 30
    iget-object v4, v0, Lp0/o;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .line 31
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lp0/o;->e:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 32
    new-array v3, v1, [I

    .line 33
    iget v1, v0, Lp0/o;->a:I

    const v4, 0x8b86

    invoke-static {v1, v4, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 34
    aget v1, v3, v2

    new-array v1, v1, [Lp0/n;

    iput-object v1, v0, Lp0/o;->c:[Lp0/n;

    const/4 v1, 0x0

    .line 35
    :goto_4
    aget v4, v3, v2

    if-ge v1, v4, :cond_6

    .line 36
    iget v15, v0, Lp0/o;->a:I

    const/4 v14, 0x1

    .line 37
    new-array v4, v14, [I

    const v5, 0x8b87

    .line 38
    invoke-static {v15, v5, v4, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 39
    new-array v13, v14, [I

    .line 40
    aget v12, v4, v2

    new-array v11, v12, [B

    .line 41
    new-array v7, v14, [I

    new-array v9, v14, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v4, v15

    move v5, v1

    move v6, v12

    move-object/from16 p1, v11

    move-object v11, v13

    move v2, v12

    move/from16 v12, v16

    move-object/from16 v16, v13

    move-object/from16 v13, p1

    const/16 v18, 0x1

    move/from16 v14, v17

    invoke-static/range {v4 .. v14}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 42
    new-instance v4, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v2, :cond_5

    move-object/from16 v5, p1

    .line 43
    aget-byte v6, v5, v12

    if-nez v6, :cond_4

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 p1, v5

    goto :goto_5

    :cond_5
    move-object/from16 v5, p1

    move v12, v2

    goto :goto_6

    .line 44
    :goto_7
    invoke-direct {v4, v5, v2, v12}, Ljava/lang/String;-><init>([BII)V

    .line 45
    invoke-static {v15, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 46
    new-instance v6, Lp0/n;

    aget v7, v16, v2

    invoke-direct {v6, v4, v5, v7}, Lp0/n;-><init>(Ljava/lang/String;II)V

    .line 47
    iget-object v5, v0, Lp0/o;->c:[Lp0/n;

    aput-object v6, v5, v1

    .line 48
    iget-object v5, v0, Lp0/o;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 49
    :cond_6
    invoke-static {}, Lp0/b;->e()V

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x8b81

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 20
    .line 21
    .line 22
    aget v1, v1, v0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", source: \n"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2, v0}, Lp0/b;->f(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lp0/b;->e()V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lp0/o;->b:[Lp0/m;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-object v10, v4, Lp0/m;->b:Ljava/nio/FloatBuffer;

    .line 11
    .line 12
    const-string v5, "call setBuffer before bind"

    .line 13
    .line 14
    invoke-static {v10, v5}, Lcom/google/android/gms/internal/measurement/H1;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v5, 0x8892

    .line 18
    .line 19
    .line 20
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 21
    .line 22
    .line 23
    iget v6, v4, Lp0/m;->c:I

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    iget v5, v4, Lp0/m;->a:I

    .line 28
    .line 29
    const/16 v7, 0x1406

    .line 30
    .line 31
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 32
    .line 33
    .line 34
    iget v4, v4, Lp0/m;->a:I

    .line 35
    .line 36
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lp0/b;->e()V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lp0/o;->c:[Lp0/n;

    .line 46
    .line 47
    array-length v1, v0

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_1
    if-ge v3, v1, :cond_a

    .line 50
    .line 51
    aget-object v4, v0, v3

    .line 52
    .line 53
    iget-boolean v5, p0, Lp0/o;->f:Z

    .line 54
    .line 55
    iget-object v6, v4, Lp0/n;->d:[I

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    const/16 v8, 0x1404

    .line 59
    .line 60
    iget v9, v4, Lp0/n;->a:I

    .line 61
    .line 62
    iget v10, v4, Lp0/n;->b:I

    .line 63
    .line 64
    if-eq v10, v8, :cond_9

    .line 65
    .line 66
    const/16 v8, 0x1406

    .line 67
    .line 68
    iget-object v11, v4, Lp0/n;->c:[F

    .line 69
    .line 70
    if-eq v10, v8, :cond_8

    .line 71
    .line 72
    const v8, 0x8b5e    # 4.9996E-41f

    .line 73
    .line 74
    .line 75
    if-eq v10, v8, :cond_1

    .line 76
    .line 77
    const v12, 0x8be7

    .line 78
    .line 79
    .line 80
    if-eq v10, v12, :cond_1

    .line 81
    .line 82
    const v12, 0x8d66

    .line 83
    .line 84
    .line 85
    if-eq v10, v12, :cond_1

    .line 86
    .line 87
    packed-switch v10, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    packed-switch v10, :pswitch_data_1

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string v1, "Unexpected uniform type: "

    .line 96
    .line 97
    invoke-static {v1, v10}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :pswitch_0
    invoke-static {v9, v7, v2, v11, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lp0/b;->e()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :pswitch_1
    invoke-static {v9, v7, v2, v11, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lp0/b;->e()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :pswitch_2
    invoke-static {v9, v7, v6, v2}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lp0/b;->e()V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :pswitch_3
    invoke-static {v9, v7, v6, v2}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lp0/b;->e()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_5

    .line 136
    .line 137
    :pswitch_4
    invoke-static {v9, v7, v6, v2}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lp0/b;->e()V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :pswitch_5
    invoke-static {v9, v7, v11, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lp0/b;->e()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :pswitch_6
    invoke-static {v9, v7, v11, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lp0/b;->e()V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :pswitch_7
    invoke-static {v9, v7, v11, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lp0/b;->e()V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_1
    iget v6, v4, Lp0/n;->e:I

    .line 168
    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    const v6, 0x84c0

    .line 172
    .line 173
    .line 174
    iget v7, v4, Lp0/n;->f:I

    .line 175
    .line 176
    add-int/2addr v7, v6

    .line 177
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lp0/b;->e()V

    .line 181
    .line 182
    .line 183
    const/16 v6, 0xde1

    .line 184
    .line 185
    if-ne v10, v8, :cond_2

    .line 186
    .line 187
    const/16 v7, 0xde1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_2
    const v7, 0x8d65

    .line 191
    .line 192
    .line 193
    :goto_2
    iget v11, v4, Lp0/n;->e:I

    .line 194
    .line 195
    if-eq v10, v8, :cond_4

    .line 196
    .line 197
    if-nez v5, :cond_3

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_3
    const/16 v5, 0x2600

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_4
    :goto_3
    const/16 v5, 0x2601

    .line 204
    .line 205
    :goto_4
    invoke-static {v7, v11, v5}, Lp0/b;->c(III)V

    .line 206
    .line 207
    .line 208
    if-ne v10, v8, :cond_6

    .line 209
    .line 210
    iget v5, v4, Lp0/n;->g:I

    .line 211
    .line 212
    const/16 v7, 0x2703

    .line 213
    .line 214
    if-ne v5, v7, :cond_5

    .line 215
    .line 216
    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lp0/b;->e()V

    .line 220
    .line 221
    .line 222
    :cond_5
    const/16 v5, 0x2801

    .line 223
    .line 224
    iget v7, v4, Lp0/n;->g:I

    .line 225
    .line 226
    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lp0/b;->e()V

    .line 230
    .line 231
    .line 232
    :cond_6
    iget v4, v4, Lp0/n;->f:I

    .line 233
    .line 234
    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lp0/b;->e()V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string v1, "No call to setSamplerTexId() before bind."

    .line 244
    .line 245
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_8
    invoke-static {v9, v7, v11, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 250
    .line 251
    .line 252
    invoke-static {}, Lp0/b;->e()V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_9
    invoke-static {v9, v7, v6, v2}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lp0/b;->e()V

    .line 260
    .line 261
    .line 262
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :cond_a
    return-void

    .line 267
    :pswitch_data_0
    .packed-switch 0x8b50
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :pswitch_data_1
    .packed-switch 0x8b5b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lp0/o;->a:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lp0/b;->e()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public final d([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/o;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "aFramePosition"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lp0/m;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lp0/b;->l([F)Ljava/nio/FloatBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, v0, Lp0/m;->b:Ljava/nio/FloatBuffer;

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    iput p1, v0, Lp0/m;->c:I

    .line 22
    .line 23
    return-void
.end method

.method public final e(Ljava/lang/String;[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/o;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lp0/n;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    array-length v0, p2

    .line 13
    const/4 v1, 0x0

    .line 14
    iget-object p1, p1, Lp0/n;->c:[F

    .line 15
    .line 16
    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final f([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/o;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "uRgbMatrix"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lp0/n;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    iget-object v0, v0, Lp0/n;->c:[F

    .line 17
    .line 18
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/o;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lp0/n;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lp0/n;->d:[I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aput p1, p2, v0

    .line 16
    .line 17
    return-void
.end method

.method public final h(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/o;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "uTexSampler"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lp0/n;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput p1, v0, Lp0/n;->e:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, v0, Lp0/n;->f:I

    .line 18
    .line 19
    iput p2, v0, Lp0/n;->g:I

    .line 20
    .line 21
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget v0, p0, Lp0/o;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lp0/b;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
