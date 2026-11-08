.class public final Lk3/i;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LZ3/s;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lk3/i;->a:I

    .line 2
    iput-object p1, p0, Lk3/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Lk3/i;->a:I

    iput-object p1, p0, Lk3/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lk3/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lk3/i;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, LZ3/s;

    .line 13
    .line 14
    sget v0, LZ3/s;->J:I

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string v0, "consent://"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, LZ3/s;->H:LZ3/w;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, LZ3/w;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lk3/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lk3/i;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, LZ3/s;

    .line 13
    .line 14
    iget-boolean p2, p1, LZ3/s;->I:Z

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string p2, "UserMessagingPlatform"

    .line 19
    .line 20
    const-string v0, "Wall html loaded."

    .line 21
    .line 22
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p1, LZ3/s;->I:Z

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lk3/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :pswitch_0
    iget-object p1, p0, Lk3/i;->b:Ljava/lang/Object;

    check-cast p1, LZ3/s;

    .line 3
    iget-object p1, p1, LZ3/s;->H:LZ3/w;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, LZ3/a0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebResourceError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    const-string p2, ", "

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p2, "): "

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {v0, p3, p2}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 11
    iget-object p1, p1, LZ3/w;->g:LZ3/l;

    iget-object p1, p1, LZ3/l;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LZ3/k;

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, LZ3/a0;->a()LK/k;

    move-result-object p2

    invoke-virtual {p1, p2}, LZ3/k;->a(LK/k;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 14
    iget v0, p0, Lk3/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void

    .line 15
    :pswitch_0
    iget-object p1, p0, Lk3/i;->b:Ljava/lang/Object;

    check-cast p1, Lk3/k;

    .line 16
    iget-object p2, p1, Lk3/k;->M:Ll3/w;

    .line 17
    const-string p3, "#007 Could not call remote method."

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0}, Ll3/w;->c(Ll3/z0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 19
    invoke-static {p3, p2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p1, Lk3/k;->M:Ll3/w;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 21
    :try_start_1
    invoke-interface {p1, p2}, Ll3/w;->d(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 22
    invoke-static {p3, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 1
    iget v0, p0, Lk3/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "WebView renderer gone: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "for WebView: "

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "NativeBridge"

    .line 42
    .line 43
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lk3/i;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Lcom/google/android/gms/internal/ads/Rx;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-ne v1, p1, :cond_0

    .line 55
    .line 56
    const-string v1, "Deallocating the Native bridge as it is unusable. No further events will be generated for this session."

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/ay;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p2, Lcom/google/android/gms/internal/ads/Px;->b:Lcom/google/android/gms/internal/ads/ay;

    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1
    iget v0, p0, Lk3/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lk3/i;->b:Ljava/lang/Object;

    check-cast p2, LZ3/s;

    .line 3
    sget v0, LZ3/s;->J:I

    if-eqz p1, :cond_0

    .line 4
    const-string v0, "consent://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p2, LZ3/s;->H:LZ3/w;

    .line 6
    invoke-virtual {p2, p1}, LZ3/w;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 7
    iget v0, p0, Lk3/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lk3/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 8
    :pswitch_1
    check-cast v3, LZ3/s;

    sget p1, LZ3/s;->J:I

    if-eqz p2, :cond_0

    .line 9
    const-string p1, "consent://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v3, LZ3/s;->H:LZ3/w;

    .line 11
    invoke-virtual {p1, p2}, LZ3/w;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 12
    :pswitch_2
    move-object p1, v3

    check-cast p1, Lk3/k;

    invoke-virtual {p1}, Lk3/k;->zzq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    const-string v0, "gmsg://noAdLoaded"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "#007 Could not call remote method."

    if-eqz v0, :cond_4

    .line 14
    iget-object p2, p1, Lk3/k;->M:Ll3/w;

    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 15
    :try_start_0
    invoke-static {v0, v4, v4}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    move-result-object v3

    .line 16
    invoke-interface {p2, v3}, Ll3/w;->c(Ll3/z0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 17
    invoke-static {v5, p2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 18
    :cond_2
    :goto_0
    iget-object p2, p1, Lk3/k;->M:Ll3/w;

    if-eqz p2, :cond_3

    .line 19
    :try_start_1
    invoke-interface {p2, v0}, Ll3/w;->d(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 20
    invoke-static {v5, p2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Lk3/k;->z3(I)V

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_4
    const-string v0, "gmsg://scriptLoadFailed"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object p2, p1, Lk3/k;->M:Ll3/w;

    if-eqz p2, :cond_5

    .line 24
    :try_start_2
    invoke-static {v2, v4, v4}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    move-result-object v0

    .line 25
    invoke-interface {p2, v0}, Ll3/w;->c(Ll3/z0;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 26
    invoke-static {v5, p2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 27
    :cond_5
    :goto_3
    iget-object p2, p1, Lk3/k;->M:Ll3/w;

    if-eqz p2, :cond_6

    .line 28
    :try_start_3
    invoke-interface {p2, v1}, Ll3/w;->d(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 29
    invoke-static {v5, p2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 30
    :cond_6
    :goto_4
    invoke-virtual {p1, v1}, Lk3/k;->z3(I)V

    goto :goto_2

    :cond_7
    const-string v0, "gmsg://adResized"

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget-object v6, p1, Lk3/k;->J:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p1, Lk3/k;->M:Ll3/w;

    if-eqz v0, :cond_8

    .line 33
    :try_start_4
    invoke-interface {v0}, Ll3/w;->zzi()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 34
    invoke-static {v5, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    :cond_8
    :goto_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 37
    :cond_9
    :try_start_5
    sget-object v0, Ll3/p;->f:Ll3/p;

    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v6, p2}, Lp3/d;->o(Landroid/content/Context;I)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 39
    :catch_5
    :goto_6
    invoke-virtual {p1, v1}, Lk3/k;->z3(I)V

    goto :goto_2

    :cond_a
    const-string v0, "gmsg://"

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    .line 41
    :cond_b
    iget-object v0, p1, Lk3/k;->M:Ll3/w;

    if-eqz v0, :cond_c

    .line 42
    :try_start_6
    invoke-interface {v0}, Ll3/w;->zzc()V

    check-cast v3, Lk3/k;

    .line 43
    iget-object v0, v3, Lk3/k;->M:Ll3/w;

    .line 44
    invoke-interface {v0}, Ll3/w;->zzh()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 45
    invoke-static {v5, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    :cond_c
    :goto_7
    iget-object v0, p1, Lk3/k;->N:Lcom/google/android/gms/internal/ads/H4;

    if-eqz v0, :cond_d

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :try_start_7
    iget-object p1, p1, Lk3/k;->N:Lcom/google/android/gms/internal/ads/H4;

    .line 47
    invoke-virtual {p1, p2, v6, v4, v4}, Lcom/google/android/gms/internal/ads/H4;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/I4; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 48
    const-string v0, "Unable to process ad data"

    .line 49
    invoke-static {v0, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    :cond_d
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v6, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :goto_9
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
