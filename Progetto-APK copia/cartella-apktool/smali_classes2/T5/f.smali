.class public final LT5/f;
.super LV5/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final K:LT5/c;

.field public final L:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/preference/ui/debug/DebugActivity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LF/i;

    .line 5
    .line 6
    invoke-direct {v0, p1}, LF/i;-><init>(Ljava/util/ArrayList;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV5/b;->I:LF/i;

    .line 10
    .line 11
    new-instance p1, LV5/a;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p1, LV5/a;->b:LF/i;

    .line 17
    .line 18
    iput-object p0, p1, LV5/a;->a:LV5/b;

    .line 19
    .line 20
    iput-object p1, p0, LV5/b;->J:LV5/a;

    .line 21
    .line 22
    iput-object p2, p0, LT5/f;->K:LT5/c;

    .line 23
    .line 24
    iput-boolean p3, p0, LT5/f;->L:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 5

    .line 1
    iget-object v0, p0, LV5/b;->I:LF/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LF/i;->m(I)LW5/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, LF/i;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/List;

    .line 10
    .line 11
    iget v3, v1, LW5/b;->a:I

    .line 12
    .line 13
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, LW5/a;

    .line 18
    .line 19
    iget v3, v1, LW5/b;->d:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v3, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, LF/i;->m(I)LW5/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v3, p1, LW5/b;->d:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, v1, LW5/b;->b:I

    .line 36
    .line 37
    iget-object v0, v2, LW5/a;->H:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, LR5/b;

    .line 44
    .line 45
    iget p1, p1, LR5/b;->J:I

    .line 46
    .line 47
    if-ne p1, v4, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x4

    .line 50
    const/4 v3, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x3

    .line 53
    const/4 v3, 0x3

    .line 54
    :goto_0
    return v3
.end method

.method public final c(LO1/c0;I)V
    .locals 4

    .line 1
    iget-object v0, p0, LV5/b;->I:LF/i;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, LF/i;->m(I)LW5/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, v0, LF/i;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    iget v2, v1, LW5/b;->a:I

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, LW5/a;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, LT5/f;->b(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x2

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    check-cast p1, LX5/b;

    .line 27
    .line 28
    check-cast p1, LT5/e;

    .line 29
    .line 30
    iget-object p2, v0, LW5/a;->G:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p1, p1, LT5/e;->b0:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, LV5/b;->J:LV5/a;

    .line 38
    .line 39
    iget-object p1, p1, LV5/a;->b:LF/i;

    .line 40
    .line 41
    iget-object p2, p1, LF/i;->H:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iget-object p1, p1, LF/i;->I:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, [Z

    .line 52
    .line 53
    aget-boolean p1, p1, p2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, p2}, LT5/f;->b(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 v2, 0x3

    .line 61
    if-eq p2, v2, :cond_1

    .line 62
    .line 63
    const/4 v2, 0x4

    .line 64
    if-ne p2, v2, :cond_4

    .line 65
    .line 66
    :cond_1
    check-cast p1, LX5/a;

    .line 67
    .line 68
    iget p2, v1, LW5/b;->b:I

    .line 69
    .line 70
    iget-object v0, v0, LW5/a;->H:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, LR5/b;

    .line 77
    .line 78
    iget v0, p2, LR5/b;->J:I

    .line 79
    .line 80
    iget-object v1, p2, LR5/b;->H:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    iget-boolean v3, p0, LT5/f;->L:Z

    .line 84
    .line 85
    if-ne v0, v2, :cond_3

    .line 86
    .line 87
    check-cast p1, LT5/a;

    .line 88
    .line 89
    iget-object v0, p1, LT5/a;->a0:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p2, LR5/b;->I:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object p1, p1, LT5/a;->b0:Landroid/widget/CheckBox;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    .line 106
    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    move-object v0, p1

    .line 125
    check-cast v0, LT5/d;

    .line 126
    .line 127
    iget-object v2, v0, LT5/d;->a0:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v2, p2, LR5/b;->I:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, ""

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v0, v0, LT5/d;->b0:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    if-eqz v3, :cond_4

    .line 157
    .line 158
    const/4 v1, -0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, LO1/c0;->G:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_0
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const v0, 0x7f0e010e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, LT5/e;

    .line 26
    .line 27
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0b03d5

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p1, p2, LT5/e;->b0:Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object p0, p2, LX5/b;->a0:LV5/b;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const/4 v0, 0x4

    .line 48
    const/4 v2, 0x3

    .line 49
    if-eq p2, v2, :cond_3

    .line 50
    .line 51
    if-ne p2, v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "viewType is not valid"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_1
    const v3, 0x7f0b059d

    .line 63
    .line 64
    .line 65
    const v4, 0x7f0b02b8

    .line 66
    .line 67
    .line 68
    if-eq p2, v2, :cond_5

    .line 69
    .line 70
    if-eq p2, v0, :cond_4

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    move-object p2, p1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const v0, 0x7f0e010c

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, LT5/a;

    .line 91
    .line 92
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object v0, p2, LT5/a;->a0:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/CheckBox;

    .line 108
    .line 109
    iput-object p1, p2, LT5/a;->b0:Landroid/widget/CheckBox;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const v0, 0x7f0e010d

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, LT5/d;

    .line 128
    .line 129
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v0, p2, LT5/d;->a0:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object p1, p2, LT5/d;->b0:Landroid/widget/TextView;

    .line 147
    .line 148
    :goto_2
    return-object p2
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, LV5/b;->I:LF/i;

    .line 2
    .line 3
    iget-object v0, v0, LF/i;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, LV5/b;->J:LV5/a;

    .line 16
    .line 17
    iget-object v2, v1, LV5/a;->b:LF/i;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, LF/i;->m(I)LW5/b;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v2, v2, LF/i;->I:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, [Z

    .line 26
    .line 27
    iget v3, v3, LW5/b;->a:I

    .line 28
    .line 29
    aget-boolean v2, v2, v3

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v2, v1, LV5/a;->b:LF/i;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, LF/i;->m(I)LW5/b;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v2, v2, LF/i;->I:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, [Z

    .line 43
    .line 44
    iget v4, v3, LW5/b;->a:I

    .line 45
    .line 46
    aget-boolean v2, v2, v4

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1, v3}, LV5/a;->a(LW5/b;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1, v3}, LV5/a;->b(LW5/b;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, LO1/C;->G:LO1/D;

    .line 61
    .line 62
    invoke-virtual {v0}, LO1/D;->a()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LR5/b;

    .line 6
    .line 7
    iget v1, v0, LR5/b;->J:I

    .line 8
    .line 9
    invoke-static {v1}, Lu/h;->b(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, v0, LR5/b;->H:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, LT5/f;->K:LT5/c;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    check-cast v3, Lcom/preference/ui/debug/DebugActivity;

    .line 22
    .line 23
    iget-object p1, v3, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 24
    .line 25
    iget-object p1, p1, LP0/j;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, LT5/g;

    .line 28
    .line 29
    check-cast p1, Lcom/preference/ui/debug/DebugActivity;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v1, Lf/k;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lf/k;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const v4, 0x7f0e0076

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const v4, 0x7f0b059e

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/widget/EditText;

    .line 59
    .line 60
    const v6, 0x7f0b02b9

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, LR5/b;->I:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Lf/k;->setView(Landroid/view/View;)Lf/k;

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/google/android/gms/internal/ads/Ub;

    .line 85
    .line 86
    invoke-direct {v2, p1, v0, v4}, Lcom/google/android/gms/internal/ads/Ub;-><init>(Lcom/preference/ui/debug/DebugActivity;LR5/b;Landroid/widget/EditText;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "Save"

    .line 90
    .line 91
    iget-object v0, v1, Lf/k;->a:Lf/g;

    .line 92
    .line 93
    iput-object p1, v0, Lf/g;->f:Ljava/lang/CharSequence;

    .line 94
    .line 95
    iput-object v2, v0, Lf/g;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    .line 97
    const-string p1, "Cancel"

    .line 98
    .line 99
    iput-object p1, v0, Lf/g;->h:Ljava/lang/CharSequence;

    .line 100
    .line 101
    iput-object v5, v0, Lf/g;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    .line 103
    invoke-virtual {v1}, Lf/k;->create()Lf/l;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    .line 112
    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    check-cast v3, Lcom/preference/ui/debug/DebugActivity;

    .line 120
    .line 121
    iget-object v1, v3, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, LR5/b;->G:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {}, LQ5/b;->b()LQ5/b;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v4, v3, LQ5/b;->b:Ljava/util/Map;

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    iget-object v3, v3, LQ5/b;->a:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, v0, LR5/b;->I:Ljava/lang/Object;

    .line 157
    .line 158
    :cond_1
    :goto_0
    return-void
.end method
