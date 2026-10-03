.class public final synthetic Lcom/google/android/gms/internal/ads/fq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/hq;

.field public final synthetic I:Ln3/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hq;Ln3/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/fq;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fq;->H:Lcom/google/android/gms/internal/ads/hq;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fq;->I:Ln3/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/fq;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fq;->I:Ln3/k;

    .line 4
    .line 5
    const-string v1, "dismiss"

    .line 6
    .line 7
    const-string v2, "dialog_action"

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fq;->H:Lcom/google/android/gms/internal/ads/hq;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p1, v3, Lcom/google/android/gms/internal/ads/hq;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 15
    .line 16
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/hq;->L:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/cq;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/hq;->L:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "dialog_click"

    .line 32
    .line 33
    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hq;->D3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ln3/k;->zzb()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_0
    iget-object p1, v3, Lcom/google/android/gms/internal/ads/hq;->K:Lcom/google/android/gms/internal/ads/cq;

    .line 43
    .line 44
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/hq;->L:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/cq;->k(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/hq;->L:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "rtsdc"

    .line 60
    .line 61
    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hq;->D3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Ln3/k;->zzb()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
