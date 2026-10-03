.class public final synthetic Lcom/google/android/gms/internal/ads/mk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rk;
.implements Lcom/google/android/gms/internal/ads/v6;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/h7;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/h7;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/mk;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->H:Lcom/google/android/gms/internal/ads/h7;

    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/C7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->H:Lcom/google/android/gms/internal/ads/h7;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/C7;->e(Lcom/google/android/gms/internal/ads/h7;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/mk;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->H:Lcom/google/android/gms/internal/ads/h7;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/ok;

    .line 9
    .line 10
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/ok;->t(Lcom/google/android/gms/internal/ads/h7;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ok;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/ok;->w(Lcom/google/android/gms/internal/ads/h7;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/ok;

    .line 21
    .line 22
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/ok;->E(Lcom/google/android/gms/internal/ads/h7;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
