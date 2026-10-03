.class public final LP5/k;
.super LP5/o;
.source "SourceFile"


# virtual methods
.method public final a(LO5/t;LO5/t;)F
    .locals 8

    .line 1
    iget v0, p1, LO5/t;->G:I

    .line 2
    .line 3
    if-lez v0, :cond_2

    .line 4
    .line 5
    iget v0, p1, LO5/t;->H:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p2}, LO5/t;->a(LO5/t;)LO5/t;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, v0, LO5/t;->G:I

    .line 15
    .line 16
    int-to-float v2, v1

    .line 17
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    .line 19
    mul-float v2, v2, v3

    .line 20
    .line 21
    iget p1, p1, LO5/t;->G:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    div-float/2addr v2, p1

    .line 25
    cmpl-float p1, v2, v3

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    div-float p1, v3, v2

    .line 30
    .line 31
    float-to-double v4, p1

    .line 32
    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    double-to-float v2, v4

    .line 42
    :cond_1
    int-to-float p1, v1

    .line 43
    mul-float p1, p1, v3

    .line 44
    .line 45
    iget v1, p2, LO5/t;->G:I

    .line 46
    .line 47
    int-to-float v1, v1

    .line 48
    div-float/2addr p1, v1

    .line 49
    iget v0, v0, LO5/t;->H:I

    .line 50
    .line 51
    int-to-float v0, v0

    .line 52
    mul-float v0, v0, v3

    .line 53
    .line 54
    iget p2, p2, LO5/t;->H:I

    .line 55
    .line 56
    int-to-float p2, p2

    .line 57
    div-float/2addr v0, p2

    .line 58
    add-float/2addr v0, p1

    .line 59
    div-float/2addr v3, v0

    .line 60
    div-float/2addr v3, v0

    .line 61
    mul-float v3, v3, v2

    .line 62
    .line 63
    return v3

    .line 64
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method public final b(LO5/t;LO5/t;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, LO5/t;->a(LO5/t;)LO5/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Preview: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, "; Scaled: "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "; Want: "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "k"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget p1, v0, LO5/t;->G:I

    .line 41
    .line 42
    iget v1, p2, LO5/t;->G:I

    .line 43
    .line 44
    sub-int v1, p1, v1

    .line 45
    .line 46
    div-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    iget v0, v0, LO5/t;->H:I

    .line 49
    .line 50
    iget p2, p2, LO5/t;->H:I

    .line 51
    .line 52
    sub-int p2, v0, p2

    .line 53
    .line 54
    div-int/lit8 p2, p2, 0x2

    .line 55
    .line 56
    new-instance v2, Landroid/graphics/Rect;

    .line 57
    .line 58
    neg-int v3, v1

    .line 59
    neg-int v4, p2

    .line 60
    sub-int/2addr p1, v1

    .line 61
    sub-int/2addr v0, p2

    .line 62
    invoke-direct {v2, v3, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .line 64
    .line 65
    return-object v2
.end method
