.class public final Lk/i;
.super Lk/w;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final H:Landroid/content/Context;

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:Z

.field public final M:Landroid/os/Handler;

.field public final N:Ljava/util/ArrayList;

.field public final O:Ljava/util/ArrayList;

.field public final P:Lk/e;

.field public final Q:Lk/f;

.field public final R:Lf/S;

.field public S:I

.field public T:I

.field public U:Landroid/view/View;

.field public V:Landroid/view/View;

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:I

.field public a0:I

.field public b0:Z

.field public c0:Z

.field public d0:Lk/z;

.field public e0:Landroid/view/ViewTreeObserver;

.field public f0:Landroid/widget/PopupWindow$OnDismissListener;

.field public g0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk/i;->N:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lk/e;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lk/e;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lk/i;->P:Lk/e;

    .line 25
    .line 26
    new-instance v0, Lk/f;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lk/f;-><init>(Lk/w;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lk/i;->Q:Lk/f;

    .line 32
    .line 33
    new-instance v0, Lf/S;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, p0, v2}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lk/i;->R:Lf/S;

    .line 40
    .line 41
    iput v1, p0, Lk/i;->S:I

    .line 42
    .line 43
    iput v1, p0, Lk/i;->T:I

    .line 44
    .line 45
    iput-object p1, p0, Lk/i;->H:Landroid/content/Context;

    .line 46
    .line 47
    iput-object p2, p0, Lk/i;->U:Landroid/view/View;

    .line 48
    .line 49
    iput p3, p0, Lk/i;->J:I

    .line 50
    .line 51
    iput p4, p0, Lk/i;->K:I

    .line 52
    .line 53
    iput-boolean p5, p0, Lk/i;->L:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lk/i;->b0:Z

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/4 p3, 0x1

    .line 62
    if-ne p2, p3, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x1

    .line 66
    :goto_0
    iput v1, p0, Lk/i;->W:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .line 78
    div-int/2addr p2, v2

    .line 79
    const p3, 0x7f070017

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lk/i;->I:I

    .line 91
    .line 92
    new-instance p1, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lk/i;->M:Landroid/os/Handler;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lk/h;

    .line 15
    .line 16
    iget-object v0, v0, Lk/h;->a:Ll/R0;

    .line 17
    .line 18
    iget-object v0, v0, Ll/M0;->e0:Ll/G;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    return v2
.end method

