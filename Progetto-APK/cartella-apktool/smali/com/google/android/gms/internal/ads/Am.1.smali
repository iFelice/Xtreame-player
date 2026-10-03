.class public final synthetic Lcom/google/android/gms/internal/ads/Am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/G5;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Ef;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ef;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Am;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Am;->H:Lcom/google/android/gms/internal/ads/Ef;

    return-void
.end method


# virtual methods
.method public final F(Lcom/google/android/gms/internal/ads/F5;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Am;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Am;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/F5;->d:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Xf;->v0(II)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/F5;->j:Z

    .line 29
    .line 30
    if-eq v2, p1, :cond_0

    .line 31
    .line 32
    const-string p1, "0"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "1"

    .line 36
    .line 37
    :goto_0
    const-string v2, "isVisible"

    .line 38
    .line 39
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string p1, "onAdVisibilityChanged"

    .line 43
    .line 44
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/F5;->d:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Xf;->v0(II)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
