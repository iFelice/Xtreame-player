.class public abstract Landroidx/leanback/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public final r1:Landroidx/leanback/widget/q;

.field public s1:Z

.field public t1:Z

.field public u1:LO1/H;

.field public v1:LO1/T;

.field public w1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/leanback/widget/f;->s1:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/leanback/widget/f;->t1:Z

    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    iput p2, p0, Landroidx/leanback/widget/f;->w1:I

    .line 12
    .line 13
    new-instance p2, Landroidx/leanback/widget/q;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Landroidx/leanback/widget/q;-><init>(Landroidx/leanback/widget/f;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 24
    .line 25
    .line 26
    const/high16 p2, 0x40000

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()LO1/H;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, LO1/j;

    .line 49
    .line 50
    iput-boolean v0, p1, LO1/j;->g:Z

    .line 51
    .line 52
    new-instance p1, Landroidx/leanback/widget/a;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/f;)V

    .line 55
    .line 56
    .line 57
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(LO1/T;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final focusSearch(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 8
    .line 9
    iget v1, v0, Landroidx/leanback/widget/q;->B:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, LO1/L;->s(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->B:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LO1/L;->s(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ge p2, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 20
    .line 21
    if-ge p2, v1, :cond_2

    .line 22
    .line 23
    add-int/2addr v0, p1

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    sub-int p2, v0, p2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p2, v0

    .line 30
    :goto_0
    return p2
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->Z:I

    .line 4
    .line 5
    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->V:I

    .line 4
    .line 5
    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->N:I

    .line 4
    .line 5
    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->N:I

    .line 4
    .line 5
    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/f;->w1:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    iget v0, v0, Landroidx/leanback/widget/u;->b:I

    .line 10
    .line 11
    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    iget v0, v0, Landroidx/leanback/widget/u;->c:F

    .line 10
    .line 11
    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    iget v0, v0, Landroidx/leanback/widget/u;->a:I

    .line 10
    .line 11
    return v0
.end method

.method public getOnUnhandledKeyListener()Landroidx/leanback/widget/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 4
    .line 5
    iget v0, v0, LV/b;->c:I

    .line 6
    .line 7
    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 4
    .line 5
    iget v0, v0, LV/b;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->B:I

    .line 4
    .line 5
    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->C:I

    .line 4
    .line 5
    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->O:I

    .line 4
    .line 5
    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/q;->O:I

    .line 4
    .line 5
    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    iget v0, v0, Landroidx/leanback/widget/Y;->f:I

    .line 10
    .line 11
    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    iget v0, v0, Landroidx/leanback/widget/Y;->g:I

    .line 10
    .line 11
    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    iget v0, v0, Landroidx/leanback/widget/Y;->h:F

    .line 10
    .line 11
    return v0
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/f;->t1:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 4
    .line 5
    and-int/lit8 v1, v1, 0x40

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/q;->y1(IZ)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->k0(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget p1, p2, Landroidx/leanback/widget/q;->B:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p2, p1}, LO1/L;->s(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/view/View;->hasFocusable()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->V:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    if-eq v1, v4, :cond_0

    .line 11
    .line 12
    iget v1, v0, Landroidx/leanback/widget/q;->B:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, LO1/L;->s(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    invoke-virtual {v0}, LO1/L;->x()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit8 v4, p1, 0x2

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    move v4, v1

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    const/4 v5, -0x1

    .line 41
    :goto_0
    iget-object v6, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 42
    .line 43
    iget-object v6, v6, Ll/D;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v6, Landroidx/leanback/widget/Y;

    .line 46
    .line 47
    iget v7, v6, Landroidx/leanback/widget/Y;->j:I

    .line 48
    .line 49
    iget v8, v6, Landroidx/leanback/widget/Y;->i:I

    .line 50
    .line 51
    sub-int/2addr v8, v7

    .line 52
    iget v6, v6, Landroidx/leanback/widget/Y;->k:I

    .line 53
    .line 54
    sub-int/2addr v8, v6

    .line 55
    add-int/2addr v8, v7

    .line 56
    :goto_1
    if-eq v1, v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    iget-object v9, v0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 69
    .line 70
    invoke-virtual {v9, v6}, LO1/y;->d(Landroid/view/View;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-lt v9, v7, :cond_2

    .line 75
    .line 76
    iget-object v9, v0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 77
    .line 78
    invoke-virtual {v9, v6}, LO1/y;->b(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-gt v9, v8, :cond_2

    .line 83
    .line 84
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    add-int/2addr v1, v5

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v2, 0x0

    .line 94
    :goto_2
    move v3, v2

    .line 95
    :cond_4
    :goto_3
    return v3
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->r:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    const/high16 v1, 0x40000

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-ne p1, v3, :cond_0

    .line 17
    .line 18
    const/high16 v1, 0x80000

    .line 19
    .line 20
    :goto_0
    iget v4, v0, Landroidx/leanback/widget/q;->z:I

    .line 21
    .line 22
    const/high16 v5, 0xc0000

    .line 23
    .line 24
    and-int/2addr v5, v4

    .line 25
    if-ne v5, v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const v5, -0xc0001

    .line 29
    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    or-int/2addr v1, v4

    .line 33
    or-int/lit16 v1, v1, 0x100

    .line 34
    .line 35
    iput v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 38
    .line 39
    iget-object v0, v0, Ll/D;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 42
    .line 43
    if-ne p1, v3, :cond_3

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    :cond_3
    iput-boolean v2, v0, Landroidx/leanback/widget/Y;->l:Z

    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public final q0(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Lb0/a;->c:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x4

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 19
    .line 20
    iget v3, v2, Landroidx/leanback/widget/q;->z:I

    .line 21
    .line 22
    and-int/lit16 v3, v3, -0x1801

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const/16 p2, 0x800

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p2, 0x0

    .line 30
    :goto_0
    or-int/2addr p2, v3

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x1000

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_1
    or-int/2addr p2, v1

    .line 38
    iput p2, v2, Landroidx/leanback/widget/q;->z:I

    .line 39
    .line 40
    const/4 p2, 0x6

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v4, v2, Landroidx/leanback/widget/q;->z:I

    .line 52
    .line 53
    and-int/lit16 v4, v4, -0x6001

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    const/16 p2, 0x2000

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 p2, 0x0

    .line 61
    :goto_2
    or-int/2addr p2, v4

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    const/16 v3, 0x4000

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/4 v3, 0x0

    .line 68
    :goto_3
    or-int/2addr p2, v3

    .line 69
    iput p2, v2, Landroidx/leanback/widget/q;->z:I

    .line 70
    .line 71
    const/16 p2, 0x8

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 v3, 0x2

    .line 78
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iget v3, v2, Landroidx/leanback/widget/q;->r:I

    .line 83
    .line 84
    if-ne v3, v1, :cond_4

    .line 85
    .line 86
    iput p2, v2, Landroidx/leanback/widget/q;->O:I

    .line 87
    .line 88
    iput p2, v2, Landroidx/leanback/widget/q;->P:I

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    iput p2, v2, Landroidx/leanback/widget/q;->O:I

    .line 92
    .line 93
    iput p2, v2, Landroidx/leanback/widget/q;->Q:I

    .line 94
    .line 95
    :goto_4
    const/4 p2, 0x7

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    iget v1, v2, Landroidx/leanback/widget/q;->r:I

    .line 105
    .line 106
    if-nez v1, :cond_5

    .line 107
    .line 108
    iput p2, v2, Landroidx/leanback/widget/q;->N:I

    .line 109
    .line 110
    iput p2, v2, Landroidx/leanback/widget/q;->P:I

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    iput p2, v2, Landroidx/leanback/widget/q;->N:I

    .line 114
    .line 115
    iput p2, v2, Landroidx/leanback/widget/q;->Q:I

    .line 116
    .line 117
    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/f;->setGravity(I)V

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/f;->s1:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/leanback/widget/f;->s1:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()LO1/H;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/leanback/widget/f;->u1:LO1/H;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(LO1/H;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/f;->u1:LO1/H;

    .line 21
    .line 22
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(LO1/H;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/q;->H:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, LO1/L;->x()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, v0, Landroidx/leanback/widget/q;->H:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->Z:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ltz v1, :cond_1

    .line 9
    .line 10
    iput p1, v0, Landroidx/leanback/widget/q;->Z:I

    .line 11
    .line 12
    invoke-virtual {v0}, LO1/L;->D0()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "ExtraLayoutSpace must >= 0"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "Invalid scrollStrategy"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 19
    .line 20
    iput p1, v0, Landroidx/leanback/widget/q;->V:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x60000

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/high16 v0, 0x40000

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 12
    .line 13
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 14
    .line 15
    const v2, -0x8001

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const p1, 0x8000

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_1
    or-int/2addr p1, v1

    .line 27
    iput p1, v0, Landroidx/leanback/widget/q;->z:I

    .line 28
    .line 29
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/q;->R:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/f;->t1:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setHorizontalSpacing(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->r:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Landroidx/leanback/widget/q;->N:I

    .line 8
    .line 9
    iput p1, v0, Landroidx/leanback/widget/q;->P:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, v0, Landroidx/leanback/widget/q;->N:I

    .line 13
    .line 14
    iput p1, v0, Landroidx/leanback/widget/q;->Q:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/f;->w1:I

    .line 2
    .line 3
    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v1, v1, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    iput p1, v1, Landroidx/leanback/widget/u;->b:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->z1()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v1, v1, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    cmpg-float v2, p1, v2

    .line 14
    .line 15
    if-ltz v2, :cond_0

    .line 16
    .line 17
    const/high16 v2, 0x42c80000    # 100.0f

    .line 18
    .line 19
    cmpl-float v2, p1, v2

    .line 20
    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 24
    .line 25
    cmpl-float v2, p1, v2

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    :cond_1
    iput p1, v1, Landroidx/leanback/widget/u;->c:F

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->z1()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v1, v1, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    iput-boolean p1, v1, Landroidx/leanback/widget/u;->d:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->z1()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 4
    .line 5
    iget-object v1, v1, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/leanback/widget/u;

    .line 8
    .line 9
    iput p1, v1, Landroidx/leanback/widget/u;->a:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->z1()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setItemSpacing(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iput p1, v0, Landroidx/leanback/widget/q;->N:I

    .line 4
    .line 5
    iput p1, v0, Landroidx/leanback/widget/q;->O:I

    .line 6
    .line 7
    iput p1, v0, Landroidx/leanback/widget/q;->Q:I

    .line 8
    .line 9
    iput p1, v0, Landroidx/leanback/widget/q;->P:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 4
    .line 5
    and-int/lit16 v2, v1, 0x200

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eq v2, p1, :cond_2

    .line 14
    .line 15
    and-int/lit16 v1, v1, -0x201

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/16 v3, 0x200

    .line 20
    .line 21
    :cond_1
    or-int p1, v1, v3

    .line 22
    .line 23
    iput p1, v0, Landroidx/leanback/widget/q;->z:I

    .line 24
    .line 25
    invoke-virtual {v0}, LO1/L;->D0()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public setOnChildLaidOutListener(Landroidx/leanback/widget/x;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/y;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, v0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_1
    return-void
.end method

.method public setOnKeyInterceptListener(Landroidx/leanback/widget/b;)V
    .locals 0

    return-void
.end method

.method public setOnMotionInterceptListener(Landroidx/leanback/widget/c;)V
    .locals 0

    return-void
.end method

.method public setOnTouchInterceptListener(Landroidx/leanback/widget/d;)V
    .locals 0

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroidx/leanback/widget/e;)V
    .locals 0

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 4
    .line 5
    const/high16 v2, 0x10000

    .line 6
    .line 7
    and-int v3, v1, v2

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-eq v3, p1, :cond_2

    .line 16
    .line 17
    const v3, -0x10001

    .line 18
    .line 19
    .line 20
    and-int/2addr v1, v3

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_1
    or-int/2addr v1, v2

    .line 26
    iput v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, LO1/L;->D0()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public setRecyclerListener(LO1/T;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/f;->v1:LO1/T;

    .line 2
    .line 3
    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 4
    .line 5
    iput p1, v0, LV/b;->c:I

    .line 6
    .line 7
    invoke-virtual {v0}, LV/b;->d()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 4
    .line 5
    iput p1, v0, LV/b;->b:I

    .line 6
    .line 7
    invoke-virtual {v0}, LV/b;->d()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 4
    .line 5
    const/high16 v2, 0x20000

    .line 6
    .line 7
    and-int v3, v1, v2

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-eq v3, p1, :cond_2

    .line 17
    .line 18
    const v3, -0x20001

    .line 19
    .line 20
    .line 21
    and-int/2addr v1, v3

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/high16 v4, 0x20000

    .line 25
    .line 26
    :cond_1
    or-int p1, v1, v4

    .line 27
    .line 28
    iput p1, v0, Landroidx/leanback/widget/q;->z:I

    .line 29
    .line 30
    and-int/2addr p1, v2

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget p1, v0, Landroidx/leanback/widget/q;->V:I

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget p1, v0, Landroidx/leanback/widget/q;->B:I

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    if-eq p1, v1, :cond_2

    .line 41
    .line 42
    iget v1, v0, Landroidx/leanback/widget/q;->C:I

    .line 43
    .line 44
    iget v2, v0, Landroidx/leanback/widget/q;->G:I

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1, v2, v5}, Landroidx/leanback/widget/q;->u1(IIIZ)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/q;->y1(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 3
    .line 4
    invoke-virtual {v1, p1, v0}, Landroidx/leanback/widget/q;->y1(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setVerticalSpacing(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->r:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iput p1, v0, Landroidx/leanback/widget/q;->O:I

    .line 9
    .line 10
    iput p1, v0, Landroidx/leanback/widget/q;->P:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput p1, v0, Landroidx/leanback/widget/q;->O:I

    .line 14
    .line 15
    iput p1, v0, Landroidx/leanback/widget/q;->Q:I

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    iput p1, v0, Landroidx/leanback/widget/Y;->f:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    iput p1, v0, Landroidx/leanback/widget/Y;->g:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    cmpg-float v1, p1, v1

    .line 14
    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    const/high16 v1, 0x42c80000    # 100.0f

    .line 18
    .line 19
    cmpl-float v1, p1, v1

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    .line 25
    cmpl-float v1, p1, v1

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    :cond_1
    iput p1, v0, Landroidx/leanback/widget/Y;->h:F

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, v0, Landroidx/leanback/widget/Y;->e:I

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, Landroidx/leanback/widget/Y;->e:I

    .line 17
    .line 18
    and-int/lit8 p1, p1, -0x3

    .line 19
    .line 20
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/Y;->e:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/f;->r1:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, v0, Landroidx/leanback/widget/Y;->e:I

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, Landroidx/leanback/widget/Y;->e:I

    .line 17
    .line 18
    and-int/lit8 p1, p1, -0x2

    .line 19
    .line 20
    :goto_0
    iput p1, v0, Landroidx/leanback/widget/Y;->e:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
