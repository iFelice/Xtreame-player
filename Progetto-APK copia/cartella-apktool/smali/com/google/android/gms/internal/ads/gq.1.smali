.class public final Lcom/google/android/gms/internal/ads/gq;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/util/Timer;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;Ln3/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/gq;->G:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gq;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gq;->H:Ljava/util/Timer;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gq;->J:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Bx;Lcom/google/android/gms/internal/ads/Of;Ljava/util/Timer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/gq;->G:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gq;->J:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gq;->H:Ljava/util/Timer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gq;->I:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/gq;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gq;->H:Ljava/util/Timer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gq;->J:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gq;->I:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/google/android/gms/internal/ads/Bx;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget v0, Lb2/e;->a:I

    .line 18
    .line 19
    sget-object v0, Lc2/n;->d:Lc2/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lc2/c;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Bx;->b:Landroid/webkit/WebView;

    .line 28
    .line 29
    invoke-static {v0}, Lb2/e;->c(Landroid/webkit/WebView;)LD0/U;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 36
    .line 37
    const-string v3, "omidJsSessionService"

    .line 38
    .line 39
    invoke-interface {v0, v3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v2, Lcom/google/android/gms/internal/ads/Of;

    .line 43
    .line 44
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/Qf;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget-object v2, Lo3/O;->l:Lo3/J;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Qf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v3, Lcom/google/android/gms/internal/ads/Nf;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Ef;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 72
    .line 73
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :pswitch_0
    check-cast v3, Landroid/app/AlertDialog;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 85
    .line 86
    .line 87
    check-cast v2, Ln3/k;

    .line 88
    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {v2}, Ln3/k;->zzb()V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
