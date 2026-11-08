.class public final Ll/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LB0/x;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ll/s;->b:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ll/s;->c:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ll/s;->d:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Ll/s;->e:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Ll/s;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ll/s;->a:I

    .line 3
    iput-object p1, p0, Ll/s;->b:Ljava/lang/Object;

    .line 4
    invoke-static {}, Ll/y;->a()Ll/y;

    move-result-object p1

    iput-object p1, p0, Ll/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(JLp0/E;)V
    .locals 6

    .line 1
    iget v0, p0, Ll/s;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/PriorityQueue;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Ll/s;->a:I

    .line 17
    .line 18
    if-lt v0, v2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/util/PriorityQueue;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lq0/t;

    .line 29
    .line 30
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 31
    .line 32
    iget-wide v2, v0, Lq0/t;->H:J

    .line 33
    .line 34
    cmp-long v0, p1, v2

    .line 35
    .line 36
    if-gez v0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Ll/s;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    new-instance v0, Lp0/E;

    .line 51
    .line 52
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lp0/E;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v2}, Lp0/E;->I(I)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p3, Lp0/E;->a:[B

    .line 70
    .line 71
    iget p3, p3, Lp0/E;->b:I

    .line 72
    .line 73
    iget-object v3, v0, Lp0/E;->a:[B

    .line 74
    .line 75
    invoke-virtual {v0}, Lp0/E;->a()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static {v2, p3, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p0, Ll/s;->f:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p3, Lq0/t;

    .line 86
    .line 87
    if-eqz p3, :cond_2

    .line 88
    .line 89
    iget-wide v2, p3, Lq0/t;->H:J

    .line 90
    .line 91
    cmp-long v4, p1, v2

    .line 92
    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    iget-object p1, p3, Lq0/t;->G:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    iget-object p3, p0, Ll/s;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p3, Ljava/util/ArrayDeque;

    .line 104
    .line 105
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_3

    .line 110
    .line 111
    new-instance p3, Lq0/t;

    .line 112
    .line 113
    invoke-direct {p3}, Lq0/t;-><init>()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iget-object p3, p0, Ll/s;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p3, Ljava/util/ArrayDeque;

    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    check-cast p3, Lq0/t;

    .line 126
    .line 127
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    cmp-long v4, p1, v2

    .line 136
    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    :cond_4
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p3, Lq0/t;->G:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 150
    .line 151
    .line 152
    iput-wide p1, p3, Lq0/t;->H:J

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Ll/s;->e:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, Ljava/util/PriorityQueue;

    .line 160
    .line 161
    invoke-virtual {p1, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    iput-object p3, p0, Ll/s;->f:Ljava/lang/Object;

    .line 165
    .line 166
    iget p1, p0, Ll/s;->a:I

    .line 167
    .line 168
    if-eq p1, v1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Ll/s;->c(I)V

    .line 171
    .line 172
    .line 173
    :cond_5
    return-void

    .line 174
    :cond_6
    :goto_2
    iget-object v0, p0, Ll/s;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lq0/u;

    .line 177
    .line 178
    check-cast v0, LB0/x;

    .line 179
    .line 180
    invoke-virtual {v0, p1, p2, p3}, LB0/x;->e(JLp0/E;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Ll/s;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x15

    .line 14
    .line 15
    if-le v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Ll/s;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Ll/e1;

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v2, v3, :cond_5

    .line 25
    .line 26
    :goto_0
    iget-object v2, p0, Ll/s;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ll/e1;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Ll/e1;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ll/e1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Ll/s;->f:Ljava/lang/Object;

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Ll/s;->f:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ll/e1;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    iput-object v4, v2, Ll/e1;->d:Ljava/lang/Object;

    .line 46
    .line 47
    iput-boolean v3, v2, Ll/e1;->c:Z

    .line 48
    .line 49
    iput-object v4, v2, Ll/e1;->e:Ljava/lang/Object;

    .line 50
    .line 51
    iput-boolean v3, v2, Ll/e1;->b:Z

    .line 52
    .line 53
    sget-object v3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 54
    .line 55
    invoke-static {v0}, LN/E;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iput-boolean v4, v2, Ll/e1;->c:Z

    .line 63
    .line 64
    iput-object v3, v2, Ll/e1;->d:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_2
    invoke-static {v0}, LN/E;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    iput-boolean v4, v2, Ll/e1;->b:Z

    .line 73
    .line 74
    iput-object v3, v2, Ll/e1;->e:Ljava/lang/Object;

    .line 75
    .line 76
    :cond_3
    iget-boolean v3, v2, Ll/e1;->c:Z

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    iget-boolean v3, v2, Ll/e1;->b:Z

    .line 81
    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v2, v0}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5
    iget-object v2, p0, Ll/s;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Ll/e1;

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v2, v0}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    iget-object v2, p0, Ll/s;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Ll/e1;

    .line 109
    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v2, v0}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 117
    .line 118
    .line 119
    :cond_7
    :goto_1
    return-void
.end method

.method public final c(I)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/PriorityQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le v0, p1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/PriorityQueue;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lq0/t;

    .line 20
    .line 21
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_1
    iget-object v2, v0, Lq0/t;->G:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, v0, Lq0/t;->G:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-ge v1, v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Ll/s;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lq0/u;

    .line 37
    .line 38
    iget-wide v4, v0, Lq0/t;->H:J

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lp0/E;

    .line 45
    .line 46
    check-cast v2, LB0/x;

    .line 47
    .line 48
    invoke-virtual {v2, v4, v5, v6}, LB0/x;->e(JLp0/E;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Ll/s;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/util/ArrayDeque;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lp0/E;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Ll/s;->f:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lq0/t;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    iget-wide v1, v1, Lq0/t;->H:J

    .line 77
    .line 78
    iget-wide v3, v0, Lq0/t;->H:J

    .line 79
    .line 80
    cmp-long v5, v1, v3

    .line 81
    .line 82
    if-nez v5, :cond_1

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Ll/s;->f:Ljava/lang/Object;

    .line 86
    .line 87
    :cond_1
    iget-object v1, p0, Ll/s;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Ljava/util/ArrayDeque;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ll/e1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Ll/e1;

    .line 9
    .line 10
    iget-object v0, v0, Ll/e1;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 1
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ll/e1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Ll/e1;

    .line 9
    .line 10
    iget-object v0, v0, Ll/e1;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Ll/s;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Le/a;->z:[I

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    invoke-static {v2, p1, v3, p2, v7}, Lm2/u;->J(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lm2/u;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v4, v8, Lm2/u;->I:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v5, v4

    .line 24
    check-cast v5, Landroid/content/res/TypedArray;

    .line 25
    .line 26
    move-object v4, p1

    .line 27
    move v6, p2

    .line 28
    invoke-static/range {v1 .. v6}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v8, v7}, Lm2/u;->F(I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p2, -0x1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v8, v7, p2}, Lm2/u;->z(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Ll/s;->a:I

    .line 43
    .line 44
    iget-object p1, p0, Ll/s;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ll/y;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    check-cast v1, Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v2, p0, Ll/s;->a:I

    .line 56
    .line 57
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v3, p1, Ll/y;->a:Ll/V0;

    .line 59
    .line 60
    invoke-virtual {v3, v1, v2}, Ll/V0;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    monitor-exit p1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ll/s;->i(Landroid/content/res/ColorStateList;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catchall_1
    move-exception p2

    .line 75
    monitor-exit p1

    .line 76
    throw p2

    .line 77
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 78
    invoke-virtual {v8, p1}, Lm2/u;->F(I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v2, 0x15

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    move-object v1, v0

    .line 87
    check-cast v1, Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v8, p1}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    invoke-static {v1, v3}, LN/E;->i(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 96
    .line 97
    .line 98
    if-ne v4, v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v1}, LN/E;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-nez v4, :cond_2

    .line 109
    .line 110
    invoke-static {v1}, LN/E;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const/4 v4, 0x0

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 120
    :goto_2
    if-eqz v3, :cond_4

    .line 121
    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    const/4 v1, 0x2

    .line 141
    invoke-virtual {v8, v1}, Lm2/u;->F(I)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_8

    .line 146
    .line 147
    check-cast v0, Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {v8, v1, p2}, Lm2/u;->x(II)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-static {p2, v1}, Ll/t0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    invoke-static {v0, p2}, LN/E;->j(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 161
    .line 162
    .line 163
    if-ne v1, v2, :cond_8

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-static {v0}, LN/E;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-nez v1, :cond_5

    .line 174
    .line 175
    invoke-static {v0}, LN/E;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    :cond_5
    const/4 v7, 0x1

    .line 182
    :cond_6
    if-eqz p2, :cond_8

    .line 183
    .line 184
    if-eqz v7, :cond_8

    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_7

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 197
    .line 198
    .line 199
    :cond_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .line 201
    .line 202
    :cond_8
    invoke-virtual {v8}, Lm2/u;->P()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :goto_3
    invoke-virtual {v8}, Lm2/u;->P()V

    .line 207
    .line 208
    .line 209
    throw p1
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ll/s;->a:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ll/s;->i(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ll/s;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iput p1, p0, Ll/s;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ll/s;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ll/y;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ll/s;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v2, v0, Ll/y;->a:Ll/V0;

    .line 19
    .line 20
    invoke-virtual {v2, v1, p1}, Ll/V0;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0

    .line 28
    throw p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Ll/s;->i(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ll/s;->b()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Ll/s;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ll/e1;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ll/e1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ll/s;->d:Ljava/lang/Object;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ll/s;->d:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Ll/e1;

    .line 21
    .line 22
    iput-object p1, v1, Ll/e1;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ll/e1;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, v0, Ll/e1;->c:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Ll/s;->d:Ljava/lang/Object;

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Ll/s;->b()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Ll/s;->a:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ll/s;->c(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll/e1;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ll/e1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ll/e1;

    .line 18
    .line 19
    iput-object p1, v0, Ll/e1;->d:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, v0, Ll/e1;->c:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Ll/s;->b()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll/e1;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ll/e1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ll/s;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ll/e1;

    .line 18
    .line 19
    iput-object p1, v0, Ll/e1;->e:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, v0, Ll/e1;->b:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Ll/s;->b()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
