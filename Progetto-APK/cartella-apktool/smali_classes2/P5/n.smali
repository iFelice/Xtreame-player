.class public final LP5/n;
.super LP5/o;
.source "SourceFile"


# virtual methods
.method public final a(LO5/t;LO5/t;)F
    .locals 6

    .line 1
    iget v0, p1, LO5/t;->G:I

    .line 2
    .line 3
    if-lez v0, :cond_4

    .line 4
    .line 5
    iget p1, p1, LO5/t;->H:I

    .line 6
    .line 7
    if-gtz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-float v1, v0

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    mul-float v1, v1, v2

    .line 14
    .line 15
    iget v3, p2, LO5/t;->G:I

    .line 16
    .line 17
    int-to-float v4, v3

    .line 18
    div-float/2addr v1, v4

    .line 19
    cmpg-float v4, v1, v2

    .line 20
    .line 21
    if-gez v4, :cond_1

    .line 22
    .line 23
    div-float v1, v2, v1

    .line 24
    .line 25
    :cond_1
    int-to-float p1, p1

    .line 26
    mul-float v4, p1, v2

    .line 27
    .line 28
    iget p2, p2, LO5/t;->H:I

    .line 29
    .line 30
    int-to-float p2, p2

    .line 31
    div-float/2addr v4, p2

    .line 32
    cmpg-float v5, v4, v2

    .line 33
    .line 34
    if-gez v5, :cond_2

    .line 35
    .line 36
    div-float v4, v2, v4

    .line 37
    .line 38
    :cond_2
    div-float v1, v2, v1

    .line 39
    .line 40
    div-float/2addr v1, v4

    .line 41
    int-to-float v0, v0

    .line 42
    mul-float v0, v0, v2

    .line 43
    .line 44
    div-float/2addr v0, p1

    .line 45
    int-to-float p1, v3

    .line 46
    mul-float p1, p1, v2

    .line 47
    .line 48
    div-float/2addr p1, p2

    .line 49
    div-float/2addr v0, p1

    .line 50
    cmpg-float p1, v0, v2

    .line 51
    .line 52
    if-gez p1, :cond_3

    .line 53
    .line 54
    div-float v0, v2, v0

    .line 55
    .line 56
    :cond_3
    div-float/2addr v2, v0

    .line 57
    div-float/2addr v2, v0

    .line 58
    div-float/2addr v2, v0

    .line 59
    mul-float v2, v2, v1

    .line 60
    .line 61
    return v2

    .line 62
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 63
    return p1
.end method

.method public final b(LO5/t;LO5/t;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, p2, LO5/t;->G:I

    .line 4
    .line 5
    iget p2, p2, LO5/t;->H:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method
