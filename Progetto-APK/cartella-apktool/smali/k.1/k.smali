.class public final Lk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/A;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public G:Landroid/content/Context;

.field public H:Landroid/view/LayoutInflater;

.field public I:Lk/o;

.field public J:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public K:Lk/z;

.field public L:Lk/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/k;->G:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lk/k;->H:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lk/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final c(Lk/G;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lk/o;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Lk/p;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lk/p;->G:Lk/o;

    .line 15
    .line 16
    new-instance v1, Lf/k;

    .line 17
    .line 18
    iget-object v2, p1, Lk/o;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lf/k;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lk/k;

    .line 24
    .line 25
    invoke-virtual {v1}, Lf/k;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v3, v4}, Lk/k;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Lk/p;->I:Lk/k;

    .line 33
    .line 34
    iput-object v0, v3, Lk/k;->K:Lk/z;

    .line 35
    .line 36
    invoke-virtual {p1, v3, v2}, Lk/o;->b(Lk/A;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lk/p;->I:Lk/k;

    .line 40
    .line 41
    iget-object v3, v2, Lk/k;->L:Lk/j;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    new-instance v3, Lk/j;

    .line 46
    .line 47
    invoke-direct {v3, v2}, Lk/j;-><init>(Lk/k;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, v2, Lk/k;->L:Lk/j;

    .line 51
    .line 52
    :cond_1
    iget-object v2, v2, Lk/k;->L:Lk/j;

    .line 53
    .line 54
    iget-object v3, v1, Lf/k;->a:Lf/g;

    .line 55
    .line 56
    iput-object v2, v3, Lf/g;->k:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    iput-object v0, v3, Lf/g;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    .line 60
    iget-object v2, p1, Lk/o;->o:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iput-object v2, v3, Lf/g;->e:Landroid/view/View;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p1, Lk/o;->n:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput-object v2, v3, Lf/g;->c:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iget-object v2, p1, Lk/o;->m:Ljava/lang/CharSequence;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lf/k;->setTitle(Ljava/lang/CharSequence;)Lf/k;

    .line 74
    .line 75
    .line 76
    :goto_0
    iput-object v0, v3, Lf/g;->j:Landroid/content/DialogInterface$OnKeyListener;

    .line 77
    .line 78
    invoke-virtual {v1}, Lf/k;->create()Lf/l;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lk/p;->H:Lf/l;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lk/p;->H:Lf/l;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v2, 0x3eb

    .line 98
    .line 99
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 100
    .line 101
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    .line 103
    const/high16 v3, 0x20000

    .line 104
    .line 105
    or-int/2addr v2, v3

    .line 106
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    .line 108
    iget-object v0, v0, Lk/p;->H:Lf/l;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lk/k;->K:Lk/z;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-interface {v0, p1}, Lk/z;->o(Lk/o;)Z

    .line 118
    .line 119
    .line 120
    :cond_3
    const/4 p1, 0x1

    .line 121
    return p1
.end method

.method public final d(Lk/o;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/k;->K:Lk/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lk/z;->d(Lk/o;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e(Lk/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final f(Lk/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/k;->K:Lk/z;

    .line 2
    .line 3
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/k;->L:Lk/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/j;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final k(Landroid/content/Context;Lk/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/k;->G:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lk/k;->G:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lk/k;->H:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lk/k;->H:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lk/k;->I:Lk/o;

    .line 18
    .line 19
    iget-object p1, p0, Lk/k;->L:Lk/j;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lk/j;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lk/k;->I:Lk/o;

    .line 2
    .line 3
    iget-object p2, p0, Lk/k;->L:Lk/j;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lk/j;->b(I)Lk/q;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Lk/o;->q(Landroid/view/MenuItem;Lk/A;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
