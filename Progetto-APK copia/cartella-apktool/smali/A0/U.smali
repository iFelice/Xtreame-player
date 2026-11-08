.class public final LA0/U;
.super LA0/a;
.source "SourceFile"


# instance fields
.field public final h:Lp0/o;

.field public final i:[LA0/c0;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p2, v0}, LA0/a;-><init>(ZI)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    new-instance p2, Lp0/o;

    .line 6
    .line 7
    const-string v1, "shaders/vertex_shader_transformation_es2.glsl"

    .line 8
    .line 9
    const-string v2, "shaders/fragment_shader_transformation_es2.glsl"

    .line 10
    .line 11
    invoke-direct {p2, p1, v1, v2}, Lp0/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, LA0/U;->h:Lp0/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    invoke-static {}, Lp0/b;->j()[F

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "uTexTransformationMatrix"

    .line 21
    .line 22
    invoke-virtual {p2, v1, p1}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 23
    .line 24
    .line 25
    const-string v1, "uTransformationMatrix"

    .line 26
    .line 27
    invoke-virtual {p2, v1, p1}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 28
    .line 29
    .line 30
    const-string v1, "uRgbMatrix"

    .line 31
    .line 32
    invoke-virtual {p2, v1, p1}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x10

    .line 36
    .line 37
    new-array p1, p1, [F

    .line 38
    .line 39
    fill-array-data p1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lp0/o;->d([F)V

    .line 43
    .line 44
    .line 45
    new-array p1, v0, [LA0/c0;

    .line 46
    .line 47
    iput-object p1, p0, LA0/U;->i:[LA0/c0;

    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p1

    .line 53
    :goto_0
    invoke-static {p1}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, LA0/U;->j:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, LA0/U;->i:[LA0/c0;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    iget-object v2, v2, LA0/c0;->a:Lm0/v;

    .line 12
    .line 13
    invoke-super {p0, v2}, LA0/a;->c(Lm0/v;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v0, p0, LA0/U;->j:I

    .line 20
    .line 21
    invoke-super {p0}, LA0/a;->a()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b(LF/i;Lm0/v;J)V
    .locals 2

    .line 1
    iget v0, p0, LA0/U;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, LA0/a;->b(LF/i;Lm0/v;J)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, LA0/U;->j:I

    .line 16
    .line 17
    add-int/lit8 p2, p1, 0x1

    .line 18
    .line 19
    iput p2, p0, LA0/U;->j:I

    .line 20
    .line 21
    new-instance p2, LA0/c0;

    .line 22
    .line 23
    iget-object v0, p0, LA0/a;->a:LA0/b0;

    .line 24
    .line 25
    iget-object v0, v0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lm0/v;

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, v0, p3, p4}, LA0/c0;-><init>(Lm0/v;J)V

    .line 45
    .line 46
    .line 47
    iget-object p3, p0, LA0/U;->i:[LA0/c0;

    .line 48
    .line 49
    aput-object p2, p3, p1

    .line 50
    .line 51
    return-void
.end method

.method public final c(Lm0/v;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA0/U;->j:I

    .line 3
    .line 4
    invoke-super {p0}, LA0/a;->flush()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(II)Lp0/F;
    .locals 1

    .line 1
    new-instance v0, Lp0/F;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lp0/F;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final h(IJ)V
    .locals 1

    .line 1
    iget-object p2, p0, LA0/U;->h:Lp0/o;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lp0/o;->i()V

    .line 4
    .line 5
    .line 6
    const-string p3, "uTexSampler"

    .line 7
    .line 8
    iget-object v0, p2, Lp0/o;->e:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Lp0/n;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput p1, p3, Lp0/n;->e:I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p3, Lp0/n;->f:I

    .line 23
    .line 24
    invoke-virtual {p2}, Lp0/o;->b()V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x5

    .line 28
    const/4 p3, 0x4

    .line 29
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-static {p1}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1
.end method

.method public final j(J)V
    .locals 7

    .line 1
    iget v0, p0, LA0/U;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, LA0/U;->i:[LA0/c0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-object v3, v1, v2

    .line 10
    .line 11
    iget-wide v4, v3, LA0/c0;->b:J

    .line 12
    .line 13
    cmp-long v6, p1, v4

    .line 14
    .line 15
    if-gez v6, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    aget-object p2, v1, p1

    .line 20
    .line 21
    aput-object v3, v1, p1

    .line 22
    .line 23
    sub-int/2addr v0, v2

    .line 24
    iput v0, p0, LA0/U;->j:I

    .line 25
    .line 26
    iget-object p1, p2, LA0/c0;->a:Lm0/v;

    .line 27
    .line 28
    invoke-super {p0, p1}, LA0/a;->c(Lm0/v;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LA0/a;->a:LA0/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/b0;->b()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    :try_start_1
    iget-object v0, p0, LA0/U;->h:Lp0/o;

    .line 7
    .line 8
    iget v0, v0, Lp0/o;->a:I

    .line 9
    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lp0/b;->e()V
    :try_end_1
    .catch Lp0/p; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lm0/o0;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1

    .line 24
    :catch_1
    move-exception v0

    .line 25
    new-instance v1, Lm0/o0;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method
