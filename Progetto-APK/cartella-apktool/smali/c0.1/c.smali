.class public final Lc0/c;
.super LO1/C;
.source "SourceFile"


# instance fields
.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:Lc0/f;

.field public final synthetic M:Lc0/e;


# direct methods
.method public constructor <init>(Lc0/e;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc0/c;->M:Lc0/e;

    .line 2
    .line 3
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lc0/c;->I:I

    .line 7
    .line 8
    iput p4, p0, Lc0/c;->J:I

    .line 9
    .line 10
    iput p3, p0, Lc0/c;->K:I

    .line 11
    .line 12
    iget-object p1, p1, Lc0/e;->J:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lc0/f;

    .line 19
    .line 20
    iput-object p1, p0, Lc0/c;->L:Lc0/f;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc0/c;->L:Lc0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, v0, Lc0/f;->c:I

    .line 8
    .line 9
    iget v0, v0, Lc0/f;->b:I

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    add-int/lit8 v0, v1, 0x1

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public final c(LO1/c0;I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    check-cast p1, Lc0/d;

    .line 4
    .line 5
    iget-object v2, p1, Lc0/d;->a0:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lc0/c;->L:Lc0/f;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    iget v4, v3, Lc0/f;->b:I

    .line 14
    .line 15
    add-int/2addr v4, p2

    .line 16
    iget-object v5, v3, Lc0/f;->d:[Ljava/lang/CharSequence;

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    iget-object v3, v3, Lc0/f;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-array v5, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v4, v5, v0

    .line 29
    .line 30
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    aget-object v3, v5, v4

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lc0/c;->M:Lc0/e;

    .line 41
    .line 42
    iget-object v3, v2, Lc0/e;->I:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget v4, p0, Lc0/c;->J:I

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroidx/leanback/widget/VerticalGridView;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/leanback/widget/f;->getSelectedPosition()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v3, p2, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :goto_1
    iget-object p1, p1, LO1/c0;->G:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v2, p1, v1, v4, v0}, Lc0/e;->c(Landroid/view/View;ZIZ)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget v0, p0, Lc0/c;->I:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget p2, p0, Lc0/c;->K:I

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p2, p1

    .line 28
    check-cast p2, Landroid/widget/TextView;

    .line 29
    .line 30
    :goto_0
    new-instance v0, Lc0/d;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2}, Lc0/d;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final e(LO1/c0;)V
    .locals 1

    .line 1
    check-cast p1, Lc0/d;

    .line 2
    .line 3
    iget-object v0, p0, Lc0/c;->M:Lc0/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p1, p1, LO1/c0;->G:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
