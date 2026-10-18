.class public final Lcom/google/android/gms/internal/ads/Vf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Wf;

.field public final b:Lcom/google/android/gms/internal/ads/L9;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Wf;Lcom/google/android/gms/internal/ads/L9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vf;->b:Lcom/google/android/gms/internal/ads/L9;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vf;->a:Lcom/google/android/gms/internal/ads/Wf;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Click string is empty, not proceeding."

    .line 10
    .line 11
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vf;->a:Lcom/google/android/gms/internal/ads/Wf;

    .line 16
    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->T()Lcom/google/android/gms/internal/ads/H4;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string p1, "Signal utils is empty, ignoring."

    .line 27
    .line 28
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    const-string p1, "Signals object is empty, ignoring."

    .line 37
    .line 38
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    const-string p1, "Context is null, ignoring."

    .line 49
    .line 50
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v3, v0

    .line 59
    check-cast v3, Lcom/google/android/gms/internal/ads/bg;

    .line 60
    .line 61
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bg;->j()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wf;->zzi()Landroid/app/Activity;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v2, v1, p1, v3, v0}, Lcom/google/android/gms/internal/ads/E4;->d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vf;->a:Lcom/google/android/gms/internal/ads/Wf;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->T()Lcom/google/android/gms/internal/ads/H4;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v0, "Signal utils is empty, ignoring."

    .line 15
    .line 16
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v0, "Signals object is empty, ignoring."

    .line 25
    .line 26
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    const-string v0, "Context is null, ignoring."

    .line 37
    .line 38
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v3, v0

    .line 47
    check-cast v3, Lcom/google/android/gms/internal/ads/bg;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bg;->j()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wf;->zzi()Landroid/app/Activity;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/E4;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

.method public notify(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "URL is empty, ignoring message"

    .line 8
    .line 9
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/Ha;

    .line 16
    .line 17
    const/16 v2, 0x13

    .line 18
    .line 19
    invoke-direct {v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
