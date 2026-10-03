.class public final Lf/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final G:Landroid/view/Window$Callback;

.field public H:Z

.field public I:Z

.field public J:Z

.field public final synthetic K:Lf/K;


# direct methods
.method public constructor <init>(Lf/K;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf/E;->K:Lf/K;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Window callback may not be null"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lf/E;->H:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lf/E;->H:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, Lf/E;->H:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/E;->I:Z

    .line 2
    .line 3
    iget-object v1, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lf/E;->K:Lf/K;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lf/K;->t(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lf/E;->K:Lf/K;

    .line 15
    .line 16
    invoke-virtual {v2}, Lf/K;->A()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lf/K;->U:Lf/X;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    iget-object v3, v3, Lf/X;->U:Lf/W;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v3, v3, Lf/W;->J:Lk/o;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eq v5, v1, :cond_1

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v5, 0x0

    .line 50
    :goto_0
    invoke-virtual {v3, v5}, Lk/o;->setQwertyMode(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0, p1, v4}, Lk/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    iget-object v0, v2, Lf/K;->t0:Lf/J;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v2, v0, v3, p1}, Lf/K;->F(Lf/J;ILandroid/view/KeyEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object p1, v2, Lf/K;->t0:Lf/J;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iput-boolean v1, p1, Lf/J;->l:Z

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-object v0, v2, Lf/K;->t0:Lf/J;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lf/K;->z(I)Lf/J;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2, v0, p1}, Lf/K;->G(Lf/J;Landroid/view/KeyEvent;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v2, v0, v3, p1}, Lf/K;->F(Lf/J;ILandroid/view/KeyEvent;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput-boolean v4, v0, Lf/J;->k:Z

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    const/4 v1, 0x0

    .line 106
    :cond_5
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lj/n;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lj/m;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(Landroid/view/ActionMode$Callback;)Lj/f;
    .locals 9

    .line 1
    new-instance v0, Lm2/i;

    .line 2
    .line 3
    iget-object v1, p0, Lf/E;->K:Lf/K;

    .line 4
    .line 5
    iget-object v2, v1, Lf/K;->Q:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v2, p1}, Lm2/i;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Lf/K;->a0:Lj/b;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lj/b;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p1, Lf/A;

    .line 18
    .line 19
    invoke-direct {p1, v1, v0}, Lf/A;-><init>(Lf/K;Lm2/i;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lf/K;->A()V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Lf/K;->U:Lf/X;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    iget-object v6, v2, Lf/X;->U:Lf/W;

    .line 33
    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v6}, Lf/W;->a()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v6, v2, Lf/X;->O:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 40
    .line 41
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v6, v2, Lf/X;->R:Landroidx/appcompat/widget/ActionBarContextView;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lf/W;

    .line 50
    .line 51
    iget-object v7, v2, Lf/X;->R:Landroidx/appcompat/widget/ActionBarContextView;

    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-direct {v6, v2, v7, p1}, Lf/W;-><init>(Lf/X;Landroid/content/Context;Lf/A;)V

    .line 58
    .line 59
    .line 60
    iget-object v7, v6, Lf/W;->J:Lk/o;

    .line 61
    .line 62
    invoke-virtual {v7}, Lk/o;->w()V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v8, v6, Lf/W;->K:Lj/a;

    .line 66
    .line 67
    invoke-interface {v8, v6, v7}, Lj/a;->f(Lj/b;Lk/o;)Z

    .line 68
    .line 69
    .line 70
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v7}, Lk/o;->v()V

    .line 72
    .line 73
    .line 74
    if-eqz v8, :cond_2

    .line 75
    .line 76
    iput-object v6, v2, Lf/X;->U:Lf/W;

    .line 77
    .line 78
    invoke-virtual {v6}, Lf/W;->h()V

    .line 79
    .line 80
    .line 81
    iget-object v7, v2, Lf/X;->R:Landroidx/appcompat/widget/ActionBarContextView;

    .line 82
    .line 83
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/b;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4}, Lf/X;->G0(Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move-object v6, v5

    .line 91
    :goto_0
    iput-object v6, v1, Lf/K;->a0:Lj/b;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    invoke-virtual {v7}, Lk/o;->v()V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    :goto_1
    iget-object v2, v1, Lf/K;->a0:Lj/b;

    .line 100
    .line 101
    if-nez v2, :cond_12

    .line 102
    .line 103
    iget-object v2, v1, Lf/K;->e0:LN/U;

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v2}, LN/U;->b()V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object v2, v1, Lf/K;->a0:Lj/b;

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {v2}, Lj/b;->a()V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v2, v1, Lf/K;->T:Lf/p;

    .line 118
    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    iget-boolean v2, v1, Lf/K;->x0:Z

    .line 122
    .line 123
    :cond_6
    iget-object v2, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 124
    .line 125
    if-nez v2, :cond_b

    .line 126
    .line 127
    iget-boolean v2, v1, Lf/K;->p0:Z

    .line 128
    .line 129
    iget-object v6, v1, Lf/K;->Q:Landroid/content/Context;

    .line 130
    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    new-instance v2, Landroid/util/TypedValue;

    .line 134
    .line 135
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const v8, 0x7f04000b

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 146
    .line 147
    .line 148
    iget v8, v2, Landroid/util/TypedValue;->resourceId:I

    .line 149
    .line 150
    if-eqz v8, :cond_7

    .line 151
    .line 152
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 161
    .line 162
    .line 163
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    .line 164
    .line 165
    invoke-virtual {v8, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 166
    .line 167
    .line 168
    new-instance v7, Lj/d;

    .line 169
    .line 170
    invoke-direct {v7, v6, v3}, Lj/d;-><init>(Landroid/content/Context;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 178
    .line 179
    .line 180
    move-object v6, v7

    .line 181
    :cond_7
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 182
    .line 183
    invoke-direct {v7, v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    .line 185
    .line 186
    iput-object v7, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 187
    .line 188
    new-instance v7, Landroid/widget/PopupWindow;

    .line 189
    .line 190
    const v8, 0x7f04001a

    .line 191
    .line 192
    .line 193
    invoke-direct {v7, v6, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    .line 195
    .line 196
    iput-object v7, v1, Lf/K;->c0:Landroid/widget/PopupWindow;

    .line 197
    .line 198
    const/4 v8, 0x2

    .line 199
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/H1;->y(Landroid/widget/PopupWindow;I)V

    .line 200
    .line 201
    .line 202
    iget-object v7, v1, Lf/K;->c0:Landroid/widget/PopupWindow;

    .line 203
    .line 204
    iget-object v8, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 205
    .line 206
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    iget-object v7, v1, Lf/K;->c0:Landroid/widget/PopupWindow;

    .line 210
    .line 211
    const/4 v8, -0x1

    .line 212
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    const v8, 0x7f040005

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 223
    .line 224
    .line 225
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 226
    .line 227
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-static {v2, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iget-object v6, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 240
    .line 241
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v1, Lf/K;->c0:Landroid/widget/PopupWindow;

    .line 245
    .line 246
    const/4 v6, -0x2

    .line 247
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Lf/x;

    .line 251
    .line 252
    invoke-direct {v2, v1, v4}, Lf/x;-><init>(Lf/K;I)V

    .line 253
    .line 254
    .line 255
    iput-object v2, v1, Lf/K;->d0:Lf/x;

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_8
    iget-object v2, v1, Lf/K;->h0:Landroid/view/ViewGroup;

    .line 259
    .line 260
    const v7, 0x7f0b0049

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    .line 268
    .line 269
    if-eqz v2, :cond_b

    .line 270
    .line 271
    invoke-virtual {v1}, Lf/K;->A()V

    .line 272
    .line 273
    .line 274
    iget-object v7, v1, Lf/K;->U:Lf/X;

    .line 275
    .line 276
    if-eqz v7, :cond_9

    .line 277
    .line 278
    invoke-virtual {v7}, Lf/X;->H0()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    goto :goto_2

    .line 283
    :cond_9
    move-object v7, v5

    .line 284
    :goto_2
    if-nez v7, :cond_a

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_a
    move-object v6, v7

    .line 288
    :goto_3
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 300
    .line 301
    iput-object v2, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 302
    .line 303
    :cond_b
    :goto_4
    iget-object v2, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 304
    .line 305
    if-eqz v2, :cond_11

    .line 306
    .line 307
    iget-object v2, v1, Lf/K;->e0:LN/U;

    .line 308
    .line 309
    if-eqz v2, :cond_c

    .line 310
    .line 311
    invoke-virtual {v2}, LN/U;->b()V

    .line 312
    .line 313
    .line 314
    :cond_c
    iget-object v2, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 315
    .line 316
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 317
    .line 318
    .line 319
    new-instance v2, Lj/e;

    .line 320
    .line 321
    iget-object v6, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 322
    .line 323
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    iget-object v7, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 328
    .line 329
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 330
    .line 331
    .line 332
    iput-object v6, v2, Lj/e;->I:Landroid/content/Context;

    .line 333
    .line 334
    iput-object v7, v2, Lj/e;->J:Landroidx/appcompat/widget/ActionBarContextView;

    .line 335
    .line 336
    iput-object p1, v2, Lj/e;->K:Lj/a;

    .line 337
    .line 338
    new-instance v6, Lk/o;

    .line 339
    .line 340
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    invoke-direct {v6, v7}, Lk/o;-><init>(Landroid/content/Context;)V

    .line 345
    .line 346
    .line 347
    iput v4, v6, Lk/o;->l:I

    .line 348
    .line 349
    iput-object v6, v2, Lj/e;->N:Lk/o;

    .line 350
    .line 351
    iput-object v2, v6, Lk/o;->e:Lk/m;

    .line 352
    .line 353
    iget-object p1, p1, Lf/A;->G:Lj/a;

    .line 354
    .line 355
    invoke-interface {p1, v2, v6}, Lj/a;->f(Lj/b;Lk/o;)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_10

    .line 360
    .line 361
    invoke-virtual {v2}, Lj/e;->h()V

    .line 362
    .line 363
    .line 364
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 365
    .line 366
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/b;)V

    .line 367
    .line 368
    .line 369
    iput-object v2, v1, Lf/K;->a0:Lj/b;

    .line 370
    .line 371
    iget-boolean p1, v1, Lf/K;->g0:Z

    .line 372
    .line 373
    if-eqz p1, :cond_d

    .line 374
    .line 375
    iget-object p1, v1, Lf/K;->h0:Landroid/view/ViewGroup;

    .line 376
    .line 377
    if-eqz p1, :cond_d

    .line 378
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_d

    .line 384
    .line 385
    const/4 p1, 0x1

    .line 386
    goto :goto_5

    .line 387
    :cond_d
    const/4 p1, 0x0

    .line 388
    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 389
    .line 390
    if-eqz p1, :cond_e

    .line 391
    .line 392
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 393
    .line 394
    const/4 v3, 0x0

    .line 395
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 396
    .line 397
    .line 398
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 399
    .line 400
    invoke-static {p1}, LN/N;->a(Landroid/view/View;)LN/U;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-virtual {p1, v2}, LN/U;->a(F)V

    .line 405
    .line 406
    .line 407
    iput-object p1, v1, Lf/K;->e0:LN/U;

    .line 408
    .line 409
    new-instance v2, Lf/z;

    .line 410
    .line 411
    invoke-direct {v2, v1, v4}, Lf/z;-><init>(Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1, v2}, LN/U;->d(LN/V;)V

    .line 415
    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_e
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 419
    .line 420
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 421
    .line 422
    .line 423
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 424
    .line 425
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 429
    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    instance-of p1, p1, Landroid/view/View;

    .line 435
    .line 436
    if-eqz p1, :cond_f

    .line 437
    .line 438
    iget-object p1, v1, Lf/K;->b0:Landroidx/appcompat/widget/ActionBarContextView;

    .line 439
    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    check-cast p1, Landroid/view/View;

    .line 445
    .line 446
    sget-object v2, LN/N;->a:Ljava/util/WeakHashMap;

    .line 447
    .line 448
    invoke-static {p1}, LN/C;->c(Landroid/view/View;)V

    .line 449
    .line 450
    .line 451
    :cond_f
    :goto_6
    iget-object p1, v1, Lf/K;->c0:Landroid/widget/PopupWindow;

    .line 452
    .line 453
    if-eqz p1, :cond_11

    .line 454
    .line 455
    iget-object p1, v1, Lf/K;->R:Landroid/view/Window;

    .line 456
    .line 457
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    iget-object v2, v1, Lf/K;->d0:Lf/x;

    .line 462
    .line 463
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_7

    .line 467
    :cond_10
    iput-object v5, v1, Lf/K;->a0:Lj/b;

    .line 468
    .line 469
    :cond_11
    :goto_7
    invoke-virtual {v1}, Lf/K;->I()V

    .line 470
    .line 471
    .line 472
    iget-object p1, v1, Lf/K;->a0:Lj/b;

    .line 473
    .line 474
    iput-object p1, v1, Lf/K;->a0:Lj/b;

    .line 475
    .line 476
    :cond_12
    invoke-virtual {v1}, Lf/K;->I()V

    .line 477
    .line 478
    .line 479
    iget-object p1, v1, Lf/K;->a0:Lj/b;

    .line 480
    .line 481
    if-eqz p1, :cond_13

    .line 482
    .line 483
    invoke-virtual {v0, p1}, Lm2/i;->k(Lj/b;)Lj/f;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    return-object p1

    .line 488
    :cond_13
    return-object v5
.end method

.method public final bridge synthetic onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/E;->b(Landroid/view/ActionMode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/E;->c(Landroid/view/ActionMode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/E;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/E;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p2, Lk/o;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final bridge synthetic onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/E;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/E;->f(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lf/E;->K:Lf/K;

    .line 8
    .line 9
    if-ne p1, p2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Lf/K;->A()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v1, Lf/K;->U:Lf/X;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-boolean p2, p1, Lf/X;->X:Z

    .line 19
    .line 20
    if-ne v0, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v0, p1, Lf/X;->X:Z

    .line 24
    .line 25
    iget-object p1, p1, Lf/X;->Y:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-gtz p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1

    .line 44
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/E;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lf/E;->g(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x6c

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lf/E;->K:Lf/K;

    .line 18
    .line 19
    if-ne p1, p2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lf/K;->A()V

    .line 22
    .line 23
    .line 24
    iget-object p1, v1, Lf/K;->U:Lf/X;

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    iget-boolean p2, p1, Lf/X;->X:Z

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v0, p1, Lf/X;->X:Z

    .line 34
    .line 35
    iget-object p1, p1, Lf/X;->Y:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-gtz p2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1

    .line 53
    :cond_3
    if-nez p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lf/K;->z(I)Lf/J;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-boolean p2, p1, Lf/J;->m:Z

    .line 60
    .line 61
    if-eqz p2, :cond_5

    .line 62
    .line 63
    invoke-virtual {v1, p1, v0}, Lf/K;->r(Lf/J;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_0
    return-void
.end method

.method public final bridge synthetic onPointerCaptureChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/E;->h(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Lk/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lk/o;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lk/o;->x:Z

    .line 20
    .line 21
    :cond_2
    iget-object v2, p0, Lf/E;->G:Landroid/view/Window$Callback;

    .line 22
    .line 23
    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iput-boolean v1, v0, Lk/o;->x:Z

    .line 30
    .line 31
    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lf/E;->K:Lf/K;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lf/K;->z(I)Lf/J;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lf/J;->h:Lk/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lf/E;->i(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lf/E;->i(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lj/l;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/E;->j(Landroid/view/WindowManager$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/E;->k(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lf/E;->K:Lf/K;

    iget-boolean v0, v0, Lf/K;->f0:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lf/E;->l(Landroid/view/ActionMode$Callback;)Lj/f;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/E;->K:Lf/K;

    iget-boolean v0, v0, Lf/K;->f0:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lf/E;->l(Landroid/view/ActionMode$Callback;)Lj/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/E;->G:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lj/l;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
