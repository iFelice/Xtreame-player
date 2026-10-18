.class public final LX1/h;
.super LX1/q;
.source "SourceFile"


# static fields
.field public static final e0:[Ljava/lang/String;


# instance fields
.field public final d0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:visibility:visibility"

    .line 2
    .line 3
    const-string v1, "android:visibility:parent"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LX1/h;->e0:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LX1/q;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LX1/h;->d0:I

    .line 5
    .line 6
    return-void
.end method

.method public static I(LX1/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, LX1/x;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LX1/x;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "android:visibility:visibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LX1/x;->b:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "android:visibility:parent"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    iget-object p0, p0, LX1/x;->b:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 35
    .line 36
    .line 37
    const-string p0, "android:visibility:screenLocation"

    .line 38
    .line 39
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static K(LX1/x;LX1/x;)LX1/E;
    .locals 8

    .line 1
    new-instance v0, LX1/E;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, LX1/E;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, LX1/E;->b:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    const-string v4, "android:visibility:parent"

    .line 14
    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, LX1/x;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v7, v0, LX1/E;->c:I

    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object v6, v0, LX1/E;->e:Landroid/view/ViewGroup;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v3, v0, LX1/E;->c:I

    .line 49
    .line 50
    iput-object v2, v0, LX1/E;->e:Landroid/view/ViewGroup;

    .line 51
    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v6, p1, LX1/x;->a:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v0, LX1/E;->d:I

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    iput-object v2, v0, LX1/E;->f:Landroid/view/ViewGroup;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iput v3, v0, LX1/E;->d:I

    .line 84
    .line 85
    iput-object v2, v0, LX1/E;->f:Landroid/view/ViewGroup;

    .line 86
    .line 87
    :goto_1
    const/4 v2, 0x1

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget p0, v0, LX1/E;->c:I

    .line 93
    .line 94
    iget p1, v0, LX1/E;->d:I

    .line 95
    .line 96
    if-ne p0, p1, :cond_2

    .line 97
    .line 98
    iget-object v3, v0, LX1/E;->e:Landroid/view/ViewGroup;

    .line 99
    .line 100
    iget-object v4, v0, LX1/E;->f:Landroid/view/ViewGroup;

    .line 101
    .line 102
    if-ne v3, v4, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    if-eq p0, p1, :cond_4

    .line 106
    .line 107
    if-nez p0, :cond_3

    .line 108
    .line 109
    iput-boolean v1, v0, LX1/E;->b:Z

    .line 110
    .line 111
    iput-boolean v2, v0, LX1/E;->a:Z

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    if-nez p1, :cond_8

    .line 115
    .line 116
    iput-boolean v2, v0, LX1/E;->b:Z

    .line 117
    .line 118
    iput-boolean v2, v0, LX1/E;->a:Z

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iget-object p0, v0, LX1/E;->f:Landroid/view/ViewGroup;

    .line 122
    .line 123
    if-nez p0, :cond_5

    .line 124
    .line 125
    iput-boolean v1, v0, LX1/E;->b:Z

    .line 126
    .line 127
    iput-boolean v2, v0, LX1/E;->a:Z

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    iget-object p0, v0, LX1/E;->e:Landroid/view/ViewGroup;

    .line 131
    .line 132
    if-nez p0, :cond_8

    .line 133
    .line 134
    iput-boolean v2, v0, LX1/E;->b:Z

    .line 135
    .line 136
    iput-boolean v2, v0, LX1/E;->a:Z

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    if-nez p0, :cond_7

    .line 140
    .line 141
    iget p0, v0, LX1/E;->d:I

    .line 142
    .line 143
    if-nez p0, :cond_7

    .line 144
    .line 145
    iput-boolean v2, v0, LX1/E;->b:Z

    .line 146
    .line 147
    iput-boolean v2, v0, LX1/E;->a:Z

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    if-nez p1, :cond_8

    .line 151
    .line 152
    iget p0, v0, LX1/E;->c:I

    .line 153
    .line 154
    if-nez p0, :cond_8

    .line 155
    .line 156
    iput-boolean v1, v0, LX1/E;->b:Z

    .line 157
    .line 158
    iput-boolean v2, v0, LX1/E;->a:Z

    .line 159
    .line 160
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, p3

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v1, LX1/z;->a:LX1/B;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, LX1/A;->j(Landroid/view/View;F)V

    .line 11
    .line 12
    .line 13
    sget-object p2, LX1/z;->d:Ll/b1;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [F

    .line 17
    .line 18
    aput p3, v1, v0

    .line 19
    .line 20
    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance p3, LO1/n;

    .line 25
    .line 26
    invoke-direct {p3, p1}, LO1/n;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    new-instance p3, LX1/g;

    .line 33
    .line 34
    invoke-direct {p3, v0, p0, p1}, LX1/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, LX1/q;->a(LX1/p;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public final d(LX1/x;)V
    .locals 0

    .line 1
    invoke-static {p1}, LX1/h;->I(LX1/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(LX1/x;)V
    .locals 2

    .line 1
    invoke-static {p1}, LX1/h;->I(LX1/x;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LX1/x;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p1, p1, LX1/x;->b:Landroid/view/View;

    .line 7
    .line 8
    sget-object v1, LX1/z;->a:LX1/B;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, LX1/A;->g(Landroid/view/View;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "android:fade:transitionAlpha"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final l(Landroid/view/ViewGroup;LX1/x;LX1/x;)Landroid/animation/Animator;
    .locals 11

    .line 1
    invoke-static {p2, p3}, LX1/h;->K(LX1/x;LX1/x;)LX1/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, LX1/E;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_17

    .line 9
    .line 10
    iget-object v1, v0, LX1/E;->e:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, LX1/E;->f:Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v1, :cond_17

    .line 17
    .line 18
    :cond_0
    iget-boolean v1, v0, LX1/E;->b:Z

    .line 19
    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    const-string v4, "android:fade:transitionAlpha"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    iget p1, p0, LX1/h;->d0:I

    .line 30
    .line 31
    and-int/2addr p1, v7

    .line 32
    if-ne p1, v7, :cond_17

    .line 33
    .line 34
    if-nez p3, :cond_1

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_1
    if-nez p2, :cond_2

    .line 39
    .line 40
    iget-object p1, p3, LX1/x;->b:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v6}, LX1/q;->o(Landroid/view/View;Z)LX1/x;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, p1, v6}, LX1/q;->r(Landroid/view/View;Z)LX1/x;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, LX1/h;->K(LX1/x;LX1/x;)LX1/E;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-boolean p1, p1, LX1/E;->a:Z

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_2
    iget-object p1, p3, LX1/x;->b:Landroid/view/View;

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget-object p2, p2, LX1/x;->a:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/Float;

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 p2, 0x0

    .line 86
    :goto_0
    cmpl-float p3, p2, v3

    .line 87
    .line 88
    if-nez p3, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v5, p2

    .line 92
    :goto_1
    invoke-virtual {p0, p1, v5, v3}, LX1/h;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto/16 :goto_9

    .line 97
    .line 98
    :cond_5
    iget v0, v0, LX1/E;->d:I

    .line 99
    .line 100
    iget v1, p0, LX1/h;->d0:I

    .line 101
    .line 102
    const/4 v8, 0x2

    .line 103
    and-int/2addr v1, v8

    .line 104
    if-eq v1, v8, :cond_6

    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_6
    if-eqz p2, :cond_7

    .line 109
    .line 110
    iget-object v1, p2, LX1/x;->b:Landroid/view/View;

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    move-object v1, v2

    .line 114
    :goto_2
    if-eqz p3, :cond_8

    .line 115
    .line 116
    iget-object p3, p3, LX1/x;->b:Landroid/view/View;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    move-object p3, v2

    .line 120
    :goto_3
    if-eqz p3, :cond_c

    .line 121
    .line 122
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-nez v9, :cond_9

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_9
    const/4 v9, 0x4

    .line 130
    if-ne v0, v9, :cond_a

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_a
    if-ne v1, p3, :cond_b

    .line 134
    .line 135
    :goto_4
    move-object v1, v2

    .line 136
    goto :goto_8

    .line 137
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Landroid/view/View;

    .line 142
    .line 143
    invoke-static {p1, v1, p3}, LX1/w;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/widget/ImageView;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :goto_5
    move-object p3, v2

    .line 148
    goto :goto_8

    .line 149
    :cond_c
    :goto_6
    if-eqz p3, :cond_d

    .line 150
    .line 151
    :goto_7
    move-object v1, p3

    .line 152
    goto :goto_5

    .line 153
    :cond_d
    if-eqz v1, :cond_11

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    if-nez p3, :cond_e

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    instance-of p3, p3, Landroid/view/View;

    .line 167
    .line 168
    if-eqz p3, :cond_11

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    check-cast p3, Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {p0, p3, v7}, LX1/q;->r(Landroid/view/View;Z)LX1/x;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {p0, p3, v7}, LX1/q;->o(Landroid/view/View;Z)LX1/x;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-static {v9, v10}, LX1/h;->K(LX1/x;LX1/x;)LX1/E;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    iget-boolean v9, v9, LX1/E;->a:Z

    .line 189
    .line 190
    if-nez v9, :cond_f

    .line 191
    .line 192
    invoke-static {p1, v1, p3}, LX1/w;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/widget/ImageView;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    goto :goto_7

    .line 197
    :cond_f
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-nez v1, :cond_10

    .line 202
    .line 203
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    const/4 v1, -0x1

    .line 208
    if-eq p3, v1, :cond_10

    .line 209
    .line 210
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    :cond_10
    move-object v1, v2

    .line 214
    goto :goto_5

    .line 215
    :cond_11
    move-object p3, v2

    .line 216
    move-object v1, p3

    .line 217
    :goto_8
    if-eqz v1, :cond_14

    .line 218
    .line 219
    if-eqz p2, :cond_14

    .line 220
    .line 221
    iget-object p2, p2, LX1/x;->a:Ljava/util/HashMap;

    .line 222
    .line 223
    const-string p3, "android:visibility:screenLocation"

    .line 224
    .line 225
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    check-cast p3, [I

    .line 230
    .line 231
    aget v0, p3, v6

    .line 232
    .line 233
    aget p3, p3, v7

    .line 234
    .line 235
    new-array v2, v8, [I

    .line 236
    .line 237
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    .line 239
    .line 240
    aget v6, v2, v6

    .line 241
    .line 242
    sub-int/2addr v0, v6

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    sub-int/2addr v0, v6

    .line 248
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 249
    .line 250
    .line 251
    aget v0, v2, v7

    .line 252
    .line 253
    sub-int/2addr p3, v0

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    sub-int/2addr p3, v0

    .line 259
    invoke-virtual {v1, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 260
    .line 261
    .line 262
    new-instance p3, LD0/U;

    .line 263
    .line 264
    invoke-direct {p3, p1}, LD0/U;-><init>(Landroid/view/ViewGroup;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p3, LD0/U;->H:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast p1, Landroid/view/ViewGroupOverlay;

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    sget-object p1, LX1/z;->a:LX1/B;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Ljava/lang/Float;

    .line 284
    .line 285
    if-eqz p1, :cond_12

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    :cond_12
    invoke-virtual {p0, v1, v3, v5}, LX1/h;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    if-nez v2, :cond_13

    .line 296
    .line 297
    invoke-virtual {p3, v1}, LD0/U;->B(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_13
    new-instance p1, LN/T;

    .line 302
    .line 303
    invoke-direct {p1, p0, p3, v1, v7}, LN/T;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_14
    if-eqz p3, :cond_17

    .line 311
    .line 312
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    invoke-static {p3, v6}, LX1/z;->b(Landroid/view/View;I)V

    .line 317
    .line 318
    .line 319
    sget-object v1, LX1/z;->a:LX1/B;

    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    if-eqz p2, :cond_15

    .line 325
    .line 326
    iget-object p2, p2, LX1/x;->a:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    check-cast p2, Ljava/lang/Float;

    .line 333
    .line 334
    if-eqz p2, :cond_15

    .line 335
    .line 336
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    :cond_15
    invoke-virtual {p0, p3, v3, v5}, LX1/h;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    if-eqz v2, :cond_16

    .line 345
    .line 346
    new-instance p1, LX1/D;

    .line 347
    .line 348
    invoke-direct {p1, v0, p3}, LX1/D;-><init>(ILandroid/view/View;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p1}, LX1/q;->a(LX1/p;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_16
    invoke-static {p3, p1}, LX1/z;->b(Landroid/view/View;I)V

    .line 362
    .line 363
    .line 364
    :cond_17
    :goto_9
    return-object v2
.end method

.method public final bridge synthetic q()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, LX1/h;->e0:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(LX1/x;LX1/x;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object v1, p2, LX1/x;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v2, "android:visibility:visibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v3, p1, LX1/x;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1, p2}, LX1/h;->K(LX1/x;LX1/x;)LX1/E;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-boolean p2, p1, LX1/E;->a:Z

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget p2, p1, LX1/E;->c:I

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget p1, p1, LX1/E;->d:I

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    :cond_3
    :goto_0
    return v0
.end method
