.class public final LA0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/K;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroid/opengl/EGLDisplay;

.field public final e:Landroid/opengl/EGLContext;

.field public final f:Landroid/opengl/EGLSurface;

.field public final g:Lm0/i;

.field public final h:LA0/h0;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lm0/r0;

.field public final k:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final l:LA0/b0;

.field public final m:I

.field public final n:Z

.field public o:I

.field public p:I

.field public q:LA0/m;

.field public r:Z

.field public s:LA0/I;

.field public t:Lp0/F;

.field public u:LA0/t;

.field public v:Z

.field public w:Z

.field public x:Lm0/b0;

.field public y:J

.field public z:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Lm0/i;LA0/h0;Ljava/util/concurrent/Executor;Lm0/r0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/D;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LA0/D;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, LA0/D;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p2, p0, LA0/D;->d:Landroid/opengl/EGLDisplay;

    .line 21
    .line 22
    iput-object p3, p0, LA0/D;->e:Landroid/opengl/EGLContext;

    .line 23
    .line 24
    iput-object p4, p0, LA0/D;->f:Landroid/opengl/EGLSurface;

    .line 25
    .line 26
    iput-object p5, p0, LA0/D;->g:Lm0/i;

    .line 27
    .line 28
    iput-object p6, p0, LA0/D;->h:LA0/h0;

    .line 29
    .line 30
    iput-object p7, p0, LA0/D;->i:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    iput-object p8, p0, LA0/D;->j:Lm0/r0;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput p1, p0, LA0/D;->m:I

    .line 36
    .line 37
    iput-boolean p9, p0, LA0/D;->n:Z

    .line 38
    .line 39
    new-instance p2, LU4/b;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, LA0/D;->s:LA0/I;

    .line 45
    .line 46
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, LA0/D;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    .line 53
    invoke-static {p5}, Lm0/i;->g(Lm0/i;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    new-instance p3, LA0/b0;

    .line 58
    .line 59
    invoke-direct {p3, p2, p1}, LA0/b0;-><init>(ZI)V

    .line 60
    .line 61
    .line 62
    iput-object p3, p0, LA0/D;->l:LA0/b0;

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    const/4 p2, 0x0

    .line 66
    xor-int/2addr p2, p1

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eq p3, p1, :cond_0

    .line 72
    .line 73
    add-int/lit8 p2, p2, -0x1

    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    shl-int/2addr p2, p1

    .line 80
    :cond_0
    new-array p2, p2, [J

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    xor-int/2addr p2, p1

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eq p3, p1, :cond_1

    .line 89
    .line 90
    add-int/lit8 p2, p2, -0x1

    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    shl-int/2addr p2, p1

    .line 97
    :cond_1
    new-array p1, p2, [J

    .line 98
    .line 99
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    iput-wide p1, p0, LA0/D;->y:J

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LA0/D;->h:LA0/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/D;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, LA0/D;->u:LA0/t;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, LA0/t;->a()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, LA0/D;->r:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, p0, LA0/D;->n:Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    xor-int/2addr v0, v1

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, LA0/D;->r:Z

    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final b(LF/i;Lm0/v;J)V
    .locals 11

    .line 1
    iget-object v0, p0, LA0/D;->h:LA0/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, LA0/D;->y:J

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v6, v0, v4

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, LA0/D;->i:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, LA0/C;

    .line 27
    .line 28
    invoke-direct {v0, p0, v2, p3, p4}, LA0/C;-><init>(Ljava/lang/Object;IJ)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v0, p0, LA0/D;->n:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-wide/16 v0, 0x3e8

    .line 39
    .line 40
    mul-long v7, p3, v0

    .line 41
    .line 42
    move-object v2, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move-wide v5, p3

    .line 46
    invoke-virtual/range {v2 .. v8}, LA0/D;->h(LF/i;Lm0/v;JJ)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, LA0/D;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 51
    .line 52
    new-instance v2, LA0/c0;

    .line 53
    .line 54
    invoke-direct {v2, p2, p3, p4}, LA0/c0;-><init>(Lm0/v;J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-wide v6, p0, LA0/D;->y:J

    .line 61
    .line 62
    cmp-long v2, v6, v4

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    cmp-long v2, p3, v6

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iput-wide v4, p0, LA0/D;->y:J

    .line 71
    .line 72
    new-instance v2, LA0/C;

    .line 73
    .line 74
    invoke-direct {v2, p0, v3, p3, p4}, LA0/C;-><init>(Ljava/lang/Object;IJ)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v9

    .line 84
    move-object v4, p0

    .line 85
    move-object v5, p1

    .line 86
    move-object v6, p2

    .line 87
    move-wide v7, p3

    .line 88
    invoke-virtual/range {v4 .. v10}, LA0/D;->h(LF/i;Lm0/v;JJ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object p1, p0, LA0/D;->s:LA0/I;

    .line 96
    .line 97
    invoke-interface {p1, p2}, LA0/I;->A(Lm0/v;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    iget-object p1, p0, LA0/D;->s:LA0/I;

    .line 101
    .line 102
    invoke-interface {p1}, LA0/I;->r()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final c(Lm0/v;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final d(LA0/f;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final e(Ljava/util/concurrent/Executor;LA0/n;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final f(LA0/I;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/D;->h:LA0/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LA0/D;->s:LA0/I;

    .line 7
    .line 8
    invoke-interface {p1}, LA0/I;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/D;->h:LA0/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/D;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LA0/D;->r:Z

    .line 13
    .line 14
    iget-object v0, p0, LA0/D;->q:LA0/m;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, LA0/a;->flush()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, LA0/D;->s:LA0/I;

    .line 22
    .line 23
    invoke-interface {v0}, LA0/I;->x()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, LA0/D;->s:LA0/I;

    .line 27
    .line 28
    invoke-interface {v0}, LA0/I;->r()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g(LF/i;II)Z
    .locals 9

    .line 1
    iget v0, p0, LA0/D;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, p2, :cond_1

    .line 6
    .line 7
    iget v0, p0, LA0/D;->p:I

    .line 8
    .line 9
    if-ne v0, p3, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, LA0/D;->t:Lp0/F;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    iget-object v3, p0, LA0/D;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput p2, p0, LA0/D;->o:I

    .line 24
    .line 25
    iput p3, p0, LA0/D;->p:I

    .line 26
    .line 27
    invoke-static {p2, p3, v3}, LA0/Q;->c(IILjava/util/List;)Lp0/F;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object p3, p0, LA0/D;->t:Lp0/F;

    .line 32
    .line 33
    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    iput-object p2, p0, LA0/D;->t:Lp0/F;

    .line 40
    .line 41
    new-instance p3, Lf/t;

    .line 42
    .line 43
    const/16 v4, 0xb

    .line 44
    .line 45
    invoke-direct {p3, v4, p0, p2}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, LA0/D;->i:Ljava/util/concurrent/Executor;

    .line 49
    .line 50
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p2, p0, LA0/D;->t:Lp0/F;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, LA0/D;->x:Lm0/b0;

    .line 59
    .line 60
    const/4 p3, 0x0

    .line 61
    if-nez p2, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, LA0/D;->q:LA0/m;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, LA0/m;->release()V

    .line 77
    .line 78
    .line 79
    iput-object p3, p0, LA0/D;->q:LA0/m;

    .line 80
    .line 81
    :cond_4
    const-string p1, "FinalShaderWrapper"

    .line 82
    .line 83
    const-string p2, "Output surface and size not set, dropping frame."

    .line 84
    .line 85
    invoke-static {p1, p2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_5
    iget-object v4, p0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 90
    .line 91
    iget-object v5, p0, LA0/D;->g:Lm0/i;

    .line 92
    .line 93
    if-nez v4, :cond_d

    .line 94
    .line 95
    iget v4, v5, Lm0/i;->c:I

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object p1, Lp0/b;->f:[I

    .line 101
    .line 102
    const/4 v6, 0x3

    .line 103
    if-eq v4, v6, :cond_c

    .line 104
    .line 105
    const/16 v6, 0xa

    .line 106
    .line 107
    if-ne v4, v6, :cond_6

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 p1, 0x7

    .line 111
    const/4 v6, 0x6

    .line 112
    if-eq v4, p1, :cond_8

    .line 113
    .line 114
    if-ne v4, v6, :cond_7

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p2, "Unsupported color transfer: "

    .line 120
    .line 121
    invoke-static {p2, v4}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_8
    :goto_3
    sget-object p1, Lp0/b;->c:[I

    .line 130
    .line 131
    if-ne v4, v6, :cond_a

    .line 132
    .line 133
    invoke-static {}, Lp0/b;->w()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_9

    .line 138
    .line 139
    sget-object v4, Lp0/b;->d:[I

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_9
    new-instance p1, Lp0/p;

    .line 143
    .line 144
    const-string p2, "BT.2020 PQ OpenGL output isn\'t supported."

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_a
    const-string v4, "EGL_EXT_gl_colorspace_bt2020_hlg"

    .line 151
    .line 152
    invoke-static {v4}, Lp0/b;->x(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_b

    .line 157
    .line 158
    sget-object v4, Lp0/b;->e:[I

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_b
    new-instance p1, Lp0/p;

    .line 162
    .line 163
    const-string p2, "BT.2020 HLG OpenGL output isn\'t supported."

    .line 164
    .line 165
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_c
    :goto_4
    sget-object v4, Lp0/b;->b:[I

    .line 170
    .line 171
    move-object v8, v4

    .line 172
    move-object v4, p1

    .line 173
    move-object p1, v8

    .line 174
    :goto_5
    iget-object v6, p0, LA0/D;->d:Landroid/opengl/EGLDisplay;

    .line 175
    .line 176
    invoke-static {v6, p1}, Lp0/b;->u(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v7, p2, Lm0/b0;->a:Landroid/view/Surface;

    .line 181
    .line 182
    invoke-static {v6, p1, v7, v4, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v4, "Error creating a new EGL surface"

    .line 187
    .line 188
    invoke-static {v4}, Lp0/b;->d(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iput-object p1, p0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 192
    .line 193
    :cond_d
    iget-object p1, p0, LA0/D;->q:LA0/m;

    .line 194
    .line 195
    if-eqz p1, :cond_f

    .line 196
    .line 197
    iget-boolean v4, p0, LA0/D;->w:Z

    .line 198
    .line 199
    if-nez v4, :cond_e

    .line 200
    .line 201
    if-nez v0, :cond_e

    .line 202
    .line 203
    iget-boolean v0, p0, LA0/D;->v:Z

    .line 204
    .line 205
    if-eqz v0, :cond_f

    .line 206
    .line 207
    :cond_e
    invoke-virtual {p1}, LA0/m;->release()V

    .line 208
    .line 209
    .line 210
    iput-object p3, p0, LA0/D;->q:LA0/m;

    .line 211
    .line 212
    iput-boolean v2, p0, LA0/D;->w:Z

    .line 213
    .line 214
    iput-boolean v2, p0, LA0/D;->v:Z

    .line 215
    .line 216
    :cond_f
    iget-object p1, p0, LA0/D;->q:LA0/m;

    .line 217
    .line 218
    if-nez p1, :cond_13

    .line 219
    .line 220
    new-instance p1, Lz4/E;

    .line 221
    .line 222
    const/4 p3, 0x4

    .line 223
    invoke-direct {p1, p3}, Lz4/B;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v3}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 227
    .line 228
    .line 229
    iget p3, p2, Lm0/b0;->b:I

    .line 230
    .line 231
    iget p2, p2, Lm0/b0;->c:I

    .line 232
    .line 233
    invoke-static {p3, p2}, LA0/S;->f(II)LA0/S;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p1, p2}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lz4/E;->m0()Lz4/d0;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object p2, p0, LA0/D;->c:Ljava/util/ArrayList;

    .line 245
    .line 246
    iget p3, p0, LA0/D;->m:I

    .line 247
    .line 248
    iget-object v0, p0, LA0/D;->a:Landroid/content/Context;

    .line 249
    .line 250
    invoke-static {v0, p1, p2, v5, p3}, LA0/m;->k(Landroid/content/Context;Lz4/d0;Ljava/util/List;Lm0/i;I)LA0/m;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget p2, p0, LA0/D;->o:I

    .line 255
    .line 256
    iget p3, p0, LA0/D;->p:I

    .line 257
    .line 258
    iget-object v0, p1, LA0/m;->i:Lz4/H;

    .line 259
    .line 260
    invoke-static {p2, p3, v0}, LA0/Q;->c(IILjava/util/List;)Lp0/F;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    iget-object p3, p0, LA0/D;->x:Lm0/b0;

    .line 265
    .line 266
    if-eqz p3, :cond_12

    .line 267
    .line 268
    iget v0, p3, Lm0/b0;->b:I

    .line 269
    .line 270
    iget v3, p2, Lp0/F;->a:I

    .line 271
    .line 272
    if-ne v3, v0, :cond_10

    .line 273
    .line 274
    const/4 v0, 0x1

    .line 275
    goto :goto_6

    .line 276
    :cond_10
    const/4 v0, 0x0

    .line 277
    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 278
    .line 279
    .line 280
    iget p3, p3, Lm0/b0;->c:I

    .line 281
    .line 282
    iget p2, p2, Lp0/F;->b:I

    .line 283
    .line 284
    if-ne p2, p3, :cond_11

    .line 285
    .line 286
    const/4 p2, 0x1

    .line 287
    goto :goto_7

    .line 288
    :cond_11
    const/4 p2, 0x0

    .line 289
    :goto_7
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 290
    .line 291
    .line 292
    :cond_12
    iput-object p1, p0, LA0/D;->q:LA0/m;

    .line 293
    .line 294
    iput-boolean v2, p0, LA0/D;->w:Z

    .line 295
    .line 296
    :cond_13
    return v1
.end method

.method public final h(LF/i;Lm0/v;JJ)V
    .locals 6

    .line 1
    const-wide/16 v0, -0x2

    .line 2
    .line 3
    cmp-long v2, p5, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget v0, p2, Lm0/v;->c:I

    .line 8
    .line 9
    iget v1, p2, Lm0/v;->d:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, LA0/D;->g(LF/i;II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-wide v0, p0, LA0/D;->y:J

    .line 18
    .line 19
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long p1, v0, v3

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    cmp-long p1, p3, v0

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p0, LA0/D;->x:Lm0/b0;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    move-object v1, p2

    .line 39
    move-wide v2, p3

    .line 40
    move-wide v4, p5

    .line 41
    invoke-virtual/range {v0 .. v5}, LA0/D;->i(Lm0/v;JJ)V

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :catch_0
    move-exception p1

    .line 46
    :goto_0
    move-object v2, p1

    .line 47
    goto :goto_3

    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    iget-object p1, p0, LA0/D;->s:LA0/I;

    .line 51
    .line 52
    invoke-interface {p1, p2}, LA0/I;->A(Lm0/v;)V

    .line 53
    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, LA0/D;->u:LA0/t;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, LA0/t;->c:LA0/U;

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p1, p3, p4}, LA0/U;->j(J)V
    :try_end_0
    .catch Lm0/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_2
    return-void

    .line 71
    :goto_3
    new-instance p1, LA0/j;

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    move-object v0, p1

    .line 75
    move-object v1, p0

    .line 76
    move-wide v3, p3

    .line 77
    invoke-direct/range {v0 .. v5}, LA0/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 78
    .line 79
    .line 80
    iget-object p3, p0, LA0/D;->i:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_4
    iget-object p1, p0, LA0/D;->s:LA0/I;

    .line 86
    .line 87
    invoke-interface {p1, p2}, LA0/I;->A(Lm0/v;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final i(Lm0/v;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LA0/D;->x:Lm0/b0;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, LA0/D;->q:LA0/m;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, LA0/D;->d:Landroid/opengl/EGLDisplay;

    .line 17
    .line 18
    iget-object v4, p0, LA0/D;->e:Landroid/opengl/EGLContext;

    .line 19
    .line 20
    invoke-static {v3, v0, v0, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 21
    .line 22
    .line 23
    const-string v4, "Error making context current"

    .line 24
    .line 25
    invoke-static {v4}, Lp0/b;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    iget v5, v1, Lm0/b0;->b:I

    .line 30
    .line 31
    iget v1, v1, Lm0/b0;->c:I

    .line 32
    .line 33
    invoke-static {v4, v5, v1}, Lp0/b;->r(III)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lp0/b;->h()V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Lm0/v;->a:I

    .line 40
    .line 41
    invoke-virtual {v2, p1, p2, p3}, LA0/m;->h(IJ)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v1, -0x3

    .line 45
    .line 46
    cmp-long p1, p4, v1

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    cmp-long p1, p2, p4

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 61
    .line 62
    .line 63
    const-wide/16 p4, 0x3e8

    .line 64
    .line 65
    mul-long p4, p4, p2

    .line 66
    .line 67
    :cond_1
    invoke-static {v3, v0, p4, p5}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, LA0/D;->u:LA0/t;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, LA0/t;->c:LA0/U;

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1, p2, p3}, LA0/U;->j(J)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-static {p2, p3}, LA0/g;->b(J)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, LA0/D;->h:LA0/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/D;->q:LA0/m;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, LA0/m;->release()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, LA0/D;->l:LA0/b0;

    .line 14
    .line 15
    invoke-virtual {v0}, LA0/b0;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LA0/D;->d:Landroid/opengl/EGLDisplay;

    .line 19
    .line 20
    iget-object v1, p0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lp0/b;->q(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Lm0/o0;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method
