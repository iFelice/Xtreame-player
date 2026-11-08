.class public abstract Landroidx/leanback/widget/m;
.super LO1/w;
.source "SourceFile"


# instance fields
.field public q:Z

.field public final synthetic r:Landroidx/leanback/widget/q;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/m;->r:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, LO1/w;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 3

    .line 1
    invoke-super {p0, p1}, LO1/w;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/m;->r:Landroidx/leanback/widget/q;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 8
    .line 9
    iget-object v1, v1, Ll/D;->e:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Landroidx/leanback/widget/Y;

    .line 13
    .line 14
    iget v2, v2, Landroidx/leanback/widget/Y;->i:I

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 19
    .line 20
    iget v1, v1, Landroidx/leanback/widget/Y;->i:I

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    const/high16 v2, 0x41f00000    # 30.0f

    .line 24
    .line 25
    div-float/2addr v2, v1

    .line 26
    int-to-float p1, p1

    .line 27
    mul-float v2, v2, p1

    .line 28
    .line 29
    int-to-float p1, v0

    .line 30
    cmpg-float p1, p1, v2

    .line 31
    .line 32
    if-gez p1, :cond_0

    .line 33
    .line 34
    float-to-int v0, v2

    .line 35
    :cond_0
    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-super {p0}, LO1/w;->f()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/leanback/widget/m;->q:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/m;->j()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/m;->r:Landroidx/leanback/widget/q;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/m;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne v1, p0, :cond_1

    .line 17
    .line 18
    iput-object v2, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/m;

    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 21
    .line 22
    if-ne v1, p0, :cond_2

    .line 23
    .line 24
    iput-object v2, v0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final g(Landroid/view/View;LO1/Y;LO1/W;)V
    .locals 5

    .line 1
    sget-object p2, Landroidx/leanback/widget/q;->f0:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/m;->r:Landroidx/leanback/widget/q;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0, p2}, Landroidx/leanback/widget/q;->d1(Landroid/view/View;Landroid/view/View;[I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p1, v1, Landroidx/leanback/widget/q;->r:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    aget p1, p2, v1

    .line 19
    .line 20
    aget p2, p2, v0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    aget p1, p2, v0

    .line 24
    .line 25
    aget p2, p2, v1

    .line 26
    .line 27
    :goto_0
    mul-int v1, p1, p1

    .line 28
    .line 29
    mul-int v2, p2, p2

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    int-to-double v1, v2

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    double-to-int v1, v1

    .line 38
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/m;->c(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-double v1, v1

    .line 43
    const-wide v3, 0x3fd57a786c22680aL    # 0.3356

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    div-double/2addr v1, v3

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    double-to-int v1, v1

    .line 54
    iget-object v2, p0, LO1/w;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 55
    .line 56
    iput p1, p3, LO1/W;->a:I

    .line 57
    .line 58
    iput p2, p3, LO1/W;->b:I

    .line 59
    .line 60
    iput v1, p3, LO1/W;->c:I

    .line 61
    .line 62
    iput-object v2, p3, LO1/W;->e:Landroid/view/animation/Interpolator;

    .line 63
    .line 64
    iput-boolean v0, p3, LO1/W;->f:Z

    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget v0, p0, LO1/w;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/m;->r:Landroidx/leanback/widget/q;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, LO1/w;->a:I

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v0, v2, v2, v2}, Landroidx/leanback/widget/q;->u1(IIIZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    iget v2, v1, Landroidx/leanback/widget/q;->B:I

    .line 25
    .line 26
    iget v3, p0, LO1/w;->a:I

    .line 27
    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    iput v3, v1, Landroidx/leanback/widget/q;->B:I

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v1}, LO1/L;->Q()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget v2, v1, Landroidx/leanback/widget/q;->z:I

    .line 39
    .line 40
    or-int/lit8 v2, v2, 0x20

    .line 41
    .line 42
    iput v2, v1, Landroidx/leanback/widget/q;->z:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 45
    .line 46
    .line 47
    iget v0, v1, Landroidx/leanback/widget/q;->z:I

    .line 48
    .line 49
    and-int/lit8 v0, v0, -0x21

    .line 50
    .line 51
    iput v0, v1, Landroidx/leanback/widget/q;->z:I

    .line 52
    .line 53
    :cond_3
    invoke-virtual {v1}, Landroidx/leanback/widget/q;->U0()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/leanback/widget/q;->V0()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
