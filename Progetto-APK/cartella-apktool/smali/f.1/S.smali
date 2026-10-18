.class public Lf/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/N0;
.implements Lk/z;
.implements Lk/m;
.implements Ll/e0;
.implements LN/s;
.implements LN/g;
.implements LN/k;
.implements Le0/w;
.implements LJ/b;
.implements Landroidx/leanback/widget/L;
.implements Lj0/a;
.implements LA0/J;
.implements LD0/s;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lf/S;->G:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_9

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1b

    const/16 v1, 0x17

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget p1, Landroidx/media/AudioAttributesCompat;->b:I

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 9
    new-instance p1, Lj0/b;

    .line 10
    invoke-direct {p1, v1}, Lf/S;-><init>(I)V

    .line 11
    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Lf/S;

    invoke-direct {p1, v1}, Lf/S;-><init>(I)V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_4

    .line 15
    new-instance p1, LB0/v;

    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-lt p1, v1, :cond_5

    .line 18
    new-instance p1, LU4/b;

    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    :goto_1
    return-void

    .line 22
    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_7

    .line 24
    new-instance p1, LN/Z;

    invoke-direct {p1}, LN/Z;-><init>()V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_8

    .line 25
    new-instance p1, LN/Y;

    invoke-direct {p1}, LN/Y;-><init>()V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    goto :goto_2

    .line 26
    :cond_8
    new-instance p1, LN/X;

    invoke-direct {p1}, LN/X;-><init>()V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    :goto_2
    return-void

    .line 27
    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LD0/B;)V
    .locals 1

    .line 29
    const/16 v0, 0x1d

    iput v0, p0, Lf/S;->G:I

    .line 30
    invoke-direct {p0, p1, v0}, Lf/S;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 50
    iput v0, p0, Lf/S;->G:I

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, LP/f;

    invoke-direct {v0, p1, p2, p3}, LP/f;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Lm2/u;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lm2/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 58
    iput v0, p0, Lf/S;->G:I

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {p1}, LN/f;->g(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 46
    iput v0, p0, Lf/S;->G:I

    .line 47
    const-string v0, "textView cannot be null"

    invoke-static {p1, v0}, Lp0/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, LV/h;

    invoke-direct {v0, p1}, LV/h;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc/g;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 55
    iput v0, p0, Lf/S;->G:I

    .line 56
    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/S;->G:I

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm0/d;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 35
    iput v0, p0, Lf/S;->G:I

    .line 36
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 37
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 41
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->l(Landroid/media/AudioAttributes$Builder;I)V

    :cond_0
    const/16 v1, 0x20

    if-lt v2, v1, :cond_1

    .line 42
    invoke-static {v0, p1}, LO/c;->e(Landroid/media/AudioAttributes$Builder;I)V

    .line 43
    invoke-static {v0, p1}, LO/c;->f(Landroid/media/AudioAttributes$Builder;Z)V

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lm0/d;I)V
    .locals 0

    .line 32
    const/16 p2, 0x18

    iput p2, p0, Lf/S;->G:I

    .line 33
    invoke-direct {p0, p1}, Lf/S;-><init>(Lm0/d;)V

    return-void
.end method

