.class public final synthetic Lcom/google/android/gms/internal/ads/Fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public H:Z

.field public final I:Lcom/google/android/gms/internal/ads/Ge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ge;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Fe;->G:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fe;->I:Lcom/google/android/gms/internal/ads/Ge;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ge;ZI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/Fe;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fe;->I:Lcom/google/android/gms/internal/ads/Ge;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fe;->I:Lcom/google/android/gms/internal/ads/Ge;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->l()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Fe;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fe;->I:Lcom/google/android/gms/internal/ads/Ge;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ge;->l()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v1, 0xfa

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "isVisible"

    .line 33
    .line 34
    filled-new-array {v2, v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "windowVisibilityChanged"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v2, "hasWindowFocus"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    filled-new-array {v2, v0}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v2, "windowFocusChanged"

    .line 60
    .line 61
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
