.class public final synthetic Lv3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lv3/v;


# direct methods
.method public synthetic constructor <init>(Lv3/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lv3/u;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/u;->H:Lv3/v;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lv3/u;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/u;->H:Lv3/v;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lv3/u;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Lv3/u;-><init>(Lv3/v;I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Lv3/v;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/re;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    :try_start_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 29
    .line 30
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 31
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    const/16 v2, 0x1a

    .line 35
    .line 36
    iget-object v3, v1, Lv3/v;->a:Landroid/webkit/WebView;

    .line 37
    .line 38
    if-lt v0, v2, :cond_0

    .line 39
    .line 40
    :try_start_1
    invoke-static {v3}, LE1/b0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "GET_WEB_VIEW_CLIENT"

    .line 46
    .line 47
    invoke-static {v0}, Lcom/bumptech/glide/c;->o(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    :try_start_2
    sget v0, Lb2/e;->a:I

    .line 54
    .line 55
    sget-object v0, Lc2/n;->b:Lc2/b;

    .line 56
    .line 57
    invoke-virtual {v0}, Lc2/b;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-static {v3}, Lc2/d;->d(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Lc2/c;->b()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {v3}, Lb2/e;->c(Landroid/webkit/WebView;)LD0/U;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 81
    .line 82
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewClient()Landroid/webkit/WebViewClient;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :goto_0
    if-ne v0, v1, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iput-object v0, v1, Lv3/v;->d:Landroid/webkit/WebViewClient;

    .line 92
    .line 93
    :cond_3
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lv3/v;->x()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 101
    .line 102
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_4
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 110
    .line 111
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 112
    .line 113
    const-string v2, "AdUtil.getWebViewClient"

    .line 114
    .line 115
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v1, "getWebViewClient not supported"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 126
    :catch_1
    :goto_1
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
