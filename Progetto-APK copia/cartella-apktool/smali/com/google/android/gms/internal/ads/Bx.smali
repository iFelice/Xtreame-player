.class public final Lcom/google/android/gms/internal/ads/Bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/V7;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/google/android/gms/internal/ads/Lx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/V7;Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bx;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/Lx;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Lx;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bx;->d:Lcom/google/android/gms/internal/ads/Lx;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/Cw;->d:LG/c;

    .line 19
    .line 20
    iget-boolean v0, v0, LG/c;->H:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bx;->a:Lcom/google/android/gms/internal/ads/V7;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bx;->b:Landroid/webkit/WebView;

    .line 27
    .line 28
    const-string p1, "WEB_MESSAGE_LISTENER"

    .line 29
    .line 30
    invoke-static {p1}, Lcom/bumptech/glide/c;->o(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget p1, Lb2/e;->a:I

    .line 37
    .line 38
    sget-object p1, Lc2/n;->d:Lc2/b;

    .line 39
    .line 40
    invoke-virtual {p1}, Lc2/c;->b()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-static {p2}, Lb2/e;->c(Landroid/webkit/WebView;)LD0/U;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, LD0/U;->H:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 53
    .line 54
    const-string v0, "omidJsSessionService"

    .line 55
    .line 56
    invoke-interface {p1, v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 60
    .line 61
    const/16 v1, 0xb

    .line 62
    .line 63
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Ljava/util/HashSet;

    .line 67
    .line 68
    const-string v2, "*"

    .line 69
    .line 70
    filled-new-array {v2}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2, v0, v1, p1}, Lb2/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Lb2/d;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 86
    .line 87
    const-string p2, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 94
    .line 95
    const-string p2, "The JavaScriptSessionService cannot be supported in this WebView version."

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string p2, "Method called before OM SDK activation"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public static a(Lcom/google/android/gms/internal/ads/Bx;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/xx;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/yx;->H:Lcom/google/android/gms/internal/ads/yx;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/Ax;->H:Lcom/google/android/gms/internal/ads/Ax;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/Cx;->I:Lcom/google/android/gms/internal/ads/Cx;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v2, v3, v3, v4}, LE3/a;->a(Lcom/google/android/gms/internal/ads/yx;Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/Cx;Lcom/google/android/gms/internal/ads/Cx;Z)LE3/a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Bx;->a:Lcom/google/android/gms/internal/ads/V7;

    .line 15
    .line 16
    new-instance v8, Ll/s1;

    .line 17
    .line 18
    sget-object v7, Lcom/google/android/gms/internal/ads/wx;->H:Lcom/google/android/gms/internal/ads/wx;

    .line 19
    .line 20
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/Bx;->b:Landroid/webkit/WebView;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v2, v8

    .line 24
    move-object v4, v9

    .line 25
    move-object v5, v6

    .line 26
    invoke-direct/range {v2 .. v7}, Ll/s1;-><init>(Lcom/google/android/gms/internal/ads/V7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wx;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v8, p1}, Lcom/google/android/gms/internal/ads/xx;-><init>(LE3/a;Ll/s1;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bx;->c:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/xx;->b(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Bx;->d:Lcom/google/android/gms/internal/ads/Lx;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Lx;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/Kx;

    .line 59
    .line 60
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kx;->a:Lcom/google/android/gms/internal/ads/ay;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/view/View;

    .line 67
    .line 68
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 69
    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xx;->b:Lcom/google/android/gms/internal/ads/Lx;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kx;->c:Lcom/google/android/gms/internal/ads/zx;

    .line 76
    .line 77
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/Lx;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/zx;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xx;->c()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
