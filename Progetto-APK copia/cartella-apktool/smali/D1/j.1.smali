.class public final LD1/j;
.super LD1/t;
.source "SourceFile"


# instance fields
.field public final synthetic K:I

.field public final synthetic L:LD1/v;


# direct methods
.method public synthetic constructor <init>(LD1/v;I)V
    .locals 0

    .line 1
    iput p2, p0, LD1/j;->K:I

    iput-object p1, p0, LD1/j;->L:LD1/v;

    invoke-direct {p0, p1}, LD1/t;-><init>(LD1/v;)V

    return-void
.end method

.method public synthetic constructor <init>(LD1/v;II)V
    .locals 0

    .line 2
    iput p2, p0, LD1/j;->K:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, LD1/j;-><init>(LD1/v;I)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p3}, LD1/j;-><init>(LD1/v;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(LO1/c0;I)V
    .locals 1

    .line 1
    iget v0, p0, LD1/j;->K:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, LD1/r;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, LD1/j;->f(LD1/r;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, LD1/r;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, LD1/j;->f(LD1/r;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(LD1/r;I)V
    .locals 1

    .line 1
    iget v0, p0, LD1/j;->K:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, LD1/t;->f(LD1/r;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, LD1/t;->f(LD1/r;I)V

    .line 11
    .line 12
    .line 13
    if-lez p2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, LD1/t;->I:Ljava/util/List;

    .line 16
    .line 17
    add-int/lit8 p2, p2, -0x1

    .line 18
    .line 19
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, LD1/s;

    .line 24
    .line 25
    iget-object v0, p2, LD1/s;->a:Lm0/l0;

    .line 26
    .line 27
    iget-object v0, v0, Lm0/l0;->e:[Z

    .line 28
    .line 29
    iget p2, p2, LD1/s;->b:I

    .line 30
    .line 31
    aget-boolean p2, v0, p2

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x4

    .line 38
    :goto_0
    iget-object p1, p1, LD1/r;->b0:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lm0/k0;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LD1/t;->I:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, LD1/t;->I:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, LD1/s;

    .line 18
    .line 19
    iget-object v2, v2, LD1/s;->a:Lm0/l0;

    .line 20
    .line 21
    iget-object v2, v2, Lm0/l0;->b:Lm0/g0;

    .line 22
    .line 23
    iget-object v3, p1, Lm0/k0;->D:Lz4/J;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Lz4/J;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method

.method public final h(Lz4/d0;)V
    .locals 6

    .line 1
    iget v0, p0, LD1/j;->K:I

    .line 2
    .line 3
    iget-object v1, p0, LD1/j;->L:LD1/v;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v4, p1, Lz4/d0;->J:I

    .line 12
    .line 13
    if-ge v0, v4, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, LD1/s;

    .line 20
    .line 21
    iget-object v5, v4, LD1/s;->a:Lm0/l0;

    .line 22
    .line 23
    iget-object v5, v5, Lm0/l0;->e:[Z

    .line 24
    .line 25
    iget v4, v4, LD1/s;->b:I

    .line 26
    .line 27
    aget-boolean v4, v5, v4

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget-object v0, v1, LD1/v;->l0:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object v3, v1, LD1/v;->N0:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v3, v1, LD1/v;->O0:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v0, v1, LD1/v;->P0:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    iget-object v0, v1, LD1/v;->Q0:Ljava/lang/String;

    .line 56
    .line 57
    :goto_3
    iget-object v1, v1, LD1/v;->l0:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    iput-object p1, p0, LD1/t;->I:Ljava/util/List;

    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_0
    iput-object p1, p0, LD1/t;->I:Ljava/util/List;

    .line 66
    .line 67
    iget-object v0, v1, LD1/v;->V0:Lm0/Y;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    check-cast v0, LB0/O;

    .line 73
    .line 74
    invoke-virtual {v0}, LB0/O;->E()Lm0/k0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-object v5, v1, LD1/v;->R:LD1/q;

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const v0, 0x7f1300d4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v5, v3, p1}, LD1/q;->f(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    invoke-virtual {p0, v0}, LD1/j;->g(Lm0/k0;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const v0, 0x7f1300d3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v5, v3, p1}, LD1/q;->f(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_6
    :goto_4
    iget v0, p1, Lz4/d0;->J:I

    .line 123
    .line 124
    if-ge v2, v0, :cond_8

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, LD1/s;

    .line 131
    .line 132
    iget-object v1, v0, LD1/s;->a:Lm0/l0;

    .line 133
    .line 134
    iget-object v1, v1, Lm0/l0;->e:[Z

    .line 135
    .line 136
    iget v4, v0, LD1/s;->b:I

    .line 137
    .line 138
    aget-boolean v1, v1, v4

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    iget-object p1, v0, LD1/s;->c:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v5, v3, p1}, LD1/q;->f(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_8
    :goto_5
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
