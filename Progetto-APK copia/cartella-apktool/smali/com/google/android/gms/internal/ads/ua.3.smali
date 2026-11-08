.class public final synthetic Lcom/google/android/gms/internal/ads/ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/xa;

.field public final synthetic I:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xa;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/ua;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ua;->H:Lcom/google/android/gms/internal/ads/xa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ua;->I:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ua;->G:I

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    const-string v2, "text/html"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ua;->I:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ua;->H:Lcom/google/android/gms/internal/ads/xa;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 15
    .line 16
    invoke-interface {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 21
    .line 22
    invoke-interface {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 27
    .line 28
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/ya;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 33
    .line 34
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Ef;->loadUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
