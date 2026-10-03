.class public final LA0/m;
.super LA0/a;
.source "SourceFile"

# interfaces
.implements LA0/y;
.implements LA0/T;


# static fields
.field public static final s:Lz4/d0;

.field public static final t:[F

.field public static final u:[F


# instance fields
.field public final h:Lp0/o;

.field public final i:Lz4/H;

.field public final j:Lz4/H;

.field public final k:[[F

.field public final l:[[F

.field public final m:[F

.field public final n:[F

.field public final o:[F

.field public final p:I

.field public q:Lz4/d0;

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    new-array v3, v1, [F

    .line 10
    .line 11
    fill-array-data v3, :array_1

    .line 12
    .line 13
    .line 14
    new-array v4, v1, [F

    .line 15
    .line 16
    fill-array-data v4, :array_2

    .line 17
    .line 18
    .line 19
    new-array v5, v1, [F

    .line 20
    .line 21
    fill-array-data v5, :array_3

    .line 22
    .line 23
    .line 24
    sget-object v6, Lz4/H;->H:Lz4/F;

    .line 25
    .line 26
    new-array v6, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    aput-object v2, v6, v7

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v3, v6, v2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    aput-object v4, v6, v2

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v5, v6, v2

    .line 39
    .line 40
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v6}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, LA0/m;->s:Lz4/d0;

    .line 48
    .line 49
    new-array v1, v0, [F

    .line 50
    .line 51
    fill-array-data v1, :array_4

    .line 52
    .line 53
    .line 54
    sput-object v1, LA0/m;->t:[F

    .line 55
    .line 56
    new-array v0, v0, [F

    .line 57
    .line 58
    fill-array-data v0, :array_5

    .line 59
    .line 60
    .line 61
    sput-object v0, LA0/m;->u:[F

    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x41d77319    # -0.1646f
        0x3ff0d1b7    # 1.8814f
        0x3fbcbfb1    # 1.4746f
        -0x40edb8bb    # -0.5714f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f959e84    # 1.1689f
        0x3f959e84    # 1.1689f
        0x3f959e84    # 1.1689f
        0x0
        -0x41bf62b7    # -0.1881f
        0x40099ce0
        0x3fd7b7e9    # 1.6853f
        -0x40d8d4fe    # -0.653f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lp0/o;Lz4/H;Lz4/H;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p4, v0}, LA0/a;-><init>(ZI)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LA0/m;->h:Lp0/o;

    .line 6
    .line 7
    iput-object p2, p0, LA0/m;->i:Lz4/H;

    .line 8
    .line 9
    iput-object p3, p0, LA0/m;->j:Lz4/H;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 p4, 0x10

    .line 16
    .line 17
    filled-new-array {p1, p4}, [I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [[F

    .line 28
    .line 29
    iput-object p1, p0, LA0/m;->k:[[F

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    filled-new-array {p1, p4}, [I

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, [[F

    .line 44
    .line 45
    iput-object p1, p0, LA0/m;->l:[[F

    .line 46
    .line 47
    invoke-static {}, Lp0/b;->j()[F

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, LA0/m;->m:[F

    .line 52
    .line 53
    invoke-static {}, Lp0/b;->j()[F

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, LA0/m;->n:[F

    .line 58
    .line 59
    new-array p1, p4, [F

    .line 60
    .line 61
    iput-object p1, p0, LA0/m;->o:[F

    .line 62
    .line 63
    sget-object p1, LA0/m;->s:Lz4/d0;

    .line 64
    .line 65
    iput-object p1, p0, LA0/m;->q:Lz4/d0;

    .line 66
    .line 67
    const/4 p1, -0x1

    .line 68
    iput p1, p0, LA0/m;->r:I

    .line 69
    .line 70
    const/16 p1, 0x2601

    .line 71
    .line 72
    const/4 p3, 0x0

    .line 73
    :goto_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-ge p3, p4, :cond_0

    .line 78
    .line 79
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    check-cast p4, LA0/P;

    .line 84
    .line 85
    invoke-interface {p4}, LA0/P;->c()I

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    add-int/lit8 p3, p3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    iput p1, p0, LA0/m;->p:I

    .line 97
    .line 98
    return-void
.end method

.method public static j(Landroid/content/Context;Lz4/d0;Lz4/d0;Z)LA0/m;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "shaders/fragment_shader_copy_es2.glsl"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "shaders/fragment_shader_transformation_es2.glsl"

    .line 11
    .line 12
    :goto_0
    const-string v1, "shaders/vertex_shader_transformation_es2.glsl"

    .line 13
    .line 14
    invoke-static {p0, v1, v0}, LA0/m;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lp0/o;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, LA0/m;

    .line 19
    .line 20
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {v0, p0, p1, p2, p3}, LA0/m;-><init>(Lp0/o;Lz4/H;Lz4/H;Z)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static k(Landroid/content/Context;Lz4/d0;Ljava/util/List;Lm0/i;I)LA0/m;
    .locals 5

    .line 1
    invoke-static {p3}, Lm0/i;->g(Lm0/i;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne p4, v1, :cond_0

    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p4, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v1, "shaders/vertex_shader_transformation_es3.glsl"

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-string v1, "shaders/vertex_shader_transformation_es2.glsl"

    .line 19
    .line 20
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const-string v4, "shaders/fragment_shader_oetf_es3.glsl"

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    if-eqz p4, :cond_3

    .line 26
    .line 27
    const-string v4, "shaders/fragment_shader_transformation_sdr_oetf_es2.glsl"

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    const-string v4, "shaders/fragment_shader_copy_es2.glsl"

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    const-string v4, "shaders/fragment_shader_transformation_es2.glsl"

    .line 40
    .line 41
    :goto_2
    invoke-static {p0, v1, v4}, LA0/m;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lp0/o;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget p3, p3, Lm0/i;->c:I

    .line 46
    .line 47
    const-string v1, "uOutputColorTransfer"

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    const/4 p4, 0x7

    .line 52
    if-eq p3, p4, :cond_5

    .line 53
    .line 54
    const/4 p4, 0x6

    .line 55
    if-ne p3, p4, :cond_6

    .line 56
    .line 57
    :cond_5
    const/4 v2, 0x1

    .line 58
    :cond_6
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p3, v1}, Lp0/o;->g(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_7
    if-eqz p4, :cond_a

    .line 66
    .line 67
    const/4 p4, 0x3

    .line 68
    if-eq p3, p4, :cond_8

    .line 69
    .line 70
    const/16 p4, 0xa

    .line 71
    .line 72
    if-ne p3, p4, :cond_9

    .line 73
    .line 74
    :cond_8
    const/4 v2, 0x1

    .line 75
    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p3, v1}, Lp0/o;->g(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_a
    :goto_3
    new-instance p3, LA0/m;

    .line 82
    .line 83
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p2}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p3, p0, p1, p2, v0}, LA0/m;-><init>(Lp0/o;Lz4/H;Lz4/H;Z)V

    .line 92
    .line 93
    .line 94
    return-object p3
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lp0/o;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lp0/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lp0/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lp0/b;->j()[F

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "uTexTransformationMatrix"

    .line 11
    .line 12
    invoke-virtual {v0, p1, p0}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p0

    .line 19
    :goto_0
    new-instance p1, Lm0/o0;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public static m(Lp0/o;Lm0/i;Lm0/i;ILz4/d0;)LA0/m;
    .locals 7

    .line 1
    invoke-static {p1}, Lm0/i;->g(Lm0/i;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p1, p1, Lm0/i;->a:I

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq p1, v3, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-ne p1, v4, :cond_1

    .line 14
    .line 15
    :cond_0
    iget p1, p2, Lm0/i;->a:I

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    iget p2, p2, Lm0/i;->c:I

    .line 23
    .line 24
    const/4 v4, 0x7

    .line 25
    const/4 v5, 0x3

    .line 26
    const-string v6, "uOutputColorTransfer"

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    const/16 p3, 0xa

    .line 31
    .line 32
    if-ne p2, v5, :cond_2

    .line 33
    .line 34
    const/16 p2, 0xa

    .line 35
    .line 36
    :cond_2
    if-eq p2, v3, :cond_4

    .line 37
    .line 38
    if-eq p2, p3, :cond_4

    .line 39
    .line 40
    if-eq p2, v1, :cond_4

    .line 41
    .line 42
    if-ne p2, v4, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 p3, 0x0

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    :goto_1
    const/4 p3, 0x1

    .line 48
    :goto_2
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2, v6}, Lp0/o;->g(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_7

    .line 55
    :cond_5
    if-eqz p1, :cond_8

    .line 56
    .line 57
    if-eq p2, v3, :cond_7

    .line 58
    .line 59
    if-eq p2, v1, :cond_7

    .line 60
    .line 61
    if-ne p2, v4, :cond_6

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_6
    const/4 p3, 0x0

    .line 65
    goto :goto_4

    .line 66
    :cond_7
    :goto_3
    const/4 p3, 0x1

    .line 67
    :goto_4
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2, v6}, Lp0/o;->g(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_8
    const-string v1, "uSdrWorkingColorSpace"

    .line 75
    .line 76
    invoke-virtual {p0, p3, v1}, Lp0/o;->g(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-eq p2, v5, :cond_a

    .line 80
    .line 81
    if-ne p2, v3, :cond_9

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_9
    const/4 p3, 0x0

    .line 85
    goto :goto_6

    .line 86
    :cond_a
    :goto_5
    const/4 p3, 0x1

    .line 87
    :goto_6
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2, v6}, Lp0/o;->g(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_7
    new-instance p2, LA0/m;

    .line 94
    .line 95
    sget-object p3, Lz4/d0;->K:Lz4/d0;

    .line 96
    .line 97
    if-nez v0, :cond_b

    .line 98
    .line 99
    if-eqz p1, :cond_c

    .line 100
    .line 101
    :cond_b
    const/4 v2, 0x1

    .line 102
    :cond_c
    invoke-direct {p2, p0, p4, p3, v2}, LA0/m;-><init>(Lp0/o;Lz4/H;Lz4/H;Z)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method

.method public static o([[F[[F)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-ge v1, v3, :cond_2

    .line 6
    .line 7
    aget-object v3, p0, v1

    .line 8
    .line 9
    aget-object v4, p1, v1

    .line 10
    .line 11
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-nez v5, :cond_1

    .line 16
    .line 17
    array-length v2, v4

    .line 18
    const/16 v5, 0x10

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-ne v2, v5, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_1
    const-string v5, "A 4x4 transformation matrix must have 16 elements"

    .line 27
    .line 28
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    array-length v2, v4

    .line 32
    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return v2
.end method


# virtual methods
.method public final g(II)Lp0/F;
    .locals 1

    .line 1
    iget-object v0, p0, LA0/m;->i:Lz4/H;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, LA0/Q;->c(IILjava/util/List;)Lp0/F;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final h(IJ)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LA0/m;->h:Lp0/o;

    .line 4
    .line 5
    iget-object v2, v1, LA0/m;->j:Lz4/H;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0x10

    .line 12
    .line 13
    filled-new-array {v3, v4}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, [[F

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    if-gtz v6, :cond_7

    .line 32
    .line 33
    iget-object v6, v1, LA0/m;->l:[[F

    .line 34
    .line 35
    invoke-static {v6, v3}, LA0/m;->o([[F[[F)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v9, v1, LA0/m;->n:[F

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v9}, Lp0/b;->F([F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-gtz v3, :cond_6

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    :goto_0
    iget-object v3, v1, LA0/m;->i:Lz4/H;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    filled-new-array {v8, v4}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, [[F

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    :goto_1
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-ge v5, v8, :cond_1

    .line 77
    .line 78
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, LA0/P;

    .line 83
    .line 84
    move-wide/from16 v10, p2

    .line 85
    .line 86
    invoke-interface {v8, v10, v11}, LA0/P;->b(J)[F

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    aput-object v8, v4, v5

    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-object v3, v1, LA0/m;->k:[[F

    .line 96
    .line 97
    invoke-static {v3, v4}, LA0/m;->o([[F[[F)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget-object v8, v1, LA0/m;->m:[F

    .line 102
    .line 103
    if-nez v4, :cond_2

    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    goto :goto_4

    .line 107
    :cond_2
    invoke-static {v8}, Lp0/b;->F([F)V

    .line 108
    .line 109
    .line 110
    sget-object v4, LA0/m;->s:Lz4/d0;

    .line 111
    .line 112
    iput-object v4, v1, LA0/m;->q:Lz4/d0;

    .line 113
    .line 114
    array-length v4, v3

    .line 115
    const/4 v10, 0x0

    .line 116
    :goto_2
    iget-object v15, v1, LA0/m;->o:[F

    .line 117
    .line 118
    if-ge v10, v4, :cond_4

    .line 119
    .line 120
    aget-object v14, v3, v10

    .line 121
    .line 122
    iget-object v13, v1, LA0/m;->m:[F

    .line 123
    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    const/16 v17, 0x0

    .line 128
    .line 129
    move-object v11, v15

    .line 130
    move-object/from16 v18, v13

    .line 131
    .line 132
    move-object v13, v14

    .line 133
    move-object v6, v14

    .line 134
    move/from16 v14, v17

    .line 135
    .line 136
    move-object v5, v15

    .line 137
    move-object/from16 v15, v18

    .line 138
    .line 139
    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 140
    .line 141
    .line 142
    array-length v11, v5

    .line 143
    invoke-static {v5, v7, v8, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    .line 145
    .line 146
    iget-object v5, v1, LA0/m;->q:Lz4/d0;

    .line 147
    .line 148
    invoke-static {v6, v5}, LA0/Q;->e([FLz4/H;)Lz4/d0;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v5}, LA0/Q;->a(Lz4/d0;)Lz4/d0;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iput-object v5, v1, LA0/m;->q:Lz4/d0;

    .line 157
    .line 158
    invoke-virtual {v5}, Lz4/d0;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v6, 0x3

    .line 163
    if-ge v5, v6, :cond_3

    .line 164
    .line 165
    :goto_3
    const/4 v6, 0x1

    .line 166
    goto :goto_4

    .line 167
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    move-object v5, v15

    .line 171
    invoke-static {v5, v7, v8, v7}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 172
    .line 173
    .line 174
    iget-object v3, v1, LA0/m;->q:Lz4/d0;

    .line 175
    .line 176
    invoke-static {v5, v3}, LA0/Q;->e([FLz4/H;)Lz4/d0;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iput-object v3, v1, LA0/m;->q:Lz4/d0;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :goto_4
    iget-object v2, v1, LA0/m;->q:Lz4/d0;

    .line 184
    .line 185
    invoke-virtual {v2}, Lz4/d0;->size()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    const/4 v3, 0x3

    .line 190
    if-ge v2, v3, :cond_5

    .line 191
    .line 192
    return-void

    .line 193
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Lp0/o;->i()V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, LA0/m;->n()V

    .line 197
    .line 198
    .line 199
    iget v2, v1, LA0/m;->p:I

    .line 200
    .line 201
    move/from16 v3, p1

    .line 202
    .line 203
    invoke-virtual {v0, v3, v2}, Lp0/o;->h(II)V

    .line 204
    .line 205
    .line 206
    const-string v2, "uTransformationMatrix"

    .line 207
    .line 208
    invoke-virtual {v0, v2, v8}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v9}, Lp0/o;->f([F)V

    .line 212
    .line 213
    .line 214
    iget-object v2, v1, LA0/m;->q:Lz4/d0;

    .line 215
    .line 216
    invoke-static {v2}, Lp0/b;->o(Lz4/d0;)[F

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v0, v2}, Lp0/o;->d([F)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lp0/o;->b()V

    .line 224
    .line 225
    .line 226
    iget-object v0, v1, LA0/m;->q:Lz4/d0;

    .line 227
    .line 228
    invoke-virtual {v0}, Lz4/d0;->size()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    const/4 v2, 0x6

    .line 233
    invoke-static {v2, v7, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v2, Lm0/o0;

    .line 242
    .line 243
    invoke-direct {v2, v0}, Lm0/o0;-><init>(Lp0/p;)V

    .line 244
    .line 245
    .line 246
    throw v2

    .line 247
    :cond_6
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    throw v8

    .line 255
    :cond_7
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    throw v8
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final n()V
    .locals 0

    .line 1
    return-void
.end method

.method public final release()V
    .locals 3

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
    iget-object v0, p0, LA0/m;->h:Lp0/o;

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

    .line 14
    .line 15
    .line 16
    iget v0, p0, LA0/m;->r:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    filled-new-array {v0}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lp0/b;->e()V
    :try_end_1
    .catch Lp0/p; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Lm0/o0;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :catch_1
    move-exception v0

    .line 42
    new-instance v1, Lm0/o0;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method