.method public final c(Lk/G;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lk/h;

    .line 19
    .line 20
    iget-object v3, v1, Lk/h;->b:Lk/o;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Lk/h;->a:Ll/R0;

    .line 25
    .line 26
    iget-object p1, p1, Ll/M0;->I:Ll/z0;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lk/o;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lk/i;->l(Lk/o;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lk/i;->d0:Lk/z;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lk/z;->o(Lk/o;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final d(Lk/o;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lk/h;

    .line 16
    .line 17
    iget-object v4, v4, Lk/h;->b:Lk/o;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v1, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lk/h;

    .line 42
    .line 43
    iget-object v1, v1, Lk/h;->b:Lk/o;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lk/o;->c(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lk/h;

    .line 53
    .line 54
    iget-object v3, v1, Lk/h;->b:Lk/o;

    .line 55
    .line 56
    invoke-virtual {v3, p0}, Lk/o;->r(Lk/A;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v3, p0, Lk/i;->g0:Z

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    iget-object v1, v1, Lk/h;->a:Ll/R0;

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v5, 0x17

    .line 69
    .line 70
    if-lt v3, v5, :cond_4

    .line 71
    .line 72
    iget-object v3, v1, Ll/M0;->e0:Ll/G;

    .line 73
    .line 74
    invoke-static {v3, v4}, Ll/O0;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    :goto_2
    iget-object v3, v1, Ll/M0;->e0:Ll/G;

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v1}, Ll/M0;->dismiss()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v3, 0x1

    .line 94
    if-lez v1, :cond_6

    .line 95
    .line 96
    add-int/lit8 v5, v1, -0x1

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Lk/h;

    .line 103
    .line 104
    iget v5, v5, Lk/h;->c:I

    .line 105
    .line 106
    iput v5, p0, Lk/i;->W:I

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    iget-object v5, p0, Lk/i;->U:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-ne v5, v3, :cond_7

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    const/4 v5, 0x1

    .line 120
    :goto_3
    iput v5, p0, Lk/i;->W:I

    .line 121
    .line 122
    :goto_4
    if-nez v1, :cond_b

    .line 123
    .line 124
    invoke-virtual {p0}, Lk/i;->dismiss()V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lk/i;->d0:Lk/z;

    .line 128
    .line 129
    if-eqz p2, :cond_8

    .line 130
    .line 131
    invoke-interface {p2, p1, v3}, Lk/z;->d(Lk/o;Z)V

    .line 132
    .line 133
    .line 134
    :cond_8
    iget-object p1, p0, Lk/i;->e0:Landroid/view/ViewTreeObserver;

    .line 135
    .line 136
    if-eqz p1, :cond_a

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_9

    .line 143
    .line 144
    iget-object p1, p0, Lk/i;->e0:Landroid/view/ViewTreeObserver;

    .line 145
    .line 146
    iget-object p2, p0, Lk/i;->P:Lk/e;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    iput-object v4, p0, Lk/i;->e0:Landroid/view/ViewTreeObserver;

    .line 152
    .line 153
    :cond_a
    iget-object p1, p0, Lk/i;->V:Landroid/view/View;

    .line 154
    .line 155
    iget-object p2, p0, Lk/i;->Q:Lk/f;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lk/i;->f0:Landroid/widget/PopupWindow$OnDismissListener;

    .line 161
    .line 162
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_b
    if-eqz p2, :cond_c

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lk/h;

    .line 173
    .line 174
    iget-object p1, p1, Lk/h;->b:Lk/o;

    .line 175
    .line 176
    invoke-virtual {p1, v2}, Lk/o;->c(Z)V

    .line 177
    .line 178
    .line 179
    :cond_c
    :goto_5
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Lk/h;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lk/h;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Lk/h;->a:Ll/R0;

    .line 24
    .line 25
    iget-object v3, v3, Ll/M0;->e0:Ll/G;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, Lk/h;->a:Ll/R0;

    .line 34
    .line 35
    invoke-virtual {v2}, Ll/M0;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final f(Lk/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/i;->d0:Lk/z;

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

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/i;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lk/i;->N:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lk/o;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lk/i;->v(Lk/o;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lk/i;->U:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lk/i;->V:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lk/i;->e0:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lk/i;->e0:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lk/i;->P:Lk/e;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lk/i;->V:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Lk/i;->Q:Lk/f;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lk/h;

    .line 18
    .line 19
    iget-object v1, v1, Lk/h;->a:Ll/R0;

    .line 20
    .line 21
    iget-object v1, v1, Ll/M0;->I:Ll/z0;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lk/l;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    check-cast v1, Lk/l;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v1}, Lk/l;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final j()Ll/z0;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lk/h;

    .line 17
    .line 18
    iget-object v0, v0, Lk/h;->a:Ll/R0;

    .line 19
    .line 20
    iget-object v0, v0, Ll/M0;->I:Ll/z0;

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public final l(Lk/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/i;->H:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Lk/o;->b(Lk/A;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lk/i;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lk/i;->v(Lk/o;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lk/i;->N:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/i;->U:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lk/i;->U:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Lk/i;->S:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lk/i;->T:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/i;->b0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/i;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lk/h;

    .line 16
    .line 17
    iget-object v5, v4, Lk/h;->a:Ll/R0;

    .line 18
    .line 19
    iget-object v5, v5, Ll/M0;->e0:Ll/G;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Lk/h;->b:Lk/o;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lk/o;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lk/i;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget v0, p0, Lk/i;->S:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lk/i;->S:I

    .line 6
    .line 7
    iget-object v0, p0, Lk/i;->U:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lk/i;->T:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/i;->X:Z

    .line 3
    .line 4
    iput p1, p0, Lk/i;->Z:I

    .line 5
    .line 6
    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/i;->f0:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/i;->c0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/i;->Y:Z

    .line 3
    .line 4
    iput p1, p0, Lk/i;->a0:I

    .line 5
    .line 6
    return-void
.end method

.method public final v(Lk/o;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lk/i;->H:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lk/l;

    .line 12
    .line 13
    iget-boolean v5, v0, Lk/i;->L:Z

    .line 14
    .line 15
    const v6, 0x7f0e000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1, v3, v5, v6}, Lk/l;-><init>(Lk/o;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lk/i;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v0, Lk/i;->b0:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iput-boolean v6, v4, Lk/l;->c:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lk/i;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lk/w;->u(Lk/o;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iput-boolean v5, v4, Lk/l;->c:Z

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget v5, v0, Lk/i;->I:I

    .line 48
    .line 49
    invoke-static {v4, v2, v5}, Lk/w;->m(Lk/l;Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    new-instance v7, Ll/R0;

    .line 54
    .line 55
    iget v8, v0, Lk/i;->J:I

    .line 56
    .line 57
    iget v9, v0, Lk/i;->K:I

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    invoke-direct {v7, v2, v10, v8, v9}, Ll/M0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Lk/i;->R:Lf/S;

    .line 64
    .line 65
    iput-object v2, v7, Ll/R0;->i0:Ll/N0;

    .line 66
    .line 67
    iput-object v0, v7, Ll/M0;->V:Landroid/widget/AdapterView$OnItemClickListener;

    .line 68
    .line 69
    iget-object v2, v7, Ll/M0;->e0:Ll/G;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Lk/i;->U:Landroid/view/View;

    .line 75
    .line 76
    iput-object v2, v7, Ll/M0;->U:Landroid/view/View;

    .line 77
    .line 78
    iget v2, v0, Lk/i;->T:I

    .line 79
    .line 80
    iput v2, v7, Ll/M0;->R:I

    .line 81
    .line 82
    iput-boolean v6, v7, Ll/M0;->d0:Z

    .line 83
    .line 84
    iget-object v2, v7, Ll/M0;->e0:Ll/G;

    .line 85
    .line 86
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v7, Ll/M0;->e0:Ll/G;

    .line 90
    .line 91
    const/4 v8, 0x2

    .line 92
    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v4}, Ll/M0;->n(Landroid/widget/ListAdapter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v5}, Ll/M0;->p(I)V

    .line 99
    .line 100
    .line 101
    iget v2, v0, Lk/i;->T:I

    .line 102
    .line 103
    iput v2, v7, Ll/M0;->R:I

    .line 104
    .line 105
    iget-object v2, v0, Lk/i;->O:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-lez v4, :cond_a

    .line 112
    .line 113
    invoke-static {v2, v6}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lk/h;

    .line 118
    .line 119
    iget-object v11, v4, Lk/h;->b:Lk/o;

    .line 120
    .line 121
    iget-object v12, v11, Lk/o;->f:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    const/4 v13, 0x0

    .line 128
    :goto_1
    if-ge v13, v12, :cond_3

    .line 129
    .line 130
    invoke-virtual {v11, v13}, Lk/o;->getItem(I)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-eqz v15, :cond_2

    .line 139
    .line 140
    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    if-ne v1, v15, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    move-object v14, v10

    .line 151
    :goto_2
    if-nez v14, :cond_4

    .line 152
    .line 153
    move-object v8, v10

    .line 154
    goto :goto_7

    .line 155
    :cond_4
    iget-object v11, v4, Lk/h;->a:Ll/R0;

    .line 156
    .line 157
    iget-object v11, v11, Ll/M0;->I:Ll/z0;

    .line 158
    .line 159
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 164
    .line 165
    if-eqz v13, :cond_5

    .line 166
    .line 167
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 168
    .line 169
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Lk/l;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    check-cast v12, Lk/l;

    .line 181
    .line 182
    const/4 v13, 0x0

    .line 183
    :goto_3
    invoke-virtual {v12}, Lk/l;->getCount()I

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    const/4 v8, 0x0

    .line 188
    :goto_4
    const/4 v10, -0x1

    .line 189
    if-ge v8, v15, :cond_7

    .line 190
    .line 191
    invoke-virtual {v12, v8}, Lk/l;->b(I)Lk/q;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    if-ne v14, v9, :cond_6

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    const/4 v8, -0x1

    .line 202
    :goto_5
    if-ne v8, v10, :cond_8

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_8
    add-int/2addr v8, v13

    .line 206
    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    sub-int/2addr v8, v9

    .line 211
    if-ltz v8, :cond_b

    .line 212
    .line 213
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-lt v8, v9, :cond_9

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_9
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    goto :goto_7

    .line 225
    :cond_a
    const/4 v4, 0x0

    .line 226
    :cond_b
    :goto_6
    const/4 v8, 0x0

    .line 227
    :goto_7
    if-eqz v8, :cond_18

    .line 228
    .line 229
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 230
    .line 231
    iget-object v10, v7, Ll/M0;->e0:Ll/G;

    .line 232
    .line 233
    const/16 v11, 0x1c

    .line 234
    .line 235
    if-gt v9, v11, :cond_c

    .line 236
    .line 237
    sget-object v9, Ll/R0;->j0:Ljava/lang/reflect/Method;

    .line 238
    .line 239
    if-eqz v9, :cond_d

    .line 240
    .line 241
    :try_start_0
    new-array v11, v6, [Ljava/lang/Object;

    .line 242
    .line 243
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 244
    .line 245
    const/4 v13, 0x0

    .line 246
    aput-object v12, v11, v13

    .line 247
    .line 248
    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    .line 251
    goto :goto_8

    .line 252
    :catch_0
    const-string v9, "MenuPopupWindow"

    .line 253
    .line 254
    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 255
    .line 256
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_c
    const/4 v9, 0x0

    .line 261
    invoke-static {v10, v9}, Ll/P0;->a(Landroid/widget/PopupWindow;Z)V

    .line 262
    .line 263
    .line 264
    :cond_d
    :goto_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 265
    .line 266
    const/16 v10, 0x17

    .line 267
    .line 268
    if-lt v9, v10, :cond_e

    .line 269
    .line 270
    iget-object v10, v7, Ll/M0;->e0:Ll/G;

    .line 271
    .line 272
    const/4 v11, 0x0

    .line 273
    invoke-static {v10, v11}, Ll/O0;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 274
    .line 275
    .line 276
    :cond_e
    invoke-static {v2, v6}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    check-cast v10, Lk/h;

    .line 281
    .line 282
    iget-object v10, v10, Lk/h;->a:Ll/R0;

    .line 283
    .line 284
    iget-object v10, v10, Ll/M0;->I:Ll/z0;

    .line 285
    .line 286
    const/4 v11, 0x2

    .line 287
    new-array v12, v11, [I

    .line 288
    .line 289
    invoke-virtual {v10, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 290
    .line 291
    .line 292
    new-instance v11, Landroid/graphics/Rect;

    .line 293
    .line 294
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .line 296
    .line 297
    iget-object v13, v0, Lk/i;->V:Landroid/view/View;

    .line 298
    .line 299
    invoke-virtual {v13, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 300
    .line 301
    .line 302
    iget v13, v0, Lk/i;->W:I

    .line 303
    .line 304
    if-ne v13, v6, :cond_11

    .line 305
    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    aget v12, v12, v16

    .line 309
    .line 310
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    add-int/2addr v10, v12

    .line 315
    add-int/2addr v10, v5

    .line 316
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 317
    .line 318
    if-le v10, v11, :cond_10

    .line 319
    .line 320
    :cond_f
    const/4 v10, 0x0

    .line 321
    goto :goto_a

    .line 322
    :cond_10
    :goto_9
    const/4 v10, 0x1

    .line 323
    goto :goto_a

    .line 324
    :cond_11
    const/16 v16, 0x0

    .line 325
    .line 326
    aget v10, v12, v16

    .line 327
    .line 328
    sub-int/2addr v10, v5

    .line 329
    if-gez v10, :cond_f

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :goto_a
    if-ne v10, v6, :cond_12

    .line 333
    .line 334
    const/4 v13, 0x1

    .line 335
    goto :goto_b

    .line 336
    :cond_12
    const/4 v13, 0x0

    .line 337
    :goto_b
    iput v10, v0, Lk/i;->W:I

    .line 338
    .line 339
    const/16 v10, 0x1a

    .line 340
    .line 341
    const/4 v11, 0x5

    .line 342
    if-lt v9, v10, :cond_13

    .line 343
    .line 344
    iput-object v8, v7, Ll/M0;->U:Landroid/view/View;

    .line 345
    .line 346
    const/4 v9, 0x0

    .line 347
    const/4 v12, 0x0

    .line 348
    goto :goto_d

    .line 349
    :cond_13
    const/4 v9, 0x2

    .line 350
    new-array v10, v9, [I

    .line 351
    .line 352
    iget-object v12, v0, Lk/i;->U:Landroid/view/View;

    .line 353
    .line 354
    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 355
    .line 356
    .line 357
    new-array v9, v9, [I

    .line 358
    .line 359
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 360
    .line 361
    .line 362
    iget v12, v0, Lk/i;->T:I

    .line 363
    .line 364
    and-int/lit8 v12, v12, 0x7

    .line 365
    .line 366
    if-ne v12, v11, :cond_14

    .line 367
    .line 368
    const/4 v12, 0x0

    .line 369
    aget v14, v10, v12

    .line 370
    .line 371
    iget-object v15, v0, Lk/i;->U:Landroid/view/View;

    .line 372
    .line 373
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    add-int/2addr v15, v14

    .line 378
    aput v15, v10, v12

    .line 379
    .line 380
    aget v14, v9, v12

    .line 381
    .line 382
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 383
    .line 384
    .line 385
    move-result v15

    .line 386
    add-int/2addr v15, v14

    .line 387
    aput v15, v9, v12

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_14
    const/4 v12, 0x0

    .line 391
    :goto_c
    aget v14, v9, v12

    .line 392
    .line 393
    aget v15, v10, v12

    .line 394
    .line 395
    sub-int v12, v14, v15

    .line 396
    .line 397
    aget v9, v9, v6

    .line 398
    .line 399
    aget v10, v10, v6

    .line 400
    .line 401
    sub-int/2addr v9, v10

    .line 402
    :goto_d
    iget v10, v0, Lk/i;->T:I

    .line 403
    .line 404
    and-int/2addr v10, v11

    .line 405
    if-ne v10, v11, :cond_17

    .line 406
    .line 407
    if-eqz v13, :cond_15

    .line 408
    .line 409
    add-int/2addr v12, v5

    .line 410
    goto :goto_e

    .line 411
    :cond_15
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    :cond_16
    sub-int/2addr v12, v5

    .line 416
    goto :goto_e

    .line 417
    :cond_17
    if-eqz v13, :cond_16

    .line 418
    .line 419
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    add-int/2addr v12, v5

    .line 424
    :goto_e
    iput v12, v7, Ll/M0;->L:I

    .line 425
    .line 426
    iput-boolean v6, v7, Ll/M0;->Q:Z

    .line 427
    .line 428
    iput-boolean v6, v7, Ll/M0;->P:Z

    .line 429
    .line 430
    invoke-virtual {v7, v9}, Ll/M0;->i(I)V

    .line 431
    .line 432
    .line 433
    goto :goto_10

    .line 434
    :cond_18
    iget-boolean v5, v0, Lk/i;->X:Z

    .line 435
    .line 436
    if-eqz v5, :cond_19

    .line 437
    .line 438
    iget v5, v0, Lk/i;->Z:I

    .line 439
    .line 440
    iput v5, v7, Ll/M0;->L:I

    .line 441
    .line 442
    :cond_19
    iget-boolean v5, v0, Lk/i;->Y:Z

    .line 443
    .line 444
    if-eqz v5, :cond_1a

    .line 445
    .line 446
    iget v5, v0, Lk/i;->a0:I

    .line 447
    .line 448
    invoke-virtual {v7, v5}, Ll/M0;->i(I)V

    .line 449
    .line 450
    .line 451
    :cond_1a
    iget-object v5, v0, Lk/w;->G:Landroid/graphics/Rect;

    .line 452
    .line 453
    if-eqz v5, :cond_1b

    .line 454
    .line 455
    new-instance v11, Landroid/graphics/Rect;

    .line 456
    .line 457
    invoke-direct {v11, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 458
    .line 459
    .line 460
    goto :goto_f

    .line 461
    :cond_1b
    const/4 v11, 0x0

    .line 462
    :goto_f
    iput-object v11, v7, Ll/M0;->c0:Landroid/graphics/Rect;

    .line 463
    .line 464
    :goto_10
    new-instance v5, Lk/h;

    .line 465
    .line 466
    iget v6, v0, Lk/i;->W:I

    .line 467
    .line 468
    invoke-direct {v5, v7, v1, v6}, Lk/h;-><init>(Ll/R0;Lk/o;I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7}, Ll/M0;->h()V

    .line 475
    .line 476
    .line 477
    iget-object v2, v7, Ll/M0;->I:Ll/z0;

    .line 478
    .line 479
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 480
    .line 481
    .line 482
    if-nez v4, :cond_1c

    .line 483
    .line 484
    iget-boolean v4, v0, Lk/i;->c0:Z

    .line 485
    .line 486
    if-eqz v4, :cond_1c

    .line 487
    .line 488
    iget-object v4, v1, Lk/o;->m:Ljava/lang/CharSequence;

    .line 489
    .line 490
    if-eqz v4, :cond_1c

    .line 491
    .line 492
    const v4, 0x7f0e0012

    .line 493
    .line 494
    .line 495
    const/4 v5, 0x0

    .line 496
    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    check-cast v3, Landroid/widget/FrameLayout;

    .line 501
    .line 502
    const v4, 0x1020016

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    check-cast v4, Landroid/widget/TextView;

    .line 510
    .line 511
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 512
    .line 513
    .line 514
    iget-object v1, v1, Lk/o;->m:Ljava/lang/CharSequence;

    .line 515
    .line 516
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .line 518
    .line 519
    const/4 v1, 0x0

    .line 520
    invoke-virtual {v2, v3, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v7}, Ll/M0;->h()V

    .line 524
    .line 525
    .line 526
    :cond_1c
    return-void
.end method
