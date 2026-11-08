.class public abstract Le7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lt0/v;


# direct methods
.method public static a(Landroid/app/Activity;Ls0/h;Ljava/lang/String;)LO0/l;
    .locals 2

    .line 1
    new-instance v0, LG0/j;

    .line 2
    .line 3
    invoke-direct {v0}, LG0/j;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Le7/a;->j(Landroid/content/Context;Ljava/lang/String;)Ls0/x;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, v0, LG0/j;->d:Ls0/h;

    .line 11
    .line 12
    new-instance p2, LO0/l;

    .line 13
    .line 14
    new-instance v1, Ls0/n;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Ls0/n;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, LW0/p;

    .line 20
    .line 21
    invoke-direct {p0}, LW0/p;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v1}, LO0/l;-><init>(Ls0/n;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p2, LO0/l;->a:LO0/k;

    .line 28
    .line 29
    iget-object v1, p0, LO0/k;->c:Ls0/h;

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    iput-object p1, p0, LO0/k;->c:Ls0/h;

    .line 34
    .line 35
    iget-object p1, p0, LO0/k;->a:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, LO0/k;->b:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p2, v0}, LO0/l;->b(LG0/j;)LO0/l;

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method public static b()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_IN_DIRECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInWindow(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContainerTitle()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static declared-synchronized f(Landroid/app/Activity;Ls0/h;Ljava/lang/String;)Ls0/h;
    .locals 2

    .line 1
    const-class v0, Le7/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Ls0/n;

    .line 11
    .line 12
    invoke-static {p0, p2}, Le7/a;->j(Landroid/content/Context;Ljava/lang/String;)Ls0/x;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p0, p2}, Ls0/n;-><init>(Landroid/content/Context;Ls0/x;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Le7/a;->h(Landroid/content/Context;)Lt0/b;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p2, Lt0/f;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ls0/t;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p2, Lt0/f;->b:Ls0/t;

    .line 34
    .line 35
    iput-object p0, p2, Lt0/f;->a:Lt0/b;

    .line 36
    .line 37
    iput-object p1, p2, Lt0/f;->e:Ls0/h;

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    iput-object p0, p2, Lt0/f;->c:Lt0/d;

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    iput-boolean p0, p2, Lt0/f;->d:Z

    .line 44
    .line 45
    const/4 p0, 0x2

    .line 46
    iput p0, p2, Lt0/f;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    move-object p1, p2

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    .line 52
    throw p0

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    return-object p1
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Lr0/b;
    .locals 3

    .line 1
    const-class v0, Le7/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lr0/b;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, p0, v2}, Lr0/b;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lt0/b;
    .locals 4

    .line 1
    const-class v0, Le7/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Le7/a;->a:Lt0/v;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-static {p0}, Le7/a;->i(Landroid/content/Context;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "downloads"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lt0/v;

    .line 20
    .line 21
    new-instance v3, Lt0/s;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Le7/a;->g(Landroid/content/Context;)Lr0/b;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v2, v1, v3, p0}, Lt0/v;-><init>(Ljava/io/File;Lt0/s;Lr0/b;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Le7/a;->a:Lt0/v;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    sget-object p0, Le7/a;->a:Lt0/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    throw p0
.end method

.method public static declared-synchronized i(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    const-class v0, Le7/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;Ljava/lang/String;)Ls0/x;
    .locals 3

    .line 1
    const-class v0, Le7/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1e

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {}, LE1/a;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x7

    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    invoke-static {}, LL1/d;->t()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, LL1/d;->i(Landroid/content/Context;)Landroid/net/http/HttpEngine$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, LL1/d;->j(Landroid/net/http/HttpEngine$Builder;)Landroid/net/http/HttpEngine;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Ls0/C;

    .line 29
    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p1, p0, v1}, Ls0/C;-><init>(Landroid/net/http/HttpEngine;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object p1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :try_start_1
    invoke-static {p0}, Lu0/g;->a(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    new-instance p1, Lu0/c;

    .line 48
    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {p1, p0, v1}, Lu0/c;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/ExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object p1

    .line 58
    :cond_1
    :try_start_2
    new-instance p0, Ljava/net/CookieManager;

    .line 59
    .line 60
    invoke-direct {p0}, Ljava/net/CookieManager;-><init>()V

    .line 61
    .line 62
    .line 63
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Ls0/p;

    .line 72
    .line 73
    invoke-direct {p0}, Ls0/p;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Ls0/p;->b:Ljava/lang/String;

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Ls0/p;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-object p0

    .line 83
    :goto_0
    monitor-exit v0

    .line 84
    throw p0
.end method

.method public static k(Landroid/view/ViewConfiguration;III)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity(III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static l(Landroid/view/ViewConfiguration;III)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static m(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityDataSensitive()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static n(Landroid/widget/TextView;IF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setLineHeight(IF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
