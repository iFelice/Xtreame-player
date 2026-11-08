.class public abstract LD1/t;
.super LO1/C;
.source "SourceFile"


# instance fields
.field public I:Ljava/util/List;

.field public final synthetic J:LD1/v;


# direct methods
.method public constructor <init>(LD1/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, LD1/t;->J:LD1/v;

    .line 2
    .line 3
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LD1/t;->I:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, LD1/t;->I:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, LD1/t;->I:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 2

    .line 1
    iget-object p2, p0, LD1/t;->J:LD1/v;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f0e007f

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, LD1/r;

    .line 20
    .line 21
    invoke-direct {p2, p1}, LD1/r;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public f(LD1/r;I)V
    .locals 9

    .line 1
    iget-object v0, p0, LD1/t;->J:LD1/v;

    .line 2
    .line 3
    iget-object v3, v0, LD1/v;->V0:Lm0/Y;

    .line 4
    .line 5
    if-nez v3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, LO1/c0;->G:Landroid/view/View;

    .line 9
    .line 10
    iget-object v1, p1, LD1/r;->b0:Landroid/view/View;

    .line 11
    .line 12
    iget-object p1, p1, LD1/r;->a0:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez p2, :cond_4

    .line 17
    .line 18
    move-object p2, p0

    .line 19
    check-cast p2, LD1/j;

    .line 20
    .line 21
    iget v3, p2, LD1/j;->K:I

    .line 22
    .line 23
    packed-switch v3, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    const v3, 0x7f1300d4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    :goto_0
    iget-object v3, p2, LD1/t;->I:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ge p1, v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p2, LD1/t;->I:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, LD1/s;

    .line 48
    .line 49
    iget-object v5, v3, LD1/s;->a:Lm0/l0;

    .line 50
    .line 51
    iget-object v5, v5, Lm0/l0;->e:[Z

    .line 52
    .line 53
    iget v3, v3, LD1/s;->b:I

    .line 54
    .line 55
    aget-boolean v3, v5, v3

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v2, 0x0

    .line 64
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    new-instance p1, LD1/i;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-direct {p1, p2, v1}, LD1/i;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :pswitch_0
    const v3, 0x7f1300d3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p2, LD1/j;->L:LD1/v;

    .line 84
    .line 85
    iget-object p1, p1, LD1/v;->V0:Lm0/Y;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    check-cast p1, LB0/O;

    .line 91
    .line 92
    invoke-virtual {p1}, LB0/O;->E()Lm0/k0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2, p1}, LD1/j;->g(Lm0/k0;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v2, 0x0

    .line 104
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    new-instance p1, LD1/i;

    .line 108
    .line 109
    invoke-direct {p1, p2, v4}, LD1/i;-><init>(Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    iget-object v5, p0, LD1/t;->I:Ljava/util/List;

    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    sub-int/2addr p2, v6

    .line 120
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    move-object v5, p2

    .line 125
    check-cast v5, LD1/s;

    .line 126
    .line 127
    iget-object p2, v5, LD1/s;->a:Lm0/l0;

    .line 128
    .line 129
    iget-object p2, p2, Lm0/l0;->b:Lm0/g0;

    .line 130
    .line 131
    move-object v7, v3

    .line 132
    check-cast v7, LB0/O;

    .line 133
    .line 134
    invoke-virtual {v7}, LB0/O;->E()Lm0/k0;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget-object v7, v7, Lm0/k0;->D:Lz4/J;

    .line 139
    .line 140
    invoke-virtual {v7, p2}, Lz4/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    if-eqz v7, :cond_5

    .line 145
    .line 146
    iget-object v7, v5, LD1/s;->a:Lm0/l0;

    .line 147
    .line 148
    iget-object v7, v7, Lm0/l0;->e:[Z

    .line 149
    .line 150
    iget v8, v5, LD1/s;->b:I

    .line 151
    .line 152
    aget-boolean v7, v7, v8

    .line 153
    .line 154
    if-eqz v7, :cond_5

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    const/4 v6, 0x0

    .line 158
    :goto_3
    iget-object v7, v5, LD1/s;->c:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    if-eqz v6, :cond_6

    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Lb7/o1;

    .line 170
    .line 171
    const/4 v6, 0x2

    .line 172
    move-object v1, p1

    .line 173
    move-object v2, p0

    .line 174
    move-object v4, p2

    .line 175
    invoke-direct/range {v1 .. v6}, Lb7/o1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    :goto_4
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
