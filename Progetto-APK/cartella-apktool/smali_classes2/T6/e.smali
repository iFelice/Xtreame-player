.class public abstract LT6/e;
.super LT6/a;
.source "SourceFile"


# instance fields
.field public final G:LU6/c;

.field public final H:LV6/b;

.field public I:F

.field public J:F

.field public K:LU6/a;

.field public L:Landroid/graphics/Rect;

.field public final M:Ljava/util/HashMap;

.field public transient N:Landroid/graphics/Paint;

.field public O:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(LU6/c;LV6/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LT6/e;->M:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LT6/e;->O:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, LT6/e;->G:LU6/c;

    .line 19
    .line 20
    iput-object p2, p0, LT6/e;->H:LV6/b;

    .line 21
    .line 22
    return-void
.end method

.method public static q(Landroid/graphics/Paint$Align;)I
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x4

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x4

    .line 8
    :goto_0
    return p0
.end method

.method public static s(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Double;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
.end method


# virtual methods
.method public abstract k(Ljava/util/ArrayList;Ljava/util/ArrayList;)[LT6/b;
.end method

.method public final l(LU6/d;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;FIII)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p9

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    .line 6
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 7
    invoke-virtual/range {v1 .. v6}, LT6/e;->m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;F)V

    move-object/from16 v12, p0

    .line 8
    invoke-virtual {v12, v10}, LT6/e;->u(LV6/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, LT6/e;->r()LT6/d;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 10
    invoke-virtual/range {v1 .. v6}, LT6/d;->m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;F)V

    .line 11
    :cond_0
    iget v1, v10, LV6/d;->P:F

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v13, 0x1

    move/from16 v1, p8

    if-ne v1, v13, :cond_1

    .line 12
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 14
    :goto_0
    iget-boolean v1, v10, LV6/d;->N:Z

    if-eqz v1, :cond_8

    .line 15
    iget-object v1, v10, LV6/d;->Q:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 16
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v14, v10, LV6/d;->R:F

    const/4 v15, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-le v1, v15, :cond_7

    .line 17
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 18
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v5, 0x0

    .line 19
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_8

    .line 20
    iget v3, v10, LV6/d;->O:I

    if-ne v5, v15, :cond_5

    .line 21
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v3, v3

    const/4 v15, 0x3

    cmpl-float v4, v4, v3

    if-gtz v4, :cond_3

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move v13, v5

    const/16 v16, 0x0

    goto/16 :goto_3

    .line 22
    :cond_3
    :goto_2
    invoke-virtual {v0, v11}, LU6/d;->d(I)D

    move-result-wide v1

    invoke-static {v7, v1, v2}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v16, v1, v14

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v13, v5

    move/from16 v5, v16

    const/16 v16, 0x0

    move-object/from16 v6, p3

    move-object v15, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    add-int/lit8 v1, v11, 0x1

    .line 23
    invoke-virtual {v0, v1}, LU6/d;->d(I)D

    move-result-wide v1

    invoke-static {v15, v1, v2}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v5, v1, v14

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    const/4 v7, 0x2

    .line 24
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    .line 25
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_4
    :goto_3
    const/16 v18, 0x2

    goto/16 :goto_4

    :cond_5
    move v13, v5

    move-object v15, v7

    const/4 v7, 0x2

    const/16 v16, 0x0

    if-le v13, v7, :cond_4

    .line 26
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-gtz v4, :cond_6

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    .line 27
    :cond_6
    div-int/lit8 v5, v13, 0x2

    add-int/2addr v5, v11

    invoke-virtual {v0, v5}, LU6/d;->d(I)D

    move-result-wide v1

    invoke-static {v15, v1, v2}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v5, v1, v14

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v15, v6

    move-object/from16 v6, p3

    const/16 v18, 0x2

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 28
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 29
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_4
    add-int/lit8 v5, v13, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x2

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0x0

    const/4 v10, 0x0

    .line 30
    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_8

    .line 31
    div-int/lit8 v1, v10, 0x2

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, LU6/d;->d(I)D

    move-result-wide v1

    const/4 v13, 0x0

    invoke-static {v13, v1, v2}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v5, v1, v14

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    add-int/lit8 v10, v10, 0x2

    goto :goto_5

    :cond_8
    return-void
.end method

.method public abstract m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;F)V
.end method

.method public final n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 1

    .line 1
    iget-object v0, p0, LT6/e;->H:LV6/b;

    .line 2
    .line 3
    iget v0, v0, LV6/b;->B0:I

    .line 4
    .line 5
    invoke-static {v0}, LA0/O;->s(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    neg-int v0, v0

    .line 10
    int-to-float v0, v0

    .line 11
    add-float/2addr v0, p6

    .line 12
    const/4 p6, 0x0

    .line 13
    cmpl-float p6, v0, p6

    .line 14
    .line 15
    if-eqz p6, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, LT6/a;->g(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    if-eqz p6, :cond_1

    .line 24
    .line 25
    neg-float p2, v0

    .line 26
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final o(Ljava/util/ArrayList;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 25

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v9, p4

    .line 6
    .line 7
    move/from16 v10, p5

    .line 8
    .line 9
    move/from16 v11, p7

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v12

    .line 15
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 16
    .line 17
    iget-boolean v13, v1, LV6/a;->K:Z

    .line 18
    .line 19
    iget-boolean v14, v1, LV6/a;->S:Z

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    if-eqz v14, :cond_0

    .line 23
    .line 24
    iget-object v1, v8, LT6/e;->N:Landroid/graphics/Paint;

    .line 25
    .line 26
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v8, LT6/e;->N:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget-object v2, v8, LT6/e;->H:LV6/b;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 42
    .line 43
    iget-boolean v7, v1, LV6/a;->M:Z

    .line 44
    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    const/high16 v17, 0x40800000    # 4.0f

    .line 49
    .line 50
    const/high16 v18, 0x40400000    # 3.0f

    .line 51
    .line 52
    if-ge v6, v12, :cond_4

    .line 53
    .line 54
    move-object/from16 v5, p1

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Double;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    int-to-double v1, v10

    .line 67
    sub-double v19, v3, p10

    .line 68
    .line 69
    mul-double v19, v19, p8

    .line 70
    .line 71
    add-double v1, v19, v1

    .line 72
    .line 73
    double-to-float v2, v1

    .line 74
    if-eqz v13, :cond_2

    .line 75
    .line 76
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 77
    .line 78
    iget v1, v1, LV6/b;->y0:I

    .line 79
    .line 80
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    .line 82
    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    int-to-float v1, v11

    .line 86
    iget-object v15, v8, LT6/e;->H:LV6/b;

    .line 87
    .line 88
    iget v15, v15, LV6/a;->O:F

    .line 89
    .line 90
    div-float v15, v15, v18

    .line 91
    .line 92
    add-float/2addr v15, v1

    .line 93
    move/from16 v19, v1

    .line 94
    .line 95
    move-object/from16 v1, p3

    .line 96
    .line 97
    move/from16 v22, v2

    .line 98
    .line 99
    move-wide v9, v3

    .line 100
    move/from16 v3, v19

    .line 101
    .line 102
    move/from16 v4, v22

    .line 103
    .line 104
    move v5, v15

    .line 105
    move v15, v6

    .line 106
    move-object/from16 v6, p4

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    move/from16 v22, v2

    .line 113
    .line 114
    move-wide v9, v3

    .line 115
    move v15, v6

    .line 116
    :goto_1
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-static {v1, v9, v10}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    int-to-float v1, v11

    .line 127
    iget-object v2, v8, LT6/e;->H:LV6/b;

    .line 128
    .line 129
    iget v4, v2, LV6/a;->O:F

    .line 130
    .line 131
    mul-float v4, v4, v17

    .line 132
    .line 133
    div-float v4, v4, v18

    .line 134
    .line 135
    add-float/2addr v4, v1

    .line 136
    const/4 v1, 0x0

    .line 137
    add-float v5, v4, v1

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    move-object/from16 v1, p0

    .line 144
    .line 145
    move-object/from16 v2, p3

    .line 146
    .line 147
    move/from16 v4, v22

    .line 148
    .line 149
    move-object/from16 v6, p4

    .line 150
    .line 151
    move v10, v7

    .line 152
    move v7, v9

    .line 153
    invoke-virtual/range {v1 .. v7}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    move/from16 v22, v2

    .line 158
    .line 159
    move v15, v6

    .line 160
    move v10, v7

    .line 161
    :goto_2
    if-eqz v14, :cond_3

    .line 162
    .line 163
    iget-object v1, v8, LT6/e;->N:Landroid/graphics/Paint;

    .line 164
    .line 165
    iget-object v2, v8, LT6/e;->H:LV6/b;

    .line 166
    .line 167
    iget-object v2, v2, LV6/b;->s0:[I

    .line 168
    .line 169
    aget v2, v2, v16

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    .line 173
    .line 174
    int-to-float v1, v11

    .line 175
    move/from16 v2, p6

    .line 176
    .line 177
    int-to-float v3, v2

    .line 178
    iget-object v4, v8, LT6/e;->N:Landroid/graphics/Paint;

    .line 179
    .line 180
    move-object/from16 v19, p3

    .line 181
    .line 182
    move/from16 v20, v22

    .line 183
    .line 184
    move/from16 v21, v1

    .line 185
    .line 186
    move/from16 v23, v3

    .line 187
    .line 188
    move-object/from16 v24, v4

    .line 189
    .line 190
    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    move/from16 v2, p6

    .line 195
    .line 196
    :goto_3
    add-int/lit8 v6, v15, 0x1

    .line 197
    .line 198
    move-object/from16 v9, p4

    .line 199
    .line 200
    move v7, v10

    .line 201
    const/4 v15, 0x0

    .line 202
    move/from16 v10, p5

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_4
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 212
    .line 213
    iget-boolean v9, v1, LV6/a;->M:Z

    .line 214
    .line 215
    if-eqz v13, :cond_7

    .line 216
    .line 217
    iget v1, v1, LV6/b;->y0:I

    .line 218
    .line 219
    move-object/from16 v10, p4

    .line 220
    .line 221
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    .line 223
    .line 224
    array-length v12, v0

    .line 225
    const/4 v13, 0x0

    .line 226
    :goto_4
    if-ge v13, v12, :cond_7

    .line 227
    .line 228
    aget-object v7, v0, v13

    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 231
    .line 232
    .line 233
    move-result-wide v1

    .line 234
    cmpg-double v3, p10, v1

    .line 235
    .line 236
    if-gtz v3, :cond_6

    .line 237
    .line 238
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 239
    .line 240
    .line 241
    move-result-wide v1

    .line 242
    cmpg-double v3, v1, p12

    .line 243
    .line 244
    if-gtz v3, :cond_6

    .line 245
    .line 246
    move/from16 v14, p5

    .line 247
    .line 248
    int-to-double v1, v14

    .line 249
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 250
    .line 251
    .line 252
    move-result-wide v3

    .line 253
    sub-double v3, v3, p10

    .line 254
    .line 255
    mul-double v3, v3, p8

    .line 256
    .line 257
    add-double/2addr v3, v1

    .line 258
    double-to-float v15, v3

    .line 259
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 260
    .line 261
    iget v1, v1, LV6/b;->y0:I

    .line 262
    .line 263
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    .line 265
    .line 266
    if-eqz v9, :cond_5

    .line 267
    .line 268
    int-to-float v3, v11

    .line 269
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 270
    .line 271
    iget v1, v1, LV6/a;->O:F

    .line 272
    .line 273
    div-float v1, v1, v18

    .line 274
    .line 275
    add-float v5, v1, v3

    .line 276
    .line 277
    move-object/from16 v1, p3

    .line 278
    .line 279
    move v2, v15

    .line 280
    move v4, v15

    .line 281
    move-object/from16 v6, p4

    .line 282
    .line 283
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    .line 285
    .line 286
    :cond_5
    iget-object v1, v8, LT6/e;->H:LV6/b;

    .line 287
    .line 288
    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v2, v1, LV6/b;->j0:Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    move-object v3, v2

    .line 296
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .line 298
    monitor-exit v1

    .line 299
    int-to-float v1, v11

    .line 300
    iget-object v2, v8, LT6/e;->H:LV6/b;

    .line 301
    .line 302
    iget v2, v2, LV6/a;->O:F

    .line 303
    .line 304
    mul-float v2, v2, v17

    .line 305
    .line 306
    div-float v2, v2, v18

    .line 307
    .line 308
    add-float/2addr v2, v1

    .line 309
    const/16 v16, 0x0

    .line 310
    .line 311
    add-float v5, v2, v16

    .line 312
    .line 313
    const/4 v7, 0x0

    .line 314
    move-object/from16 v1, p0

    .line 315
    .line 316
    move-object/from16 v2, p3

    .line 317
    .line 318
    move v4, v15

    .line 319
    move-object/from16 v6, p4

    .line 320
    .line 321
    invoke-virtual/range {v1 .. v7}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    monitor-exit v1

    .line 327
    throw v0

    .line 328
    :cond_6
    move/from16 v14, p5

    .line 329
    .line 330
    const/16 v16, 0x0

    .line 331
    .line 332
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_7
    return-void
.end method

.method public final p(Ljava/util/HashMap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 33

    .line 1
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    .line 2
    iget-object v11, v7, LT6/e;->H:LV6/b;

    iget v12, v11, LV6/b;->B0:I

    .line 3
    iget-boolean v13, v11, LV6/a;->R:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    .line 4
    iget-object v0, v7, LT6/e;->N:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, v7, LT6/e;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    :cond_0
    iget-boolean v15, v11, LV6/a;->L:Z

    .line 7
    iget-boolean v6, v11, LV6/a;->M:Z

    const/16 v16, 0x0

    move/from16 v5, p4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_c

    .line 8
    iget-object v0, v11, LV6/b;->v0:[Landroid/graphics/Paint$Align;

    .line 9
    aget-object v0, v0, v4

    .line 10
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_b

    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/Double;

    move-object/from16 v17, v2

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move/from16 v18, v0

    .line 14
    iget-object v0, v11, LV6/b;->x0:[Landroid/graphics/Paint$Align;

    .line 15
    aget-object v0, v0, v4

    .line 16
    invoke-virtual {v11, v4, v14}, LV6/b;->b(ILjava/lang/Double;)Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v1

    if-eqz v14, :cond_1

    move/from16 v14, p7

    move-wide/from16 v21, v2

    const/16 v20, 0x1

    goto :goto_2

    :cond_1
    move/from16 v14, p7

    move-wide/from16 v21, v2

    const/16 v20, 0x0

    :goto_2
    int-to-double v1, v14

    .line 17
    aget-wide v23, p8, v4

    aget-wide v25, p9, v4

    sub-double v25, v21, v25

    mul-double v25, v25, v23

    sub-double v1, v1, v25

    double-to-float v2, v1

    const/4 v1, 0x1

    if-ne v12, v1, :cond_7

    if-eqz v15, :cond_5

    if-nez v20, :cond_5

    .line 18
    iget-object v1, v11, LV6/b;->z0:[I

    .line 19
    aget v1, v1, v4

    .line 20
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v0, v1, :cond_3

    if-eqz v6, :cond_2

    .line 22
    invoke-static {v0}, LT6/e;->q(Landroid/graphics/Paint$Align;)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v1, v0

    int-to-float v3, v9

    move-object/from16 v0, p2

    move-wide/from16 v31, v21

    move/from16 v22, v2

    move/from16 v21, v15

    move-wide/from16 v14, v31

    move/from16 v29, v4

    move/from16 v4, v22

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    move/from16 v29, v4

    move-wide/from16 v31, v21

    move/from16 v22, v2

    move/from16 v21, v15

    move-wide/from16 v14, v31

    .line 23
    :goto_3
    iget-object v0, v11, LV6/b;->A0:[Ljava/text/NumberFormat;

    .line 24
    aget-object v0, v0, v29

    .line 25
    invoke-static {v0, v14, v15}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v9

    const/4 v1, 0x0

    sub-float v3, v0, v1

    .line 26
    iget v0, v11, LV6/b;->w0:F

    sub-float v4, v22, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move/from16 v30, v6

    move v6, v14

    .line 27
    invoke-virtual/range {v0 .. v6}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_4

    :cond_3
    move/from16 v29, v4

    move/from16 v30, v6

    move-wide/from16 v31, v21

    move/from16 v22, v2

    move/from16 v21, v15

    move-wide/from16 v14, v31

    if-eqz v30, :cond_4

    int-to-float v1, v10

    .line 28
    invoke-static {v0}, LT6/e;->q(Landroid/graphics/Paint$Align;)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v3, v0

    move-object/from16 v0, p2

    move/from16 v2, v22

    move/from16 v4, v22

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 29
    :cond_4
    iget-object v0, v11, LV6/b;->A0:[Ljava/text/NumberFormat;

    .line 30
    aget-object v0, v0, v29

    .line 31
    invoke-static {v0, v14, v15}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v10

    const/4 v1, 0x0

    add-float v3, v0, v1

    .line 32
    iget v0, v11, LV6/b;->w0:F

    sub-float v4, v22, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    .line 33
    invoke-virtual/range {v0 .. v6}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_4

    :cond_5
    move/from16 v22, v2

    move/from16 v29, v4

    move/from16 v30, v6

    move/from16 v21, v15

    :goto_4
    if-eqz v13, :cond_6

    .line 34
    iget-object v0, v7, LT6/e;->N:Landroid/graphics/Paint;

    .line 35
    iget-object v1, v11, LV6/b;->s0:[I

    .line 36
    aget v1, v1, v29

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v9

    int-to-float v1, v10

    .line 38
    iget-object v2, v7, LT6/e;->N:Landroid/graphics/Paint;

    move-object/from16 v23, p2

    move/from16 v24, v0

    move/from16 v25, v22

    move/from16 v26, v1

    move/from16 v27, v22

    move-object/from16 v28, v2

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_7
    move/from16 v29, v4

    move/from16 v30, v6

    move-wide/from16 v31, v21

    move/from16 v22, v2

    move/from16 v21, v15

    move-wide/from16 v14, v31

    const/4 v1, 0x2

    if-ne v12, v1, :cond_6

    if-eqz v21, :cond_9

    if-nez v20, :cond_9

    .line 39
    iget-object v1, v11, LV6/b;->z0:[I

    .line 40
    aget v1, v1, v29

    .line 41
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v30, :cond_8

    .line 42
    invoke-static {v0}, LT6/e;->q(Landroid/graphics/Paint$Align;)I

    move-result v0

    sub-int v0, v10, v0

    int-to-float v1, v0

    int-to-float v3, v10

    move-object/from16 v0, p2

    move/from16 v2, v22

    move/from16 v4, v22

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_8
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v14, v15}, LT6/a;->h(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v10, 0xa

    int-to-float v0, v0

    const/4 v14, 0x0

    add-float v3, v0, v14

    .line 44
    iget v0, v11, LV6/b;->w0:F

    sub-float v4, v22, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    .line 45
    invoke-virtual/range {v0 .. v6}, LT6/e;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    if-eqz v13, :cond_a

    .line 46
    iget-object v0, v7, LT6/e;->N:Landroid/graphics/Paint;

    .line 47
    iget-object v1, v11, LV6/b;->s0:[I

    .line 48
    aget v1, v1, v29

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v30, :cond_a

    int-to-float v0, v10

    int-to-float v1, v9

    .line 50
    iget-object v2, v7, LT6/e;->N:Landroid/graphics/Paint;

    move-object/from16 v23, p2

    move/from16 v24, v0

    move/from16 v25, v22

    move/from16 v26, v1

    move/from16 v27, v22

    move-object/from16 v28, v2

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_a
    :goto_6
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v3, p1

    move/from16 v5, p4

    move-object/from16 v2, v17

    move/from16 v1, v19

    move/from16 v15, v21

    move/from16 v4, v29

    move/from16 v6, v30

    goto/16 :goto_1

    :cond_b
    move/from16 v29, v4

    move/from16 v30, v6

    move/from16 v21, v15

    add-int/lit8 v4, v29, 0x1

    move/from16 v5, p4

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public r()LT6/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final t([D[DI)Ljava/util/HashMap;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p3, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    aget-wide v3, p1, v1

    .line 14
    .line 15
    aget-wide v5, p2, v1

    .line 16
    .line 17
    iget-object v7, p0, LT6/e;->H:LV6/b;

    .line 18
    .line 19
    iget v7, v7, LV6/b;->i0:I

    .line 20
    .line 21
    invoke-static {v3, v4, v5, v6, v7}, LX6/b;->a(DDI)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, LT6/e;->s(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method public u(LV6/d;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final v(FFI)[D
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v7, v0, LT6/e;->H:LV6/b;

    .line 13
    .line 14
    iget-object v8, v7, LV6/b;->d0:[D

    .line 15
    .line 16
    aget-wide v9, v8, v3

    .line 17
    .line 18
    iget-object v8, v7, LV6/b;->e0:[D

    .line 19
    .line 20
    aget-wide v11, v8, v3

    .line 21
    .line 22
    iget-object v8, v7, LV6/b;->f0:[D

    .line 23
    .line 24
    aget-wide v13, v8, v3

    .line 25
    .line 26
    iget-object v8, v7, LV6/b;->g0:[D

    .line 27
    .line 28
    aget-wide v15, v8, v3

    .line 29
    .line 30
    invoke-virtual {v7, v3}, LV6/b;->f(I)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v7, v3}, LV6/b;->d(I)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    invoke-virtual {v7, v3}, LV6/b;->g(I)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    invoke-virtual {v7, v3}, LV6/b;->e(I)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    :cond_0
    iget-object v7, v0, LT6/e;->M:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, [D

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    aget-wide v9, v3, v6

    .line 69
    .line 70
    aget-wide v11, v3, v5

    .line 71
    .line 72
    aget-wide v13, v3, v4

    .line 73
    .line 74
    const/4 v7, 0x3

    .line 75
    aget-wide v15, v3, v7

    .line 76
    .line 77
    :cond_1
    iget-object v3, v0, LT6/e;->L:Landroid/graphics/Rect;

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    int-to-float v7, v7

    .line 84
    sub-float/2addr v1, v7

    .line 85
    float-to-double v7, v1

    .line 86
    sub-double/2addr v11, v9

    .line 87
    mul-double v11, v11, v7

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    int-to-double v7, v1

    .line 94
    div-double/2addr v11, v7

    .line 95
    add-double/2addr v11, v9

    .line 96
    iget-object v1, v0, LT6/e;->L:Landroid/graphics/Rect;

    .line 97
    .line 98
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v1, v3

    .line 105
    int-to-float v1, v1

    .line 106
    sub-float/2addr v1, v2

    .line 107
    float-to-double v1, v1

    .line 108
    sub-double/2addr v15, v13

    .line 109
    mul-double v15, v15, v1

    .line 110
    .line 111
    iget-object v1, v0, LT6/e;->L:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    int-to-double v1, v1

    .line 118
    div-double/2addr v15, v1

    .line 119
    add-double/2addr v15, v13

    .line 120
    new-array v1, v4, [D

    .line 121
    .line 122
    aput-wide v11, v1, v6

    .line 123
    .line 124
    aput-wide v15, v1, v5

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_2
    float-to-double v7, v1

    .line 128
    float-to-double v1, v2

    .line 129
    new-array v3, v4, [D

    .line 130
    .line 131
    aput-wide v7, v3, v6

    .line 132
    .line 133
    aput-wide v1, v3, v5

    .line 134
    .line 135
    return-object v3
.end method

.method public final w(Landroid/graphics/Canvas;FZ)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget p3, p0, LT6/e;->I:F

    .line 6
    .line 7
    div-float/2addr v0, p3

    .line 8
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 9
    .line 10
    .line 11
    iget p3, p0, LT6/e;->J:F

    .line 12
    .line 13
    neg-float v0, p3

    .line 14
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    .line 16
    .line 17
    neg-float p2, p2

    .line 18
    iget-object p3, p0, LT6/e;->K:LU6/a;

    .line 19
    .line 20
    iget v0, p3, LU6/a;->G:F

    .line 21
    .line 22
    iget p3, p3, LU6/a;->H:F

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p3, p0, LT6/e;->K:LU6/a;

    .line 29
    .line 30
    iget v1, p3, LU6/a;->G:F

    .line 31
    .line 32
    iget p3, p3, LU6/a;->H:F

    .line 33
    .line 34
    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 35
    .line 36
    .line 37
    iget p2, p0, LT6/e;->J:F

    .line 38
    .line 39
    neg-float p3, p2

    .line 40
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    .line 42
    .line 43
    iget p2, p0, LT6/e;->I:F

    .line 44
    .line 45
    div-float/2addr v0, p2

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