.method public static M([Ljava/lang/Object;ILF2/G;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x190

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2bc

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_1
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_2
    if-ge v6, v3, :cond_5

    .line 26
    .line 27
    aget-object v7, p0, v6

    .line 28
    .line 29
    iget v8, p2, LF2/G;->G:I

    .line 30
    .line 31
    packed-switch v8, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    move-object v9, v7

    .line 35
    check-cast v9, LF/g;

    .line 36
    .line 37
    iget v9, v9, LF/g;->b:I

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :pswitch_0
    move-object v9, v7

    .line 41
    check-cast v9, LK/l;

    .line 42
    .line 43
    iget v9, v9, LK/l;->c:I

    .line 44
    .line 45
    :goto_3
    sub-int/2addr v9, v0

    .line 46
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    mul-int/lit8 v9, v9, 0x2

    .line 51
    .line 52
    packed-switch v8, :pswitch_data_1

    .line 53
    .line 54
    .line 55
    move-object v8, v7

    .line 56
    check-cast v8, LF/g;

    .line 57
    .line 58
    iget-boolean v8, v8, LF/g;->c:Z

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :pswitch_1
    move-object v8, v7

    .line 62
    check-cast v8, LK/l;

    .line 63
    .line 64
    iget-boolean v8, v8, LK/l;->d:Z

    .line 65
    .line 66
    :goto_4
    if-ne v8, p1, :cond_2

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    goto :goto_5

    .line 70
    :cond_2
    const/4 v8, 0x1

    .line 71
    :goto_5
    add-int/2addr v9, v8

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    if-le v5, v9, :cond_4

    .line 75
    .line 76
    :cond_3
    move-object v4, v7

    .line 77
    move v5, v9

    .line 78
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    return-object v4

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, LN/f;->c(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final B()F
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    neg-float v0, v0

    .line 10
    return v0
.end method

.method public final synthetic C()V
    .locals 0

    .line 1
    return-void
.end method

.method public D(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->J:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final F(Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/view/View;

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    if-eq p5, p1, :cond_0

    .line 7
    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p5, p1, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 14
    .line 15
    move-object p5, p1

    .line 16
    check-cast p5, Landroidx/leanback/widget/q;

    .line 17
    .line 18
    iget-object p5, p5, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 19
    .line 20
    iget-boolean p5, p5, Landroidx/leanback/widget/k;->c:Z

    .line 21
    .line 22
    if-nez p5, :cond_1

    .line 23
    .line 24
    check-cast p1, Landroidx/leanback/widget/q;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 27
    .line 28
    iget-object p1, p1, Ll/D;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroidx/leanback/widget/Y;

    .line 31
    .line 32
    iget p1, p1, Landroidx/leanback/widget/Y;->j:I

    .line 33
    .line 34
    move p5, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object p5, p1

    .line 37
    check-cast p5, Landroidx/leanback/widget/q;

    .line 38
    .line 39
    iget-object p5, p5, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 40
    .line 41
    iget-object p5, p5, Ll/D;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p5, Landroidx/leanback/widget/Y;

    .line 44
    .line 45
    iget p5, p5, Landroidx/leanback/widget/Y;->i:I

    .line 46
    .line 47
    check-cast p1, Landroidx/leanback/widget/q;

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 50
    .line 51
    iget-object p1, p1, Ll/D;->e:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Landroidx/leanback/widget/Y;

    .line 54
    .line 55
    iget p1, p1, Landroidx/leanback/widget/Y;->k:I

    .line 56
    .line 57
    sub-int/2addr p5, p1

    .line 58
    :cond_2
    :goto_0
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v0, p1

    .line 61
    check-cast v0, Landroidx/leanback/widget/q;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/leanback/widget/q;->U:Landroidx/leanback/widget/k;

    .line 64
    .line 65
    iget-boolean v0, v0, Landroidx/leanback/widget/k;->c:Z

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    xor-int/2addr v0, v6

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    add-int/2addr p3, p5

    .line 72
    move v4, p3

    .line 73
    move v3, p5

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    sub-int p3, p5, p3

    .line 76
    .line 77
    move v3, p3

    .line 78
    move v4, p5

    .line 79
    :goto_1
    check-cast p1, Landroidx/leanback/widget/q;

    .line 80
    .line 81
    invoke-virtual {p1, p4}, Landroidx/leanback/widget/q;->c1(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p3, p0, Lf/S;->H:Ljava/lang/Object;

    .line 86
    .line 87
    move-object p5, p3

    .line 88
    check-cast p5, Landroidx/leanback/widget/q;

    .line 89
    .line 90
    iget-object p5, p5, Landroidx/leanback/widget/q;->W:Ll/D;

    .line 91
    .line 92
    iget-object p5, p5, Ll/D;->f:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p5, Landroidx/leanback/widget/Y;

    .line 95
    .line 96
    iget p5, p5, Landroidx/leanback/widget/Y;->j:I

    .line 97
    .line 98
    add-int/2addr p1, p5

    .line 99
    move-object p5, p3

    .line 100
    check-cast p5, Landroidx/leanback/widget/q;

    .line 101
    .line 102
    iget p5, p5, Landroidx/leanback/widget/q;->I:I

    .line 103
    .line 104
    sub-int v5, p1, p5

    .line 105
    .line 106
    check-cast p3, Landroidx/leanback/widget/q;

    .line 107
    .line 108
    iget-object p1, p3, Landroidx/leanback/widget/q;->b0:LV/b;

    .line 109
    .line 110
    iget-object p3, p1, LV/b;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p3, Lr/l;

    .line 113
    .line 114
    if-eqz p3, :cond_4

    .line 115
    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iget-object p1, p1, LV/b;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lr/l;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lr/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/util/SparseArray;

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 136
    .line 137
    move-object v0, p1

    .line 138
    check-cast v0, Landroidx/leanback/widget/q;

    .line 139
    .line 140
    move v2, p4

    .line 141
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->i1(Landroid/view/View;IIII)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 145
    .line 146
    move-object p2, p1

    .line 147
    check-cast p2, Landroidx/leanback/widget/q;

    .line 148
    .line 149
    iget-object p2, p2, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 150
    .line 151
    iget-boolean p2, p2, LO1/Y;->g:Z

    .line 152
    .line 153
    if-nez p2, :cond_5

    .line 154
    .line 155
    check-cast p1, Landroidx/leanback/widget/q;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/leanback/widget/q;->D1()V

    .line 158
    .line 159
    .line 160
    :cond_5
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 161
    .line 162
    move-object p2, p1

    .line 163
    check-cast p2, Landroidx/leanback/widget/q;

    .line 164
    .line 165
    iget p2, p2, Landroidx/leanback/widget/q;->z:I

    .line 166
    .line 167
    and-int/lit8 p2, p2, 0x3

    .line 168
    .line 169
    if-eq p2, v6, :cond_9

    .line 170
    .line 171
    move-object p2, p1

    .line 172
    check-cast p2, Landroidx/leanback/widget/q;

    .line 173
    .line 174
    iget-object p2, p2, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 175
    .line 176
    if-eqz p2, :cond_9

    .line 177
    .line 178
    check-cast p1, Landroidx/leanback/widget/q;

    .line 179
    .line 180
    iget-object p1, p1, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 181
    .line 182
    iget-boolean p2, p1, Landroidx/leanback/widget/o;->s:Z

    .line 183
    .line 184
    iget-object p3, p1, Landroidx/leanback/widget/o;->u:Landroidx/leanback/widget/q;

    .line 185
    .line 186
    if-eqz p2, :cond_6

    .line 187
    .line 188
    iget p2, p1, Landroidx/leanback/widget/o;->t:I

    .line 189
    .line 190
    if-eqz p2, :cond_6

    .line 191
    .line 192
    invoke-virtual {p3, p2, v6}, Landroidx/leanback/widget/q;->o1(IZ)I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    iput p2, p1, Landroidx/leanback/widget/o;->t:I

    .line 197
    .line 198
    :cond_6
    iget p2, p1, Landroidx/leanback/widget/o;->t:I

    .line 199
    .line 200
    if-eqz p2, :cond_8

    .line 201
    .line 202
    if-lez p2, :cond_7

    .line 203
    .line 204
    invoke-virtual {p3}, Landroidx/leanback/widget/q;->g1()Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-nez p2, :cond_8

    .line 209
    .line 210
    :cond_7
    iget p2, p1, Landroidx/leanback/widget/o;->t:I

    .line 211
    .line 212
    if-gez p2, :cond_9

    .line 213
    .line 214
    invoke-virtual {p3}, Landroidx/leanback/widget/q;->f1()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_9

    .line 219
    .line 220
    :cond_8
    iget p2, p3, Landroidx/leanback/widget/q;->B:I

    .line 221
    .line 222
    iput p2, p1, LO1/w;->a:I

    .line 223
    .line 224
    invoke-virtual {p1}, LO1/w;->h()V

    .line 225
    .line 226
    .line 227
    :cond_9
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p1, Landroidx/leanback/widget/q;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method public G(Landroid/content/Context;LF/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    new-instance v0, LF2/G;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p2, LF/f;->a:[LF/g;

    .line 8
    .line 9
    invoke-static {v2, p4, v0}, Lf/S;->M([Ljava/lang/Object;ILF2/G;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, LF/g;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object v2, LG/e;->a:Lf/S;

    .line 20
    .line 21
    iget v8, v0, LF/g;->f:I

    .line 22
    .line 23
    iget-object v0, v0, LF/g;->a:Ljava/lang/String;

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p3

    .line 27
    move v5, v8

    .line 28
    move-object v6, v0

    .line 29
    move v7, p4

    .line 30
    invoke-virtual/range {v2 .. v7}, Lf/S;->K(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {p3, v8, v0, v2, p4}, LG/e;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    sget-object p4, LG/e;->b:Lr/l;

    .line 42
    .line 43
    invoke-virtual {p4, p3, p1}, Lr/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    const-string p3, "Could not retrieve font from family."

    .line 47
    .line 48
    const-string p4, "TypefaceCompatBaseImpl"

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    :goto_0
    move-wide p3, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    .line 57
    .line 58
    const-string v4, "native_instance"

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :goto_1
    invoke-static {p4, p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_2
    invoke-static {p4, p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_3
    cmp-long v0, p3, v2

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {v0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_3
    return-object p1
.end method

.method public H(Landroid/content/Context;[LK/l;I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-object v2

    .line 7
    :cond_0
    invoke-virtual {p0, p3, p2}, Lf/S;->N(I[LK/l;)LK/l;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object p2, p2, LK/l;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lf/S;->J(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {p2}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    move-object v2, p2

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-object p2, v2

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    invoke-static {v2}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :catch_1
    :goto_1
    invoke-static {p2}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    return-object v2
.end method

.method public I(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "createFromFontInfoWithFallback must only be called on API 29+"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public J(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {p1}, LE3/f;->p(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, LE3/f;->g(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public K(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p1}, LE3/f;->p(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p4

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, LE3/f;->f(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object p4

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object p4
.end method

.method public final L(IZ[Ljava/lang/Object;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/q;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/q;->u:I

    .line 6
    .line 7
    sub-int v1, p1, v1

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ls1/g;->d(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/leanback/widget/n;

    .line 20
    .line 21
    iget-object v2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Landroidx/leanback/widget/q;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/leanback/widget/q;->q:Landroidx/leanback/widget/f;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroidx/leanback/widget/q;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v1, v1, LO1/M;->a:LO1/c0;

    .line 41
    .line 42
    invoke-virtual {v1}, LO1/c0;->j()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x0

    .line 47
    if-nez v1, :cond_11

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz p4, :cond_1

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Landroidx/leanback/widget/q;

    .line 58
    .line 59
    invoke-virtual {p2, v1, v0, v3}, LO1/L;->b(ILandroid/view/View;Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p2, Landroidx/leanback/widget/q;

    .line 66
    .line 67
    invoke-virtual {p2, v2, v0, v3}, LO1/L;->b(ILandroid/view/View;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz p2, :cond_2

    .line 72
    .line 73
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p2, Landroidx/leanback/widget/q;

    .line 76
    .line 77
    invoke-virtual {p2, v1, v0, v2}, LO1/L;->b(ILandroid/view/View;Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p2, Landroidx/leanback/widget/q;

    .line 84
    .line 85
    invoke-virtual {p2, v2, v0, v2}, LO1/L;->b(ILandroid/view/View;Z)V

    .line 86
    .line 87
    .line 88
    :goto_0
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p2, Landroidx/leanback/widget/q;

    .line 91
    .line 92
    iget p2, p2, Landroidx/leanback/widget/q;->H:I

    .line 93
    .line 94
    if-eq p2, v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p2, Landroidx/leanback/widget/q;

    .line 102
    .line 103
    iget-object p2, p2, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 104
    .line 105
    if-eqz p2, :cond_c

    .line 106
    .line 107
    iget-boolean p4, p2, Landroidx/leanback/widget/o;->s:Z

    .line 108
    .line 109
    if-nez p4, :cond_c

    .line 110
    .line 111
    iget p4, p2, Landroidx/leanback/widget/o;->t:I

    .line 112
    .line 113
    if-nez p4, :cond_4

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_4
    iget-object v1, p2, Landroidx/leanback/widget/o;->u:Landroidx/leanback/widget/q;

    .line 118
    .line 119
    if-lez p4, :cond_5

    .line 120
    .line 121
    iget p4, v1, Landroidx/leanback/widget/q;->B:I

    .line 122
    .line 123
    iget v4, v1, Landroidx/leanback/widget/q;->S:I

    .line 124
    .line 125
    add-int/2addr p4, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget p4, v1, Landroidx/leanback/widget/q;->B:I

    .line 128
    .line 129
    iget v4, v1, Landroidx/leanback/widget/q;->S:I

    .line 130
    .line 131
    sub-int/2addr p4, v4

    .line 132
    :goto_1
    const/4 v4, 0x0

    .line 133
    :goto_2
    iget v5, p2, Landroidx/leanback/widget/o;->t:I

    .line 134
    .line 135
    if-eqz v5, :cond_b

    .line 136
    .line 137
    iget-object v5, p2, LO1/w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    .line 139
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 140
    .line 141
    invoke-virtual {v5, p4}, LO1/L;->s(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_9

    .line 156
    .line 157
    invoke-virtual {v1}, LO1/L;->Q()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_7

    .line 162
    .line 163
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_9

    .line 168
    .line 169
    :cond_7
    iput p4, v1, Landroidx/leanback/widget/q;->B:I

    .line 170
    .line 171
    iput v2, v1, Landroidx/leanback/widget/q;->C:I

    .line 172
    .line 173
    iget v4, p2, Landroidx/leanback/widget/o;->t:I

    .line 174
    .line 175
    if-lez v4, :cond_8

    .line 176
    .line 177
    add-int/lit8 v4, v4, -0x1

    .line 178
    .line 179
    iput v4, p2, Landroidx/leanback/widget/o;->t:I

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 183
    .line 184
    iput v4, p2, Landroidx/leanback/widget/o;->t:I

    .line 185
    .line 186
    :goto_3
    move-object v4, v5

    .line 187
    :cond_9
    iget v5, p2, Landroidx/leanback/widget/o;->t:I

    .line 188
    .line 189
    if-lez v5, :cond_a

    .line 190
    .line 191
    iget v5, v1, Landroidx/leanback/widget/q;->S:I

    .line 192
    .line 193
    add-int/2addr p4, v5

    .line 194
    goto :goto_2

    .line 195
    :cond_a
    iget v5, v1, Landroidx/leanback/widget/q;->S:I

    .line 196
    .line 197
    sub-int/2addr p4, v5

    .line 198
    goto :goto_2

    .line 199
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 200
    .line 201
    invoke-virtual {v1}, LO1/L;->Q()Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-eqz p2, :cond_c

    .line 206
    .line 207
    iget p2, v1, Landroidx/leanback/widget/q;->z:I

    .line 208
    .line 209
    or-int/lit8 p2, p2, 0x20

    .line 210
    .line 211
    iput p2, v1, Landroidx/leanback/widget/q;->z:I

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 214
    .line 215
    .line 216
    iget p2, v1, Landroidx/leanback/widget/q;->z:I

    .line 217
    .line 218
    and-int/lit8 p2, p2, -0x21

    .line 219
    .line 220
    iput p2, v1, Landroidx/leanback/widget/q;->z:I

    .line 221
    .line 222
    :cond_c
    :goto_5
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p2, Landroidx/leanback/widget/q;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    if-nez p4, :cond_d

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Landroidx/leanback/widget/n;

    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    :goto_6
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p2, Landroidx/leanback/widget/q;

    .line 248
    .line 249
    iget p4, p2, Landroidx/leanback/widget/q;->z:I

    .line 250
    .line 251
    and-int/lit8 v1, p4, 0x3

    .line 252
    .line 253
    if-eq v1, v3, :cond_e

    .line 254
    .line 255
    iget p4, p2, Landroidx/leanback/widget/q;->B:I

    .line 256
    .line 257
    if-ne p1, p4, :cond_10

    .line 258
    .line 259
    iget p1, p2, Landroidx/leanback/widget/q;->C:I

    .line 260
    .line 261
    if-nez p1, :cond_10

    .line 262
    .line 263
    iget-object p1, p2, Landroidx/leanback/widget/q;->E:Landroidx/leanback/widget/o;

    .line 264
    .line 265
    if-nez p1, :cond_10

    .line 266
    .line 267
    invoke-virtual {p2}, Landroidx/leanback/widget/q;->U0()V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_e
    and-int/lit8 v1, p4, 0x4

    .line 272
    .line 273
    if-nez v1, :cond_10

    .line 274
    .line 275
    and-int/lit8 v1, p4, 0x10

    .line 276
    .line 277
    if-nez v1, :cond_f

    .line 278
    .line 279
    iget v1, p2, Landroidx/leanback/widget/q;->B:I

    .line 280
    .line 281
    if-ne p1, v1, :cond_f

    .line 282
    .line 283
    iget v1, p2, Landroidx/leanback/widget/q;->C:I

    .line 284
    .line 285
    if-nez v1, :cond_f

    .line 286
    .line 287
    invoke-virtual {p2}, Landroidx/leanback/widget/q;->U0()V

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_f
    and-int/lit8 p4, p4, 0x10

    .line 292
    .line 293
    if-eqz p4, :cond_10

    .line 294
    .line 295
    iget p2, p2, Landroidx/leanback/widget/q;->B:I

    .line 296
    .line 297
    if-lt p1, p2, :cond_10

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_10

    .line 304
    .line 305
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast p2, Landroidx/leanback/widget/q;

    .line 308
    .line 309
    iput p1, p2, Landroidx/leanback/widget/q;->B:I

    .line 310
    .line 311
    iput v2, p2, Landroidx/leanback/widget/q;->C:I

    .line 312
    .line 313
    iget p1, p2, Landroidx/leanback/widget/q;->z:I

    .line 314
    .line 315
    and-int/lit8 p1, p1, -0x11

    .line 316
    .line 317
    iput p1, p2, Landroidx/leanback/widget/q;->z:I

    .line 318
    .line 319
    invoke-virtual {p2}, Landroidx/leanback/widget/q;->U0()V

    .line 320
    .line 321
    .line 322
    :cond_10
    :goto_7
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast p1, Landroidx/leanback/widget/q;

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/q;->k1(Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    :cond_11
    aput-object v0, p3, v2

    .line 330
    .line 331
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p1, Landroidx/leanback/widget/q;

    .line 334
    .line 335
    iget p2, p1, Landroidx/leanback/widget/q;->r:I

    .line 336
    .line 337
    if-nez p2, :cond_12

    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Landroidx/leanback/widget/q;->Z0(Landroid/view/View;)I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    goto :goto_8

    .line 347
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Landroidx/leanback/widget/q;->Y0(Landroid/view/View;)I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    :goto_8
    return p1
.end method

.method public N(I[LK/l;)LK/l;
    .locals 2

    .line 1
    new-instance v0, LF2/G;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1, v0}, Lf/S;->M([Ljava/lang/Object;ILF2/G;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, LK/l;

    .line 12
    .line 13
    return-object p1
.end method

.method public final O()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/q;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/leanback/widget/q;->t:LO1/Y;

    .line 6
    .line 7
    invoke-virtual {v0}, LO1/Y;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/leanback/widget/q;

    .line 14
    .line 15
    iget v1, v1, Landroidx/leanback/widget/q;->u:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final P(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/q;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/q;->u:I

    .line 6
    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, LO1/L;->s(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/leanback/widget/q;

    .line 15
    .line 16
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 17
    .line 18
    const/high16 v2, 0x40000

    .line 19
    .line 20
    and-int/2addr v1, v2

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, LO1/y;->b(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, v0, Landroidx/leanback/widget/q;->s:LO1/y;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, LO1/y;->d(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_0
    return p1
.end method

.method public final Q(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/q;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/q;->u:I

    .line 6
    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, LO1/L;->s(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Landroidx/leanback/widget/q;->e0:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/q;->B(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Landroidx/leanback/widget/q;->r:I

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method public final R()LY/K;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/u;

    .line 4
    .line 5
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 6
    .line 7
    return-object v0
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/u;

    .line 4
    .line 5
    iget-object v0, v0, LY/u;->P:LY/K;

    .line 6
    .line 7
    invoke-virtual {v0}, LY/K;->L()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final T(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/q;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/q;->u:I

    .line 6
    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, LO1/L;->s(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/leanback/widget/q;

    .line 15
    .line 16
    iget v1, v0, Landroidx/leanback/widget/q;->z:I

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x3

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 24
    .line 25
    iget-object v2, v0, LO1/L;->a:LO1/c;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, LO1/c;->j(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v1, v2, p1}, LO1/L;->E0(Ls1/g;ILandroid/view/View;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/q;->y:Ls1/g;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, LO1/L;->y0(Landroid/view/View;Ls1/g;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final U(I)Lj0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/AudioAttributes$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final a()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, LC0/E;->d(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final synthetic b()V
    .locals 0

    .line 1
    return-void
.end method

.method public build()Landroidx/media/AudioAttributesImpl;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplApi21;

    .line 2
    .line 3
    iget-object v1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, LF/l;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-direct {v2, v0, p1, v3}, LF/l;-><init>(Ljava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final d(Lk/o;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lk/G;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lk/o;->k()Lk/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lk/o;->c(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ll/n;

    .line 16
    .line 17
    iget-object v0, v0, Ll/n;->K:Lk/z;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lk/z;->d(Lk/o;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY/d0;

    .line 4
    .line 5
    invoke-virtual {v0}, LY/d0;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, LB0/M0;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, v3, v0, p1}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final g(Lk/o;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->j0:Ll/q;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p1, Ll/h1;

    .line 10
    .line 11
    iget-object p1, p1, Ll/h1;->G:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->p0:Lm2/u;

    .line 14
    .line 15
    invoke-virtual {p1}, Lm2/u;->K()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final getFlags()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, LC0/E;->c(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final h(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, LA0/C;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, v0, v3, p1, p2}, LA0/C;-><init>(Ljava/lang/Object;IJ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final synthetic i(Lm0/v;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j(LD0/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, LD0/m;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v0, p1, v3}, LD0/m;-><init>(LD0/n;LD0/p;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final k(Landroid/view/View;LN/i0;)LN/i0;
    .locals 5

    .line 1
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->S:LN/i0;

    .line 6
    .line 7
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    iput-object p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->S:LN/i0;

    .line 14
    .line 15
    invoke-virtual {p2}, LN/i0;->d()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-boolean v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->T:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p2, LN/i0;->a:LN/h0;

    .line 42
    .line 43
    invoke-virtual {v0}, LN/h0;->i()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_2
    if-ge v2, v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget-object v4, LN/N;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, LB/d;

    .line 73
    .line 74
    iget-object v3, v3, LB/d;->a:LB/a;

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, LN/h0;->i()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-object p2
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, LD0/B;->access$102(LD0/B;Z)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final m(Lk/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e0:Lk/m;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lk/m;->m(Lk/o;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic n()V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lk/o;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ll/n;

    .line 5
    .line 6
    iget-object v1, v1, Ll/n;->I:Lk/o;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    check-cast v0, Ll/n;

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lk/G;

    .line 16
    .line 17
    iget-object v1, v1, Lk/G;->A:Lk/q;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ll/n;

    .line 28
    .line 29
    iget-object v0, v0, Ll/n;->K:Lk/z;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lk/z;->o(Lk/o;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :cond_1
    return v2
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le0/m;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, LY/m;

    .line 8
    .line 9
    iget-boolean v0, p1, LY/m;->J0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, LY/s;->N()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, LY/m;

    .line 26
    .line 27
    iget-object v0, v0, LY/m;->N0:Landroid/app/Dialog;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string v0, "FragmentManager"

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "DialogFragment "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " setting the content view on "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, LY/m;

    .line 58
    .line 59
    iget-object v2, v2, LY/m;->N0:Landroid/app/Dialog;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, LY/m;

    .line 74
    .line 75
    iget-object v0, v0, LY/m;->N0:Landroid/app/Dialog;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "DialogFragment can not be attached to a container view"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_2
    :goto_0
    return-void
.end method

.method public final p(LD0/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, LD0/m;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v0, p1, v3}, LD0/m;-><init>(LD0/n;LD0/p;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final q(Lk/o;Lk/q;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/i;

    .line 4
    .line 5
    iget-object v0, v0, Lk/i;->M:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lk/i;

    .line 14
    .line 15
    iget-object v0, v0, Lk/i;->O:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    const/4 v3, -0x1

    .line 23
    if-ge v2, v0, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lf/S;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lk/i;

    .line 28
    .line 29
    iget-object v4, v4, Lk/i;->O:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lk/h;

    .line 36
    .line 37
    iget-object v4, v4, Lk/h;->b:Lk/o;

    .line 38
    .line 39
    if-ne p1, v4, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, -0x1

    .line 46
    :goto_1
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lk/i;

    .line 54
    .line 55
    iget-object v0, v0, Lk/i;->O:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ge v2, v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lk/i;

    .line 66
    .line 67
    iget-object v0, v0, Lk/i;->O:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v1, v0

    .line 74
    check-cast v1, Lk/h;

    .line 75
    .line 76
    :cond_3
    move-object v4, v1

    .line 77
    new-instance v0, Lk/g;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v2, v0

    .line 81
    move-object v3, p0

    .line 82
    move-object v5, p2

    .line 83
    move-object v6, p1

    .line 84
    invoke-direct/range {v2 .. v7}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    const-wide/16 v3, 0xc8

    .line 92
    .line 93
    add-long/2addr v1, v3

    .line 94
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Lk/i;

    .line 97
    .line 98
    iget-object p2, p2, Lk/i;->M:Landroid/os/Handler;

    .line 99
    .line 100
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final r(Lk/o;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lk/i;

    .line 4
    .line 5
    iget-object p2, p2, Lk/i;->M:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s(IJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, v2, LD0/n;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v9, LD0/l;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v1, v9

    .line 17
    move v3, p1

    .line 18
    move-wide v4, p2

    .line 19
    move-wide v6, p4

    .line 20
    invoke-direct/range {v1 .. v8}, LD0/l;-><init>(Ljava/lang/Object;IJJI)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lf/S;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ContentInfoCompat{"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf/S;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/view/ContentInfo;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "}"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final u(F)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lf/S;->E()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    float-to-int p1, p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/core/widget/NestedScrollView;->j(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-static {v0}, LD0/B;->access$300(LD0/B;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "DecoderAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio sink error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LD0/B;

    .line 11
    .line 12
    invoke-static {v0}, LD0/B;->access$200(LD0/B;)LD0/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, LD0/j;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v0, p1, v3}, LD0/j;-><init>(LD0/n;Ljava/lang/Exception;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final x()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    return-object v0
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LD0/B;

    .line 4
    .line 5
    invoke-virtual {v0}, LD0/B;->onPositionDiscontinuity()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    return-void
.end method
