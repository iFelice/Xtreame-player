.class public final LA0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/K;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm0/k;

.field public c:LA0/m;

.field public final d:Lm0/i;

.field public e:LA0/I;

.field public f:LA0/J;

.field public g:LA0/H;

.field public h:Ljava/util/concurrent/Executor;

.field public i:Landroid/opengl/EGLDisplay;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm0/k;Lm0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/k;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LA0/k;->b:Lm0/k;

    .line 7
    .line 8
    iput-object p3, p0, LA0/k;->d:Lm0/i;

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, LA0/k;->j:I

    .line 12
    .line 13
    iput p1, p0, LA0/k;->k:I

    .line 14
    .line 15
    new-instance p1, LU4/b;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LA0/k;->e:LA0/I;

    .line 21
    .line 22
    new-instance p1, Lf/S;

    .line 23
    .line 24
    const/16 p2, 0x1a

    .line 25
    .line 26
    invoke-direct {p1, p0, p2}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, LA0/k;->f:LA0/J;

    .line 30
    .line 31
    new-instance p1, LN/i;

    .line 32
    .line 33
    const/4 p2, 0x6

    .line 34
    invoke-direct {p1, p2}, LN/i;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, LA0/k;->g:LA0/H;

    .line 38
    .line 39
    sget-object p1, LD4/a;->G:LD4/a;

    .line 40
    .line 41
    iput-object p1, p0, LA0/k;->h:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/k;->f:LA0/J;

    .line 2
    .line 3
    invoke-interface {v0}, LA0/J;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(LF/i;Lm0/v;J)V
    .locals 6

    .line 1
    :try_start_0
    iget p1, p2, Lm0/v;->c:I

    .line 2
    .line 3
    iget p2, p2, Lm0/v;->d:I

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, LA0/k;->g(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LA0/k;->c:LA0/m;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lm0/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1

    .line 15
    :goto_0
    move-object v2, p1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    iget-object p1, p0, LA0/k;->h:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    new-instance p2, LA0/j;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v0, p2

    .line 27
    move-object v1, p0

    .line 28
    move-wide v3, p3

    .line 29
    invoke-direct/range {v0 .. v5}, LA0/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final c(Lm0/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/k;->e:LA0/I;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LA0/I;->A(Lm0/v;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LA0/k;->e:LA0/I;

    .line 7
    .line 8
    invoke-interface {p1}, LA0/I;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(LA0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA0/k;->f:LA0/J;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ljava/util/concurrent/Executor;LA0/n;)V
    .locals 0

    .line 1
    iput-object p2, p0, LA0/k;->g:LA0/H;

    .line 2
    .line 3
    iput-object p1, p0, LA0/k;->h:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method

.method public final f(LA0/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA0/k;->e:LA0/I;

    .line 2
    .line 3
    invoke-interface {p1}, LA0/I;->r()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/k;->c:LA0/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LA0/a;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, LA0/k;->e:LA0/I;

    .line 9
    .line 10
    invoke-interface {v0}, LA0/I;->x()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LA0/k;->e:LA0/I;

    .line 14
    .line 15
    invoke-interface {v0}, LA0/I;->r()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(II)V
    .locals 4

    .line 1
    iget-object v0, p0, LA0/k;->i:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lp0/b;->t()Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, LA0/k;->i:Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 12
    .line 13
    .line 14
    iget v0, p0, LA0/k;->j:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget v0, p0, LA0/k;->k:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    :cond_1
    iput p1, p0, LA0/k;->j:I

    .line 24
    .line 25
    iput p2, p0, LA0/k;->k:I

    .line 26
    .line 27
    :cond_2
    iget-object p1, p0, LA0/k;->b:Lm0/k;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, LA0/k;->c:LA0/m;

    .line 33
    .line 34
    if-nez p1, :cond_5

    .line 35
    .line 36
    const/4 p1, 0x4

    .line 37
    const-string p2, "initialCapacity"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Cw;->g(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-array p2, p1, [Ljava/lang/Object;

    .line 43
    .line 44
    iget v0, p0, LA0/k;->j:I

    .line 45
    .line 46
    iget v1, p0, LA0/k;->k:I

    .line 47
    .line 48
    invoke-static {v0, v1}, LA0/S;->f(II)LA0/S;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-static {p1, v1}, LQ3/b;->f(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-gt v2, p1, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    :goto_0
    const/4 p1, 0x0

    .line 65
    aput-object v0, p2, p1

    .line 66
    .line 67
    invoke-static {v1, p2}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 72
    .line 73
    iget-object v2, p0, LA0/k;->d:Lm0/i;

    .line 74
    .line 75
    iget v3, v2, Lm0/i;->c:I

    .line 76
    .line 77
    if-ne v3, v1, :cond_4

    .line 78
    .line 79
    const/4 p1, 0x2

    .line 80
    :cond_4
    iget-object v1, p0, LA0/k;->a:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v1, p2, v0, v2, p1}, LA0/m;->k(Landroid/content/Context;Lz4/d0;Ljava/util/List;Lm0/i;I)LA0/m;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, LA0/k;->c:LA0/m;

    .line 87
    .line 88
    :cond_5
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, LA0/k;->c:LA0/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LA0/m;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lm0/o0;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method
