.class public final Lcom/google/android/gms/internal/ads/H5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final U:J

.field public static final synthetic V:I


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Landroid/app/Application;

.field public final I:Landroid/os/PowerManager;

.field public final J:Landroid/app/KeyguardManager;

.field public K:Lf/G;

.field public L:Ljava/lang/ref/WeakReference;

.field public final M:Ljava/lang/ref/WeakReference;

.field public final N:Lcom/google/android/gms/internal/ads/P4;

.field public final O:Lo3/z;

.field public P:Z

.field public Q:I

.field public final R:Ljava/util/HashSet;

.field public final S:Landroid/util/DisplayMetrics;

.field public final T:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->f1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/google/android/gms/internal/ads/H5;->U:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo3/z;

    .line 5
    .line 6
    sget-wide v1, Lcom/google/android/gms/internal/ads/H5;->U:J

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lo3/z;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->O:Lo3/z;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/H5;->P:Z

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/H5;->Q:I

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->R:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->G:Landroid/content/Context;

    .line 31
    .line 32
    const-string v1, "window"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/view/WindowManager;

    .line 39
    .line 40
    const-string v2, "power"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/os/PowerManager;

    .line 47
    .line 48
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/H5;->I:Landroid/os/PowerManager;

    .line 49
    .line 50
    const-string v2, "keyguard"

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Landroid/app/KeyguardManager;

    .line 57
    .line 58
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/H5;->J:Landroid/app/KeyguardManager;

    .line 59
    .line 60
    instance-of v2, v0, Landroid/app/Application;

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    check-cast v0, Landroid/app/Application;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->H:Landroid/app/Application;

    .line 67
    .line 68
    new-instance v2, Lcom/google/android/gms/internal/ads/P4;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v2, v0, p0, v3}, Lcom/google/android/gms/internal/ads/P4;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;I)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/H5;->N:Lcom/google/android/gms/internal/ads/P4;

    .line 75
    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->S:Landroid/util/DisplayMetrics;

    .line 85
    .line 86
    new-instance p1, Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->T:Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 112
    .line 113
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->M:Ljava/lang/ref/WeakReference;

    .line 114
    .line 115
    if-eqz p1, :cond_1

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/view/View;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const/4 p1, 0x0

    .line 125
    :goto_0
    if-eqz p1, :cond_2

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->f(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->M:Ljava/lang/ref/WeakReference;

    .line 139
    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/H5;->e(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/H5;->S:Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 9
    .line 10
    div-float/2addr v1, v2

    .line 11
    float-to-int v1, v1

    .line 12
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    int-to-float v3, v3

    .line 15
    div-float/2addr v3, v2

    .line 16
    float-to-int v3, v3

    .line 17
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    int-to-float v4, v4

    .line 20
    div-float/2addr v4, v2

    .line 21
    float-to-int v4, v4

    .line 22
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    div-float/2addr p1, v2

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-direct {v0, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->M:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/View;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne v0, p1, :cond_1

    .line 35
    .line 36
    iput p2, p0, Lcom/google/android/gms/internal/ads/H5;->Q:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/H5;->R:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_17

    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/H5;->M:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz v0, :cond_18

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v4, v0

    .line 24
    check-cast v4, Landroid/view/View;

    .line 25
    .line 26
    new-instance v5, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v8, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    new-array v9, v0, [I

    .line 48
    .line 49
    new-array v10, v0, [I

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    const/4 v12, 0x0

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v4, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v10}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v15, "Failure getting view location."

    .line 75
    .line 76
    invoke-static {v15, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->y4:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    sget-object v15, Ll3/q;->d:Ll3/q;

    .line 82
    .line 83
    iget-object v15, v15, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 84
    .line 85
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    aget v0, v10, v12

    .line 98
    .line 99
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    aget v0, v10, v11

    .line 102
    .line 103
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    aget v0, v9, v12

    .line 107
    .line 108
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    aget v0, v9, v11

    .line 111
    .line 112
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 113
    .line 114
    :goto_1
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    add-int/2addr v9, v0

    .line 121
    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    add-int/2addr v9, v0

    .line 130
    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 131
    .line 132
    move-object v9, v4

    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const/4 v0, 0x0

    .line 135
    move-object v9, v0

    .line 136
    const/4 v13, 0x0

    .line 137
    const/4 v14, 0x0

    .line 138
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->i1:Lcom/google/android/gms/internal/ads/J7;

    .line 139
    .line 140
    sget-object v10, Ll3/q;->d:Ll3/q;

    .line 141
    .line 142
    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 143
    .line 144
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    if-eqz v9, :cond_5

    .line 157
    .line 158
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    :goto_3
    instance-of v15, v10, Landroid/view/View;

    .line 168
    .line 169
    if-eqz v15, :cond_4

    .line 170
    .line 171
    move-object v15, v10

    .line 172
    check-cast v15, Landroid/view/View;

    .line 173
    .line 174
    new-instance v12, Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15}, Landroid/view/View;->isScrollContainer()Z

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    if-eqz v16, :cond_3

    .line 184
    .line 185
    invoke-virtual {v15, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_3

    .line 190
    .line 191
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/H5;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_1
    move-exception v0

    .line 200
    goto :goto_6

    .line 201
    :cond_3
    :goto_4
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 202
    .line 203
    .line 204
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    const/4 v12, 0x0

    .line 206
    goto :goto_3

    .line 207
    :cond_4
    :goto_5
    move-object/from16 v27, v0

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :goto_6
    sget-object v10, Lk3/l;->A:Lk3/l;

    .line 211
    .line 212
    iget-object v10, v10, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 213
    .line 214
    const-string v12, "PositionWatcher.getParentScrollViewRects"

    .line 215
    .line 216
    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    goto :goto_5

    .line 224
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    goto :goto_5

    .line 229
    :goto_7
    if-eqz v9, :cond_6

    .line 230
    .line 231
    invoke-virtual {v9}, Landroid/view/View;->getWindowVisibility()I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    goto :goto_8

    .line 236
    :cond_6
    const/16 v10, 0x8

    .line 237
    .line 238
    :goto_8
    iget v12, v1, Lcom/google/android/gms/internal/ads/H5;->Q:I

    .line 239
    .line 240
    const/4 v15, -0x1

    .line 241
    if-eq v12, v15, :cond_7

    .line 242
    .line 243
    move v10, v12

    .line 244
    :cond_7
    sget-object v12, Lk3/l;->A:Lk3/l;

    .line 245
    .line 246
    iget-object v15, v12, Lk3/l;->c:Lo3/O;

    .line 247
    .line 248
    invoke-static {v9}, Lo3/O;->I(Landroid/view/View;)J

    .line 249
    .line 250
    .line 251
    move-result-wide v16

    .line 252
    sget-object v15, Lcom/google/android/gms/internal/ads/Q7;->Q9:Lcom/google/android/gms/internal/ads/J7;

    .line 253
    .line 254
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 255
    .line 256
    iget-object v11, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 257
    .line 258
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    check-cast v11, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 269
    .line 270
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/H5;->J:Landroid/app/KeyguardManager;

    .line 271
    .line 272
    move-object/from16 v28, v3

    .line 273
    .line 274
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/H5;->I:Landroid/os/PowerManager;

    .line 275
    .line 276
    if-eqz v11, :cond_c

    .line 277
    .line 278
    if-eqz v4, :cond_b

    .line 279
    .line 280
    invoke-static {v9, v3, v15}, Lo3/O;->o(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_b

    .line 285
    .line 286
    if-eqz v13, :cond_a

    .line 287
    .line 288
    if-eqz v14, :cond_9

    .line 289
    .line 290
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->T9:Lcom/google/android/gms/internal/ads/J7;

    .line 291
    .line 292
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Ljava/lang/Integer;

    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    int-to-long v13, v4

    .line 303
    cmp-long v4, v16, v13

    .line 304
    .line 305
    if-ltz v4, :cond_8

    .line 306
    .line 307
    if-nez v10, :cond_8

    .line 308
    .line 309
    :goto_9
    const/4 v4, 0x1

    .line 310
    const/4 v10, 0x0

    .line 311
    :goto_a
    const/4 v13, 0x1

    .line 312
    const/4 v14, 0x1

    .line 313
    goto :goto_b

    .line 314
    :cond_8
    const/4 v4, 0x0

    .line 315
    goto :goto_a

    .line 316
    :cond_9
    const/4 v4, 0x0

    .line 317
    const/4 v13, 0x1

    .line 318
    const/4 v14, 0x0

    .line 319
    goto :goto_b

    .line 320
    :cond_a
    const/4 v4, 0x0

    .line 321
    const/4 v13, 0x0

    .line 322
    goto :goto_b

    .line 323
    :cond_b
    const/4 v4, 0x0

    .line 324
    goto :goto_b

    .line 325
    :cond_c
    if-eqz v4, :cond_b

    .line 326
    .line 327
    invoke-static {v9, v3, v15}, Lo3/O;->o(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_b

    .line 332
    .line 333
    if-eqz v13, :cond_a

    .line 334
    .line 335
    if-eqz v14, :cond_9

    .line 336
    .line 337
    if-nez v10, :cond_8

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :goto_b
    sget-object v11, Lcom/google/android/gms/internal/ads/Q7;->V9:Lcom/google/android/gms/internal/ads/J7;

    .line 341
    .line 342
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    check-cast v11, Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    if-eqz v11, :cond_12

    .line 353
    .line 354
    invoke-static {v9, v3, v15}, Lo3/O;->o(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    const/4 v15, 0x1

    .line 359
    if-eq v15, v11, :cond_d

    .line 360
    .line 361
    const/4 v11, 0x0

    .line 362
    goto :goto_c

    .line 363
    :cond_d
    const/16 v11, 0x40

    .line 364
    .line 365
    :goto_c
    if-eq v15, v13, :cond_e

    .line 366
    .line 367
    const/16 v20, 0x0

    .line 368
    .line 369
    goto :goto_d

    .line 370
    :cond_e
    const/16 v20, 0x8

    .line 371
    .line 372
    :goto_d
    if-eq v15, v14, :cond_f

    .line 373
    .line 374
    const/4 v15, 0x0

    .line 375
    goto :goto_e

    .line 376
    :cond_f
    const/16 v15, 0x10

    .line 377
    .line 378
    :goto_e
    if-nez v10, :cond_10

    .line 379
    .line 380
    const/16 v10, 0x80

    .line 381
    .line 382
    move/from16 v24, v14

    .line 383
    .line 384
    goto :goto_f

    .line 385
    :cond_10
    move/from16 v24, v14

    .line 386
    .line 387
    const/4 v10, 0x0

    .line 388
    :goto_f
    sget-object v14, Lcom/google/android/gms/internal/ads/Q7;->T9:Lcom/google/android/gms/internal/ads/J7;

    .line 389
    .line 390
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    check-cast v0, Ljava/lang/Integer;

    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    move/from16 v22, v13

    .line 401
    .line 402
    int-to-long v13, v0

    .line 403
    cmp-long v0, v16, v13

    .line 404
    .line 405
    if-ltz v0, :cond_11

    .line 406
    .line 407
    const/16 v0, 0x20

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_11
    const/4 v0, 0x0

    .line 411
    :goto_10
    or-int v11, v11, v20

    .line 412
    .line 413
    or-int/2addr v11, v15

    .line 414
    or-int/2addr v10, v11

    .line 415
    or-int/2addr v0, v10

    .line 416
    or-int/2addr v0, v4

    .line 417
    invoke-static {v9, v0}, Lo3/O;->h(Landroid/view/View;I)V

    .line 418
    .line 419
    .line 420
    :goto_11
    const/4 v10, 0x1

    .line 421
    goto :goto_12

    .line 422
    :cond_12
    move/from16 v22, v13

    .line 423
    .line 424
    move/from16 v24, v14

    .line 425
    .line 426
    goto :goto_11

    .line 427
    :goto_12
    if-ne v2, v10, :cond_13

    .line 428
    .line 429
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/H5;->O:Lo3/z;

    .line 430
    .line 431
    invoke-virtual {v0}, Lo3/z;->b()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_13

    .line 436
    .line 437
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/H5;->P:Z

    .line 438
    .line 439
    if-eq v4, v0, :cond_18

    .line 440
    .line 441
    :cond_13
    if-nez v4, :cond_14

    .line 442
    .line 443
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/H5;->P:Z

    .line 444
    .line 445
    if-nez v0, :cond_14

    .line 446
    .line 447
    const/4 v10, 0x1

    .line 448
    if-eq v2, v10, :cond_18

    .line 449
    .line 450
    goto :goto_13

    .line 451
    :cond_14
    const/4 v10, 0x1

    .line 452
    :goto_13
    new-instance v0, Lcom/google/android/gms/internal/ads/F5;

    .line 453
    .line 454
    iget-object v2, v12, Lk3/l;->j:LP3/b;

    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 463
    .line 464
    .line 465
    if-eqz v9, :cond_15

    .line 466
    .line 467
    invoke-virtual {v9}, Landroid/view/View;->isAttachedToWindow()Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-eqz v2, :cond_15

    .line 472
    .line 473
    const/16 v17, 0x1

    .line 474
    .line 475
    goto :goto_14

    .line 476
    :cond_15
    const/16 v17, 0x0

    .line 477
    .line 478
    :goto_14
    if-eqz v9, :cond_16

    .line 479
    .line 480
    invoke-virtual {v9}, Landroid/view/View;->getWindowVisibility()I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    move/from16 v18, v2

    .line 485
    .line 486
    goto :goto_15

    .line 487
    :cond_16
    const/16 v18, 0x8

    .line 488
    .line 489
    :goto_15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/H5;->T:Landroid/graphics/Rect;

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/H5;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 492
    .line 493
    .line 494
    move-result-object v19

    .line 495
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/H5;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 496
    .line 497
    .line 498
    move-result-object v20

    .line 499
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/H5;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 500
    .line 501
    .line 502
    move-result-object v21

    .line 503
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/H5;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 504
    .line 505
    .line 506
    move-result-object v23

    .line 507
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/H5;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 508
    .line 509
    .line 510
    move-result-object v25

    .line 511
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/H5;->S:Landroid/util/DisplayMetrics;

    .line 512
    .line 513
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 514
    .line 515
    move-object/from16 v16, v0

    .line 516
    .line 517
    move/from16 v26, v4

    .line 518
    .line 519
    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/internal/ads/F5;-><init>(ZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;ZLjava/util/List;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-eqz v3, :cond_17

    .line 531
    .line 532
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Lcom/google/android/gms/internal/ads/G5;

    .line 537
    .line 538
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/G5;->F(Lcom/google/android/gms/internal/ads/F5;)V

    .line 539
    .line 540
    .line 541
    goto :goto_16

    .line 542
    :cond_17
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/H5;->P:Z

    .line 543
    .line 544
    :cond_18
    :goto_17
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/Pf;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->L:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->K:Lf/G;

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    new-instance p1, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lf/G;

    .line 49
    .line 50
    const/16 v1, 0xb

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Lf/G;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->K:Lf/G;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/H5;->G:Landroid/content/Context;

    .line 58
    .line 59
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 60
    .line 61
    iget-object v2, v2, Lk3/l;->x:Lo3/G;

    .line 62
    .line 63
    monitor-enter v2

    .line 64
    :try_start_0
    iget-boolean v3, v2, Lo3/G;->c:Z

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    iget-object v1, v2, Lo3/G;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit v2

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->na:Lcom/google/android/gms/internal/ads/J7;

    .line 83
    .line 84
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 85
    .line 86
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v4, 0x21

    .line 103
    .line 104
    if-lt v3, v4, :cond_2

    .line 105
    .line 106
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/Hf;->v(Landroid/content/Context;Lf/G;Landroid/content/IntentFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit v2

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :try_start_2
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    monitor-exit v2

    .line 115
    goto :goto_1

    .line 116
    :goto_0
    monitor-exit v2

    .line 117
    throw p1

    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->H:Landroid/app/Application;

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->N:Lcom/google/android/gms/internal/ads/P4;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_0
    move-exception p1

    .line 129
    const-string v0, "Error registering activity lifecycle callbacks."

    .line 130
    .line 131
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/H5;->L:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->L:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    .line 33
    .line 34
    invoke-static {v2, v1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :catch_1
    move-exception p1

    .line 55
    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    .line 56
    .line 57
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->K:Lf/G;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    :try_start_2
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 65
    .line 66
    iget-object v1, v1, Lk3/l;->x:Lo3/G;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/H5;->G:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v1, v2, p1}, Lo3/G;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    .line 72
    .line 73
    goto :goto_6

    .line 74
    :catch_2
    move-exception p1

    .line 75
    goto :goto_4

    .line 76
    :catch_3
    move-exception p1

    .line 77
    goto :goto_5

    .line 78
    :goto_4
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 79
    .line 80
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 81
    .line 82
    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    .line 83
    .line 84
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_6

    .line 88
    :goto_5
    const-string v1, "Failed trying to unregister the receiver"

    .line 89
    .line 90
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->K:Lf/G;

    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/H5;->H:Landroid/app/Application;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/H5;->N:Lcom/google/android/gms/internal/ads/P4;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_4
    move-exception p1

    .line 106
    const-string v0, "Error registering activity lifecycle callbacks."

    .line 107
    .line 108
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/H5;->b(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/H5;->b(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/H5;->b(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/H5;->b(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/H5;->Q:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->e(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/H5;->Q:I

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/H5;->d()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/H5;->f(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
