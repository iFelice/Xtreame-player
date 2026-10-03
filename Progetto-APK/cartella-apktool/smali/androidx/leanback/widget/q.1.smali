.class public final Landroidx/leanback/widget/q;
.super LO1/L;
.source "SourceFile"


# static fields
.field public static final e0:Landroid/graphics/Rect;

.field public static final f0:[I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:I

.field public C:I

.field public D:Landroidx/leanback/widget/m;

.field public E:Landroidx/leanback/widget/o;

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:[I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:Landroidx/leanback/widget/k;

.field public V:I

.field public final W:Ll/D;

.field public final X:Ll/D;

.field public Y:I

.field public Z:I

.field public final a0:[I

.field public final b0:LV/b;

.field public final c0:La/f;

.field public final d0:Lf/S;

.field public final p:I

.field public final q:Landroidx/leanback/widget/f;

.field public r:I

.field public s:LO1/y;

.field public t:LO1/Y;

.field public u:I

.field public v:I

.field public final w:Landroid/util/SparseIntArray;

.field public x:[I

.field public y:Ls1/g;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/leanback/widget/q;->e0:Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    sput-object v0, Landroidx/leanback/widget/q;->f0:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/f;)V
    .locals 6

    .line 1
    invoke-direct {p0}, LO1/L;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Landroidx/leanback/widget/q;->p:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Landroidx/leanback/widget/q;->r:I

    .line 10
    .line 11
    new-instance v2, LO1/y;

    .line 12
    .line 13
    invoke-direct {v2, p0, v1}, LO1/y;-><init>(LO1/L;I)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 17
    .line 18
    new-instance v2, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Landroidx/leanback/widget/q;->w:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const v2, 0x36200

    .line 26
    .line 27
    .line 28
    iput v2, p0, Landroidx/leanback/widget/q;->z:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    iput v2, p0, Landroidx/leanback/widget/q;->B:I

    .line 35
    .line 36
    iput v1, p0, Landroidx/leanback/widget/q;->C:I

    .line 37
    .line 38
    iput v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 39
    .line 40
    const v3, 0x800033

    .line 41
    .line 42
    .line 43
    iput v3, p0, Landroidx/leanback/widget/q;->R:I

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    iput v3, p0, Landroidx/leanback/widget/q;->T:I

    .line 47
    .line 48
    iput v1, p0, Landroidx/leanback/widget/q;->V:I

    .line 49
    .line 50
    new-instance v4, Ll/D;

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-direct {v4, v5}, Ll/D;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v4, p0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 57
    .line 58
    new-instance v4, Ll/D;

    .line 59
    .line 60
    invoke-direct {v4, v3}, Ll/D;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 64
    .line 65
    new-array v4, v5, [I

    .line 66
    .line 67
    iput-object v4, p0, Landroidx/leanback/widget/q;->a0:[I

    .line 68
    .line 69
    new-instance v4, LV/b;

    .line 70
    .line 71
    invoke-direct {v4, v3}, LV/b;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 75
    .line 76
    new-instance v3, La/f;

    .line 77
    .line 78
    invoke-direct {v3, p0, v0}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Landroidx/leanback/widget/q;->c0:La/f;

    .line 82
    .line 83
    new-instance v0, Lf/S;

    .line 84
    .line 85
    const/16 v3, 0x14

    .line 86
    .line 87
    invoke-direct {v0, p0, v3}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Landroidx/leanback/widget/q;->d0:Lf/S;

    .line 91
    .line 92
    iput-object p1, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 93
    .line 94
    iput v2, p0, Landroidx/leanback/widget/q;->H:I

    .line 95
    .line 96
    iget-boolean p1, p0, LO1/L;->i:Z

    .line 97
    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    iput-boolean v1, p0, LO1/L;->i:Z

    .line 101
    .line 102
    iput v1, p0, LO1/L;->j:I

    .line 103
    .line 104
    iget-object p1, p0, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 109
    .line 110
    invoke-virtual {p1}, Ls1/g;->n()V

    .line 111
    .line 112
    .line 113
    :cond_0
    return-void
.end method

.method public static X0(Landroid/view/View;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, LO1/M;->a:LO1/c0;

    .line 14
    .line 15
    invoke-virtual {v1}, LO1/c0;->j()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p0, p0, LO1/M;->a:LO1/c0;

    .line 23
    .line 24
    invoke-virtual {p0}, LO1/c0;->c()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_0
    return v0
.end method

.method public static Y0(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    invoke-static {p0}, LO1/L;->D(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    add-int/2addr p0, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public static Z0(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    invoke-static {p0}, LO1/L;->E(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    add-int/2addr p0, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
.end method


# virtual methods
.method public final A(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, LO1/L;->A(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->h:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final A1(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 11
    .line 12
    iget-object v2, v1, Ll/D;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/leanback/widget/u;

    .line 15
    .line 16
    iget v3, v2, Landroidx/leanback/widget/u;->e:I

    .line 17
    .line 18
    invoke-static {p1, v2, v3}, Landroidx/leanback/widget/v;->a(Landroid/view/View;Landroidx/leanback/widget/u;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v0, Landroidx/leanback/widget/n;->i:I

    .line 23
    .line 24
    iget-object v1, v1, Ll/D;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/leanback/widget/u;

    .line 27
    .line 28
    iget v2, v1, Landroidx/leanback/widget/u;->e:I

    .line 29
    .line 30
    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/v;->a(Landroid/view/View;Landroidx/leanback/widget/u;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v0, Landroidx/leanback/widget/n;->j:I

    .line 35
    .line 36
    return-void
.end method

.method public final B(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroidx/leanback/widget/n;

    .line 9
    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    iget v1, p2, Landroidx/leanback/widget/n;->e:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget v1, p2, Landroidx/leanback/widget/n;->f:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v1, p2, Landroidx/leanback/widget/n;->g:I

    .line 27
    .line 28
    sub-int/2addr v0, v1

    .line 29
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget p2, p2, Landroidx/leanback/widget/n;->h:I

    .line 34
    .line 35
    sub-int/2addr v0, p2

    .line 36
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    return-void
.end method

.method public final B0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final B1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LO1/L;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/leanback/widget/n;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 19
    .line 20
    iget v1, v1, Landroidx/leanback/widget/k;->f:I

    .line 21
    .line 22
    iget-object v0, v0, LO1/M;->a:LO1/c0;

    .line 23
    .line 24
    invoke-virtual {v0}, LO1/c0;->d()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sub-int/2addr v1, v0

    .line 29
    iput v1, p0, Landroidx/leanback/widget/q;->u:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput v1, p0, Landroidx/leanback/widget/q;->u:I

    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final C(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, LO1/L;->C(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->e:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final C1()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->n1(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x400

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x400

    .line 15
    .line 16
    :cond_0
    or-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 18
    .line 19
    and-int/2addr v0, v3

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/leanback/widget/q;->c0:La/f;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final D1()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 2
    .line 3
    invoke-virtual {v0}, LO1/Y;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 11
    .line 12
    const/high16 v1, 0x40000

    .line 13
    .line 14
    and-int/2addr v0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 20
    .line 21
    iget v0, v0, Landroidx/leanback/widget/k;->g:I

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 24
    .line 25
    invoke-virtual {v3}, LO1/Y;->b()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v2

    .line 30
    iget-object v4, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 31
    .line 32
    iget v4, v4, Landroidx/leanback/widget/k;->f:I

    .line 33
    .line 34
    move v5, v4

    .line 35
    move v4, v3

    .line 36
    const/4 v3, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 39
    .line 40
    iget v3, v0, Landroidx/leanback/widget/k;->f:I

    .line 41
    .line 42
    iget v4, v0, Landroidx/leanback/widget/k;->g:I

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 45
    .line 46
    invoke-virtual {v0}, LO1/Y;->b()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr v0, v2

    .line 51
    move v5, v4

    .line 52
    const/4 v4, 0x0

    .line 53
    move v11, v3

    .line 54
    move v3, v0

    .line 55
    move v0, v11

    .line 56
    :goto_0
    if-ltz v0, :cond_a

    .line 57
    .line 58
    if-gez v5, :cond_2

    .line 59
    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_2
    if-ne v0, v4, :cond_3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v0, 0x0

    .line 67
    :goto_1
    if-ne v5, v3, :cond_4

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 v3, 0x0

    .line 72
    :goto_2
    const/high16 v4, -0x80000000

    .line 73
    .line 74
    const v5, 0x7fffffff

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 78
    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v7, v6, Ll/D;->e:Ljava/lang/Object;

    .line 82
    .line 83
    move-object v8, v7

    .line 84
    check-cast v8, Landroidx/leanback/widget/Y;

    .line 85
    .line 86
    iget v8, v8, Landroidx/leanback/widget/Y;->a:I

    .line 87
    .line 88
    if-ne v8, v5, :cond_5

    .line 89
    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    check-cast v7, Landroidx/leanback/widget/Y;

    .line 93
    .line 94
    iget v7, v7, Landroidx/leanback/widget/Y;->b:I

    .line 95
    .line 96
    if-ne v7, v4, :cond_5

    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    sget-object v7, Landroidx/leanback/widget/q;->f0:[I

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v7}, Landroidx/leanback/widget/k;->f(Z[I)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    aget v0, v7, v2

    .line 110
    .line 111
    invoke-virtual {p0, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget v8, p0, Landroidx/leanback/widget/q;->r:I

    .line 116
    .line 117
    if-nez v8, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Landroidx/leanback/widget/n;

    .line 124
    .line 125
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    iget v10, v8, Landroidx/leanback/widget/n;->e:I

    .line 133
    .line 134
    add-int/2addr v9, v10

    .line 135
    iget v8, v8, Landroidx/leanback/widget/n;->i:I

    .line 136
    .line 137
    :goto_3
    add-int/2addr v9, v8

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Landroidx/leanback/widget/n;

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    iget v10, v8, Landroidx/leanback/widget/n;->f:I

    .line 153
    .line 154
    add-int/2addr v9, v10

    .line 155
    iget v8, v8, Landroidx/leanback/widget/n;->j:I

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroidx/leanback/widget/n;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    const v9, 0x7fffffff

    .line 169
    .line 170
    .line 171
    :goto_5
    if-eqz v3, :cond_9

    .line 172
    .line 173
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 174
    .line 175
    invoke-virtual {v0, v1, v7}, Landroidx/leanback/widget/k;->h(Z[I)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    aget v0, v7, v2

    .line 180
    .line 181
    invoke-virtual {p0, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget v1, p0, Landroidx/leanback/widget/q;->r:I

    .line 186
    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Landroidx/leanback/widget/n;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iget v2, v1, Landroidx/leanback/widget/n;->e:I

    .line 203
    .line 204
    add-int/2addr v0, v2

    .line 205
    iget v1, v1, Landroidx/leanback/widget/n;->i:I

    .line 206
    .line 207
    :goto_6
    add-int/2addr v0, v1

    .line 208
    goto :goto_7

    .line 209
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Landroidx/leanback/widget/n;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iget v2, v1, Landroidx/leanback/widget/n;->f:I

    .line 223
    .line 224
    add-int/2addr v0, v2

    .line 225
    iget v1, v1, Landroidx/leanback/widget/n;->j:I

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_9
    const/high16 v0, -0x80000000

    .line 229
    .line 230
    :goto_7
    iget-object v1, v6, Ll/D;->e:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 233
    .line 234
    invoke-virtual {v1, v4, v5, v0, v9}, Landroidx/leanback/widget/Y;->c(IIII)V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_8
    return-void
.end method

.method public final E1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 2
    .line 3
    iget-object v0, v0, Ll/D;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 6
    .line 7
    iget v1, v0, Landroidx/leanback/widget/Y;->j:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/leanback/widget/q;->I:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->e1()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v1

    .line 17
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/Y;->c(IIII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final F(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, LO1/L;->F(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->g:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final F0(ILs1/g;LO1/Y;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 15
    .line 16
    and-int/lit8 p2, p2, -0x4

    .line 17
    .line 18
    or-int/lit8 p2, p2, 0x2

    .line 19
    .line 20
    iput p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 21
    .line 22
    iget p2, p0, Landroidx/leanback/widget/q;->r:I

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->s1(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->t1(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 39
    .line 40
    and-int/lit8 p2, p2, -0x4

    .line 41
    .line 42
    iput p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 43
    .line 44
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public final G(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, LO1/L;->G(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->f:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final G0(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/q;->y1(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final H0(ILs1/g;LO1/Y;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x200

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    and-int/lit8 v0, v0, -0x4

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroidx/leanback/widget/q;->r:I

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    if-ne p2, p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->s1(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->t1(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 38
    .line 39
    and-int/lit8 p2, p2, -0x4

    .line 40
    .line 41
    iput p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 42
    .line 43
    return p1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public final O(Ls1/g;LO1/Y;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, v0, Landroidx/leanback/widget/k;->e:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, LO1/L;->O(Ls1/g;LO1/Y;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final Q0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p2, p1}, Landroidx/leanback/widget/q;->y1(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final R0(LO1/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroidx/leanback/widget/m;->q:Z

    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, LO1/L;->R0(LO1/w;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, LO1/w;->e:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    instance-of v0, p1, Landroidx/leanback/widget/m;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    check-cast p1, Landroidx/leanback/widget/m;

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/m;

    .line 23
    .line 24
    instance-of v0, p1, Landroidx/leanback/widget/o;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Landroidx/leanback/widget/o;

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iput-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/m;

    .line 37
    .line 38
    iput-object v1, p0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final S0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final T0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/q;->Z:I

    .line 11
    .line 12
    neg-int v1, v1

    .line 13
    iget v2, p0, Landroidx/leanback/widget/q;->v:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->Y:I

    .line 18
    .line 19
    iget v2, p0, Landroidx/leanback/widget/q;->Z:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    iget v2, p0, Landroidx/leanback/widget/q;->v:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/k;->b(IZ)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final U0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_3

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    move-object v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 32
    .line 33
    invoke-virtual {p0, v3, v0, v1}, Landroidx/leanback/widget/q;->W0(Landroidx/leanback/widget/f;LO1/c0;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0, v3, v1, v2}, Landroidx/leanback/widget/q;->W0(Landroidx/leanback/widget/f;LO1/c0;I)V

    .line 38
    .line 39
    .line 40
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 41
    .line 42
    and-int/lit8 v0, v0, 0x3

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, LO1/L;->x()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_2
    if-ge v1, v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/leanback/widget/q;->c0:La/f;

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_3
    return-void
.end method

.method public final V0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_4

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    :goto_1
    if-ltz v0, :cond_4

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/leanback/widget/z;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 66
    .line 67
    :goto_2
    if-ltz v0, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/leanback/widget/z;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_3
    return-void
.end method

.method public final W0(Landroidx/leanback/widget/f;LO1/c0;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    :goto_0
    if-ltz v0, :cond_8

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/leanback/widget/q;->A:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroidx/leanback/widget/z;

    .line 21
    .line 22
    check-cast v2, Lc0/b;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lc0/c;

    .line 32
    .line 33
    iget-object v2, v2, Lc0/b;->a:Lc0/e;

    .line 34
    .line 35
    iget-object v3, v2, Lc0/e;->I:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Lc0/e;->d(I)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_7

    .line 45
    .line 46
    iget-object v4, v2, Lc0/e;->J:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lc0/f;

    .line 53
    .line 54
    iget v4, v4, Lc0/f;->b:I

    .line 55
    .line 56
    add-int/2addr v4, p3

    .line 57
    check-cast v2, Landroidx/leanback/widget/picker/DatePicker;

    .line 58
    .line 59
    iget-object v5, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 60
    .line 61
    iget-object v6, v2, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v2, Lc0/e;->J:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lc0/f;

    .line 81
    .line 82
    :goto_1
    iget v5, v5, Lc0/f;->a:I

    .line 83
    .line 84
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->e0:I

    .line 85
    .line 86
    const/4 v7, 0x2

    .line 87
    const/4 v8, 0x5

    .line 88
    if-ne v3, v6, :cond_2

    .line 89
    .line 90
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 91
    .line 92
    sub-int/2addr v4, v5

    .line 93
    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->d0:I

    .line 98
    .line 99
    if-ne v3, v6, :cond_3

    .line 100
    .line 101
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 102
    .line 103
    sub-int/2addr v4, v5

    .line 104
    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->f0:I

    .line 109
    .line 110
    if-ne v3, v6, :cond_6

    .line 111
    .line 112
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 113
    .line 114
    sub-int/2addr v4, v5

    .line 115
    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 116
    .line 117
    .line 118
    :goto_2
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 119
    .line 120
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 125
    .line 126
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    iget-object v5, v2, Landroidx/leanback/widget/picker/DatePicker;->l0:Ljava/util/Calendar;

    .line 131
    .line 132
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    iget-object v6, v2, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 137
    .line 138
    invoke-virtual {v6, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 139
    .line 140
    .line 141
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 142
    .line 143
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->i0:Ljava/util/Calendar;

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 152
    .line 153
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->i0:Ljava/util/Calendar;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 164
    .line 165
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->j0:Ljava/util/Calendar;

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_5

    .line 172
    .line 173
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 174
    .line 175
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->j0:Ljava/util/Calendar;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_3
    new-instance v3, Lc0/a;

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    invoke-direct {v3, v4, v2, v4}, Lc0/a;-><init>(ILjava/lang/Object;Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_8
    return-void
.end method

.method public final Y(LO1/C;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/leanback/widget/q;->L:[I

    .line 7
    .line 8
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 9
    .line 10
    and-int/lit16 p1, p1, -0x401

    .line 11
    .line 12
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Landroidx/leanback/widget/q;->B:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Landroidx/leanback/widget/q;->F:I

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 21
    .line 22
    invoke-virtual {p1}, LV/b;->e()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final Z(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Landroidx/leanback/widget/q;->z:I

    .line 10
    .line 11
    const v5, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v4, v5

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    return v5

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1d

    .line 24
    .line 25
    iget-object v4, v0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    return v5

    .line 30
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/q;->a1(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const/4 v8, -0x1

    .line 39
    iget-object v9, v0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 40
    .line 41
    if-eqz v9, :cond_3

    .line 42
    .line 43
    if-eq v7, v9, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v7}, LO1/L;->r(Landroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/4 v10, 0x0

    .line 56
    :goto_0
    if-ge v10, v9, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v10}, LO1/L;->w(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    if-ne v11, v7, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v10, -0x1

    .line 69
    :goto_1
    invoke-virtual {v0, v10}, LO1/L;->w(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ne v7, v8, :cond_4

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v0, v7}, LO1/L;->s(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    :goto_2
    if-eqz v9, :cond_5

    .line 86
    .line 87
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v11, v0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 91
    .line 92
    if-eqz v11, :cond_1c

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-nez v11, :cond_6

    .line 99
    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :cond_6
    const/4 v11, 0x2

    .line 103
    const/4 v12, 0x3

    .line 104
    if-eq v4, v12, :cond_7

    .line 105
    .line 106
    if-ne v4, v11, :cond_8

    .line 107
    .line 108
    :cond_7
    iget-object v13, v0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 109
    .line 110
    iget v13, v13, Landroidx/leanback/widget/k;->e:I

    .line 111
    .line 112
    if-gt v13, v5, :cond_8

    .line 113
    .line 114
    return v5

    .line 115
    :cond_8
    iget-object v13, v0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 116
    .line 117
    if-eqz v13, :cond_9

    .line 118
    .line 119
    if-eqz v9, :cond_9

    .line 120
    .line 121
    invoke-virtual {v13, v7}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    iget v13, v13, Landroidx/leanback/widget/j;->H:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_9
    const/4 v13, -0x1

    .line 129
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-eq v4, v5, :cond_b

    .line 134
    .line 135
    if-ne v4, v12, :cond_a

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_a
    const/4 v15, -0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_b
    :goto_4
    const/4 v15, 0x1

    .line 141
    :goto_5
    if-lez v15, :cond_c

    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    add-int/lit8 v16, v16, -0x1

    .line 148
    .line 149
    move/from16 v6, v16

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    const/4 v6, 0x0

    .line 153
    :goto_6
    if-ne v10, v8, :cond_e

    .line 154
    .line 155
    if-lez v15, :cond_d

    .line 156
    .line 157
    const/16 v16, 0x0

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_d
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    sub-int/2addr v8, v5

    .line 165
    move/from16 v16, v8

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_e
    add-int v16, v10, v15

    .line 169
    .line 170
    :goto_7
    move/from16 v8, v16

    .line 171
    .line 172
    :goto_8
    if-lez v15, :cond_f

    .line 173
    .line 174
    if-gt v8, v6, :cond_24

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_f
    if-lt v8, v6, :cond_24

    .line 178
    .line 179
    :goto_9
    invoke-virtual {v0, v8}, LO1/L;->w(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-nez v16, :cond_1b

    .line 188
    .line 189
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    .line 190
    .line 191
    .line 192
    move-result v16

    .line 193
    if-nez v16, :cond_10

    .line 194
    .line 195
    goto/16 :goto_b

    .line 196
    .line 197
    :cond_10
    if-nez v9, :cond_11

    .line 198
    .line 199
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-le v10, v14, :cond_1b

    .line 207
    .line 208
    goto/16 :goto_f

    .line 209
    .line 210
    :cond_11
    invoke-virtual {v0, v8}, LO1/L;->w(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    invoke-static/range {v16 .. v16}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    iget-object v12, v0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 219
    .line 220
    invoke-virtual {v12, v11}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    if-nez v12, :cond_13

    .line 225
    .line 226
    :cond_12
    :goto_a
    const/4 v11, 0x2

    .line 227
    goto :goto_b

    .line 228
    :cond_13
    if-ne v4, v5, :cond_14

    .line 229
    .line 230
    iget v12, v12, Landroidx/leanback/widget/j;->H:I

    .line 231
    .line 232
    if-ne v12, v13, :cond_12

    .line 233
    .line 234
    if-le v11, v7, :cond_12

    .line 235
    .line 236
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-le v10, v14, :cond_12

    .line 244
    .line 245
    goto/16 :goto_f

    .line 246
    .line 247
    :cond_14
    if-nez v4, :cond_15

    .line 248
    .line 249
    iget v12, v12, Landroidx/leanback/widget/j;->H:I

    .line 250
    .line 251
    if-ne v12, v13, :cond_12

    .line 252
    .line 253
    if-ge v11, v7, :cond_12

    .line 254
    .line 255
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    if-le v10, v14, :cond_12

    .line 263
    .line 264
    goto/16 :goto_f

    .line 265
    .line 266
    :cond_15
    const/4 v11, 0x3

    .line 267
    if-ne v4, v11, :cond_18

    .line 268
    .line 269
    iget v12, v12, Landroidx/leanback/widget/j;->H:I

    .line 270
    .line 271
    if-ne v12, v13, :cond_16

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_16
    if-ge v12, v13, :cond_17

    .line 275
    .line 276
    goto/16 :goto_f

    .line 277
    .line 278
    :cond_17
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 279
    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_18
    const/4 v11, 0x2

    .line 283
    if-ne v4, v11, :cond_1b

    .line 284
    .line 285
    iget v12, v12, Landroidx/leanback/widget/j;->H:I

    .line 286
    .line 287
    if-ne v12, v13, :cond_19

    .line 288
    .line 289
    goto :goto_b

    .line 290
    :cond_19
    if-le v12, v13, :cond_1a

    .line 291
    .line 292
    goto/16 :goto_f

    .line 293
    .line 294
    :cond_1a
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 295
    .line 296
    .line 297
    :cond_1b
    :goto_b
    add-int/2addr v8, v15

    .line 298
    const/4 v12, 0x3

    .line 299
    goto :goto_8

    .line 300
    :cond_1c
    :goto_c
    return v5

    .line 301
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    iget v6, v0, Landroidx/leanback/widget/q;->V:I

    .line 306
    .line 307
    if-eqz v6, :cond_21

    .line 308
    .line 309
    iget-object v6, v0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 310
    .line 311
    iget-object v6, v6, Ll/D;->e:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v6, Landroidx/leanback/widget/Y;

    .line 314
    .line 315
    iget v7, v6, Landroidx/leanback/widget/Y;->j:I

    .line 316
    .line 317
    iget v8, v6, Landroidx/leanback/widget/Y;->i:I

    .line 318
    .line 319
    sub-int/2addr v8, v7

    .line 320
    iget v6, v6, Landroidx/leanback/widget/Y;->k:I

    .line 321
    .line 322
    sub-int/2addr v8, v6

    .line 323
    add-int/2addr v8, v7

    .line 324
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    const/4 v9, 0x0

    .line 329
    :goto_d
    if-ge v9, v6, :cond_1f

    .line 330
    .line 331
    invoke-virtual {v0, v9}, LO1/L;->w(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    if-nez v11, :cond_1e

    .line 340
    .line 341
    iget-object v11, v0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 342
    .line 343
    invoke-virtual {v11, v10}, LO1/y;->d(Landroid/view/View;)I

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    if-lt v11, v7, :cond_1e

    .line 348
    .line 349
    iget-object v11, v0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 350
    .line 351
    invoke-virtual {v11, v10}, LO1/y;->b(Landroid/view/View;)I

    .line 352
    .line 353
    .line 354
    move-result v11

    .line 355
    if-gt v11, v8, :cond_1e

    .line 356
    .line 357
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 358
    .line 359
    .line 360
    :cond_1e
    add-int/lit8 v9, v9, 0x1

    .line 361
    .line 362
    goto :goto_d

    .line 363
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-ne v6, v4, :cond_22

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    const/4 v7, 0x0

    .line 374
    :goto_e
    if-ge v7, v6, :cond_22

    .line 375
    .line 376
    invoke-virtual {v0, v7}, LO1/L;->w(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    if-nez v9, :cond_20

    .line 385
    .line 386
    invoke-virtual {v8, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 387
    .line 388
    .line 389
    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 390
    .line 391
    goto :goto_e

    .line 392
    :cond_21
    iget v6, v0, Landroidx/leanback/widget/q;->B:I

    .line 393
    .line 394
    invoke-virtual {v0, v6}, LO1/L;->s(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    if-eqz v6, :cond_22

    .line 399
    .line 400
    invoke-virtual {v6, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 401
    .line 402
    .line 403
    :cond_22
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eq v2, v4, :cond_23

    .line 408
    .line 409
    return v5

    .line 410
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocusable()Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-eqz v2, :cond_24

    .line 415
    .line 416
    move-object/from16 v2, p1

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    :cond_24
    :goto_f
    return v5
.end method

.method public final a1(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    const/16 v2, 0x42

    .line 6
    .line 7
    const/16 v3, 0x21

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    const/16 v8, 0x11

    .line 14
    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    const/high16 v0, 0x40000

    .line 18
    .line 19
    if-eq p1, v8, :cond_4

    .line 20
    .line 21
    if-eq p1, v3, :cond_5

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x11

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    const/4 v4, 0x3

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 33
    .line 34
    and-int/2addr p1, v0

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 v4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 42
    .line 43
    and-int/2addr p1, v0

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_5
    :goto_2
    move v5, v4

    .line 48
    goto :goto_4

    .line 49
    :cond_6
    if-ne v0, v7, :cond_a

    .line 50
    .line 51
    const/high16 v0, 0x80000

    .line 52
    .line 53
    if-eq p1, v8, :cond_9

    .line 54
    .line 55
    if-eq p1, v3, :cond_b

    .line 56
    .line 57
    if-eq p1, v2, :cond_8

    .line 58
    .line 59
    if-eq p1, v1, :cond_7

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_7
    const/4 v5, 0x1

    .line 63
    goto :goto_4

    .line 64
    :cond_8
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 65
    .line 66
    and-int/2addr p1, v0

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_9
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 71
    .line 72
    and-int/2addr p1, v0

    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_a
    :goto_3
    const/16 v5, 0x11

    .line 77
    .line 78
    :cond_b
    :goto_4
    return v5
.end method

.method public final b1(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->K:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/q;->L:[I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    aget p1, v0, p1

    .line 13
    .line 14
    return p1
.end method

.method public final c1(I)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/leanback/widget/q;->S:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-le v0, p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->b1(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Landroidx/leanback/widget/q;->Q:I

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/2addr v1, v2

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_1
    if-ge v1, p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->b1(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p0, Landroidx/leanback/widget/q;->Q:I

    .line 34
    .line 35
    add-int/2addr v2, v3

    .line 36
    add-int/2addr v0, v2

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v0

    .line 41
    :cond_2
    return v1
.end method

.method public final d0(Ls1/g;LO1/Y;LO/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LO1/Y;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 9
    .line 10
    const/high16 v2, 0x40000

    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    const/16 v4, 0x17

    .line 21
    .line 22
    if-le v0, v3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/q;->h1(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_4

    .line 29
    .line 30
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    if-lt v5, v4, :cond_3

    .line 33
    .line 34
    iget v5, p0, Landroidx/leanback/widget/q;->r:I

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    sget-object v5, LO/d;->i:LO/d;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v5, LO/d;->g:LO/d;

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p3, v5}, LO/f;->b(LO/d;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    sget-object v5, LO/d;->f:LO/d;

    .line 50
    .line 51
    invoke-virtual {p3, v5}, LO/f;->b(LO/d;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/16 v5, 0x2000

    .line 56
    .line 57
    invoke-virtual {p3, v5}, LO/f;->a(I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p3, v3}, LO/f;->h(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    if-le v0, v3, :cond_8

    .line 64
    .line 65
    sub-int/2addr v0, v3

    .line 66
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->h1(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    if-lt v0, v4, :cond_7

    .line 75
    .line 76
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    sget-object v0, LO/d;->g:LO/d;

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    sget-object v0, LO/d;->i:LO/d;

    .line 86
    .line 87
    :goto_3
    invoke-virtual {p3, v0}, LO/f;->b(LO/d;)V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    sget-object v0, LO/d;->h:LO/d;

    .line 92
    .line 93
    invoke-virtual {p3, v0}, LO/f;->b(LO/d;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    const/16 v0, 0x1000

    .line 98
    .line 99
    invoke-virtual {p3, v0}, LO/f;->a(I)V

    .line 100
    .line 101
    .line 102
    :goto_4
    invoke-virtual {p3, v3}, LO/f;->h(Z)V

    .line 103
    .line 104
    .line 105
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->O(Ls1/g;LO1/Y;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->z(Ls1/g;LO1/Y;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {v0, p1, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, p3, LO/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final d1(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->V:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq v0, v4, :cond_5

    .line 9
    .line 10
    if-eq v0, v3, :cond_5

    .line 11
    .line 12
    iget-object v0, v1, Ll/D;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 15
    .line 16
    iget v3, p0, Landroidx/leanback/widget/q;->r:I

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/leanback/widget/n;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget v6, v3, Landroidx/leanback/widget/n;->e:I

    .line 34
    .line 35
    add-int/2addr v5, v6

    .line 36
    iget v3, v3, Landroidx/leanback/widget/n;->i:I

    .line 37
    .line 38
    :goto_0
    add-int/2addr v5, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/leanback/widget/n;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    iget v6, v3, Landroidx/leanback/widget/n;->f:I

    .line 54
    .line 55
    add-int/2addr v5, v6

    .line 56
    iget v3, v3, Landroidx/leanback/widget/n;->j:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/Y;->b(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroidx/leanback/widget/n;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :cond_1
    iget p2, p0, Landroidx/leanback/widget/q;->r:I

    .line 75
    .line 76
    if-nez p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroidx/leanback/widget/n;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget v3, p2, Landroidx/leanback/widget/n;->f:I

    .line 92
    .line 93
    add-int/2addr p1, v3

    .line 94
    iget p2, p2, Landroidx/leanback/widget/n;->j:I

    .line 95
    .line 96
    :goto_2
    add-int/2addr p1, p2

    .line 97
    goto :goto_3

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Landroidx/leanback/widget/n;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iget v3, p2, Landroidx/leanback/widget/n;->e:I

    .line 112
    .line 113
    add-int/2addr p1, v3

    .line 114
    iget p2, p2, Landroidx/leanback/widget/n;->i:I

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :goto_3
    iget-object p2, v1, Ll/D;->f:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p2, Landroidx/leanback/widget/Y;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/Y;->b(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget p2, p0, Landroidx/leanback/widget/q;->G:I

    .line 126
    .line 127
    add-int/2addr v0, p2

    .line 128
    if-nez v0, :cond_4

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_3
    aput v2, p3, v2

    .line 134
    .line 135
    aput v2, p3, v4

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    :goto_4
    aput v0, p3, v2

    .line 139
    .line 140
    aput p1, p3, v4

    .line 141
    .line 142
    const/4 v2, 0x1

    .line 143
    :goto_5
    return v2

    .line 144
    :cond_5
    invoke-static {p1}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    iget-object v0, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, LO1/y;->d(Landroid/view/View;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-object v5, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 155
    .line 156
    invoke-virtual {v5, p1}, LO1/y;->b(Landroid/view/View;)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iget-object v6, v1, Ll/D;->e:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v6, Landroidx/leanback/widget/Y;

    .line 163
    .line 164
    iget v7, v6, Landroidx/leanback/widget/Y;->j:I

    .line 165
    .line 166
    iget v8, v6, Landroidx/leanback/widget/Y;->i:I

    .line 167
    .line 168
    sub-int/2addr v8, v7

    .line 169
    iget v6, v6, Landroidx/leanback/widget/Y;->k:I

    .line 170
    .line 171
    sub-int/2addr v8, v6

    .line 172
    iget-object v6, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 173
    .line 174
    invoke-virtual {v6, p2}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    if-nez v6, :cond_6

    .line 179
    .line 180
    const/4 v6, -0x1

    .line 181
    goto :goto_6

    .line 182
    :cond_6
    iget v6, v6, Landroidx/leanback/widget/j;->H:I

    .line 183
    .line 184
    :goto_6
    const/4 v9, 0x0

    .line 185
    if-ge v0, v7, :cond_d

    .line 186
    .line 187
    iget v0, p0, Landroidx/leanback/widget/q;->V:I

    .line 188
    .line 189
    if-ne v0, v3, :cond_b

    .line 190
    .line 191
    move-object v0, p1

    .line 192
    :goto_7
    iget-object v10, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 193
    .line 194
    iget-boolean v11, v10, Landroidx/leanback/widget/k;->c:Z

    .line 195
    .line 196
    if-eqz v11, :cond_7

    .line 197
    .line 198
    const/high16 v11, -0x80000000

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_7
    const v11, 0x7fffffff

    .line 202
    .line 203
    .line 204
    :goto_8
    invoke-virtual {v10, v11, v4}, Landroidx/leanback/widget/k;->m(IZ)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_a

    .line 209
    .line 210
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 211
    .line 212
    iget v10, v0, Landroidx/leanback/widget/k;->f:I

    .line 213
    .line 214
    invoke-virtual {v0, v10, p2}, Landroidx/leanback/widget/k;->j(II)[Lr/h;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    aget-object v0, v0, v6

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Lr/h;->d(I)I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-virtual {p0, v10}, LO1/L;->s(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    iget-object v11, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 229
    .line 230
    invoke-virtual {v11, v10}, LO1/y;->d(Landroid/view/View;)I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    sub-int v11, v5, v11

    .line 235
    .line 236
    if-le v11, v8, :cond_9

    .line 237
    .line 238
    invoke-virtual {v0}, Lr/h;->h()I

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-le p2, v3, :cond_8

    .line 243
    .line 244
    invoke-virtual {v0, v3}, Lr/h;->d(I)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-virtual {p0, p2}, LO1/L;->s(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    move-object v3, v9

    .line 253
    move-object v9, p2

    .line 254
    goto :goto_a

    .line 255
    :cond_8
    move-object v3, v9

    .line 256
    move-object v9, v10

    .line 257
    goto :goto_a

    .line 258
    :cond_9
    move-object v0, v10

    .line 259
    goto :goto_7

    .line 260
    :cond_a
    move-object v3, v9

    .line 261
    move-object v9, v0

    .line 262
    goto :goto_a

    .line 263
    :cond_b
    move-object v3, v9

    .line 264
    :cond_c
    move-object v9, p1

    .line 265
    goto :goto_a

    .line 266
    :cond_d
    add-int v10, v8, v7

    .line 267
    .line 268
    if-le v5, v10, :cond_11

    .line 269
    .line 270
    iget v5, p0, Landroidx/leanback/widget/q;->V:I

    .line 271
    .line 272
    if-ne v5, v3, :cond_10

    .line 273
    .line 274
    :cond_e
    iget-object v3, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 275
    .line 276
    iget v5, v3, Landroidx/leanback/widget/k;->g:I

    .line 277
    .line 278
    invoke-virtual {v3, p2, v5}, Landroidx/leanback/widget/k;->j(II)[Lr/h;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    aget-object v3, v3, v6

    .line 283
    .line 284
    invoke-virtual {v3}, Lr/h;->h()I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    sub-int/2addr v5, v4

    .line 289
    invoke-virtual {v3, v5}, Lr/h;->d(I)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {p0, v3}, LO1/L;->s(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iget-object v5, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 298
    .line 299
    invoke-virtual {v5, v3}, LO1/y;->b(Landroid/view/View;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    sub-int/2addr v5, v0

    .line 304
    if-le v5, v8, :cond_f

    .line 305
    .line 306
    move-object v3, v9

    .line 307
    goto :goto_9

    .line 308
    :cond_f
    iget-object v5, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 309
    .line 310
    invoke-virtual {v5}, Landroidx/leanback/widget/k;->a()Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_e

    .line 315
    .line 316
    :goto_9
    if-eqz v3, :cond_c

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_10
    move-object v3, p1

    .line 320
    goto :goto_a

    .line 321
    :cond_11
    move-object v3, v9

    .line 322
    :goto_a
    if-eqz v9, :cond_12

    .line 323
    .line 324
    iget-object p2, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 325
    .line 326
    invoke-virtual {p2, v9}, LO1/y;->d(Landroid/view/View;)I

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    :goto_b
    sub-int/2addr p2, v7

    .line 331
    goto :goto_c

    .line 332
    :cond_12
    if-eqz v3, :cond_13

    .line 333
    .line 334
    iget-object p2, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 335
    .line 336
    invoke-virtual {p2, v3}, LO1/y;->b(Landroid/view/View;)I

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    add-int/2addr v7, v8

    .line 341
    goto :goto_b

    .line 342
    :cond_13
    const/4 p2, 0x0

    .line 343
    :goto_c
    if-eqz v9, :cond_14

    .line 344
    .line 345
    move-object p1, v9

    .line 346
    goto :goto_d

    .line 347
    :cond_14
    if-eqz v3, :cond_15

    .line 348
    .line 349
    move-object p1, v3

    .line 350
    :cond_15
    :goto_d
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 351
    .line 352
    if-nez v0, :cond_16

    .line 353
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Landroidx/leanback/widget/n;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    iget v3, v0, Landroidx/leanback/widget/n;->f:I

    .line 368
    .line 369
    add-int/2addr p1, v3

    .line 370
    iget v0, v0, Landroidx/leanback/widget/n;->j:I

    .line 371
    .line 372
    :goto_e
    add-int/2addr p1, v0

    .line 373
    goto :goto_f

    .line 374
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    check-cast v0, Landroidx/leanback/widget/n;

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    iget v3, v0, Landroidx/leanback/widget/n;->e:I

    .line 388
    .line 389
    add-int/2addr p1, v3

    .line 390
    iget v0, v0, Landroidx/leanback/widget/n;->i:I

    .line 391
    .line 392
    goto :goto_e

    .line 393
    :goto_f
    iget-object v0, v1, Ll/D;->f:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 396
    .line 397
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Y;->b(I)I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-nez p2, :cond_17

    .line 402
    .line 403
    if-eqz p1, :cond_18

    .line 404
    .line 405
    :cond_17
    aput p2, p3, v2

    .line 406
    .line 407
    aput p1, p3, v4

    .line 408
    .line 409
    const/4 v2, 0x1

    .line 410
    :cond_18
    return v2
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/q;->S:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    return v1
.end method

.method public final e1()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->S:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->c1(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->b1(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/q;->S:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    return v1
.end method

.method public final f0(Ls1/g;LO1/Y;Landroid/view/View;LO/f;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 6
    .line 7
    if-eqz p2, :cond_5

    .line 8
    .line 9
    instance-of p2, p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    check-cast p1, Landroidx/leanback/widget/n;

    .line 15
    .line 16
    iget-object p1, p1, LO1/M;->a:LO1/c0;

    .line 17
    .line 18
    invoke-virtual {p1}, LO1/c0;->c()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p2, -0x1

    .line 23
    if-ltz p1, :cond_2

    .line 24
    .line 25
    iget-object p3, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget p2, p3, Landroidx/leanback/widget/j;->H:I

    .line 35
    .line 36
    :cond_2
    :goto_0
    if-gez p2, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-object p3, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 40
    .line 41
    iget p3, p3, Landroidx/leanback/widget/k;->e:I

    .line 42
    .line 43
    div-int/2addr p1, p3

    .line 44
    iget p3, p0, Landroidx/leanback/widget/q;->r:I

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-nez p3, :cond_4

    .line 48
    .line 49
    invoke-static {p2, v0, p1, v0}, LK3/g;->a(IIII)LK3/g;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p4, p1}, LO/f;->g(LK3/g;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-static {p1, v0, p2, v0}, LK3/g;->a(IIII)LK3/g;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p4, p1}, LO/f;->g(LK3/g;)V

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_1
    return-void
.end method

.method public final f1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LO1/L;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->H(I)LO1/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    :cond_1
    return v1
.end method

.method public final g0(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    iget-object v4, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 18
    .line 19
    if-eq p2, v2, :cond_2

    .line 20
    .line 21
    if-ne p2, v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_6

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    if-ne p2, v2, :cond_3

    .line 36
    .line 37
    const/16 v5, 0x82

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/16 v5, 0x21

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v4, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const/4 v5, 0x0

    .line 48
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->e()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_8

    .line 53
    .line 54
    iget-object v5, p0, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ne v5, v3, :cond_5

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_5
    const/4 v5, 0x0

    .line 65
    :goto_3
    if-ne p2, v2, :cond_6

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/4 v6, 0x0

    .line 70
    :goto_4
    xor-int/2addr v5, v6

    .line 71
    if-eqz v5, :cond_7

    .line 72
    .line 73
    const/16 v5, 0x42

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    const/16 v5, 0x11

    .line 77
    .line 78
    :goto_5
    invoke-virtual {v0, v4, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_6

    .line 83
    :cond_8
    move-object v0, v5

    .line 84
    :goto_6
    if-eqz v0, :cond_9

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_9
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/high16 v6, 0x60000

    .line 92
    .line 93
    if-ne v5, v6, :cond_a

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_a
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->a1(I)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_b

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    goto :goto_7

    .line 116
    :cond_b
    const/4 v6, 0x0

    .line 117
    :goto_7
    const/high16 v7, 0x20000

    .line 118
    .line 119
    if-ne v5, v3, :cond_e

    .line 120
    .line 121
    if-nez v6, :cond_c

    .line 122
    .line 123
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 124
    .line 125
    and-int/lit16 v1, v1, 0x1000

    .line 126
    .line 127
    if-nez v1, :cond_d

    .line 128
    .line 129
    :cond_c
    move-object v0, p1

    .line 130
    :cond_d
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 131
    .line 132
    and-int/2addr v1, v7

    .line 133
    if-eqz v1, :cond_14

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->g1()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_14

    .line 140
    .line 141
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/q;->m1(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_e
    if-nez v5, :cond_11

    .line 146
    .line 147
    if-nez v6, :cond_f

    .line 148
    .line 149
    iget v2, p0, Landroidx/leanback/widget/q;->z:I

    .line 150
    .line 151
    and-int/lit16 v2, v2, 0x800

    .line 152
    .line 153
    if-nez v2, :cond_10

    .line 154
    .line 155
    :cond_f
    move-object v0, p1

    .line 156
    :cond_10
    iget v2, p0, Landroidx/leanback/widget/q;->z:I

    .line 157
    .line 158
    and-int/2addr v2, v7

    .line 159
    if-eqz v2, :cond_14

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->f1()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_14

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->m1(Z)V

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_11
    const/4 v1, 0x3

    .line 172
    if-ne v5, v1, :cond_12

    .line 173
    .line 174
    if-nez v6, :cond_13

    .line 175
    .line 176
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 177
    .line 178
    and-int/lit16 v1, v1, 0x4000

    .line 179
    .line 180
    if-nez v1, :cond_14

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_12
    if-ne v5, v2, :cond_14

    .line 184
    .line 185
    if-nez v6, :cond_13

    .line 186
    .line 187
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 188
    .line 189
    and-int/lit16 v1, v1, 0x2000

    .line 190
    .line 191
    if-nez v1, :cond_14

    .line 192
    .line 193
    :cond_13
    :goto_8
    move-object v0, p1

    .line 194
    :cond_14
    if-eqz v0, :cond_15

    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-eqz p2, :cond_16

    .line 206
    .line 207
    return-object p2

    .line 208
    :cond_16
    if-eqz p1, :cond_17

    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_17
    move-object p1, v4

    .line 212
    :goto_9
    return-object p1
.end method

.method public final g1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LO1/L;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->H(I)LO1/c0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :cond_1
    :goto_0
    return v1
.end method

.method public final h0(II)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, v1, Landroidx/leanback/widget/k;->f:I

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 15
    .line 16
    const/high16 v2, -0x80000000

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    if-gt p1, v0, :cond_0

    .line 22
    .line 23
    add-int/2addr v1, p2

    .line 24
    iput v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 27
    .line 28
    invoke-virtual {p1}, LV/b;->e()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h1(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->H(I)LO1/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p1, p1, LO1/c0;->G:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ltz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-gt v2, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ltz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-gt p1, v0, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_1
    return v1
.end method

.method public final i(IILO1/Y;Lr/h;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 3
    .line 4
    .line 5
    iget p3, p0, Landroidx/leanback/widget/q;->r:I

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, p2

    .line 11
    :goto_0
    invoke-virtual {p0}, LO1/L;->x()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    if-gez p1, :cond_2

    .line 21
    .line 22
    iget p2, p0, Landroidx/leanback/widget/q;->Z:I

    .line 23
    .line 24
    neg-int p2, p2

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    iget p2, p0, Landroidx/leanback/widget/q;->Y:I

    .line 29
    .line 30
    iget p3, p0, Landroidx/leanback/widget/q;->Z:I

    .line 31
    .line 32
    add-int/2addr p2, p3

    .line 33
    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 34
    .line 35
    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/k;->e(IILr/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final i0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/leanback/widget/q;->F:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 5
    .line 6
    invoke-virtual {v0}, LV/b;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i1(Landroid/view/View;IIII)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/leanback/widget/q;->Y0(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/q;->Z0(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/q;->K:I

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/q;->R:I

    .line 23
    .line 24
    and-int/lit8 v2, v1, 0x70

    .line 25
    .line 26
    iget v3, p0, Landroidx/leanback/widget/q;->z:I

    .line 27
    .line 28
    const/high16 v4, 0xc0000

    .line 29
    .line 30
    and-int/2addr v3, v4

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const v3, 0x800007

    .line 35
    .line 36
    .line 37
    and-int/2addr v1, v3

    .line 38
    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    and-int/lit8 v1, v1, 0x7

    .line 44
    .line 45
    :goto_1
    iget v3, p0, Landroidx/leanback/widget/q;->r:I

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x30

    .line 50
    .line 51
    if-eq v2, v5, :cond_a

    .line 52
    .line 53
    :cond_3
    if-ne v3, v4, :cond_4

    .line 54
    .line 55
    const/4 v5, 0x3

    .line 56
    if-ne v1, v5, :cond_4

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    if-nez v3, :cond_5

    .line 60
    .line 61
    const/16 v5, 0x50

    .line 62
    .line 63
    if-eq v2, v5, :cond_6

    .line 64
    .line 65
    :cond_5
    if-ne v3, v4, :cond_7

    .line 66
    .line 67
    const/4 v5, 0x5

    .line 68
    if-ne v1, v5, :cond_7

    .line 69
    .line 70
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->b1(I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    sub-int/2addr p2, v0

    .line 75
    :goto_2
    add-int/2addr p5, p2

    .line 76
    goto :goto_3

    .line 77
    :cond_7
    if-nez v3, :cond_8

    .line 78
    .line 79
    const/16 v5, 0x10

    .line 80
    .line 81
    if-eq v2, v5, :cond_9

    .line 82
    .line 83
    :cond_8
    if-ne v3, v4, :cond_a

    .line 84
    .line 85
    if-ne v1, v4, :cond_a

    .line 86
    .line 87
    :cond_9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->b1(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    sub-int/2addr p2, v0

    .line 92
    div-int/lit8 p2, p2, 0x2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_a
    :goto_3
    iget p2, p0, Landroidx/leanback/widget/q;->r:I

    .line 96
    .line 97
    if-nez p2, :cond_b

    .line 98
    .line 99
    add-int/2addr v0, p5

    .line 100
    goto :goto_4

    .line 101
    :cond_b
    add-int/2addr v0, p5

    .line 102
    move v6, p5

    .line 103
    move p5, p3

    .line 104
    move p3, v6

    .line 105
    move v7, v0

    .line 106
    move v0, p4

    .line 107
    move p4, v7

    .line 108
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Landroidx/leanback/widget/n;

    .line 113
    .line 114
    invoke-static {p1, p3, p5, p4, v0}, LO1/L;->V(Landroid/view/View;IIII)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Landroidx/leanback/widget/q;->e0:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-static {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 123
    .line 124
    sub-int/2addr p3, v2

    .line 125
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    sub-int/2addr p5, v2

    .line 128
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 129
    .line 130
    sub-int/2addr v2, p4

    .line 131
    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 132
    .line 133
    sub-int/2addr p4, v0

    .line 134
    iput p3, p2, Landroidx/leanback/widget/n;->e:I

    .line 135
    .line 136
    iput p5, p2, Landroidx/leanback/widget/n;->f:I

    .line 137
    .line 138
    iput v2, p2, Landroidx/leanback/widget/n;->g:I

    .line 139
    .line 140
    iput p4, p2, Landroidx/leanback/widget/n;->h:I

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->A1(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final j(ILr/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/f;->w1:I

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    sub-int v2, p1, v0

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, p1, :cond_0

    .line 29
    .line 30
    add-int v4, v1, v0

    .line 31
    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2, v3, v2}, Lr/h;->b(II)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public final j0(II)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    iget v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 7
    .line 8
    const/high16 v2, -0x80000000

    .line 9
    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    sub-int/2addr p2, p1

    .line 20
    add-int/2addr p2, v1

    .line 21
    iput p2, p0, Landroidx/leanback/widget/q;->F:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ge p1, v0, :cond_1

    .line 25
    .line 26
    add-int/lit8 v2, v0, -0x1

    .line 27
    .line 28
    if-le p2, v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    iput v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-le p1, v0, :cond_2

    .line 36
    .line 37
    if-ge p2, v0, :cond_2

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    iput v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 44
    .line 45
    invoke-virtual {p1}, LV/b;->e()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final j1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/leanback/widget/q;->u:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/leanback/widget/q;->v:I

    .line 10
    .line 11
    return-void
.end method

.method public final k0(II)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v1, v1, Landroidx/leanback/widget/k;->f:I

    .line 11
    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 15
    .line 16
    const/high16 v2, -0x80000000

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    add-int v3, v0, v1

    .line 21
    .line 22
    if-gt p1, v3, :cond_1

    .line 23
    .line 24
    add-int v4, p1, p2

    .line 25
    .line 26
    if-le v4, v3, :cond_0

    .line 27
    .line 28
    sub-int/2addr p1, v3

    .line 29
    add-int/2addr p1, v1

    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Landroidx/leanback/widget/q;->B:I

    .line 32
    .line 33
    iput v2, p0, Landroidx/leanback/widget/q;->F:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sub-int/2addr v1, p2

    .line 37
    iput v1, p0, Landroidx/leanback/widget/q;->F:I

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 40
    .line 41
    invoke-virtual {p1}, LV/b;->e()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final k1(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    sget-object v1, Landroidx/leanback/widget/q;->e0:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0, v1, p1}, LO1/L;->d(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    add-int/2addr v2, v3

    .line 23
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    .line 25
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v4

    .line 28
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v3, v4

    .line 31
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    add-int/2addr v3, v1

    .line 34
    iget v1, p0, Landroidx/leanback/widget/q;->J:I

    .line 35
    .line 36
    const/4 v4, -0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    if-ne v1, v4, :cond_0

    .line 39
    .line 40
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->K:I

    .line 46
    .line 47
    const/high16 v4, 0x40000000    # 2.0f

    .line 48
    .line 49
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    iget v4, p0, Landroidx/leanback/widget/q;->r:I

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 62
    .line 63
    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 68
    .line 69
    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 79
    .line 80
    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    move v0, v3

    .line 91
    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final l0(II)V
    .locals 3

    .line 1
    add-int/2addr p2, p1

    .line 2
    :goto_0
    if-ge p1, p2, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 5
    .line 6
    iget-object v1, v0, LV/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lr/l;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, v1, Lr/l;->c:LU4/b;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget v1, v1, Lr/l;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, LV/b;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lr/l;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lr/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v2

    .line 34
    throw p1

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final l1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/q;->Y:I

    .line 11
    .line 12
    iget v2, p0, Landroidx/leanback/widget/q;->Z:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    iget v2, p0, Landroidx/leanback/widget/q;->v:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->Z:I

    .line 20
    .line 21
    neg-int v1, v1

    .line 22
    iget v2, p0, Landroidx/leanback/widget/q;->v:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/k;->m(IZ)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final m1(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->g1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->f1()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/leanback/widget/o;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 p1, -0x1

    .line 34
    :goto_1
    iget v2, p0, Landroidx/leanback/widget/q;->S:I

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-le v2, v1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    const/4 v1, 0x0

    .line 41
    :goto_2
    invoke-direct {v0, p0, p1, v1}, Landroidx/leanback/widget/o;-><init>(Landroidx/leanback/widget/q;IZ)V

    .line 42
    .line 43
    .line 44
    iput v3, p0, Landroidx/leanback/widget/q;->F:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->R0(LO1/w;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    iget-object v2, v0, Landroidx/leanback/widget/o;->u:Landroidx/leanback/widget/q;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    iget p1, v0, Landroidx/leanback/widget/o;->t:I

    .line 55
    .line 56
    iget v2, v2, Landroidx/leanback/widget/q;->p:I

    .line 57
    .line 58
    if-ge p1, v2, :cond_6

    .line 59
    .line 60
    add-int/2addr p1, v1

    .line 61
    iput p1, v0, Landroidx/leanback/widget/o;->t:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    iget p1, v0, Landroidx/leanback/widget/o;->t:I

    .line 65
    .line 66
    iget v2, v2, Landroidx/leanback/widget/q;->p:I

    .line 67
    .line 68
    neg-int v2, v2

    .line 69
    if-le p1, v2, :cond_6

    .line 70
    .line 71
    sub-int/2addr p1, v1

    .line 72
    iput p1, v0, Landroidx/leanback/widget/o;->t:I

    .line 73
    .line 74
    :cond_6
    :goto_3
    return-void
.end method

.method public final n0(Ls1/g;LO1/Y;)V
    .locals 25

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    iget v0, v6, Landroidx/leanback/widget/q;->S:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, LO1/Y;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 18
    .line 19
    const/16 v1, 0x40

    .line 20
    .line 21
    and-int/2addr v0, v1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 31
    .line 32
    or-int/lit16 v0, v0, 0x80

    .line 33
    .line 34
    iput v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 38
    .line 39
    and-int/lit16 v2, v0, 0x200

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 45
    .line 46
    iput-object v1, v6, Landroidx/leanback/widget/q;->L:[I

    .line 47
    .line 48
    and-int/lit16 v0, v0, -0x401

    .line 49
    .line 50
    iput v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 51
    .line 52
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/q;->w0(Ls1/g;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    and-int/lit8 v0, v0, -0x4

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    or-int/2addr v0, v8

    .line 60
    iput v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p2}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 63
    .line 64
    .line 65
    iget-boolean v0, v7, LO1/Y;->g:Z

    .line 66
    .line 67
    const/high16 v2, -0x80000000

    .line 68
    .line 69
    const/4 v4, -0x1

    .line 70
    iget-object v9, v6, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    if-eqz v0, :cond_d

    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->B1()V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 83
    .line 84
    if-eqz v1, :cond_c

    .line 85
    .line 86
    if-lez v0, :cond_c

    .line 87
    .line 88
    invoke-virtual {v6, v10}, LO1/L;->w(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget v1, v1, LO1/c0;->J:I

    .line 97
    .line 98
    add-int/lit8 v5, v0, -0x1

    .line 99
    .line 100
    invoke-virtual {v6, v5}, LO1/L;->w(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget v5, v5, LO1/c0;->J:I

    .line 109
    .line 110
    const v3, 0x7fffffff

    .line 111
    .line 112
    .line 113
    :goto_0
    if-ge v10, v0, :cond_a

    .line 114
    .line 115
    invoke-virtual {v6, v10}, LO1/L;->w(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Landroidx/leanback/widget/n;

    .line 124
    .line 125
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    if-eqz v9, :cond_5

    .line 130
    .line 131
    iget-object v11, v9, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    .line 133
    if-nez v11, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView;->J(LO1/c0;)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    :goto_1
    const/4 v9, -0x1

    .line 142
    :goto_2
    iget-object v11, v8, LO1/M;->a:LO1/c0;

    .line 143
    .line 144
    invoke-virtual {v11}, LO1/c0;->m()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-nez v11, :cond_8

    .line 149
    .line 150
    iget-object v11, v8, LO1/M;->a:LO1/c0;

    .line 151
    .line 152
    invoke-virtual {v11}, LO1/c0;->j()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-nez v11, :cond_8

    .line 157
    .line 158
    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-nez v11, :cond_8

    .line 163
    .line 164
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-nez v11, :cond_6

    .line 169
    .line 170
    iget v11, v6, Landroidx/leanback/widget/q;->B:I

    .line 171
    .line 172
    iget-object v12, v8, LO1/M;->a:LO1/c0;

    .line 173
    .line 174
    invoke-virtual {v12}, LO1/c0;->c()I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-eq v11, v12, :cond_8

    .line 179
    .line 180
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_7

    .line 185
    .line 186
    iget v11, v6, Landroidx/leanback/widget/q;->B:I

    .line 187
    .line 188
    iget-object v8, v8, LO1/M;->a:LO1/c0;

    .line 189
    .line 190
    invoke-virtual {v8}, LO1/c0;->c()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-ne v11, v8, :cond_8

    .line 195
    .line 196
    :cond_7
    if-lt v9, v1, :cond_8

    .line 197
    .line 198
    if-le v9, v5, :cond_9

    .line 199
    .line 200
    :cond_8
    iget-object v8, v6, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 201
    .line 202
    invoke-virtual {v8, v7}, LO1/y;->d(Landroid/view/View;)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    iget-object v8, v6, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 211
    .line 212
    invoke-virtual {v8, v7}, LO1/y;->b(Landroid/view/View;)I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_a
    if-le v2, v3, :cond_b

    .line 224
    .line 225
    sub-int/2addr v2, v3

    .line 226
    iput v2, v6, Landroidx/leanback/widget/q;->v:I

    .line 227
    .line 228
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->T0()V

    .line 229
    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->l1()V

    .line 232
    .line 233
    .line 234
    :cond_c
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 235
    .line 236
    and-int/lit8 v0, v0, -0x4

    .line 237
    .line 238
    iput v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->j1()V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_d
    iget-boolean v0, v7, LO1/Y;->k:Z

    .line 245
    .line 246
    iget-object v11, v6, Landroidx/leanback/widget/q;->w:Landroid/util/SparseIntArray;

    .line 247
    .line 248
    if-eqz v0, :cond_f

    .line 249
    .line 250
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->clear()V

    .line 251
    .line 252
    .line 253
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const/4 v5, 0x0

    .line 258
    :goto_3
    if-ge v5, v0, :cond_f

    .line 259
    .line 260
    invoke-virtual {v6, v5}, LO1/L;->w(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-virtual {v9, v12}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    iget v12, v12, LO1/c0;->J:I

    .line 269
    .line 270
    if-ltz v12, :cond_e

    .line 271
    .line 272
    iget-object v13, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 273
    .line 274
    invoke-virtual {v13, v12}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    if-eqz v13, :cond_e

    .line 279
    .line 280
    iget v13, v13, Landroidx/leanback/widget/j;->H:I

    .line 281
    .line 282
    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    .line 284
    .line 285
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_f
    invoke-virtual/range {p0 .. p0}, LO1/L;->U()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_10

    .line 293
    .line 294
    iget v0, v6, Landroidx/leanback/widget/q;->V:I

    .line 295
    .line 296
    if-nez v0, :cond_10

    .line 297
    .line 298
    const/4 v12, 0x1

    .line 299
    goto :goto_4

    .line 300
    :cond_10
    const/4 v12, 0x0

    .line 301
    :goto_4
    iget v0, v6, Landroidx/leanback/widget/q;->B:I

    .line 302
    .line 303
    if-eq v0, v4, :cond_11

    .line 304
    .line 305
    iget v5, v6, Landroidx/leanback/widget/q;->F:I

    .line 306
    .line 307
    if-eq v5, v2, :cond_11

    .line 308
    .line 309
    add-int/2addr v0, v5

    .line 310
    iput v0, v6, Landroidx/leanback/widget/q;->B:I

    .line 311
    .line 312
    iput v10, v6, Landroidx/leanback/widget/q;->C:I

    .line 313
    .line 314
    :cond_11
    iput v10, v6, Landroidx/leanback/widget/q;->F:I

    .line 315
    .line 316
    iget v0, v6, Landroidx/leanback/widget/q;->B:I

    .line 317
    .line 318
    invoke-virtual {v6, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v13

    .line 322
    iget v14, v6, Landroidx/leanback/widget/q;->B:I

    .line 323
    .line 324
    iget v15, v6, Landroidx/leanback/widget/q;->C:I

    .line 325
    .line 326
    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    .line 327
    .line 328
    .line 329
    move-result v16

    .line 330
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 331
    .line 332
    if-eqz v0, :cond_12

    .line 333
    .line 334
    iget v5, v0, Landroidx/leanback/widget/k;->f:I

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_12
    const/4 v5, -0x1

    .line 338
    :goto_5
    if-eqz v0, :cond_13

    .line 339
    .line 340
    iget v0, v0, Landroidx/leanback/widget/k;->g:I

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_13
    const/4 v0, -0x1

    .line 344
    :goto_6
    iget v3, v6, Landroidx/leanback/widget/q;->r:I

    .line 345
    .line 346
    if-nez v3, :cond_14

    .line 347
    .line 348
    iget v3, v7, LO1/Y;->o:I

    .line 349
    .line 350
    iget v2, v7, LO1/Y;->p:I

    .line 351
    .line 352
    :goto_7
    move/from16 v24, v3

    .line 353
    .line 354
    move v3, v2

    .line 355
    move/from16 v2, v24

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_14
    iget v2, v7, LO1/Y;->o:I

    .line 359
    .line 360
    iget v3, v7, LO1/Y;->p:I

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :goto_8
    iget-object v1, v6, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 364
    .line 365
    invoke-virtual {v1}, LO1/Y;->b()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_15

    .line 370
    .line 371
    iput v4, v6, Landroidx/leanback/widget/q;->B:I

    .line 372
    .line 373
    iput v10, v6, Landroidx/leanback/widget/q;->C:I

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_15
    iget v4, v6, Landroidx/leanback/widget/q;->B:I

    .line 377
    .line 378
    if-lt v4, v1, :cond_16

    .line 379
    .line 380
    sub-int/2addr v1, v8

    .line 381
    iput v1, v6, Landroidx/leanback/widget/q;->B:I

    .line 382
    .line 383
    iput v10, v6, Landroidx/leanback/widget/q;->C:I

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_16
    const/4 v8, -0x1

    .line 387
    if-ne v4, v8, :cond_17

    .line 388
    .line 389
    if-lez v1, :cond_17

    .line 390
    .line 391
    iput v10, v6, Landroidx/leanback/widget/q;->B:I

    .line 392
    .line 393
    iput v10, v6, Landroidx/leanback/widget/q;->C:I

    .line 394
    .line 395
    :cond_17
    :goto_9
    iget-object v1, v6, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 396
    .line 397
    iget-boolean v1, v1, LO1/Y;->f:Z

    .line 398
    .line 399
    iget-object v4, v6, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 400
    .line 401
    if-nez v1, :cond_22

    .line 402
    .line 403
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 404
    .line 405
    if-eqz v1, :cond_22

    .line 406
    .line 407
    iget v8, v1, Landroidx/leanback/widget/k;->f:I

    .line 408
    .line 409
    if-ltz v8, :cond_22

    .line 410
    .line 411
    iget v8, v6, Landroidx/leanback/widget/q;->z:I

    .line 412
    .line 413
    and-int/lit16 v8, v8, 0x100

    .line 414
    .line 415
    if-nez v8, :cond_22

    .line 416
    .line 417
    iget v1, v1, Landroidx/leanback/widget/k;->e:I

    .line 418
    .line 419
    iget v8, v6, Landroidx/leanback/widget/q;->S:I

    .line 420
    .line 421
    if-ne v1, v8, :cond_22

    .line 422
    .line 423
    iget-object v0, v4, Ll/D;->d:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 426
    .line 427
    iget v1, v6, LO1/L;->n:I

    .line 428
    .line 429
    iput v1, v0, Landroidx/leanback/widget/Y;->i:I

    .line 430
    .line 431
    iget-object v1, v4, Ll/D;->c:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 434
    .line 435
    iget v5, v6, LO1/L;->o:I

    .line 436
    .line 437
    iput v5, v1, Landroidx/leanback/widget/Y;->i:I

    .line 438
    .line 439
    invoke-virtual/range {p0 .. p0}, LO1/L;->J()I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-virtual/range {p0 .. p0}, LO1/L;->K()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    iput v1, v0, Landroidx/leanback/widget/Y;->j:I

    .line 448
    .line 449
    iput v5, v0, Landroidx/leanback/widget/Y;->k:I

    .line 450
    .line 451
    iget-object v0, v4, Ll/D;->c:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 454
    .line 455
    invoke-virtual/range {p0 .. p0}, LO1/L;->L()I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-virtual/range {p0 .. p0}, LO1/L;->I()I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    iput v1, v0, Landroidx/leanback/widget/Y;->j:I

    .line 464
    .line 465
    iput v5, v0, Landroidx/leanback/widget/Y;->k:I

    .line 466
    .line 467
    iget-object v0, v4, Ll/D;->e:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 470
    .line 471
    iget v0, v0, Landroidx/leanback/widget/Y;->i:I

    .line 472
    .line 473
    iput v0, v6, Landroidx/leanback/widget/q;->Y:I

    .line 474
    .line 475
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->E1()V

    .line 476
    .line 477
    .line 478
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 479
    .line 480
    iget v1, v6, Landroidx/leanback/widget/q;->P:I

    .line 481
    .line 482
    iput v1, v0, Landroidx/leanback/widget/k;->d:I

    .line 483
    .line 484
    iget v1, v6, Landroidx/leanback/widget/q;->z:I

    .line 485
    .line 486
    or-int/lit8 v1, v1, 0x4

    .line 487
    .line 488
    iput v1, v6, Landroidx/leanback/widget/q;->z:I

    .line 489
    .line 490
    iget v1, v6, Landroidx/leanback/widget/q;->B:I

    .line 491
    .line 492
    iput v1, v0, Landroidx/leanback/widget/k;->i:I

    .line 493
    .line 494
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 495
    .line 496
    .line 497
    move-result v8

    .line 498
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 499
    .line 500
    iget v0, v0, Landroidx/leanback/widget/k;->f:I

    .line 501
    .line 502
    iget v1, v6, Landroidx/leanback/widget/q;->z:I

    .line 503
    .line 504
    and-int/lit8 v1, v1, -0x9

    .line 505
    .line 506
    iput v1, v6, Landroidx/leanback/widget/q;->z:I

    .line 507
    .line 508
    move v5, v0

    .line 509
    const/4 v1, 0x0

    .line 510
    :goto_a
    if-ge v1, v8, :cond_20

    .line 511
    .line 512
    invoke-virtual {v6, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {v0}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 517
    .line 518
    .line 519
    move-result v10

    .line 520
    if-eq v5, v10, :cond_18

    .line 521
    .line 522
    :goto_b
    move v10, v3

    .line 523
    move-object/from16 v21, v9

    .line 524
    .line 525
    move-object/from16 v20, v11

    .line 526
    .line 527
    move-object/from16 v22, v13

    .line 528
    .line 529
    move/from16 v19, v14

    .line 530
    .line 531
    move/from16 v23, v15

    .line 532
    .line 533
    move v13, v1

    .line 534
    move v15, v2

    .line 535
    move v9, v5

    .line 536
    goto/16 :goto_12

    .line 537
    .line 538
    :cond_18
    iget-object v10, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 539
    .line 540
    invoke-virtual {v10, v5}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 541
    .line 542
    .line 543
    move-result-object v10

    .line 544
    if-nez v10, :cond_19

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_19
    move/from16 v19, v2

    .line 548
    .line 549
    iget v2, v10, Landroidx/leanback/widget/j;->H:I

    .line 550
    .line 551
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/q;->c1(I)I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    move/from16 v20, v3

    .line 556
    .line 557
    iget-object v3, v4, Ll/D;->f:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v3, Landroidx/leanback/widget/Y;

    .line 560
    .line 561
    iget v3, v3, Landroidx/leanback/widget/Y;->j:I

    .line 562
    .line 563
    add-int/2addr v2, v3

    .line 564
    iget v3, v6, Landroidx/leanback/widget/q;->I:I

    .line 565
    .line 566
    sub-int v17, v2, v3

    .line 567
    .line 568
    iget-object v2, v6, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 569
    .line 570
    invoke-virtual {v2, v0}, LO1/y;->d(Landroid/view/View;)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    sget-object v2, Landroidx/leanback/widget/q;->e0:Landroid/graphics/Rect;

    .line 575
    .line 576
    invoke-virtual {v6, v2, v0}, Landroidx/leanback/widget/q;->B(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 577
    .line 578
    .line 579
    move-object/from16 v21, v4

    .line 580
    .line 581
    iget v4, v6, Landroidx/leanback/widget/q;->r:I

    .line 582
    .line 583
    if-nez v4, :cond_1a

    .line 584
    .line 585
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    :goto_c
    move v4, v2

    .line 590
    goto :goto_d

    .line 591
    :cond_1a
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    goto :goto_c

    .line 596
    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    check-cast v2, Landroidx/leanback/widget/n;

    .line 601
    .line 602
    iget-object v2, v2, LO1/M;->a:LO1/c0;

    .line 603
    .line 604
    iget v2, v2, LO1/c0;->P:I

    .line 605
    .line 606
    and-int/lit8 v2, v2, 0x2

    .line 607
    .line 608
    if-eqz v2, :cond_1b

    .line 609
    .line 610
    iget v2, v6, Landroidx/leanback/widget/q;->z:I

    .line 611
    .line 612
    or-int/lit8 v2, v2, 0x8

    .line 613
    .line 614
    iput v2, v6, Landroidx/leanback/widget/q;->z:I

    .line 615
    .line 616
    iget-object v2, v6, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 617
    .line 618
    move/from16 p1, v4

    .line 619
    .line 620
    iget-object v4, v6, LO1/L;->a:LO1/c;

    .line 621
    .line 622
    invoke-virtual {v4, v0}, LO1/c;->j(Landroid/view/View;)I

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    invoke-virtual {v6, v2, v4, v0}, LO1/L;->E0(Ls1/g;ILandroid/view/View;)V

    .line 627
    .line 628
    .line 629
    iget-object v0, v6, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 630
    .line 631
    invoke-virtual {v0, v5}, Ls1/g;->d(I)Landroid/view/View;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    const/4 v2, 0x0

    .line 636
    invoke-virtual {v6, v1, v0, v2}, LO1/L;->b(ILandroid/view/View;Z)V

    .line 637
    .line 638
    .line 639
    :goto_e
    move-object v2, v0

    .line 640
    goto :goto_f

    .line 641
    :cond_1b
    move/from16 p1, v4

    .line 642
    .line 643
    goto :goto_e

    .line 644
    :goto_f
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/q;->k1(Landroid/view/View;)V

    .line 645
    .line 646
    .line 647
    iget v0, v6, Landroidx/leanback/widget/q;->r:I

    .line 648
    .line 649
    if-nez v0, :cond_1c

    .line 650
    .line 651
    invoke-static {v2}, Landroidx/leanback/widget/q;->Z0(Landroid/view/View;)I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    :goto_10
    add-int v4, v3, v0

    .line 656
    .line 657
    move/from16 v18, v4

    .line 658
    .line 659
    move v4, v0

    .line 660
    goto :goto_11

    .line 661
    :cond_1c
    invoke-static {v2}, Landroidx/leanback/widget/q;->Y0(Landroid/view/View;)I

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    goto :goto_10

    .line 666
    :goto_11
    iget v10, v10, Landroidx/leanback/widget/j;->H:I

    .line 667
    .line 668
    move-object/from16 v0, p0

    .line 669
    .line 670
    move-object/from16 v22, v13

    .line 671
    .line 672
    move v13, v1

    .line 673
    move-object v1, v2

    .line 674
    move/from16 v23, v15

    .line 675
    .line 676
    move/from16 v15, v19

    .line 677
    .line 678
    move v2, v10

    .line 679
    move/from16 v10, v20

    .line 680
    .line 681
    move v7, v4

    .line 682
    move-object/from16 v20, v11

    .line 683
    .line 684
    move/from16 v19, v14

    .line 685
    .line 686
    move-object/from16 v14, v21

    .line 687
    .line 688
    move/from16 v11, p1

    .line 689
    .line 690
    move/from16 v4, v18

    .line 691
    .line 692
    move-object/from16 v21, v9

    .line 693
    .line 694
    move v9, v5

    .line 695
    move/from16 v5, v17

    .line 696
    .line 697
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->i1(Landroid/view/View;IIII)V

    .line 698
    .line 699
    .line 700
    if-eq v11, v7, :cond_1f

    .line 701
    .line 702
    :goto_12
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 703
    .line 704
    iget v0, v0, Landroidx/leanback/widget/k;->g:I

    .line 705
    .line 706
    const/4 v1, 0x1

    .line 707
    sub-int/2addr v8, v1

    .line 708
    :goto_13
    if-lt v8, v13, :cond_1d

    .line 709
    .line 710
    invoke-virtual {v6, v8}, LO1/L;->w(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    iget-object v2, v6, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 715
    .line 716
    iget-object v3, v6, LO1/L;->a:LO1/c;

    .line 717
    .line 718
    invoke-virtual {v3, v1}, LO1/c;->j(Landroid/view/View;)I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    invoke-virtual {v6, v2, v3, v1}, LO1/L;->E0(Ls1/g;ILandroid/view/View;)V

    .line 723
    .line 724
    .line 725
    add-int/lit8 v8, v8, -0x1

    .line 726
    .line 727
    goto :goto_13

    .line 728
    :cond_1d
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 729
    .line 730
    invoke-virtual {v1, v9}, Landroidx/leanback/widget/k;->l(I)V

    .line 731
    .line 732
    .line 733
    iget v1, v6, Landroidx/leanback/widget/q;->z:I

    .line 734
    .line 735
    const/high16 v2, 0x10000

    .line 736
    .line 737
    and-int/2addr v1, v2

    .line 738
    if-eqz v1, :cond_1e

    .line 739
    .line 740
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->T0()V

    .line 741
    .line 742
    .line 743
    iget v1, v6, Landroidx/leanback/widget/q;->B:I

    .line 744
    .line 745
    if-ltz v1, :cond_21

    .line 746
    .line 747
    if-gt v1, v0, :cond_21

    .line 748
    .line 749
    :goto_14
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 750
    .line 751
    iget v1, v0, Landroidx/leanback/widget/k;->g:I

    .line 752
    .line 753
    iget v2, v6, Landroidx/leanback/widget/q;->B:I

    .line 754
    .line 755
    if-ge v1, v2, :cond_21

    .line 756
    .line 757
    invoke-virtual {v0}, Landroidx/leanback/widget/k;->a()Z

    .line 758
    .line 759
    .line 760
    goto :goto_14

    .line 761
    :cond_1e
    :goto_15
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 762
    .line 763
    invoke-virtual {v1}, Landroidx/leanback/widget/k;->a()Z

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-eqz v1, :cond_21

    .line 768
    .line 769
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 770
    .line 771
    iget v1, v1, Landroidx/leanback/widget/k;->g:I

    .line 772
    .line 773
    if-ge v1, v0, :cond_21

    .line 774
    .line 775
    goto :goto_15

    .line 776
    :cond_1f
    add-int/lit8 v1, v13, 0x1

    .line 777
    .line 778
    add-int/lit8 v5, v9, 0x1

    .line 779
    .line 780
    move-object/from16 v7, p2

    .line 781
    .line 782
    move v3, v10

    .line 783
    move-object v4, v14

    .line 784
    move v2, v15

    .line 785
    move/from16 v14, v19

    .line 786
    .line 787
    move-object/from16 v11, v20

    .line 788
    .line 789
    move-object/from16 v9, v21

    .line 790
    .line 791
    move-object/from16 v13, v22

    .line 792
    .line 793
    move/from16 v15, v23

    .line 794
    .line 795
    const/4 v10, 0x0

    .line 796
    goto/16 :goto_a

    .line 797
    .line 798
    :cond_20
    move v10, v3

    .line 799
    move-object/from16 v21, v9

    .line 800
    .line 801
    move-object/from16 v20, v11

    .line 802
    .line 803
    move-object/from16 v22, v13

    .line 804
    .line 805
    move/from16 v19, v14

    .line 806
    .line 807
    move/from16 v23, v15

    .line 808
    .line 809
    move v15, v2

    .line 810
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->D1()V

    .line 811
    .line 812
    .line 813
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->E1()V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_1b

    .line 817
    .line 818
    :cond_22
    move v10, v3

    .line 819
    move-object/from16 v21, v9

    .line 820
    .line 821
    move-object/from16 v20, v11

    .line 822
    .line 823
    move-object/from16 v22, v13

    .line 824
    .line 825
    move/from16 v19, v14

    .line 826
    .line 827
    move/from16 v23, v15

    .line 828
    .line 829
    move v15, v2

    .line 830
    move-object v14, v4

    .line 831
    iget v1, v6, Landroidx/leanback/widget/q;->z:I

    .line 832
    .line 833
    and-int/lit16 v2, v1, -0x101

    .line 834
    .line 835
    iput v2, v6, Landroidx/leanback/widget/q;->z:I

    .line 836
    .line 837
    iget-object v2, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 838
    .line 839
    if-eqz v2, :cond_24

    .line 840
    .line 841
    iget v3, v6, Landroidx/leanback/widget/q;->S:I

    .line 842
    .line 843
    iget v4, v2, Landroidx/leanback/widget/k;->e:I

    .line 844
    .line 845
    if-ne v3, v4, :cond_24

    .line 846
    .line 847
    const/high16 v3, 0x40000

    .line 848
    .line 849
    and-int/2addr v1, v3

    .line 850
    if-eqz v1, :cond_23

    .line 851
    .line 852
    const/4 v1, 0x1

    .line 853
    goto :goto_16

    .line 854
    :cond_23
    const/4 v1, 0x0

    .line 855
    :goto_16
    iget-boolean v2, v2, Landroidx/leanback/widget/k;->c:Z

    .line 856
    .line 857
    if-eq v1, v2, :cond_27

    .line 858
    .line 859
    :cond_24
    iget v1, v6, Landroidx/leanback/widget/q;->S:I

    .line 860
    .line 861
    const/4 v2, 0x1

    .line 862
    if-ne v1, v2, :cond_25

    .line 863
    .line 864
    new-instance v1, Landroidx/leanback/widget/P;

    .line 865
    .line 866
    invoke-direct {v1}, Landroidx/leanback/widget/P;-><init>()V

    .line 867
    .line 868
    .line 869
    goto :goto_17

    .line 870
    :cond_25
    new-instance v2, Landroidx/leanback/widget/T;

    .line 871
    .line 872
    invoke-direct {v2}, Landroidx/leanback/widget/k;-><init>()V

    .line 873
    .line 874
    .line 875
    new-instance v3, Lcom/google/android/gms/internal/ads/CO;

    .line 876
    .line 877
    const/16 v4, 0x40

    .line 878
    .line 879
    const/4 v7, 0x0

    .line 880
    invoke-direct {v3, v4, v7}, Lcom/google/android/gms/internal/ads/CO;-><init>(II)V

    .line 881
    .line 882
    .line 883
    iput-object v3, v2, Landroidx/leanback/widget/T;->j:Lcom/google/android/gms/internal/ads/CO;

    .line 884
    .line 885
    const/4 v3, -0x1

    .line 886
    iput v3, v2, Landroidx/leanback/widget/T;->k:I

    .line 887
    .line 888
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/k;->n(I)V

    .line 889
    .line 890
    .line 891
    move-object v1, v2

    .line 892
    :goto_17
    iput-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 893
    .line 894
    iget-object v2, v6, Landroidx/leanback/widget/q;->d0:Lf/S;

    .line 895
    .line 896
    iput-object v2, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 897
    .line 898
    iget v2, v6, Landroidx/leanback/widget/q;->z:I

    .line 899
    .line 900
    const/high16 v3, 0x40000

    .line 901
    .line 902
    and-int/2addr v2, v3

    .line 903
    if-eqz v2, :cond_26

    .line 904
    .line 905
    const/4 v2, 0x1

    .line 906
    goto :goto_18

    .line 907
    :cond_26
    const/4 v2, 0x0

    .line 908
    :goto_18
    iput-boolean v2, v1, Landroidx/leanback/widget/k;->c:Z

    .line 909
    .line 910
    :cond_27
    iget-object v1, v14, Ll/D;->e:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 913
    .line 914
    const/high16 v2, -0x80000000

    .line 915
    .line 916
    iput v2, v1, Landroidx/leanback/widget/Y;->b:I

    .line 917
    .line 918
    const v2, 0x7fffffff

    .line 919
    .line 920
    .line 921
    iput v2, v1, Landroidx/leanback/widget/Y;->a:I

    .line 922
    .line 923
    iget-object v1, v14, Ll/D;->d:Ljava/lang/Object;

    .line 924
    .line 925
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 926
    .line 927
    iget v2, v6, LO1/L;->n:I

    .line 928
    .line 929
    iput v2, v1, Landroidx/leanback/widget/Y;->i:I

    .line 930
    .line 931
    iget-object v2, v14, Ll/D;->c:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast v2, Landroidx/leanback/widget/Y;

    .line 934
    .line 935
    iget v3, v6, LO1/L;->o:I

    .line 936
    .line 937
    iput v3, v2, Landroidx/leanback/widget/Y;->i:I

    .line 938
    .line 939
    invoke-virtual/range {p0 .. p0}, LO1/L;->J()I

    .line 940
    .line 941
    .line 942
    move-result v2

    .line 943
    invoke-virtual/range {p0 .. p0}, LO1/L;->K()I

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    iput v2, v1, Landroidx/leanback/widget/Y;->j:I

    .line 948
    .line 949
    iput v3, v1, Landroidx/leanback/widget/Y;->k:I

    .line 950
    .line 951
    iget-object v1, v14, Ll/D;->c:Ljava/lang/Object;

    .line 952
    .line 953
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 954
    .line 955
    invoke-virtual/range {p0 .. p0}, LO1/L;->L()I

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    invoke-virtual/range {p0 .. p0}, LO1/L;->I()I

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    iput v2, v1, Landroidx/leanback/widget/Y;->j:I

    .line 964
    .line 965
    iput v3, v1, Landroidx/leanback/widget/Y;->k:I

    .line 966
    .line 967
    iget-object v1, v14, Ll/D;->e:Ljava/lang/Object;

    .line 968
    .line 969
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 970
    .line 971
    iget v1, v1, Landroidx/leanback/widget/Y;->i:I

    .line 972
    .line 973
    iput v1, v6, Landroidx/leanback/widget/q;->Y:I

    .line 974
    .line 975
    const/4 v1, 0x0

    .line 976
    iput v1, v6, Landroidx/leanback/widget/q;->I:I

    .line 977
    .line 978
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->E1()V

    .line 979
    .line 980
    .line 981
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 982
    .line 983
    iget v2, v6, Landroidx/leanback/widget/q;->P:I

    .line 984
    .line 985
    iput v2, v1, Landroidx/leanback/widget/k;->d:I

    .line 986
    .line 987
    iget-object v1, v6, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 988
    .line 989
    invoke-virtual {v6, v1}, LO1/L;->q(Ls1/g;)V

    .line 990
    .line 991
    .line 992
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 993
    .line 994
    const/4 v2, -0x1

    .line 995
    iput v2, v1, Landroidx/leanback/widget/k;->g:I

    .line 996
    .line 997
    iput v2, v1, Landroidx/leanback/widget/k;->f:I

    .line 998
    .line 999
    iget-object v2, v14, Ll/D;->e:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v2, Landroidx/leanback/widget/Y;

    .line 1002
    .line 1003
    const/high16 v3, -0x80000000

    .line 1004
    .line 1005
    iput v3, v2, Landroidx/leanback/widget/Y;->b:I

    .line 1006
    .line 1007
    iput v3, v2, Landroidx/leanback/widget/Y;->d:I

    .line 1008
    .line 1009
    const v3, 0x7fffffff

    .line 1010
    .line 1011
    .line 1012
    iput v3, v2, Landroidx/leanback/widget/Y;->a:I

    .line 1013
    .line 1014
    iput v3, v2, Landroidx/leanback/widget/Y;->c:I

    .line 1015
    .line 1016
    iget v2, v6, Landroidx/leanback/widget/q;->z:I

    .line 1017
    .line 1018
    and-int/lit8 v3, v2, -0x5

    .line 1019
    .line 1020
    iput v3, v6, Landroidx/leanback/widget/q;->z:I

    .line 1021
    .line 1022
    and-int/lit8 v2, v2, -0x15

    .line 1023
    .line 1024
    if-eqz v16, :cond_28

    .line 1025
    .line 1026
    const/16 v3, 0x10

    .line 1027
    .line 1028
    goto :goto_19

    .line 1029
    :cond_28
    const/4 v3, 0x0

    .line 1030
    :goto_19
    or-int/2addr v2, v3

    .line 1031
    iput v2, v6, Landroidx/leanback/widget/q;->z:I

    .line 1032
    .line 1033
    if-eqz v12, :cond_2a

    .line 1034
    .line 1035
    if-ltz v5, :cond_29

    .line 1036
    .line 1037
    iget v2, v6, Landroidx/leanback/widget/q;->B:I

    .line 1038
    .line 1039
    if-gt v2, v0, :cond_29

    .line 1040
    .line 1041
    if-ge v2, v5, :cond_2a

    .line 1042
    .line 1043
    :cond_29
    iget v5, v6, Landroidx/leanback/widget/q;->B:I

    .line 1044
    .line 1045
    move v0, v5

    .line 1046
    :cond_2a
    iput v5, v1, Landroidx/leanback/widget/k;->i:I

    .line 1047
    .line 1048
    const/4 v1, -0x1

    .line 1049
    if-eq v0, v1, :cond_2b

    .line 1050
    .line 1051
    :goto_1a
    iget-object v1, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 1052
    .line 1053
    invoke-virtual {v1}, Landroidx/leanback/widget/k;->a()Z

    .line 1054
    .line 1055
    .line 1056
    move-result v1

    .line 1057
    if-eqz v1, :cond_2b

    .line 1058
    .line 1059
    invoke-virtual {v6, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    if-nez v1, :cond_2b

    .line 1064
    .line 1065
    goto :goto_1a

    .line 1066
    :cond_2b
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->D1()V

    .line 1067
    .line 1068
    .line 1069
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 1070
    .line 1071
    iget v7, v0, Landroidx/leanback/widget/k;->f:I

    .line 1072
    .line 1073
    iget v8, v0, Landroidx/leanback/widget/k;->g:I

    .line 1074
    .line 1075
    neg-int v9, v15

    .line 1076
    neg-int v11, v10

    .line 1077
    iget v0, v6, Landroidx/leanback/widget/q;->B:I

    .line 1078
    .line 1079
    invoke-virtual {v6, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v13

    .line 1083
    if-eqz v13, :cond_2c

    .line 1084
    .line 1085
    if-eqz v12, :cond_2c

    .line 1086
    .line 1087
    invoke-virtual {v13}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    const/4 v3, 0x0

    .line 1092
    move-object/from16 v0, p0

    .line 1093
    .line 1094
    move-object v1, v13

    .line 1095
    move v4, v9

    .line 1096
    move v5, v11

    .line 1097
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->v1(Landroid/view/View;Landroid/view/View;ZII)V

    .line 1098
    .line 1099
    .line 1100
    :cond_2c
    if-eqz v13, :cond_2e

    .line 1101
    .line 1102
    if-eqz v16, :cond_2e

    .line 1103
    .line 1104
    invoke-virtual {v13}, Landroid/view/View;->hasFocus()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v0

    .line 1108
    if-nez v0, :cond_2e

    .line 1109
    .line 1110
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1111
    .line 1112
    .line 1113
    :cond_2d
    move-object/from16 v14, v21

    .line 1114
    .line 1115
    goto :goto_1f

    .line 1116
    :cond_2e
    if-nez v16, :cond_2d

    .line 1117
    .line 1118
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->hasFocus()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v0

    .line 1122
    if-nez v0, :cond_2d

    .line 1123
    .line 1124
    if-eqz v13, :cond_30

    .line 1125
    .line 1126
    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v0

    .line 1130
    if-eqz v0, :cond_30

    .line 1131
    .line 1132
    move-object/from16 v14, v21

    .line 1133
    .line 1134
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1135
    .line 1136
    .line 1137
    :cond_2f
    :goto_1c
    move-object v1, v13

    .line 1138
    goto :goto_1e

    .line 1139
    :cond_30
    move-object/from16 v14, v21

    .line 1140
    .line 1141
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    const/4 v1, 0x0

    .line 1146
    :goto_1d
    if-ge v1, v0, :cond_2f

    .line 1147
    .line 1148
    invoke-virtual {v6, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v13

    .line 1152
    if-eqz v13, :cond_31

    .line 1153
    .line 1154
    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    if-eqz v2, :cond_31

    .line 1159
    .line 1160
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1161
    .line 1162
    .line 1163
    goto :goto_1c

    .line 1164
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 1165
    .line 1166
    goto :goto_1d

    .line 1167
    :goto_1e
    if-eqz v12, :cond_32

    .line 1168
    .line 1169
    if-eqz v1, :cond_32

    .line 1170
    .line 1171
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v0

    .line 1175
    if-eqz v0, :cond_32

    .line 1176
    .line 1177
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    const/4 v3, 0x0

    .line 1182
    move-object/from16 v0, p0

    .line 1183
    .line 1184
    move v4, v9

    .line 1185
    move v5, v11

    .line 1186
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->v1(Landroid/view/View;Landroid/view/View;ZII)V

    .line 1187
    .line 1188
    .line 1189
    :cond_32
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->T0()V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->l1()V

    .line 1193
    .line 1194
    .line 1195
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 1196
    .line 1197
    iget v1, v0, Landroidx/leanback/widget/k;->f:I

    .line 1198
    .line 1199
    if-ne v1, v7, :cond_4e

    .line 1200
    .line 1201
    iget v0, v0, Landroidx/leanback/widget/k;->g:I

    .line 1202
    .line 1203
    if-ne v0, v8, :cond_4e

    .line 1204
    .line 1205
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->q1()V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->p1()V

    .line 1209
    .line 1210
    .line 1211
    move-object/from16 v0, p2

    .line 1212
    .line 1213
    iget-boolean v0, v0, LO1/Y;->k:Z

    .line 1214
    .line 1215
    if-eqz v0, :cond_45

    .line 1216
    .line 1217
    iget-object v0, v6, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 1218
    .line 1219
    iget-object v0, v0, Ls1/g;->f:Ljava/lang/Object;

    .line 1220
    .line 1221
    check-cast v0, Ljava/util/List;

    .line 1222
    .line 1223
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1224
    .line 1225
    .line 1226
    move-result v1

    .line 1227
    if-nez v1, :cond_33

    .line 1228
    .line 1229
    goto/16 :goto_2b

    .line 1230
    .line 1231
    :cond_33
    iget-object v2, v6, Landroidx/leanback/widget/q;->x:[I

    .line 1232
    .line 1233
    if-eqz v2, :cond_34

    .line 1234
    .line 1235
    array-length v3, v2

    .line 1236
    if-le v1, v3, :cond_37

    .line 1237
    .line 1238
    :cond_34
    if-nez v2, :cond_35

    .line 1239
    .line 1240
    const/16 v2, 0x10

    .line 1241
    .line 1242
    goto :goto_20

    .line 1243
    :cond_35
    array-length v2, v2

    .line 1244
    :goto_20
    if-ge v2, v1, :cond_36

    .line 1245
    .line 1246
    shl-int/lit8 v2, v2, 0x1

    .line 1247
    .line 1248
    goto :goto_20

    .line 1249
    :cond_36
    new-array v2, v2, [I

    .line 1250
    .line 1251
    iput-object v2, v6, Landroidx/leanback/widget/q;->x:[I

    .line 1252
    .line 1253
    :cond_37
    const/4 v2, 0x0

    .line 1254
    const/4 v3, 0x0

    .line 1255
    :goto_21
    if-ge v2, v1, :cond_39

    .line 1256
    .line 1257
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v4

    .line 1261
    check-cast v4, LO1/c0;

    .line 1262
    .line 1263
    invoke-virtual {v4}, LO1/c0;->c()I

    .line 1264
    .line 1265
    .line 1266
    move-result v4

    .line 1267
    if-ltz v4, :cond_38

    .line 1268
    .line 1269
    iget-object v5, v6, Landroidx/leanback/widget/q;->x:[I

    .line 1270
    .line 1271
    add-int/lit8 v7, v3, 0x1

    .line 1272
    .line 1273
    aput v4, v5, v3

    .line 1274
    .line 1275
    move v3, v7

    .line 1276
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 1277
    .line 1278
    goto :goto_21

    .line 1279
    :cond_39
    if-lez v3, :cond_43

    .line 1280
    .line 1281
    iget-object v0, v6, Landroidx/leanback/widget/q;->x:[I

    .line 1282
    .line 1283
    const/4 v1, 0x0

    .line 1284
    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->sort([III)V

    .line 1285
    .line 1286
    .line 1287
    iget-object v0, v6, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 1288
    .line 1289
    iget-object v2, v6, Landroidx/leanback/widget/q;->x:[I

    .line 1290
    .line 1291
    iget v4, v0, Landroidx/leanback/widget/k;->g:I

    .line 1292
    .line 1293
    if-ltz v4, :cond_3a

    .line 1294
    .line 1295
    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 1296
    .line 1297
    .line 1298
    move-result v5

    .line 1299
    goto :goto_22

    .line 1300
    :cond_3a
    const/4 v5, 0x0

    .line 1301
    :goto_22
    iget-object v1, v0, Landroidx/leanback/widget/k;->a:[Ljava/lang/Object;

    .line 1302
    .line 1303
    if-gez v5, :cond_3e

    .line 1304
    .line 1305
    neg-int v5, v5

    .line 1306
    const/4 v7, 0x1

    .line 1307
    sub-int/2addr v5, v7

    .line 1308
    iget-boolean v7, v0, Landroidx/leanback/widget/k;->c:Z

    .line 1309
    .line 1310
    if-eqz v7, :cond_3b

    .line 1311
    .line 1312
    iget-object v7, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1313
    .line 1314
    invoke-virtual {v7, v4}, Lf/S;->P(I)I

    .line 1315
    .line 1316
    .line 1317
    move-result v7

    .line 1318
    iget-object v8, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1319
    .line 1320
    invoke-virtual {v8, v4}, Lf/S;->Q(I)I

    .line 1321
    .line 1322
    .line 1323
    move-result v4

    .line 1324
    sub-int/2addr v7, v4

    .line 1325
    iget v4, v0, Landroidx/leanback/widget/k;->d:I

    .line 1326
    .line 1327
    sub-int/2addr v7, v4

    .line 1328
    goto :goto_23

    .line 1329
    :cond_3b
    iget-object v7, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1330
    .line 1331
    invoke-virtual {v7, v4}, Lf/S;->P(I)I

    .line 1332
    .line 1333
    .line 1334
    move-result v7

    .line 1335
    iget-object v8, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1336
    .line 1337
    invoke-virtual {v8, v4}, Lf/S;->Q(I)I

    .line 1338
    .line 1339
    .line 1340
    move-result v4

    .line 1341
    add-int/2addr v4, v7

    .line 1342
    iget v7, v0, Landroidx/leanback/widget/k;->d:I

    .line 1343
    .line 1344
    add-int/2addr v7, v4

    .line 1345
    :goto_23
    move v4, v7

    .line 1346
    :goto_24
    if-ge v5, v3, :cond_3e

    .line 1347
    .line 1348
    aget v9, v2, v5

    .line 1349
    .line 1350
    move-object/from16 v13, v20

    .line 1351
    .line 1352
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 1353
    .line 1354
    .line 1355
    move-result v7

    .line 1356
    if-gez v7, :cond_3c

    .line 1357
    .line 1358
    const/4 v11, 0x0

    .line 1359
    goto :goto_25

    .line 1360
    :cond_3c
    move v11, v7

    .line 1361
    :goto_25
    iget-object v7, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1362
    .line 1363
    const/4 v8, 0x1

    .line 1364
    invoke-virtual {v7, v9, v8, v1, v8}, Lf/S;->L(IZ[Ljava/lang/Object;Z)I

    .line 1365
    .line 1366
    .line 1367
    move-result v14

    .line 1368
    iget-object v7, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1369
    .line 1370
    const/4 v8, 0x0

    .line 1371
    aget-object v10, v1, v8

    .line 1372
    .line 1373
    move-object v8, v10

    .line 1374
    move v10, v14

    .line 1375
    move v12, v4

    .line 1376
    invoke-virtual/range {v7 .. v12}, Lf/S;->F(Ljava/lang/Object;IIII)V

    .line 1377
    .line 1378
    .line 1379
    iget-boolean v7, v0, Landroidx/leanback/widget/k;->c:Z

    .line 1380
    .line 1381
    if-eqz v7, :cond_3d

    .line 1382
    .line 1383
    sub-int/2addr v4, v14

    .line 1384
    iget v7, v0, Landroidx/leanback/widget/k;->d:I

    .line 1385
    .line 1386
    sub-int/2addr v4, v7

    .line 1387
    goto :goto_26

    .line 1388
    :cond_3d
    add-int/2addr v4, v14

    .line 1389
    iget v7, v0, Landroidx/leanback/widget/k;->d:I

    .line 1390
    .line 1391
    add-int/2addr v4, v7

    .line 1392
    :goto_26
    add-int/lit8 v5, v5, 0x1

    .line 1393
    .line 1394
    move-object/from16 v20, v13

    .line 1395
    .line 1396
    goto :goto_24

    .line 1397
    :cond_3e
    move-object/from16 v13, v20

    .line 1398
    .line 1399
    iget v4, v0, Landroidx/leanback/widget/k;->f:I

    .line 1400
    .line 1401
    if-ltz v4, :cond_3f

    .line 1402
    .line 1403
    const/4 v5, 0x0

    .line 1404
    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 1405
    .line 1406
    .line 1407
    move-result v3

    .line 1408
    goto :goto_27

    .line 1409
    :cond_3f
    const/4 v3, 0x0

    .line 1410
    :goto_27
    if-gez v3, :cond_44

    .line 1411
    .line 1412
    neg-int v3, v3

    .line 1413
    add-int/lit8 v3, v3, -0x2

    .line 1414
    .line 1415
    iget-boolean v5, v0, Landroidx/leanback/widget/k;->c:Z

    .line 1416
    .line 1417
    if-eqz v5, :cond_40

    .line 1418
    .line 1419
    iget-object v5, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1420
    .line 1421
    invoke-virtual {v5, v4}, Lf/S;->P(I)I

    .line 1422
    .line 1423
    .line 1424
    move-result v4

    .line 1425
    goto :goto_28

    .line 1426
    :cond_40
    iget-object v5, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1427
    .line 1428
    invoke-virtual {v5, v4}, Lf/S;->P(I)I

    .line 1429
    .line 1430
    .line 1431
    move-result v4

    .line 1432
    :goto_28
    if-ltz v3, :cond_44

    .line 1433
    .line 1434
    aget v9, v2, v3

    .line 1435
    .line 1436
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 1437
    .line 1438
    .line 1439
    move-result v5

    .line 1440
    if-gez v5, :cond_41

    .line 1441
    .line 1442
    const/4 v11, 0x0

    .line 1443
    goto :goto_29

    .line 1444
    :cond_41
    move v11, v5

    .line 1445
    :goto_29
    iget-object v5, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1446
    .line 1447
    const/4 v7, 0x1

    .line 1448
    const/4 v8, 0x0

    .line 1449
    invoke-virtual {v5, v9, v8, v1, v7}, Lf/S;->L(IZ[Ljava/lang/Object;Z)I

    .line 1450
    .line 1451
    .line 1452
    move-result v10

    .line 1453
    iget-boolean v5, v0, Landroidx/leanback/widget/k;->c:Z

    .line 1454
    .line 1455
    if-eqz v5, :cond_42

    .line 1456
    .line 1457
    iget v5, v0, Landroidx/leanback/widget/k;->d:I

    .line 1458
    .line 1459
    add-int/2addr v4, v5

    .line 1460
    add-int/2addr v4, v10

    .line 1461
    goto :goto_2a

    .line 1462
    :cond_42
    iget v5, v0, Landroidx/leanback/widget/k;->d:I

    .line 1463
    .line 1464
    sub-int/2addr v4, v5

    .line 1465
    sub-int/2addr v4, v10

    .line 1466
    :goto_2a
    iget-object v7, v0, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 1467
    .line 1468
    const/4 v5, 0x0

    .line 1469
    aget-object v8, v1, v5

    .line 1470
    .line 1471
    move v12, v4

    .line 1472
    invoke-virtual/range {v7 .. v12}, Lf/S;->F(Ljava/lang/Object;IIII)V

    .line 1473
    .line 1474
    .line 1475
    add-int/lit8 v3, v3, -0x1

    .line 1476
    .line 1477
    goto :goto_28

    .line 1478
    :cond_43
    move-object/from16 v13, v20

    .line 1479
    .line 1480
    :cond_44
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->clear()V

    .line 1481
    .line 1482
    .line 1483
    :cond_45
    :goto_2b
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1484
    .line 1485
    and-int/lit16 v1, v0, 0x400

    .line 1486
    .line 1487
    if-eqz v1, :cond_46

    .line 1488
    .line 1489
    and-int/lit16 v0, v0, -0x401

    .line 1490
    .line 1491
    iput v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1492
    .line 1493
    goto :goto_2c

    .line 1494
    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->C1()V

    .line 1495
    .line 1496
    .line 1497
    :goto_2c
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1498
    .line 1499
    and-int/lit8 v0, v0, 0x4

    .line 1500
    .line 1501
    if-eqz v0, :cond_48

    .line 1502
    .line 1503
    iget v0, v6, Landroidx/leanback/widget/q;->B:I

    .line 1504
    .line 1505
    move/from16 v1, v19

    .line 1506
    .line 1507
    if-ne v0, v1, :cond_47

    .line 1508
    .line 1509
    iget v1, v6, Landroidx/leanback/widget/q;->C:I

    .line 1510
    .line 1511
    move/from16 v2, v23

    .line 1512
    .line 1513
    if-ne v1, v2, :cond_47

    .line 1514
    .line 1515
    invoke-virtual {v6, v0}, LO1/L;->s(I)Landroid/view/View;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v0

    .line 1519
    move-object/from16 v3, v22

    .line 1520
    .line 1521
    if-ne v0, v3, :cond_47

    .line 1522
    .line 1523
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1524
    .line 1525
    and-int/lit8 v0, v0, 0x8

    .line 1526
    .line 1527
    if-eqz v0, :cond_48

    .line 1528
    .line 1529
    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->U0()V

    .line 1530
    .line 1531
    .line 1532
    goto :goto_2d

    .line 1533
    :cond_48
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1534
    .line 1535
    and-int/lit8 v0, v0, 0x14

    .line 1536
    .line 1537
    const/16 v4, 0x10

    .line 1538
    .line 1539
    if-ne v0, v4, :cond_49

    .line 1540
    .line 1541
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->U0()V

    .line 1542
    .line 1543
    .line 1544
    :cond_49
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->V0()V

    .line 1545
    .line 1546
    .line 1547
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1548
    .line 1549
    and-int/lit8 v1, v0, 0x40

    .line 1550
    .line 1551
    if-eqz v1, :cond_4d

    .line 1552
    .line 1553
    iget v1, v6, Landroidx/leanback/widget/q;->r:I

    .line 1554
    .line 1555
    const/4 v5, 0x1

    .line 1556
    if-ne v1, v5, :cond_4a

    .line 1557
    .line 1558
    iget v0, v6, LO1/L;->o:I

    .line 1559
    .line 1560
    neg-int v0, v0

    .line 1561
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 1562
    .line 1563
    .line 1564
    move-result v1

    .line 1565
    if-lez v1, :cond_4c

    .line 1566
    .line 1567
    const/4 v1, 0x0

    .line 1568
    invoke-virtual {v6, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v1

    .line 1572
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 1573
    .line 1574
    .line 1575
    move-result v1

    .line 1576
    if-gez v1, :cond_4c

    .line 1577
    .line 1578
    goto :goto_2e

    .line 1579
    :cond_4a
    const/high16 v7, 0x40000

    .line 1580
    .line 1581
    and-int/2addr v0, v7

    .line 1582
    if-eqz v0, :cond_4b

    .line 1583
    .line 1584
    iget v0, v6, LO1/L;->n:I

    .line 1585
    .line 1586
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 1587
    .line 1588
    .line 1589
    move-result v1

    .line 1590
    if-lez v1, :cond_4c

    .line 1591
    .line 1592
    const/4 v1, 0x0

    .line 1593
    invoke-virtual {v6, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v1

    .line 1597
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 1598
    .line 1599
    .line 1600
    move-result v1

    .line 1601
    if-le v1, v0, :cond_4c

    .line 1602
    .line 1603
    move v0, v1

    .line 1604
    goto :goto_2f

    .line 1605
    :cond_4b
    iget v0, v6, LO1/L;->n:I

    .line 1606
    .line 1607
    neg-int v0, v0

    .line 1608
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 1609
    .line 1610
    .line 1611
    move-result v1

    .line 1612
    if-lez v1, :cond_4c

    .line 1613
    .line 1614
    const/4 v8, 0x0

    .line 1615
    invoke-virtual {v6, v8}, LO1/L;->w(I)Landroid/view/View;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v1

    .line 1619
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 1620
    .line 1621
    .line 1622
    move-result v1

    .line 1623
    if-gez v1, :cond_4c

    .line 1624
    .line 1625
    :goto_2e
    add-int/2addr v0, v1

    .line 1626
    :cond_4c
    :goto_2f
    invoke-virtual {v6, v0}, Landroidx/leanback/widget/q;->s1(I)I

    .line 1627
    .line 1628
    .line 1629
    :cond_4d
    iget v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1630
    .line 1631
    and-int/lit8 v0, v0, -0x4

    .line 1632
    .line 1633
    iput v0, v6, Landroidx/leanback/widget/q;->z:I

    .line 1634
    .line 1635
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->j1()V

    .line 1636
    .line 1637
    .line 1638
    return-void

    .line 1639
    :cond_4e
    move-object/from16 v0, p2

    .line 1640
    .line 1641
    move-object/from16 v21, v14

    .line 1642
    .line 1643
    goto/16 :goto_1b
.end method

.method public final n1(Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->K:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_16

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/leanback/widget/q;->L:[I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_d

    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v4, v1, Landroidx/leanback/widget/k;->f:I

    .line 21
    .line 22
    iget v5, v1, Landroidx/leanback/widget/k;->g:I

    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Landroidx/leanback/widget/k;->j(II)[Lr/h;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, -0x1

    .line 31
    :goto_1
    iget v8, v0, Landroidx/leanback/widget/q;->S:I

    .line 32
    .line 33
    if-ge v5, v8, :cond_15

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    aget-object v8, v1, v5

    .line 40
    .line 41
    :goto_2
    if-nez v8, :cond_3

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v8}, Lr/h;->h()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    :goto_3
    const/4 v10, 0x0

    .line 50
    const/4 v11, -0x1

    .line 51
    :goto_4
    if-ge v10, v9, :cond_9

    .line 52
    .line 53
    invoke-virtual {v8, v10}, Lr/h;->d(I)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    add-int/lit8 v13, v10, 0x1

    .line 58
    .line 59
    invoke-virtual {v8, v13}, Lr/h;->d(I)I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    :goto_5
    if-gt v12, v13, :cond_8

    .line 64
    .line 65
    iget v14, v0, Landroidx/leanback/widget/q;->u:I

    .line 66
    .line 67
    sub-int v14, v12, v14

    .line 68
    .line 69
    invoke-virtual {v0, v14}, LO1/L;->s(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    if-nez v14, :cond_4

    .line 74
    .line 75
    goto :goto_7

    .line 76
    :cond_4
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/q;->k1(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget v15, v0, Landroidx/leanback/widget/q;->r:I

    .line 82
    .line 83
    if-nez v15, :cond_6

    .line 84
    .line 85
    invoke-static {v14}, Landroidx/leanback/widget/q;->Y0(Landroid/view/View;)I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-static {v14}, Landroidx/leanback/widget/q;->Z0(Landroid/view/View;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    :goto_6
    if-le v14, v11, :cond_7

    .line 95
    .line 96
    move v11, v14

    .line 97
    :cond_7
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_9
    iget-object v8, v0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 104
    .line 105
    invoke-virtual {v8}, LO1/Y;->b()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    iget-object v9, v0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 110
    .line 111
    iget-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView;->d0:Z

    .line 112
    .line 113
    const/4 v12, 0x1

    .line 114
    if-nez v10, :cond_12

    .line 115
    .line 116
    if-eqz p1, :cond_12

    .line 117
    .line 118
    if-gez v11, :cond_12

    .line 119
    .line 120
    if-lez v8, :cond_12

    .line 121
    .line 122
    if-gez v7, :cond_11

    .line 123
    .line 124
    iget v10, v0, Landroidx/leanback/widget/q;->B:I

    .line 125
    .line 126
    if-gez v10, :cond_a

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    goto :goto_8

    .line 130
    :cond_a
    if-lt v10, v8, :cond_b

    .line 131
    .line 132
    add-int/lit8 v10, v8, -0x1

    .line 133
    .line 134
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    if-lez v13, :cond_e

    .line 139
    .line 140
    invoke-virtual {v0, v2}, LO1/L;->w(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-virtual {v9, v13}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    invoke-virtual {v13}, LO1/c0;->d()I

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    invoke-virtual/range {p0 .. p0}, LO1/L;->x()I

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    sub-int/2addr v14, v12

    .line 157
    invoke-virtual {v0, v14}, LO1/L;->w(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {v9}, LO1/c0;->d()I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-lt v10, v13, :cond_e

    .line 170
    .line 171
    if-gt v10, v9, :cond_e

    .line 172
    .line 173
    sub-int v14, v10, v13

    .line 174
    .line 175
    sub-int v10, v9, v10

    .line 176
    .line 177
    if-gt v14, v10, :cond_c

    .line 178
    .line 179
    add-int/lit8 v10, v13, -0x1

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_c
    add-int/lit8 v10, v9, 0x1

    .line 183
    .line 184
    :goto_9
    if-gez v10, :cond_d

    .line 185
    .line 186
    add-int/lit8 v14, v8, -0x1

    .line 187
    .line 188
    if-ge v9, v14, :cond_d

    .line 189
    .line 190
    add-int/lit8 v10, v9, 0x1

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_d
    if-lt v10, v8, :cond_e

    .line 194
    .line 195
    if-lez v13, :cond_e

    .line 196
    .line 197
    add-int/lit8 v10, v13, -0x1

    .line 198
    .line 199
    :cond_e
    :goto_a
    if-ltz v10, :cond_11

    .line 200
    .line 201
    if-ge v10, v8, :cond_11

    .line 202
    .line 203
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    iget-object v9, v0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 212
    .line 213
    invoke-virtual {v9, v10}, Ls1/g;->d(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    iget-object v10, v0, Landroidx/leanback/widget/q;->a0:[I

    .line 218
    .line 219
    if-eqz v9, :cond_f

    .line 220
    .line 221
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    check-cast v13, Landroidx/leanback/widget/n;

    .line 226
    .line 227
    sget-object v14, Landroidx/leanback/widget/q;->e0:Landroid/graphics/Rect;

    .line 228
    .line 229
    invoke-virtual {v0, v14, v9}, LO1/L;->d(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 233
    .line 234
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 235
    .line 236
    add-int/2addr v15, v3

    .line 237
    iget v3, v14, Landroid/graphics/Rect;->left:I

    .line 238
    .line 239
    add-int/2addr v15, v3

    .line 240
    iget v3, v14, Landroid/graphics/Rect;->right:I

    .line 241
    .line 242
    add-int/2addr v15, v3

    .line 243
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 244
    .line 245
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 246
    .line 247
    add-int/2addr v3, v4

    .line 248
    iget v4, v14, Landroid/graphics/Rect;->top:I

    .line 249
    .line 250
    add-int/2addr v3, v4

    .line 251
    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    .line 252
    .line 253
    add-int/2addr v3, v4

    .line 254
    invoke-virtual/range {p0 .. p0}, LO1/L;->J()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    invoke-virtual/range {p0 .. p0}, LO1/L;->K()I

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    add-int/2addr v14, v4

    .line 263
    add-int/2addr v14, v15

    .line 264
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 265
    .line 266
    invoke-static {v7, v14, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual/range {p0 .. p0}, LO1/L;->L()I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    invoke-virtual/range {p0 .. p0}, LO1/L;->I()I

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    add-int/2addr v14, v7

    .line 279
    add-int/2addr v14, v3

    .line 280
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 281
    .line 282
    invoke-static {v8, v14, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    invoke-virtual {v9, v4, v3}, Landroid/view/View;->measure(II)V

    .line 287
    .line 288
    .line 289
    invoke-static {v9}, Landroidx/leanback/widget/q;->Z0(Landroid/view/View;)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    aput v3, v10, v2

    .line 294
    .line 295
    invoke-static {v9}, Landroidx/leanback/widget/q;->Y0(Landroid/view/View;)I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    aput v3, v10, v12

    .line 300
    .line 301
    iget-object v3, v0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 302
    .line 303
    invoke-virtual {v3, v9}, Ls1/g;->i(Landroid/view/View;)V

    .line 304
    .line 305
    .line 306
    :cond_f
    iget v3, v0, Landroidx/leanback/widget/q;->r:I

    .line 307
    .line 308
    if-nez v3, :cond_10

    .line 309
    .line 310
    aget v3, v10, v12

    .line 311
    .line 312
    :goto_b
    move v7, v3

    .line 313
    goto :goto_c

    .line 314
    :cond_10
    aget v3, v10, v2

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_11
    :goto_c
    if-ltz v7, :cond_12

    .line 318
    .line 319
    move v11, v7

    .line 320
    :cond_12
    if-gez v11, :cond_13

    .line 321
    .line 322
    const/4 v11, 0x0

    .line 323
    :cond_13
    iget-object v3, v0, Landroidx/leanback/widget/q;->L:[I

    .line 324
    .line 325
    aget v4, v3, v5

    .line 326
    .line 327
    if-eq v4, v11, :cond_14

    .line 328
    .line 329
    aput v11, v3, v5

    .line 330
    .line 331
    const/4 v6, 0x1

    .line 332
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 333
    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :cond_15
    return v6

    .line 337
    :cond_16
    :goto_d
    return v2
.end method

.method public final o0(LO1/Y;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o1(IZ)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v1, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget v0, v0, Landroidx/leanback/widget/j;->H:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 22
    :goto_1
    invoke-virtual {p0}, LO1/L;->x()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v6, v5

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_2
    if-ge v5, v3, :cond_b

    .line 31
    .line 32
    if-eqz p1, :cond_b

    .line 33
    .line 34
    if-lez p1, :cond_3

    .line 35
    .line 36
    move v7, v5

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    add-int/lit8 v7, v3, -0x1

    .line 39
    .line 40
    sub-int/2addr v7, v5

    .line 41
    :goto_3
    invoke-virtual {p0, v7}, LO1/L;->w(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-nez v9, :cond_a

    .line 50
    .line 51
    invoke-virtual {p0}, LO1/L;->Q()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_4

    .line 56
    .line 57
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_a

    .line 62
    .line 63
    :cond_4
    invoke-virtual {p0, v7}, LO1/L;->w(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v7}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    iget-object v9, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 72
    .line 73
    invoke-virtual {v9, v7}, Landroidx/leanback/widget/k;->k(I)Landroidx/leanback/widget/j;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-nez v9, :cond_5

    .line 78
    .line 79
    const/4 v9, -0x1

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    iget v9, v9, Landroidx/leanback/widget/j;->H:I

    .line 82
    .line 83
    :goto_4
    if-ne v0, v2, :cond_6

    .line 84
    .line 85
    move v1, v7

    .line 86
    move-object v6, v8

    .line 87
    move v0, v9

    .line 88
    goto :goto_6

    .line 89
    :cond_6
    if-ne v9, v0, :cond_a

    .line 90
    .line 91
    if-lez p1, :cond_7

    .line 92
    .line 93
    if-gt v7, v1, :cond_8

    .line 94
    .line 95
    :cond_7
    if-gez p1, :cond_a

    .line 96
    .line 97
    if-ge v7, v1, :cond_a

    .line 98
    .line 99
    :cond_8
    if-lez p1, :cond_9

    .line 100
    .line 101
    add-int/lit8 p1, p1, -0x1

    .line 102
    .line 103
    :goto_5
    move v1, v7

    .line 104
    move-object v6, v8

    .line 105
    goto :goto_6

    .line 106
    :cond_9
    add-int/lit8 p1, p1, 0x1

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_b
    if-eqz v6, :cond_e

    .line 113
    .line 114
    if-eqz p2, :cond_d

    .line 115
    .line 116
    invoke-virtual {p0}, LO1/L;->Q()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_c

    .line 121
    .line 122
    iget p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 123
    .line 124
    or-int/lit8 p2, p2, 0x20

    .line 125
    .line 126
    iput p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 129
    .line 130
    .line 131
    iget p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 132
    .line 133
    and-int/lit8 p2, p2, -0x21

    .line 134
    .line 135
    iput p2, p0, Landroidx/leanback/widget/q;->z:I

    .line 136
    .line 137
    :cond_c
    iput v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 138
    .line 139
    iput v4, p0, Landroidx/leanback/widget/q;->C:I

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_d
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    const/4 v9, 0x0

    .line 147
    const/4 v10, 0x0

    .line 148
    const/4 v8, 0x1

    .line 149
    move-object v5, p0

    .line 150
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/q;->v1(Landroid/view/View;Landroid/view/View;ZII)V

    .line 151
    .line 152
    .line 153
    :cond_e
    :goto_7
    return p1
.end method

.method public final p0(Ls1/g;LO1/Y;II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroidx/leanback/widget/q;->r:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p0}, LO1/L;->L()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    invoke-virtual {p0}, LO1/L;->I()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v0, p4

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {p0}, LO1/L;->J()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    invoke-virtual {p0}, LO1/L;->K()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iput p2, p0, Landroidx/leanback/widget/q;->M:I

    .line 52
    .line 53
    iget p4, p0, Landroidx/leanback/widget/q;->J:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    const/4 v2, -0x2

    .line 57
    const-string v3, "wrong spec"

    .line 58
    .line 59
    const/high16 v4, 0x40000000    # 2.0f

    .line 60
    .line 61
    const/high16 v5, -0x80000000

    .line 62
    .line 63
    if-ne p4, v2, :cond_8

    .line 64
    .line 65
    iget p2, p0, Landroidx/leanback/widget/q;->T:I

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    :cond_1
    iput p2, p0, Landroidx/leanback/widget/q;->S:I

    .line 71
    .line 72
    const/4 p4, 0x0

    .line 73
    iput p4, p0, Landroidx/leanback/widget/q;->K:I

    .line 74
    .line 75
    iget-object p4, p0, Landroidx/leanback/widget/q;->L:[I

    .line 76
    .line 77
    if-eqz p4, :cond_2

    .line 78
    .line 79
    array-length p4, p4

    .line 80
    if-eq p4, p2, :cond_3

    .line 81
    .line 82
    :cond_2
    new-array p2, p2, [I

    .line 83
    .line 84
    iput-object p2, p0, Landroidx/leanback/widget/q;->L:[I

    .line 85
    .line 86
    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 87
    .line 88
    iget-boolean p2, p2, LO1/Y;->g:Z

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->B1()V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->n1(Z)Z

    .line 96
    .line 97
    .line 98
    if-eq p3, v5, :cond_7

    .line 99
    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    if-ne p3, v4, :cond_5

    .line 103
    .line 104
    iget p2, p0, Landroidx/leanback/widget/q;->M:I

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_6
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->e1()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    :goto_2
    add-int/2addr p2, v0

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->e1()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    add-int/2addr p2, v0

    .line 126
    iget p3, p0, Landroidx/leanback/widget/q;->M:I

    .line 127
    .line 128
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    if-eq p3, v5, :cond_d

    .line 134
    .line 135
    if-eqz p3, :cond_a

    .line 136
    .line 137
    if-ne p3, v4, :cond_9

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_a
    if-nez p4, :cond_b

    .line 147
    .line 148
    sub-int p4, p2, v0

    .line 149
    .line 150
    :cond_b
    iput p4, p0, Landroidx/leanback/widget/q;->K:I

    .line 151
    .line 152
    iget p2, p0, Landroidx/leanback/widget/q;->T:I

    .line 153
    .line 154
    if-nez p2, :cond_c

    .line 155
    .line 156
    const/4 p2, 0x1

    .line 157
    :cond_c
    iput p2, p0, Landroidx/leanback/widget/q;->S:I

    .line 158
    .line 159
    mul-int p4, p4, p2

    .line 160
    .line 161
    iget p3, p0, Landroidx/leanback/widget/q;->Q:I

    .line 162
    .line 163
    sub-int/2addr p2, v1

    .line 164
    mul-int p2, p2, p3

    .line 165
    .line 166
    add-int/2addr p2, p4

    .line 167
    goto :goto_2

    .line 168
    :cond_d
    :goto_3
    iget v2, p0, Landroidx/leanback/widget/q;->T:I

    .line 169
    .line 170
    if-nez v2, :cond_e

    .line 171
    .line 172
    if-nez p4, :cond_e

    .line 173
    .line 174
    iput v1, p0, Landroidx/leanback/widget/q;->S:I

    .line 175
    .line 176
    sub-int p4, p2, v0

    .line 177
    .line 178
    iput p4, p0, Landroidx/leanback/widget/q;->K:I

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_e
    if-nez v2, :cond_f

    .line 182
    .line 183
    iput p4, p0, Landroidx/leanback/widget/q;->K:I

    .line 184
    .line 185
    iget v2, p0, Landroidx/leanback/widget/q;->Q:I

    .line 186
    .line 187
    add-int v3, p2, v2

    .line 188
    .line 189
    add-int/2addr p4, v2

    .line 190
    div-int/2addr v3, p4

    .line 191
    iput v3, p0, Landroidx/leanback/widget/q;->S:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_f
    if-nez p4, :cond_10

    .line 195
    .line 196
    iput v2, p0, Landroidx/leanback/widget/q;->S:I

    .line 197
    .line 198
    sub-int p4, p2, v0

    .line 199
    .line 200
    iget v3, p0, Landroidx/leanback/widget/q;->Q:I

    .line 201
    .line 202
    add-int/lit8 v4, v2, -0x1

    .line 203
    .line 204
    mul-int v4, v4, v3

    .line 205
    .line 206
    sub-int/2addr p4, v4

    .line 207
    div-int/2addr p4, v2

    .line 208
    iput p4, p0, Landroidx/leanback/widget/q;->K:I

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_10
    iput v2, p0, Landroidx/leanback/widget/q;->S:I

    .line 212
    .line 213
    iput p4, p0, Landroidx/leanback/widget/q;->K:I

    .line 214
    .line 215
    :goto_4
    if-ne p3, v5, :cond_11

    .line 216
    .line 217
    iget p3, p0, Landroidx/leanback/widget/q;->K:I

    .line 218
    .line 219
    iget p4, p0, Landroidx/leanback/widget/q;->S:I

    .line 220
    .line 221
    mul-int p3, p3, p4

    .line 222
    .line 223
    iget v2, p0, Landroidx/leanback/widget/q;->Q:I

    .line 224
    .line 225
    sub-int/2addr p4, v1

    .line 226
    mul-int p4, p4, v2

    .line 227
    .line 228
    add-int/2addr p4, p3

    .line 229
    add-int/2addr p4, v0

    .line 230
    if-ge p4, p2, :cond_11

    .line 231
    .line 232
    move p2, p4

    .line 233
    :cond_11
    :goto_5
    iget p3, p0, Landroidx/leanback/widget/q;->r:I

    .line 234
    .line 235
    if-nez p3, :cond_12

    .line 236
    .line 237
    iget-object p3, p0, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    invoke-static {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_12
    iget-object p3, p0, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 244
    .line 245
    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 246
    .line 247
    .line 248
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public final p1()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const v1, 0x10040

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/high16 v2, 0x10000

    .line 8
    .line 9
    if-ne v1, v2, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 12
    .line 13
    iget v2, p0, Landroidx/leanback/widget/q;->B:I

    .line 14
    .line 15
    const/high16 v3, 0x40000

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/leanback/widget/q;->Z:I

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->Y:I

    .line 25
    .line 26
    iget v3, p0, Landroidx/leanback/widget/q;->Z:I

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    :goto_0
    iget v3, v1, Landroidx/leanback/widget/k;->g:I

    .line 30
    .line 31
    iget v4, v1, Landroidx/leanback/widget/k;->f:I

    .line 32
    .line 33
    if-lt v3, v4, :cond_2

    .line 34
    .line 35
    if-le v3, v2, :cond_2

    .line 36
    .line 37
    iget-boolean v4, v1, Landroidx/leanback/widget/k;->c:Z

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    iget-object v4, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Lf/S;->P(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-lt v3, v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Lf/S;->P(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-gt v3, v0, :cond_2

    .line 57
    .line 58
    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 59
    .line 60
    iget v4, v1, Landroidx/leanback/widget/k;->g:I

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Lf/S;->T(I)V

    .line 63
    .line 64
    .line 65
    iget v3, v1, Landroidx/leanback/widget/k;->g:I

    .line 66
    .line 67
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    iput v3, v1, Landroidx/leanback/widget/k;->g:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget v0, v1, Landroidx/leanback/widget/k;->g:I

    .line 73
    .line 74
    iget v2, v1, Landroidx/leanback/widget/k;->f:I

    .line 75
    .line 76
    if-ge v0, v2, :cond_3

    .line 77
    .line 78
    const/4 v0, -0x1

    .line 79
    iput v0, v1, Landroidx/leanback/widget/k;->g:I

    .line 80
    .line 81
    iput v0, v1, Landroidx/leanback/widget/k;->f:I

    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public final q0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const v0, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    const/4 v6, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v6

    .line 11
    :cond_0
    invoke-static {p2}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    return v6

    .line 19
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 20
    .line 21
    and-int/lit8 p1, p1, 0x23

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p2

    .line 29
    move-object v2, p3

    .line 30
    move v3, v6

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->v1(Landroid/view/View;Landroid/view/View;ZII)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return v6
.end method

.method public final q1()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const v1, 0x10040

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/high16 v2, 0x10000

    .line 8
    .line 9
    if-ne v1, v2, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 12
    .line 13
    iget v2, p0, Landroidx/leanback/widget/q;->B:I

    .line 14
    .line 15
    const/high16 v3, 0x40000

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/leanback/widget/q;->Y:I

    .line 21
    .line 22
    iget v3, p0, Landroidx/leanback/widget/q;->Z:I

    .line 23
    .line 24
    add-int/2addr v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->Z:I

    .line 27
    .line 28
    neg-int v0, v0

    .line 29
    :goto_0
    iget v3, v1, Landroidx/leanback/widget/k;->g:I

    .line 30
    .line 31
    iget v4, v1, Landroidx/leanback/widget/k;->f:I

    .line 32
    .line 33
    if-lt v3, v4, :cond_2

    .line 34
    .line 35
    if-ge v4, v2, :cond_2

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lf/S;->Q(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-boolean v4, v1, Landroidx/leanback/widget/k;->c:Z

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    iget-object v4, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 48
    .line 49
    iget v5, v1, Landroidx/leanback/widget/k;->f:I

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Lf/S;->P(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    add-int/2addr v4, v3

    .line 56
    if-gt v4, v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 60
    .line 61
    iget v5, v1, Landroidx/leanback/widget/k;->f:I

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Lf/S;->P(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    sub-int/2addr v4, v3

    .line 68
    if-lt v4, v0, :cond_2

    .line 69
    .line 70
    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/k;->b:Lf/S;

    .line 71
    .line 72
    iget v4, v1, Landroidx/leanback/widget/k;->f:I

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Lf/S;->T(I)V

    .line 75
    .line 76
    .line 77
    iget v3, v1, Landroidx/leanback/widget/k;->f:I

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    iput v3, v1, Landroidx/leanback/widget/k;->f:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget v0, v1, Landroidx/leanback/widget/k;->g:I

    .line 85
    .line 86
    iget v2, v1, Landroidx/leanback/widget/k;->f:I

    .line 87
    .line 88
    if-ge v0, v2, :cond_3

    .line 89
    .line 90
    const/4 v0, -0x1

    .line 91
    iput v0, v1, Landroidx/leanback/widget/k;->g:I

    .line 92
    .line 93
    iput v0, v1, Landroidx/leanback/widget/k;->f:I

    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final r0(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Landroidx/leanback/widget/p;

    .line 7
    .line 8
    iget v0, p1, Landroidx/leanback/widget/p;->G:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/leanback/widget/q;->F:I

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/p;->H:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 18
    .line 19
    iget-object v1, v0, LV/b;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lr/l;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {v1, v2}, Lr/l;->h(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, v0, LV/b;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lr/l;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v2, v4}, Lr/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 64
    .line 65
    or-int/lit16 p1, p1, 0x100

    .line 66
    .line 67
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 68
    .line 69
    invoke-virtual {p0}, LO1/L;->D0()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final r1(Ls1/g;LO1/Y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string v0, "GridLayoutManager"

    .line 10
    .line 11
    const-string v1, "Recycler information was not released, bug!"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Landroidx/leanback/widget/q;->u:I

    .line 22
    .line 23
    iput p1, p0, Landroidx/leanback/widget/q;->v:I

    .line 24
    .line 25
    return-void
.end method

.method public final s0()Landroid/os/Parcelable;
    .locals 8

    .line 1
    new-instance v0, Landroidx/leanback/widget/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/leanback/widget/p;->H:Landroid/os/Bundle;

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/leanback/widget/p;->G:I

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 15
    .line 16
    iget-object v2, v1, LV/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lr/l;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v3, v2, Lr/l;->c:LU4/b;

    .line 23
    .line 24
    monitor-enter v3

    .line 25
    :try_start_0
    iget v2, v2, Lr/l;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit v3

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v2, v1, LV/b;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lr/l;

    .line 34
    .line 35
    invoke-virtual {v2}, Lr/l;->g()Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    monitor-exit v3

    .line 82
    throw v0

    .line 83
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 84
    :cond_2
    invoke-virtual {p0}, LO1/L;->x()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v4, 0x0

    .line 89
    :goto_2
    if-ge v4, v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v4}, LO1/L;->w(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v5}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const/4 v7, -0x1

    .line 100
    if-eq v6, v7, :cond_4

    .line 101
    .line 102
    iget v7, v1, LV/b;->b:I

    .line 103
    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v7, Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v7}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 116
    .line 117
    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    new-instance v3, Landroid/os/Bundle;

    .line 121
    .line 122
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    iput-object v3, v0, Landroidx/leanback/widget/p;->H:Landroid/os/Bundle;

    .line 132
    .line 133
    return-object v0
.end method

.method public final s1(I)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x3

    .line 9
    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 13
    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 20
    .line 21
    iget v1, v1, Landroidx/leanback/widget/Y;->a:I

    .line 22
    .line 23
    const v3, 0x7fffffff

    .line 24
    .line 25
    .line 26
    if-ne v1, v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 30
    .line 31
    iget v0, v0, Landroidx/leanback/widget/Y;->c:I

    .line 32
    .line 33
    if-le p1, v0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-gez p1, :cond_3

    .line 37
    .line 38
    iget-object v0, v0, Ll/D;->e:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 42
    .line 43
    iget v1, v1, Landroidx/leanback/widget/Y;->b:I

    .line 44
    .line 45
    const/high16 v3, -0x80000000

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    check-cast v0, Landroidx/leanback/widget/Y;

    .line 51
    .line 52
    iget v0, v0, Landroidx/leanback/widget/Y;->d:I

    .line 53
    .line 54
    if-ge p1, v0, :cond_3

    .line 55
    .line 56
    :goto_0
    move p1, v0

    .line 57
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    return v0

    .line 61
    :cond_4
    neg-int v1, p1

    .line 62
    invoke-virtual {p0}, LO1/L;->x()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget v4, p0, Landroidx/leanback/widget/q;->r:I

    .line 67
    .line 68
    if-ne v4, v2, :cond_5

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_2
    if-ge v4, v3, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0, v4}, LO1/L;->w(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    const/4 v4, 0x0

    .line 84
    :goto_3
    if-ge v4, v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v4}, LO1/L;->w(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    iget v1, p0, Landroidx/leanback/widget/q;->z:I

    .line 97
    .line 98
    and-int/lit8 v1, v1, 0x3

    .line 99
    .line 100
    if-ne v1, v2, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->D1()V

    .line 103
    .line 104
    .line 105
    return p1

    .line 106
    :cond_7
    invoke-virtual {p0}, LO1/L;->x()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iget v3, p0, Landroidx/leanback/widget/q;->z:I

    .line 111
    .line 112
    const/high16 v4, 0x40000

    .line 113
    .line 114
    and-int/2addr v3, v4

    .line 115
    if-eqz v3, :cond_8

    .line 116
    .line 117
    if-lez p1, :cond_9

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_8
    if-gez p1, :cond_9

    .line 121
    .line 122
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->l1()V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->T0()V

    .line 127
    .line 128
    .line 129
    :goto_5
    invoke-virtual {p0}, LO1/L;->x()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-le v3, v1, :cond_a

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    goto :goto_6

    .line 137
    :cond_a
    const/4 v1, 0x0

    .line 138
    :goto_6
    invoke-virtual {p0}, LO1/L;->x()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget v5, p0, Landroidx/leanback/widget/q;->z:I

    .line 143
    .line 144
    and-int/2addr v4, v5

    .line 145
    if-eqz v4, :cond_b

    .line 146
    .line 147
    if-lez p1, :cond_c

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_b
    if-gez p1, :cond_c

    .line 151
    .line 152
    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->p1()V

    .line 153
    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_c
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q1()V

    .line 157
    .line 158
    .line 159
    :goto_8
    invoke-virtual {p0}, LO1/L;->x()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-ge v4, v3, :cond_d

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_d
    const/4 v2, 0x0

    .line 167
    :goto_9
    or-int v0, v1, v2

    .line 168
    .line 169
    if-eqz v0, :cond_e

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->C1()V

    .line 172
    .line 173
    .line 174
    :cond_e
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->D1()V

    .line 180
    .line 181
    .line 182
    return p1
.end method

.method public final t()LO1/M;
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/widget/n;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, LO1/M;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final t1(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    neg-int v1, p1

    .line 6
    invoke-virtual {p0}, LO1/L;->x()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p0, Landroidx/leanback/widget/q;->r:I

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    :goto_0
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, LO1/L;->w(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, LO1/L;->w(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/q;->I:I

    .line 39
    .line 40
    add-int/2addr v0, p1

    .line 41
    iput v0, p0, Landroidx/leanback/widget/q;->I:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->E1()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    return p1
.end method

.method public final u(Landroid/content/Context;Landroid/util/AttributeSet;)LO1/M;
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/widget/n;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, LO1/M;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final u1(IIIZ)V
    .locals 6

    .line 1
    iput p3, p0, Landroidx/leanback/widget/q;->G:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LO1/L;->s(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, LO1/L;->U()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x1

    .line 12
    xor-int/2addr p3, v0

    .line 13
    iget-object v2, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ne v3, p1, :cond_0

    .line 30
    .line 31
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 32
    .line 33
    or-int/lit8 p1, p1, 0x20

    .line 34
    .line 35
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v0, p0

    .line 44
    move v3, p4

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->v1(Landroid/view/View;Landroid/view/View;ZII)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 49
    .line 50
    and-int/lit8 p1, p1, -0x21

    .line 51
    .line 52
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_0
    iget v3, p0, Landroidx/leanback/widget/q;->z:I

    .line 57
    .line 58
    and-int/lit16 v4, v3, 0x200

    .line 59
    .line 60
    const/high16 v5, -0x80000000

    .line 61
    .line 62
    if-eqz v4, :cond_8

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x40

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    if-eqz p4, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    iput p1, p0, Landroidx/leanback/widget/q;->B:I

    .line 79
    .line 80
    iput p2, p0, Landroidx/leanback/widget/q;->C:I

    .line 81
    .line 82
    iput v5, p0, Landroidx/leanback/widget/q;->F:I

    .line 83
    .line 84
    iget-object p2, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    new-instance p2, Landroidx/leanback/widget/l;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Landroidx/leanback/widget/l;-><init>(Landroidx/leanback/widget/q;)V

    .line 91
    .line 92
    .line 93
    iput p1, p2, LO1/w;->a:I

    .line 94
    .line 95
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->R0(LO1/w;)V

    .line 96
    .line 97
    .line 98
    iget p1, p2, LO1/w;->a:I

    .line 99
    .line 100
    iget p2, p0, Landroidx/leanback/widget/q;->B:I

    .line 101
    .line 102
    if-eq p1, p2, :cond_7

    .line 103
    .line 104
    iput p1, p0, Landroidx/leanback/widget/q;->B:I

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    iput p1, p0, Landroidx/leanback/widget/q;->C:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p2, "GridLayoutManager:"

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p2, "setSelectionSmooth should not be called before first layout pass"

    .line 129
    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_3
    if-nez p3, :cond_5

    .line 135
    .line 136
    iget-object p3, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/m;

    .line 137
    .line 138
    if-eqz p3, :cond_4

    .line 139
    .line 140
    iput-boolean v0, p3, Landroidx/leanback/widget/m;->q:Z

    .line 141
    .line 142
    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    if-nez p3, :cond_6

    .line 150
    .line 151
    if-eqz v1, :cond_6

    .line 152
    .line 153
    invoke-static {v1}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    if-ne p3, p1, :cond_6

    .line 158
    .line 159
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 160
    .line 161
    or-int/lit8 p1, p1, 0x20

    .line 162
    .line 163
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/4 v4, 0x0

    .line 170
    const/4 v5, 0x0

    .line 171
    move-object v0, p0

    .line 172
    move v3, p4

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->v1(Landroid/view/View;Landroid/view/View;ZII)V

    .line 174
    .line 175
    .line 176
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 177
    .line 178
    and-int/lit8 p1, p1, -0x21

    .line 179
    .line 180
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_6
    iput p1, p0, Landroidx/leanback/widget/q;->B:I

    .line 184
    .line 185
    iput p2, p0, Landroidx/leanback/widget/q;->C:I

    .line 186
    .line 187
    iput v5, p0, Landroidx/leanback/widget/q;->F:I

    .line 188
    .line 189
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 190
    .line 191
    or-int/lit16 p1, p1, 0x100

    .line 192
    .line 193
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 194
    .line 195
    invoke-virtual {p0}, LO1/L;->D0()V

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_0
    return-void

    .line 199
    :cond_8
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/q;->B:I

    .line 200
    .line 201
    iput p2, p0, Landroidx/leanback/widget/q;->C:I

    .line 202
    .line 203
    iput v5, p0, Landroidx/leanback/widget/q;->F:I

    .line 204
    .line 205
    return-void
.end method

.method public final v(Landroid/view/ViewGroup$LayoutParams;)LO1/M;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    check-cast p1, Landroidx/leanback/widget/n;

    .line 8
    .line 9
    invoke-direct {v0, p1}, LO1/M;-><init>(LO1/M;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, LO1/M;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroidx/leanback/widget/n;

    .line 18
    .line 19
    check-cast p1, LO1/M;

    .line 20
    .line 21
    invoke-direct {v0, p1}, LO1/M;-><init>(LO1/M;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Landroidx/leanback/widget/n;

    .line 30
    .line 31
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    .line 33
    invoke-direct {v0, p1}, LO1/M;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    new-instance v0, Landroidx/leanback/widget/n;

    .line 38
    .line 39
    invoke-direct {v0, p1}, LO1/M;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final v0(Ls1/g;LO1/Y;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget p4, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    const/high16 v0, 0x20000

    .line 4
    .line 5
    and-int/2addr p4, v0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p4, :cond_9

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->r1(Ls1/g;LO1/Y;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 13
    .line 14
    const/high16 p2, 0x40000

    .line 15
    .line 16
    and-int/2addr p1, p2

    .line 17
    const/4 p2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v1, 0x17

    .line 26
    .line 27
    const/16 v2, 0x2000

    .line 28
    .line 29
    const/16 v3, 0x1000

    .line 30
    .line 31
    if-lt p4, v1, :cond_6

    .line 32
    .line 33
    iget p4, p0, Landroidx/leanback/widget/q;->r:I

    .line 34
    .line 35
    if-nez p4, :cond_2

    .line 36
    .line 37
    sget-object p4, LO/d;->g:LO/d;

    .line 38
    .line 39
    invoke-virtual {p4}, LO/d;->a()I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    if-ne p3, p4, :cond_1

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    sget-object p4, LO/d;->i:LO/d;

    .line 49
    .line 50
    invoke-virtual {p4}, LO/d;->a()I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    if-ne p3, p4, :cond_6

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object p1, LO/d;->f:LO/d;

    .line 60
    .line 61
    invoke-virtual {p1}, LO/d;->a()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p3, p1, :cond_4

    .line 66
    .line 67
    :cond_3
    :goto_1
    const/16 p3, 0x2000

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    sget-object p1, LO/d;->h:LO/d;

    .line 71
    .line 72
    invoke-virtual {p1}, LO/d;->a()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ne p3, p1, :cond_6

    .line 77
    .line 78
    :cond_5
    :goto_2
    const/16 p3, 0x1000

    .line 79
    .line 80
    :cond_6
    :goto_3
    if-eq p3, v3, :cond_8

    .line 81
    .line 82
    if-eq p3, v2, :cond_7

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->m1(Z)V

    .line 86
    .line 87
    .line 88
    const/4 p1, -0x1

    .line 89
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->o1(IZ)I

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->m1(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0, p2}, Landroidx/leanback/widget/q;->o1(IZ)I

    .line 97
    .line 98
    .line 99
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->j1()V

    .line 100
    .line 101
    .line 102
    :cond_9
    return v0
.end method

.method public final v1(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/q;->X0(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/leanback/widget/n;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v4, p0, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    iget v1, p0, Landroidx/leanback/widget/q;->C:I

    .line 35
    .line 36
    if-eqz v1, :cond_5

    .line 37
    .line 38
    :cond_3
    iput v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 39
    .line 40
    iput v3, p0, Landroidx/leanback/widget/q;->C:I

    .line 41
    .line 42
    iput v3, p0, Landroidx/leanback/widget/q;->F:I

    .line 43
    .line 44
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 45
    .line 46
    and-int/lit8 v0, v0, 0x3

    .line 47
    .line 48
    if-eq v0, v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->U0()V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {v4}, Landroidx/leanback/widget/f;->P()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    :cond_5
    if-nez p1, :cond_6

    .line 63
    .line 64
    return-void

    .line 65
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 78
    .line 79
    .line 80
    :cond_7
    iget v0, p0, Landroidx/leanback/widget/q;->z:I

    .line 81
    .line 82
    const/high16 v1, 0x20000

    .line 83
    .line 84
    and-int/2addr v0, v1

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    if-eqz p3, :cond_8

    .line 88
    .line 89
    return-void

    .line 90
    :cond_8
    sget-object v0, Landroidx/leanback/widget/q;->f0:[I

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/q;->d1(Landroid/view/View;Landroid/view/View;[I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_9

    .line 97
    .line 98
    if-nez p4, :cond_9

    .line 99
    .line 100
    if-eqz p5, :cond_d

    .line 101
    .line 102
    :cond_9
    aget p1, v0, v3

    .line 103
    .line 104
    add-int/2addr p1, p4

    .line 105
    aget p2, v0, v2

    .line 106
    .line 107
    add-int/2addr p2, p5

    .line 108
    iget p4, p0, Landroidx/leanback/widget/q;->z:I

    .line 109
    .line 110
    and-int/lit8 p4, p4, 0x3

    .line 111
    .line 112
    if-ne p4, v2, :cond_a

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->s1(I)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->t1(I)I

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_a
    iget p4, p0, Landroidx/leanback/widget/q;->r:I

    .line 122
    .line 123
    if-nez p4, :cond_b

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_b
    move v5, p2

    .line 127
    move p2, p1

    .line 128
    move p1, v5

    .line 129
    :goto_1
    if-eqz p3, :cond_c

    .line 130
    .line 131
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->i0(II)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_c
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->V0()V

    .line 139
    .line 140
    .line 141
    :cond_d
    :goto_2
    return-void
.end method

.method public final w0(Ls1/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LO1/L;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, LO1/L;->z0(ILs1/g;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final w1(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/q;->r:I

    .line 8
    .line 9
    invoke-static {p0, p1}, LO1/z;->a(LO1/L;I)LO1/y;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ll/D;->d(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/leanback/widget/q;->X:Ll/D;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ll/D;->d(I)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 26
    .line 27
    or-int/lit16 p1, p1, 0x100

    .line 28
    .line 29
    iput p1, p0, Landroidx/leanback/widget/q;->z:I

    .line 30
    .line 31
    return-void
.end method

.method public final x1(I)V
    .locals 2

    .line 1
    if-gez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "Invalid row height: "

    .line 10
    .line 11
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/q;->J:I

    .line 20
    .line 21
    return-void
.end method

.method public final y1(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->C:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroidx/leanback/widget/q;->G:I

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/leanback/widget/q;->u1(IIIZ)V

    .line 18
    .line 19
    .line 20
    :cond_2
    return-void
.end method

.method public final z(Ls1/g;LO1/Y;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p1, v0, Landroidx/leanback/widget/k;->e:I

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, LO1/L;->z(Ls1/g;LO1/Y;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final z1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LO1/L;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, LO1/L;->w(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/q;->A1(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method
