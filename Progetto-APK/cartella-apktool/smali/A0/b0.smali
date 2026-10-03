.class public final LA0/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LA0/b0;->c:I

    .line 5
    .line 6
    iput-boolean p1, p0, LA0/b0;->d:Z

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(LF/i;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    iget v4, v0, LA0/b0;->c:I

    .line 24
    .line 25
    if-ge v3, v4, :cond_1

    .line 26
    .line 27
    iget-boolean v4, v0, LA0/b0;->d:Z

    .line 28
    .line 29
    const/16 v5, 0x2601

    .line 30
    .line 31
    const/16 v6, 0xde1

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-static/range {p2 .. p3}, Lp0/b;->b(II)V

    .line 37
    .line 38
    .line 39
    new-array v4, v7, [I

    .line 40
    .line 41
    invoke-static {v7, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lp0/b;->e()V

    .line 45
    .line 46
    .line 47
    aget v4, v4, v2

    .line 48
    .line 49
    invoke-static {v6, v4, v5}, Lp0/b;->c(III)V

    .line 50
    .line 51
    .line 52
    const/16 v14, 0x1908

    .line 53
    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    const/16 v8, 0xde1

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const v10, 0x881a

    .line 60
    .line 61
    .line 62
    const/4 v13, 0x0

    .line 63
    const/16 v15, 0x140b

    .line 64
    .line 65
    move/from16 v11, p2

    .line 66
    .line 67
    move/from16 v12, p3

    .line 68
    .line 69
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lp0/b;->e()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-static/range {p2 .. p3}, Lp0/b;->b(II)V

    .line 77
    .line 78
    .line 79
    new-array v4, v7, [I

    .line 80
    .line 81
    invoke-static {v7, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lp0/b;->e()V

    .line 85
    .line 86
    .line 87
    aget v4, v4, v2

    .line 88
    .line 89
    invoke-static {v6, v4, v5}, Lp0/b;->c(III)V

    .line 90
    .line 91
    .line 92
    const/16 v14, 0x1908

    .line 93
    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    const/16 v8, 0xde1

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    const/16 v10, 0x1908

    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    const/16 v15, 0x1401

    .line 103
    .line 104
    move/from16 v11, p2

    .line 105
    .line 106
    move/from16 v12, p3

    .line 107
    .line 108
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lp0/b;->e()V

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-array v5, v7, [I

    .line 118
    .line 119
    invoke-static {v7, v5, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lp0/b;->e()V

    .line 123
    .line 124
    .line 125
    aget v7, v5, v2

    .line 126
    .line 127
    const v8, 0x8d40

    .line 128
    .line 129
    .line 130
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lp0/b;->e()V

    .line 134
    .line 135
    .line 136
    const v7, 0x8ce0

    .line 137
    .line 138
    .line 139
    invoke-static {v8, v7, v6, v4, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lp0/b;->e()V

    .line 143
    .line 144
    .line 145
    aget v5, v5, v2

    .line 146
    .line 147
    new-instance v6, Lm0/v;

    .line 148
    .line 149
    move/from16 v7, p2

    .line 150
    .line 151
    move/from16 v8, p3

    .line 152
    .line 153
    invoke-direct {v6, v4, v5, v7, v8}, Lm0/v;-><init>(IIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LA0/b0;->c()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lm0/v;

    .line 16
    .line 17
    invoke-virtual {v1}, Lm0/v;->a()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final c()Ljava/util/Iterator;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    iget-object v4, p0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    new-array v5, v2, [Ljava/lang/Iterable;

    .line 9
    .line 10
    aput-object v3, v5, v1

    .line 11
    .line 12
    aput-object v4, v5, v0

    .line 13
    .line 14
    :goto_0
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    aget-object v3, v5, v1

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, LD/z;

    .line 24
    .line 25
    invoke-direct {v0, v5}, LD/z;-><init>([Ljava/lang/Iterable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, LD/z;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final d()Lm0/v;
    .locals 2

    .line 1
    iget-object v0, p0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lm0/v;

    .line 14
    .line 15
    iget-object v1, p0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Textures are all in use. Please release in-use textures before calling useTexture."

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
