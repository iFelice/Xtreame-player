.class public Lo3/P;
.super LF2/G;
.source "SourceFile"


# virtual methods
.method public final Q(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->v4:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x4:Lcom/google/android/gms/internal/ads/J7;

    .line 22
    .line 23
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lh2/a;->o(Landroid/app/Activity;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_1
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 43
    .line 44
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 45
    .line 46
    iget v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 47
    .line 48
    invoke-static {p1, v0}, Lp3/d;->o(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget p2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3, p2}, Lp3/d;->l(Landroid/util/DisplayMetrics;I)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "window"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/view/WindowManager;

    .line 77
    .line 78
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 79
    .line 80
    iget-object v4, v4, Lk3/l;->c:Lo3/O;

    .line 81
    .line 82
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    .line 93
    .line 94
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 95
    .line 96
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v6, "android"

    .line 103
    .line 104
    const-string v7, "status_bar_height"

    .line 105
    .line 106
    const-string v8, "dimen"

    .line 107
    .line 108
    invoke-virtual {v5, v7, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-lez v5, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const/4 v5, 0x0

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 133
    .line 134
    float-to-double v6, p1

    .line 135
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 136
    .line 137
    add-double/2addr v6, v8

    .line 138
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    long-to-int p1, v6

    .line 143
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->t4:Lcom/google/android/gms/internal/ads/J7;

    .line 144
    .line 145
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    mul-int v1, v1, p1

    .line 156
    .line 157
    add-int/2addr v0, v5

    .line 158
    sub-int/2addr v3, v0

    .line 159
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const/4 v0, 0x1

    .line 164
    if-gt p1, v1, :cond_3

    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    const/4 p1, 0x0

    .line 169
    :goto_1
    if-eqz p1, :cond_5

    .line 170
    .line 171
    sub-int/2addr v4, p2

    .line 172
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-gt p1, v1, :cond_4

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    return v0

    .line 180
    :cond_5
    const/4 v2, 0x1

    .line 181
    :goto_2
    return v2
.end method
