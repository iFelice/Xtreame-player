.class public final synthetic Lcom/google/android/gms/internal/ads/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/hq;

.field public final synthetic I:Landroid/app/Activity;

.field public final synthetic J:Ln3/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hq;Landroid/app/Activity;Ln3/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/dq;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dq;->H:Lcom/google/android/gms/internal/ads/hq;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dq;->I:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dq;->J:Ln3/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/dq;->G:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dq;->J:Ln3/k;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dq;->I:Landroid/app/Activity;

    .line 6
    .line 7
    const-string v1, "confirm"

    .line 8
    .line 9
    const-string v2, "dialog_action"

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dq;->H:Lcom/google/android/gms/internal/ads/hq;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/hq;->L:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "dialog_click"

    .line 30
    .line 31
    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hq;->D3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0, p2}, Lcom/google/android/gms/internal/ads/hq;->F3(Landroid/app/Activity;Ln3/k;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/hq;->L:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "rtsdc"

    .line 52
    .line 53
    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hq;->D3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 57
    .line 58
    iget-object p1, p1, Lk3/l;->e:LF2/G;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, LF2/G;->R(Landroid/app/Activity;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/hq;->E3()V

    .line 68
    .line 69
    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    invoke-virtual {p2}, Ln3/k;->zzb()V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
