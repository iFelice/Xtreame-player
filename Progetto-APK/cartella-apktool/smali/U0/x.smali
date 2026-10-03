.class public final LU0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/u0;


# static fields
.field public static final z:Lm/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm0/t0;

.field public final c:Landroid/util/SparseArray;

.field public final d:Z

.field public final e:LU0/d;

.field public final f:LU0/o;

.field public final g:Lp0/f;

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public i:Lc/g;

.field public j:Lm0/t;

.field public final k:LU4/b;

.field public final l:Lz4/d0;

.field public m:Lp0/I;

.field public n:Lm0/v0;

.field public o:LU0/B;

.field public p:J

.field public q:I

.field public r:Landroid/util/Pair;

.field public s:I

.field public t:I

.field public u:J

.field public v:J

.field public w:Z

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm/a;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lm/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LU0/x;->z:Lm/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LU0/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LU0/p;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, LU0/x;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Lc/g;

    .line 9
    .line 10
    invoke-direct {v0}, Lc/g;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LU0/x;->i:Lc/g;

    .line 14
    .line 15
    iget-object v0, p1, LU0/p;->c:LU0/v;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LU0/x;->b:Lm0/t0;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, LU0/x;->c:Landroid/util/SparseArray;

    .line 28
    .line 29
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 30
    .line 31
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 32
    .line 33
    iput-object v0, p0, LU0/x;->l:Lz4/d0;

    .line 34
    .line 35
    sget-object v0, Lm0/n0;->D:LU4/b;

    .line 36
    .line 37
    iput-object v0, p0, LU0/x;->k:LU4/b;

    .line 38
    .line 39
    iget-boolean v0, p1, LU0/p;->d:Z

    .line 40
    .line 41
    iput-boolean v0, p0, LU0/x;->d:Z

    .line 42
    .line 43
    iget-object v0, p1, LU0/p;->e:Lp0/f;

    .line 44
    .line 45
    iput-object v0, p0, LU0/x;->g:Lp0/f;

    .line 46
    .line 47
    new-instance v1, LU0/d;

    .line 48
    .line 49
    iget-object p1, p1, LU0/p;->b:LU0/E;

    .line 50
    .line 51
    invoke-direct {v1, p1, v0}, LU0/d;-><init>(LU0/E;Lp0/f;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, LU0/x;->e:LU0/d;

    .line 55
    .line 56
    new-instance p1, LU0/o;

    .line 57
    .line 58
    invoke-direct {p1, p0}, LU0/o;-><init>(LU0/x;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, LU0/x;->f:LU0/o;

    .line 62
    .line 63
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 69
    .line 70
    new-instance p1, Lm0/s;

    .line 71
    .line 72
    invoke-direct {p1}, Lm0/s;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lm0/t;

    .line 76
    .line 77
    invoke-direct {v0, p1}, Lm0/t;-><init>(Lm0/s;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, LU0/x;->j:Lm0/t;

    .line 81
    .line 82
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    iput-wide v0, p0, LU0/x;->p:J

    .line 88
    .line 89
    iput-wide v0, p0, LU0/x;->u:J

    .line 90
    .line 91
    iput-wide v0, p0, LU0/x;->v:J

    .line 92
    .line 93
    const/4 p1, -0x1

    .line 94
    iput p1, p0, LU0/x;->x:I

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    iput p1, p0, LU0/x;->t:I

    .line 98
    .line 99
    return-void
.end method

.method public static a(LU0/x;Z)V
    .locals 2

    .line 1
    iget v0, p0, LU0/x;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, LU0/x;->s:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, LU0/x;->s:I

    .line 10
    .line 11
    iget-object v0, p0, LU0/x;->e:LU0/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LU0/d;->k(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, LU0/x;->i:Lc/g;

    .line 17
    .line 18
    invoke-virtual {p1}, Lc/g;->m()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-le p1, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, LU0/x;->i:Lc/g;

    .line 25
    .line 26
    invoke-virtual {p1}, Lc/g;->j()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, LU0/x;->i:Lc/g;

    .line 31
    .line 32
    invoke-virtual {p1}, Lc/g;->m()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, LU0/x;->i:Lc/g;

    .line 39
    .line 40
    invoke-virtual {p1}, Lc/g;->j()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, LU0/w;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-wide v0, p1, LU0/w;->a:J

    .line 50
    .line 51
    iput-wide v0, p0, LU0/x;->p:J

    .line 52
    .line 53
    iget p1, p1, LU0/w;->b:I

    .line 54
    .line 55
    iput p1, p0, LU0/x;->q:I

    .line 56
    .line 57
    invoke-virtual {p0}, LU0/x;->c()V

    .line 58
    .line 59
    .line 60
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    iput-wide v0, p0, LU0/x;->u:J

    .line 66
    .line 67
    iput-wide v0, p0, LU0/x;->v:J

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, LU0/x;->w:Z

    .line 71
    .line 72
    iget-object p1, p0, LU0/x;->m:Lp0/I;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, La/b;

    .line 78
    .line 79
    const/16 v1, 0x14

    .line 80
    .line 81
    invoke-direct {v0, p0, v1}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/Surface;II)V
    .locals 3

    .line 1
    iget-object v0, p0, LU0/x;->n:Lm0/v0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, LU0/x;->e:LU0/d;

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    new-instance v2, Lm0/b0;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, p3}, Lm0/b0;-><init>(Landroid/view/Surface;II)V

    .line 13
    .line 14
    .line 15
    check-cast v0, LA0/Y;

    .line 16
    .line 17
    iput-object v2, v0, LA0/Y;->i:Lm0/b0;

    .line 18
    .line 19
    iget-object v0, v0, LA0/Y;->h:Lm0/s0;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast v0, LA0/x;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, LA0/x;->c(Lm0/b0;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v0, Lp0/F;

    .line 29
    .line 30
    invoke-direct {v0, p2, p3}, Lp0/F;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, LU0/d;->n(Landroid/view/Surface;Lp0/F;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    check-cast v0, LA0/Y;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, v0, LA0/Y;->i:Lm0/b0;

    .line 41
    .line 42
    iget-object p2, v0, LA0/Y;->h:Lm0/s0;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    check-cast p2, LA0/x;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, LA0/x;->c(Lm0/b0;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v1}, LU0/d;->i()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v4, p0, LU0/x;->j:Lm0/t;

    .line 2
    .line 3
    iget-wide v2, p0, LU0/x;->p:J

    .line 4
    .line 5
    iget v1, p0, LU0/x;->q:I

    .line 6
    .line 7
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 8
    .line 9
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    .line 10
    .line 11
    iget-object v0, p0, LU0/x;->e:LU0/d;

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, LU0/d;->e(IJLm0/t;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Lm0/t;I)Z
    .locals 12

    .line 1
    const-string v0, "Color transfer "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez p2, :cond_6

    .line 6
    .line 7
    iget v3, p0, LU0/x;->t:I

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p1, Lm0/t;->E:Lm0/i;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Lm0/i;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v3, Lm0/i;->h:Lm0/i;

    .line 29
    .line 30
    :goto_1
    const/4 v4, 0x6

    .line 31
    const/4 v5, 0x7

    .line 32
    iget v6, v3, Lm0/i;->c:I

    .line 33
    .line 34
    if-ne v6, v5, :cond_2

    .line 35
    .line 36
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v8, 0x22

    .line 39
    .line 40
    if-ge v7, v8, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lp0/b;->w()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Lm0/i;->a()Lm0/h;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput v4, v0, Lm0/h;->c:I

    .line 53
    .line 54
    new-instance v3, Lm0/i;

    .line 55
    .line 56
    iget v6, v0, Lm0/h;->a:I

    .line 57
    .line 58
    iget v7, v0, Lm0/h;->b:I

    .line 59
    .line 60
    iget v8, v0, Lm0/h;->c:I

    .line 61
    .line 62
    iget-object v9, v0, Lm0/h;->f:[B

    .line 63
    .line 64
    iget v10, v0, Lm0/h;->d:I

    .line 65
    .line 66
    iget v11, v0, Lm0/h;->e:I

    .line 67
    .line 68
    move-object v5, v3

    .line 69
    invoke-direct/range {v5 .. v11}, Lm0/i;-><init>(III[BII)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :catch_0
    move-exception p2

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    if-ne v6, v4, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lp0/b;->w()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-ne v6, v5, :cond_4

    .line 83
    .line 84
    const-string v4, "EGL_EXT_gl_colorspace_bt2020_hlg"

    .line 85
    .line 86
    invoke-static {v4}, Lp0/b;->x(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    :goto_2
    if-nez v4, :cond_4

    .line 91
    .line 92
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v5, 0x1d

    .line 95
    .line 96
    if-lt v4, v5, :cond_4

    .line 97
    .line 98
    const-string v3, "PlaybackVidGraphWrapper"

    .line 99
    .line 100
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, " is not supported. Falling back to OpenGl tone mapping."

    .line 111
    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v3, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v3, Lm0/i;->h:Lm0/i;
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_3
    new-instance v0, LU0/Q;

    .line 126
    .line 127
    invoke-direct {v0, p2, p1}, LU0/Q;-><init>(Ljava/lang/Exception;Lm0/t;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_4
    :goto_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v4, p0, LU0/x;->g:Lp0/f;

    .line 139
    .line 140
    check-cast v4, Lp0/G;

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    invoke-virtual {v4, v0, v5}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, LU0/x;->m:Lp0/I;

    .line 148
    .line 149
    :try_start_1
    iget-object v4, p0, LU0/x;->b:Lm0/t0;

    .line 150
    .line 151
    iget-object v5, p0, LU0/x;->a:Landroid/content/Context;

    .line 152
    .line 153
    new-instance v6, LU0/n;

    .line 154
    .line 155
    invoke-direct {v6, v0, v1}, LU0/n;-><init>(Lp0/q;I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v4, v5, v3, p0, v6}, Lm0/t0;->a(Landroid/content/Context;Lm0/i;LU0/x;LU0/n;)Lm0/v0;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, LU0/x;->n:Lm0/v0;

    .line 163
    .line 164
    iget-object v1, p0, LU0/x;->l:Lz4/d0;

    .line 165
    .line 166
    check-cast v0, LA0/Y;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iput-object v1, v0, LA0/Y;->j:Lz4/H;

    .line 176
    .line 177
    iget-object v0, p0, LU0/x;->n:Lm0/v0;

    .line 178
    .line 179
    iget-object v1, p0, LU0/x;->k:LU4/b;

    .line 180
    .line 181
    check-cast v0, LA0/Y;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v0, Lm0/n0;->D:LU4/b;

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    const-string v1, "SingleInputVideoGraph does not use VideoCompositor, and therefore cannot apply VideoCompositorSettings"

    .line 193
    .line 194
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, LU0/x;->n:Lm0/v0;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lm0/o0; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, LU0/x;->r:Landroid/util/Pair;

    .line 203
    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Landroid/view/Surface;

    .line 209
    .line 210
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lp0/F;

    .line 213
    .line 214
    iget v3, v0, Lp0/F;->a:I

    .line 215
    .line 216
    iget v0, v0, Lp0/F;->b:I

    .line 217
    .line 218
    invoke-virtual {p0, v1, v3, v0}, LU0/x;->b(Landroid/view/Surface;II)V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget-object v0, p0, LU0/x;->e:LU0/d;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    new-instance v1, LD0/U;

    .line 227
    .line 228
    invoke-direct {v1, p0}, LD0/U;-><init>(LU0/x;)V

    .line 229
    .line 230
    .line 231
    iget-object v3, p0, LU0/x;->m:Lp0/I;

    .line 232
    .line 233
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    new-instance v4, LU0/n;

    .line 237
    .line 238
    invoke-direct {v4, v3, v2}, LU0/n;-><init>(Lp0/q;I)V

    .line 239
    .line 240
    .line 241
    iput-object v1, v0, LU0/d;->M:LU0/O;

    .line 242
    .line 243
    iput-object v4, v0, LU0/d;->N:Ljava/util/concurrent/Executor;

    .line 244
    .line 245
    iput v2, p0, LU0/x;->t:I

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catch_1
    move-exception p2

    .line 249
    new-instance v0, LU0/Q;

    .line 250
    .line 251
    invoke-direct {v0, p2, p1}, LU0/Q;-><init>(Ljava/lang/Exception;Lm0/t;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_6
    iget v0, p0, LU0/x;->t:I

    .line 256
    .line 257
    if-ne v0, v2, :cond_7

    .line 258
    .line 259
    :goto_5
    :try_start_2
    iget-object v0, p0, LU0/x;->n:Lm0/v0;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    check-cast v0, LA0/Y;

    .line 265
    .line 266
    invoke-virtual {v0, p2}, LA0/Y;->a(I)V
    :try_end_2
    .catch Lm0/o0; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    .line 268
    .line 269
    iget p1, p0, LU0/x;->y:I

    .line 270
    .line 271
    add-int/2addr p1, v2

    .line 272
    iput p1, p0, LU0/x;->y:I

    .line 273
    .line 274
    return v2

    .line 275
    :catch_2
    move-exception p2

    .line 276
    new-instance v0, LU0/Q;

    .line 277
    .line 278
    invoke-direct {v0, p2, p1}, LU0/Q;-><init>(Ljava/lang/Exception;Lm0/t;)V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_7
    return v1
.end method
