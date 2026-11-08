.class public final Le7/d;
.super LY/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/d$a;
    }
.end annotation


# static fields
.field public static final X0:Lz4/d0;


# instance fields
.field public final S0:Landroid/util/SparseArray;

.field public final T0:Ljava/util/ArrayList;

.field public U0:I

.field public V0:Landroid/content/DialogInterface$OnClickListener;

.field public W0:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x3

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/4 v6, 0x4

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    sget-object v8, Lz4/H;->H:Lz4/F;

    .line 22
    .line 23
    new-array v8, v6, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    aput-object v1, v8, v9

    .line 27
    .line 28
    aput-object v3, v8, v2

    .line 29
    .line 30
    aput-object v5, v8, v0

    .line 31
    .line 32
    aput-object v7, v8, v4

    .line 33
    .line 34
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v6, v8}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Le7/d;->X0:Lz4/d0;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LY/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le7/d;->S0:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Le7/d;->T0:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, LY/s;->P()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static V(Lm0/k0;Le7/d;La3/i;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm0/k0;->a()Lm0/j0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    sget-object v2, Le7/d;->X0:Lz4/d0;

    .line 8
    .line 9
    invoke-virtual {v2}, Lz4/d0;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v1, v3, :cond_3

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p1, Le7/d;->S0:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Le7/d$a;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-boolean v3, v3, Le7/d$a;->F0:Z

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_1
    invoke-virtual {p0, v2, v3}, Lm0/j0;->j(IZ)Lm0/j0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lm0/j0;->c(I)Lm0/j0;

    .line 46
    .line 47
    .line 48
    iget-object v3, p1, Le7/d;->S0:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Le7/d$a;

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget-object v2, v2, Le7/d$a;->G0:Ljava/util/Map;

    .line 64
    .line 65
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lm0/h0;

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Lm0/j0;->a(Lm0/h0;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lm0/j0;->b()Lm0/k0;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p2, p0}, La3/i;->a(Lm0/k0;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static W(Landroidx/media3/exoplayer/ExoPlayer;Lb7/a1;)Le7/d;
    .locals 8

    .line 1
    check-cast p0, LB0/O;

    .line 2
    .line 3
    invoke-virtual {p0}, LB0/O;->y()Lm0/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, LB0/O;->E()Lm0/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, La3/i;

    .line 12
    .line 13
    const/16 v3, 0x12

    .line 14
    .line 15
    invoke-direct {v2, p0, v3}, La3/i;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Le7/d;

    .line 19
    .line 20
    invoke-direct {p0}, Le7/d;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lb7/d1;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-direct {v3, v1, p0, v2, v4}, Lb7/d1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f130194

    .line 30
    .line 31
    .line 32
    iput v2, p0, Le7/d;->U0:I

    .line 33
    .line 34
    iput-object v3, p0, Le7/d;->V0:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    .line 36
    iput-object p1, p0, Le7/d;->W0:Landroid/content/DialogInterface$OnDismissListener;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    :goto_0
    sget-object v2, Le7/d;->X0:Lz4/d0;

    .line 40
    .line 41
    invoke-virtual {v2}, Lz4/d0;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge p1, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lm0/m0;->a()Lz4/H;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lz4/H;->u()Lcom/google/android/gms/internal/ads/gB;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    :cond_0
    :goto_1
    move-object v6, v5

    .line 71
    check-cast v6, Lz4/a;

    .line 72
    .line 73
    invoke-virtual {v6}, Lz4/a;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    invoke-virtual {v6}, Lz4/a;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lm0/l0;

    .line 84
    .line 85
    invoke-virtual {v6}, Lm0/l0;->a()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-ne v7, v3, :cond_0

    .line 90
    .line 91
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    new-instance v5, Le7/d$a;

    .line 102
    .line 103
    invoke-direct {v5}, Le7/d$a;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v6, v1, Lm0/k0;->E:Lz4/L;

    .line 107
    .line 108
    invoke-virtual {v6, v2}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    iget-object v7, v1, Lm0/k0;->D:Lz4/J;

    .line 113
    .line 114
    invoke-virtual {v5, v4, v6, v7}, Le7/d$a;->S(Ljava/util/ArrayList;ZLz4/J;)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Le7/d;->S0:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Le7/d;->T0:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    return-object p0
.end method

.method public static X(Landroidx/media3/exoplayer/ExoPlayer;)Z
    .locals 3

    .line 1
    check-cast p0, LB0/O;

    .line 2
    .line 3
    invoke-virtual {p0}, LB0/O;->y()Lm0/m0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lm0/m0;->a:Lz4/H;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lz4/H;->v(I)Lz4/F;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lz4/a;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lz4/a;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lm0/l0;

    .line 25
    .line 26
    iget-object v1, v1, Lm0/l0;->b:Lm0/g0;

    .line 27
    .line 28
    iget v1, v1, Lm0/g0;->c:I

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Le7/d;->X0:Lz4/d0;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lz4/H;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :cond_1
    return v0
.end method


# virtual methods
.method public final T()Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Lf/M;

    .line 2
    .line 3
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f140216

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lf/M;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Le7/d;->U0:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lf/M;->setTitle(I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LY/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le7/d;->W0:Landroid/content/DialogInterface$OnDismissListener;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const v0, 0x7f0e0081

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0b04fc

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    .line 17
    .line 18
    const v0, 0x7f0b04fd

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    const v2, 0x7f0b04fa

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/widget/Button;

    .line 35
    .line 36
    const v3, 0x7f0b04fb

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/Button;

    .line 44
    .line 45
    new-instance v4, Le7/c;

    .line 46
    .line 47
    invoke-virtual {p0}, LY/s;->k()LY/K;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v4, p0, v5}, Le7/c;-><init>(Le7/d;LY/K;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(La2/a;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Le7/d;->S0:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v4, 0x1

    .line 67
    if-le v0, v4, :cond_0

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/16 v0, 0x8

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Le7/b;

    .line 77
    .line 78
    invoke-direct {p2, p0, v1}, Le7/b;-><init>(Le7/d;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Le7/b;

    .line 85
    .line 86
    invoke-direct {p2, p0, v4}, Le7/b;-><init>(Le7/d;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method
