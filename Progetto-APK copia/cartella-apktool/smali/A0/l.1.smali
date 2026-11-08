.class public final synthetic LA0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/P;


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final synthetic b(J)[F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LA0/O;->a(LA0/P;J)[F

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final synthetic c()I
    .locals 1

    .line 1
    const/16 v0, 0x2601

    .line 2
    .line 3
    return v0
.end method

.method public final d(II)Lp0/F;
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

.method public final bridge synthetic e(Landroid/content/Context;Z)LA0/K;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LA0/l;->f(Landroid/content/Context;Z)LA0/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final f(Landroid/content/Context;Z)LA0/m;
    .locals 2

    .line 1
    invoke-static {p0}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lz4/d0;->K:Lz4/d0;

    .line 6
    .line 7
    invoke-static {p1, v0, v1, p2}, LA0/m;->j(Landroid/content/Context;Lz4/d0;Lz4/d0;Z)LA0/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
