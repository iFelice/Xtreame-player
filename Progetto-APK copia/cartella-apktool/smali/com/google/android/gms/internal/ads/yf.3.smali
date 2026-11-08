.class public final synthetic Lcom/google/android/gms/internal/ads/yf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/zf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zf;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/yf;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yf;->H:Lcom/google/android/gms/internal/ads/zf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/yf;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yf;->H:Lcom/google/android/gms/internal/ads/zf;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zf;->K:Lcom/google/android/gms/internal/ads/Ce;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->e()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zf;->K:Lcom/google/android/gms/internal/ads/Ce;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zf;->L:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->h()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zf;->L:Z

    .line 33
    .line 34
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zf;->K:Lcom/google/android/gms/internal/ads/Ce;

    .line 35
    .line 36
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->f()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zf;->K:Lcom/google/android/gms/internal/ads/Ce;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->g()V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
