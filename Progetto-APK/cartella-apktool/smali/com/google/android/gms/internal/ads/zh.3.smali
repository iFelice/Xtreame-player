.class public final synthetic Lcom/google/android/gms/internal/ads/zh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Ef;

.field public final synthetic I:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ef;Lorg/json/JSONObject;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zh;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zh;->H:Lcom/google/android/gms/internal/ads/Ef;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zh;->I:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zh;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zh;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zh;->I:Lorg/json/JSONObject;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/El;->G:I

    .line 11
    .line 12
    const-string v0, "onVideoEvent"

    .line 13
    .line 14
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const-string v0, "AFMA_updateActiveView"

    .line 19
    .line 20
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ya;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
