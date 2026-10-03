.class public final synthetic Lcom/google/android/gms/internal/ads/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rk;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/fl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/uj;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uj;->H:Lcom/google/android/gms/internal/ads/fl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uj;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uj;->H:Lcom/google/android/gms/internal/ads/fl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/yj;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/yj;->d(Ll3/z0;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/tj;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/tj;->H(Lcom/google/android/gms/internal/ads/fl;)V

    .line 28
    .line 29
    .line 30
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
